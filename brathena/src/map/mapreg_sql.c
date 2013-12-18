/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/map/mapreg_sql.c                                                 *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena, eAthena                                          *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#include "../common/cbasetypes.h"
#include "../common/db.h"
#include "../common/ers.h"
#include "../common/malloc.h"
#include "../common/showmsg.h"
#include "../common/sql.h"
#include "../common/strlib.h"
#include "../common/timer.h"
#include "map.h" // mmysql_handle
#include "script.h"
#include "mapreg.h"
#include <stdlib.h>
#include <string.h>

struct mapreg_interface mapreg_s;

#define MAPREG_AUTOSAVE_INTERVAL (300*1000)


/// Looks up the value of an integer variable using its uid.
int mapreg_readreg(int uid) {
	struct mapreg_save *m = idb_get(mapreg->db, uid);
	return m?m->u.i:0;
}

/// Looks up the value of a string variable using its uid.
char* mapreg_readregstr(int uid) {
	struct mapreg_save *m = idb_get(mapreg->str_db, uid);
	return m?m->u.str:NULL;
}

/// Modifies the value of an integer variable.
bool mapreg_setreg(int uid, int val) {
	struct mapreg_save *m;
	int num = (uid & 0x00ffffff);
	int i   = (uid & 0xff000000) >> 24;
	const char *name = script->get_str(num);

	if(val != 0) {
		if((m = idb_get(mapreg->db,uid))) {
			m->u.i = val;
			if(name[1] != '@') {
				m->save = true;
				mapreg->i_dirty = true;
			}
		} else {
			m = ers_alloc(mapreg->ers, struct mapreg_save);

			m->u.i = val;
			m->uid = uid;
			m->save = false;

			if(name[1] != '@') {// write new variable to database
				char tmp_str[32*2+1];
				Sql_EscapeStringLen(mmysql_handle, tmp_str, name, strnlen(name, 32));
				if (SQL_ERROR == Sql_Query(mmysql_handle, "INSERT INTO `%s`(`varname`,`index`,`value`) VALUES ('%s','%d','%d')", mapreg->table, tmp_str, i, val))
					Sql_ShowDebug(mmysql_handle);
			}
			idb_put(mapreg->db, uid, m);
		}
	} else { // val == 0
		if((m = idb_get(mapreg->db,uid))) {
			ers_free(mapreg->ers, m);
		}
		idb_remove(mapreg->db,uid);

		if(name[1] != '@') {// Remove from database because it is unused.
			if (SQL_ERROR == Sql_Query(mmysql_handle, "DELETE FROM `%s` WHERE `varname`='%s' AND `index`='%d'", mapreg->table, name, i))
				Sql_ShowDebug(mmysql_handle);
		}
	}

	return true;
}

/// Modifies the value of a string variable.
bool mapreg_setregstr(int uid, const char *str) {
	struct mapreg_save *m;
	int num = (uid & 0x00ffffff);
	int i   = (uid & 0xff000000) >> 24;
	const char *name = script->get_str(num);

	if(str == NULL || *str == 0) {
		if(name[1] != '@') {
			if(SQL_ERROR == Sql_Query(mmysql_handle, "DELETE FROM `%s` WHERE `varname`='%s' AND `index`='%d'", mapreg->table, name, i))
				Sql_ShowDebug(mmysql_handle);
		}
		if( (m = idb_get(mapreg->str_db,uid)) ) {
			if( m->u.str != NULL )
				aFree(m->u.str);
			ers_free(mapreg->ers, m);
		}
		idb_remove(mapreg->str_db,uid);
	} else {
		if( (m = idb_get(mapreg->str_db,uid)) ) {
			if( m->u.str != NULL )
				aFree(m->u.str);
			m->u.str = aStrdup(str);
			if(name[1] != '@') {
				mapreg->str_dirty = true;
				m->save = true;
			}
		} else {
			m = ers_alloc(mapreg->ers, struct mapreg_save);

			m->uid = uid;
			m->u.str = aStrdup(str);
			m->save = false;
			
			if(name[1] != '@') { //put returned null, so we must insert.
				char tmp_str[32*2+1];
				char tmp_str2[255*2+1];
				Sql_EscapeStringLen(mmysql_handle, tmp_str, name, strnlen(name, 32));
				Sql_EscapeStringLen(mmysql_handle, tmp_str2, str, strnlen(str, 255));
				if (SQL_ERROR == Sql_Query(mmysql_handle, "INSERT INTO `%s`(`varname`,`index`,`value`) VALUES ('%s','%d','%s')", mapreg->table, tmp_str, i, tmp_str2))
					Sql_ShowDebug(mmysql_handle);
			}
			idb_put(mapreg->str_db, uid, m);
		}
	}

	return true;
}

/// Loads permanent variables from database
void script_load_mapreg(void) {
	/*
	        0        1       2
	   +-------------------------+
	   | varname | index | value |
	   +-------------------------+
	                                */
	SqlStmt *stmt = SqlStmt_Malloc(mmysql_handle);
	char varname[32+1];
	int index;
	char value[255+1];
	uint32 length;

	if(SQL_ERROR == SqlStmt_Prepare(stmt, "SELECT `varname`, `index`, `value` FROM `%s`", mapreg->table)
	   || SQL_ERROR == SqlStmt_Execute(stmt)
	  ) {
		SqlStmt_ShowDebug(stmt);
		SqlStmt_Free(stmt);
		return;
	}

	SqlStmt_BindColumn(stmt, 0, SQLDT_STRING, &varname[0], sizeof(varname), &length, NULL);
	SqlStmt_BindColumn(stmt, 1, SQLDT_INT, &index, 0, NULL, NULL);
	SqlStmt_BindColumn(stmt, 2, SQLDT_STRING, &value[0], sizeof(value), NULL, NULL);

	while(SQL_SUCCESS == SqlStmt_NextRow(stmt)) {
		struct mapreg_save *m = NULL;
		int s = script->add_str(varname);
		int i = index;

		if(varname[length-1] == '$' ) {
			if(idb_exists(mapreg->str_db, (i<<24)|s)) {
				ShowWarning("load_mapreg: duplicate! '%s' => '%s' skipping...\n",varname,value);
				continue;
			}
		} else {
			if(idb_exists(mapreg->db, (i<<24)|s)) {
				ShowWarning("load_mapreg: duplicate! '%s' => '%s' skipping...\n",varname,value);
				continue;
			}
		}

		m = ers_alloc(mapreg->ers, struct mapreg_save);
		m->uid = (i<<24)|s;
		m->save = false;
		if( varname[length-1] == '$' ) {
			m->u.str = aStrdup(value);
			idb_put(mapreg->str_db, m->uid, m);
		} else {
			m->u.i = atoi(value);
			idb_put(mapreg->db, m->uid, m);
		}
	}
	
	SqlStmt_Free(stmt);

	mapreg->i_dirty = false;
	mapreg->str_dirty = false;
}

/// Saves permanent variables to database
void script_save_mapreg(void)
{
	DBIterator *iter;
	struct mapreg_save *m = NULL;

	if( mapreg->i_dirty ) {
		iter = db_iterator(mapreg->db);
		for( m = dbi_first(iter); dbi_exists(iter); m = dbi_next(iter) ) {
			if( m->save ) {
				int num = (m->uid & 0x00ffffff);
				int i   = (m->uid & 0xff000000) >> 24;
				const char* name = script->get_str(num);

				if(SQL_ERROR == Sql_Query(mmysql_handle, "UPDATE `%s` SET `value`='%d' WHERE `varname`='%s' AND `index`='%d' LIMIT 1", mapreg->table, m->u.i, name, i))
					Sql_ShowDebug(mmysql_handle);
					m->save = false;
				}
			}
			dbi_destroy(iter);
			mapreg->i_dirty = false;
	}

	if( mapreg->str_dirty ) {
		iter = db_iterator(mapreg->str_db);
		for( m = dbi_first(iter); dbi_exists(iter); m = dbi_next(iter) ) {
			if( m->save ) {
				int num = (m->uid & 0x00ffffff);
				int i   = (m->uid & 0xff000000) >> 24;
				const char* name = script->get_str(num);
				char tmp_str2[2*255+1];

				Sql_EscapeStringLen(mmysql_handle, tmp_str2, m->u.str, safestrnlen(m->u.str, 255));
				if (SQL_ERROR == Sql_Query(mmysql_handle, "UPDATE `%s` SET `value`='%s' WHERE `varname`='%s' AND `index`='%d' LIMIT 1", mapreg->table, tmp_str2, name, i))
					Sql_ShowDebug(mmysql_handle);
				m->save = false;
			}
		}
		dbi_destroy(iter);
		mapreg->str_dirty = false;
	}
}

int script_autosave_mapreg(int tid, int64 tick, int id, intptr_t data) {
	mapreg->save();
	return 0;
}


void mapreg_reload(void) {
	DBIterator* iter;
	struct mapreg_save *m = NULL;

	mapreg->save();

	iter = db_iterator(mapreg->db);
	for( m = dbi_first(iter); dbi_exists(iter); m = dbi_next(iter) ) {
		ers_free(mapreg->ers, m);
	}
	dbi_destroy(iter);
	
	iter = db_iterator(mapreg->str_db);
	for( m = dbi_first(iter); dbi_exists(iter); m = dbi_next(iter) ) {
		if( m->u.str != NULL ) {
			aFree(m->u.str);
		}
		ers_free(mapreg->ers, m);
	}
	dbi_destroy(iter);
	
	db_clear(mapreg->db);
	db_clear(mapreg->str_db);

	mapreg->load();
}

void mapreg_final(void) {
	DBIterator* iter;
	struct mapreg_save *m = NULL;
	
	mapreg->save();

	iter = db_iterator(mapreg->db);
	for( m = dbi_first(iter); dbi_exists(iter); m = dbi_next(iter) ) {
		ers_free(mapreg->ers, m);
	}
	dbi_destroy(iter);
	
	iter = db_iterator(mapreg->str_db);
	for( m = dbi_first(iter); dbi_exists(iter); m = dbi_next(iter) ) {
		if( m->u.str != NULL ) {
			aFree(m->u.str);
		}
		ers_free(mapreg->ers, m);
	}
	dbi_destroy(iter);
		
	db_destroy(mapreg->db);
	db_destroy(mapreg->str_db);
	
	ers_destroy(mapreg->ers);
}

void mapreg_init(void) {
	mapreg->db = idb_alloc(DB_OPT_BASE);
	mapreg->str_db = idb_alloc(DB_OPT_BASE);
	mapreg->ers = ers_new(sizeof(struct mapreg_save), "mapreg_sql.c::mapreg_ers", ERS_OPT_CLEAN);

	mapreg->load();

	add_timer_func_list(mapreg->save_timer, "mapreg_script_autosave_mapreg");
	add_timer_interval(gettick() + MAPREG_AUTOSAVE_INTERVAL, mapreg->save_timer, 0, 0, MAPREG_AUTOSAVE_INTERVAL);
}

bool mapreg_config_read(const char *w1, const char *w2)
{
	if(!strcmpi(w1, "mapreg_db"))
		safestrncpy(mapreg->table, w2, sizeof(mapreg->table));
	else
		return false;

	return true;
}
void mapreg_defaults(void) {
	mapreg = &mapreg_s;

	/* */
	mapreg->db = NULL;
	mapreg->str_db = NULL;
	mapreg->ers = NULL;
	
	safestrncpy(mapreg->table, "mapreg", sizeof(mapreg->table));
	mapreg->i_dirty = false;
	mapreg->str_dirty = false;
	
	/* */
	mapreg->init = mapreg_init;
	mapreg->final = mapreg_final;

	/* */
	mapreg->readreg = mapreg_readreg;
	mapreg->readregstr = mapreg_readregstr;
	mapreg->setreg = mapreg_setreg;
	mapreg->setregstr = mapreg_setregstr;
	mapreg->load = script_load_mapreg;
	mapreg->save = script_save_mapreg;
	mapreg->save_timer = script_autosave_mapreg;
	mapreg->reload = mapreg_reload;
	mapreg->config_read = mapreg_config_read;

}
