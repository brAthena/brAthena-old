/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/map/itemdb.c                                                     *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena, eAthena                                          *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#include "../common/nullpo.h"
#include "../common/malloc.h"
#include "../common/random.h"
#include "../common/showmsg.h"
#include "../common/strlib.h"
#include "../common/utils.h"
#include "../common/conf.h"
#include "itemdb.h"
#include "map.h"
#include "battle.h" // struct battle_config
#include "script.h" // item script processing
#include "pc.h"     // W_MUSICAL, W_WHIP

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static struct item_data *itemdb_array[MAX_ITEMDB];
static DBMap            *itemdb_other;// int nameid -> struct item_data*

struct item_data dummy_item; //This is the default dummy item used for non-existant items. [Skotlex]

struct itemdb_interface itemdb_s;

/**
 * Search for item name
 * name = item alias, so we should find items aliases first. if not found then look for "jname" (full name)
 * @see DBApply
 */
static int itemdb_searchname_sub(DBKey key, DBData *data, va_list ap)
{
	struct item_data *item = DB->data2ptr(data), **dst, **dst2;
	char *str;
	str=va_arg(ap,char *);
	dst=va_arg(ap,struct item_data **);
	dst2=va_arg(ap,struct item_data **);
	if(item == &dummy_item) return 0;

	//Absolute priority to Aegis code name.
	if(*dst != NULL) return 0;
	if(battle_config.case_sensitive_aegisnames && strcmp(item->name,str) == 0)
		*dst=item;
	else if(!battle_config.case_sensitive_aegisnames && strcasecmp(item->name,str) == 0)
		*dst=item;

	//Second priority to Client displayed name.
	if(*dst2 != NULL) return 0;
	if(strcmpi(item->jname,str)==0)
		*dst2=item;
	return 0;
}

/*==========================================
 * Return item data from item name. (lookup)
 *------------------------------------------*/
struct item_data *itemdb_searchname(const char *str) {
	struct item_data *item;
	struct item_data *item2=NULL;
	int i;

	for(i = 0; i < ARRAYLENGTH(itemdb_array); ++i) {
		item = itemdb_array[i];
		if(item == NULL)
			continue;

		// Absolute priority to Aegis code name.
		if(battle_config.case_sensitive_aegisnames && strcmp(item->name,str) == 0)
			return item;
		else if(!battle_config.case_sensitive_aegisnames && strcasecmp(item->name,str) == 0)
			return item;

		//Second priority to Client displayed name.
		if(strcasecmp(item->jname,str) == 0)
			item2 = item;
	}

	item = NULL;
	itemdb_other->foreach(itemdb_other,itemdb_searchname_sub,str,&item,&item2);
	return item?item:item2;
}
/* name to item data */
struct item_data* itemdb_name2id(const char *str) {
	return strdb_get(itemdb->names,str);
}

/**
 * @see DBMatcher
 */
static int itemdb_searchname_array_sub(DBKey key, DBData data, va_list ap)
{
	struct item_data *item = DB->data2ptr(&data);
	char *str;
	str=va_arg(ap,char *);
	if(item == &dummy_item)
		return 1; //Invalid item.
	if(stristr(item->jname,str))
		return 0;
	if(battle_config.case_sensitive_aegisnames && strstr(item->name,str))
		return 0;
	if(!battle_config.case_sensitive_aegisnames && stristr(item->name,str))
		return 0;
	return strcmpi(item->jname,str);
}

/*==========================================
 * Founds up to N matches. Returns number of matches [Skotlex]
 * search flag :
 * 0 - approximate match
 * 1 - exact match
 *------------------------------------------*/
int itemdb_searchname_array(struct item_data **data, int size, const char *str, int flag)
{
	struct item_data *item;
	int i;
	int count=0;

	// Search in the array
	for(i = 0; i < ARRAYLENGTH(itemdb_array); ++i) {
		item = itemdb_array[i];
		if(item == NULL)
			continue;

		if(
		    (!flag
		    && (stristr(item->jname,str)
		       || (battle_config.case_sensitive_aegisnames && strstr(item->name,str))
		       || (!battle_config.case_sensitive_aegisnames && stristr(item->name,str))
		    ))
		 || (flag
		    && (strcmp(item->jname,str) == 0
		       || (battle_config.case_sensitive_aegisnames && strcmp(item->name,str) == 0)
		       || (!battle_config.case_sensitive_aegisnames && strcasecmp(item->name,str) == 0)
		    ))
		) {
			if(count < size)
				data[count] = item;
			++count;
		}
	}

	// search in the db
	if(count < size) {
		DBData *db_data[MAX_SEARCH];
		int db_count = 0;
		size -= count;
		db_count = itemdb_other->getall(itemdb_other, (DBData **)&db_data, size, itemdb_searchname_array_sub, str);
		for(i = 0; i < db_count; i++)
			data[count++] = DB->data2ptr(db_data[i]);
		count += db_count;
	}
	return count;
}


/*==========================================
 * Return a random item id from group. (takes into account % chance giving/tot group)
 *------------------------------------------*/
int itemdb_searchrandomid(int group)
{
	if(group<1 || group>=MAX_ITEMGROUP) {
		ShowError("itemdb_searchrandomid: Invalid group id %d\n", group);
		return UNKNOWN_ITEM_ID;
	}
	if(itemgroup_db[group].qty)
		return itemgroup_db[group].nameid[rnd()%itemgroup_db[group].qty];

	ShowError("itemdb_searchrandomid: No item entries for group id %d\n", group);
	return UNKNOWN_ITEM_ID;
}
void itemdb_package_item(struct map_session_data *sd, struct item_package *package) {
	int i = 0, get_count, j, flag;
	
	for( i = 0; i < package->must_qty; i++ ) {
		struct item it;
		memset(&it, 0, sizeof(it));

		it.nameid = package->must_items[i].id;
		it.identify = 1;

		if(package->must_items[i].hour) {
			it.expire_time = (unsigned int)(time(NULL) + ((package->must_items[i].hour*60)*60));
		}

		if(package->must_items[i].guid) {
			struct item_data *itd = itemdb_search(it.nameid);
			int card0 = CARD0_CREATE;

			if(itd->type == 4 || itd->type == 5 || itd->type == 7 || itd->type == 8)
				card0 = CARD0_FORGE;

			it.card[0] = card0;
			it.card[1] = 0;
			it.card[2] = GetWord(sd->status.char_id, 0);
			it.card[3] = GetWord(sd->status.char_id, 1);
		}

		if(package->must_items[i].onair)
			clif->package_announce(sd,package->must_items[i].id,package->id);

		get_count = itemdb_isstackable(package->must_items[i].id) ? package->must_items[i].qty : 1;

		it.amount = get_count == 1 ? 1 : get_count;

		for(j = 0; j < package->must_items[i].qty; j += get_count) {
			if ((flag = pc_additem(sd, &it, get_count, LOG_TYPE_SCRIPT)))
				clif_additem(sd, 0, 0, flag);
		}
	}

	if(package->random_qty) {
		for(i = 0; i < package->random_qty; i++) {
			struct item_package_rand_entry *entry;

			entry = &package->random_groups[i].random_list[rnd()%package->random_groups[i].random_qty];

			while(1) {
				if(rnd()%10000 >= entry->probability) {
					entry = entry->next;
					continue;
				} else {
					struct item it;
					memset(&it, 0, sizeof(it));

					it.nameid = entry->id;
					it.identify = 1;

					if(entry->hour) {
						it.expire_time = (unsigned int)(time(NULL) + ((entry->hour*60)*60));
					}

					if(entry->guid) {
						struct item_data *itd = itemdb_search(it.nameid);
						int card0 = CARD0_CREATE;

						if(itd->type == 4 || itd->type == 5 || itd->type == 7 || itd->type == 8)
							card0 = CARD0_FORGE;

						it.card[0] = card0;
						it.card[1] = 0;
						it.card[2] = GetWord(sd->status.char_id, 0);
						it.card[3] = GetWord(sd->status.char_id, 1);
					}

					if(entry->onair)
						clif->package_announce(sd,entry->id,package->id);

					get_count = itemdb_isstackable(entry->id) ? entry->qty : 1;

					it.amount = get_count == 1 ? 1 : get_count;

					for(j = 0; j < entry->qty; j += get_count) {
						if((flag = pc_additem(sd, &it, get_count, LOG_TYPE_SCRIPT)))
							clif_additem(sd, 0, 0, flag);
					}
					break;
				}
			}
		}
	}
	
	return;
}
/*==========================================
 * Calculates total item-group related bonuses for the given item
 *------------------------------------------*/
int itemdb_group_bonus(struct map_session_data *sd, int itemid)
{
	int bonus = 0, i, j;
	for(i=0; i < MAX_ITEMGROUP; i++) {
		if(!sd->itemgrouphealrate[i])
			continue;
		ARR_FIND(0, itemgroup_db[i].qty, j, itemgroup_db[i].nameid[j] == itemid);
		if(j < itemgroup_db[i].qty)
			bonus += sd->itemgrouphealrate[i];
	}
	return bonus;
}

/// Searches for the item_data.
/// Returns the item_data or NULL if it does not exist.
struct item_data *itemdb_exists(int nameid) {
	struct item_data *item;

	if(nameid >= 0 && nameid < ARRAYLENGTH(itemdb_array))
		return itemdb_array[nameid];
	item = (struct item_data *)idb_get(itemdb_other,nameid);
	if(item == &dummy_item)
		return NULL;// dummy data, doesn't exist
	return item;
}

/// Returns human readable name for given item type.
/// @param type Type id to retrieve name for ( IT_* ).
const char *itemdb_typename(int type)
{
	switch(type) {
		case IT_HEALING:        return "Potion/Food";
		case IT_USABLE:         return "Usable";
		case IT_ETC:            return "Etc.";
		case IT_WEAPON:         return "Weapon";
		case IT_ARMOR:          return "Armor";
		case IT_CARD:           return "Card";
		case IT_PETEGG:         return "Pet Egg";
		case IT_PETARMOR:       return "Pet Accessory";
		case IT_AMMO:           return "Arrow/Ammunition";
		case IT_DELAYCONSUME:   return "Delay-Consume Usable";
		case IT_SHADOWGEAR:     return "Shadow Equipment";
		case IT_CASH:           return "Cash Usable";
	}
	return "Unknown Type";
}

/*==========================================
 * Converts the jobid from the format in itemdb
 * to the format used by the map server. [Skotlex]
 *------------------------------------------*/
static void itemdb_jobid2mapid(unsigned int *bclass, unsigned int jobmask)
{
	int i;
	bclass[0]= bclass[1]= bclass[2]= 0;
	//Base classes
	if(jobmask & 1<<JOB_NOVICE) {
		//Both Novice/Super-Novice are counted with the same ID
		bclass[0] |= 1<<MAPID_NOVICE;
		bclass[1] |= 1<<MAPID_NOVICE;
	}
	for(i = JOB_NOVICE+1; i <= JOB_THIEF; i++) {
		if(jobmask & 1<<i)
			bclass[0] |= 1<<(MAPID_NOVICE+i);
	}
	//2-1 classes
	if(jobmask & 1<<JOB_KNIGHT)
		bclass[1] |= 1<<MAPID_SWORDMAN;
	if(jobmask & 1<<JOB_PRIEST)
		bclass[1] |= 1<<MAPID_ACOLYTE;
	if(jobmask & 1<<JOB_WIZARD)
		bclass[1] |= 1<<MAPID_MAGE;
	if(jobmask & 1<<JOB_BLACKSMITH)
		bclass[1] |= 1<<MAPID_MERCHANT;
	if(jobmask & 1<<JOB_HUNTER)
		bclass[1] |= 1<<MAPID_ARCHER;
	if(jobmask & 1<<JOB_ASSASSIN)
		bclass[1] |= 1<<MAPID_THIEF;
	//2-2 classes
	if(jobmask & 1<<JOB_CRUSADER)
		bclass[2] |= 1<<MAPID_SWORDMAN;
	if(jobmask & 1<<JOB_MONK)
		bclass[2] |= 1<<MAPID_ACOLYTE;
	if(jobmask & 1<<JOB_SAGE)
		bclass[2] |= 1<<MAPID_MAGE;
	if(jobmask & 1<<JOB_ALCHEMIST)
		bclass[2] |= 1<<MAPID_MERCHANT;
	if(jobmask & 1<<JOB_BARD)
		bclass[2] |= 1<<MAPID_ARCHER;
//	Bard/Dancer share the same slot now.
//	if (jobmask & 1<<JOB_DANCER)
//		bclass[2] |= 1<<MAPID_ARCHER;
	if(jobmask & 1<<JOB_ROGUE)
		bclass[2] |= 1<<MAPID_THIEF;
	//Special classes that don't fit above.
	if(jobmask & 1<<21)  //Taekwon boy
		bclass[0] |= 1<<MAPID_TAEKWON;
	if(jobmask & 1<<22)  //Star Gladiator
		bclass[1] |= 1<<MAPID_TAEKWON;
	if(jobmask & 1<<23)  //Soul Linker
		bclass[2] |= 1<<MAPID_TAEKWON;
	if(jobmask & 1<<JOB_GUNSLINGER) {// Rebellion job can equip Gunslinger equips
		bclass[0] |= 1<<MAPID_GUNSLINGER;
		bclass[1] |= 1<<MAPID_GUNSLINGER;
	}
	if(jobmask & 1<<JOB_NINJA) {
		bclass[0] |= 1<<MAPID_NINJA;
		bclass[1] |= 1<<MAPID_NINJA;
	}//Kagerou/Oboro jobs can equip Ninja equips. [Rytech]
	if(jobmask & 1<<26)  //Bongun/Munak
		bclass[0] |= 1<<MAPID_GANGSI;
	if(jobmask & 1<<27)  //Death Knight
		bclass[1] |= 1<<MAPID_GANGSI;
	if(jobmask & 1<<28)  //Dark Collector
		bclass[2] |= 1<<MAPID_GANGSI;
	if(jobmask & 1<<29)  //Kagerou / Oboro
		bclass[1] |= 1<<MAPID_NINJA;
	if(jobmask & 1<<30) //Rebellion
		bclass[1] |= 1<<MAPID_GUNSLINGER;
}

static void create_dummy_data(void)
{
	memset(&dummy_item, 0, sizeof(struct item_data));
	dummy_item.nameid=500;
	dummy_item.weight=1;
	dummy_item.value_sell=1;
	dummy_item.type=IT_ETC; //Etc item
	safestrncpy(dummy_item.name,"UNKNOWN_ITEM",sizeof(dummy_item.name));
	safestrncpy(dummy_item.jname,"UNKNOWN_ITEM",sizeof(dummy_item.jname));
	dummy_item.view_id=UNKNOWN_ITEM_ID;
}

static struct item_data *create_item_data(int nameid) {
	struct item_data *id;
	CREATE(id, struct item_data, 1);
	id->nameid = nameid;
	id->weight = 1;
	id->type = IT_ETC;
	return id;
}

/*==========================================
 * Loads (and creates if not found) an item from the db.
 *------------------------------------------*/
struct item_data *itemdb_load(int nameid) {
	struct item_data *id;

	if(nameid >= 0 && nameid < ARRAYLENGTH(itemdb_array)) {
		id = itemdb_array[nameid];
		if(id == NULL || id == &dummy_item)
			id = itemdb_array[nameid] = create_item_data(nameid);
		return id;
	}

	id = (struct item_data *)idb_get(itemdb_other, nameid);
	if(id == NULL || id == &dummy_item) {
		id = create_item_data(nameid);
		idb_put(itemdb_other, nameid, id);
	}
	return id;
}

/*==========================================
 * Loads an item from the db. If not found, it will return the dummy item.
 *------------------------------------------*/
struct item_data *itemdb_search(int nameid) {
	struct item_data *id;
	if(nameid >= 0 && nameid < ARRAYLENGTH(itemdb_array))
		id = itemdb_array[nameid];
	else
		id = (struct item_data *)idb_get(itemdb_other, nameid);

	if(id == NULL) {
		ShowWarning("itemdb_search: Item ID %d does not exists in the item_db. Using dummy data.\n", nameid);
		id = &dummy_item;
		dummy_item.nameid = nameid;
	}
	return id;
}

/*==========================================
 * Returns if given item is a player-equippable piece.
 *------------------------------------------*/
int itemdb_isequip(int nameid)
{
	int type=itemdb_type(nameid);
	switch(type) {
		case IT_WEAPON:
		case IT_ARMOR:
		case IT_AMMO:
		case IT_SHADOWGEAR:
			return 1;
		default:
			return 0;
	}
}

/*==========================================
 * Alternate version of itemdb_isequip
 *------------------------------------------*/
int itemdb_isequip2(struct item_data *data)
{
	nullpo_ret(data);
	switch(data->type) {
		case IT_WEAPON:
		case IT_ARMOR:
		case IT_AMMO:
		case IT_SHADOWGEAR:
			return 1;
		default:
			return 0;
	}
}

/*==========================================
 * Returns if given item's type is stackable.
 *------------------------------------------*/
int itemdb_isstackable(int nameid)
{
	int type=itemdb_type(nameid);
	switch(type) {
		case IT_WEAPON:
		case IT_ARMOR:
		case IT_PETEGG:
		case IT_PETARMOR:
		case IT_SHADOWGEAR:
			return 0;
		default:
			return 1;
	}
}

/*==========================================
 * Alternate version of itemdb_isstackable
 *------------------------------------------*/
int itemdb_isstackable2(struct item_data *data)
{
	nullpo_ret(data);
	switch(data->type) {
		case IT_WEAPON:
		case IT_ARMOR:
		case IT_PETEGG:
		case IT_PETARMOR:
		case IT_SHADOWGEAR:
			return 0;
		default:
			return 1;
	}
}


/*==========================================
 * Bound Restriction functions [Megasantos/brAthena]
 *------------------------------------------*/
int itemdb_isdropable_sub(struct item_data *item, int gmlv, int unused)
{
	return (item && (!(item->item_bound.drop) || gmlv >= item->item_bound.override));
}

int itemdb_cantrade_sub(struct item_data *item, int gmlv, int gmlv2)
{
	return (item && (!(item->item_bound.trade) || gmlv >= item->item_bound.override || gmlv2 >= item->item_bound.override));
}

int itemdb_cancart_sub(struct item_data *item, int gmlv, int unused)
{
	return (item && (!(item->item_bound.cart) || gmlv >= item->item_bound.override));
}

int itemdb_cansell_sub(struct item_data *item, int gmlv, int unused)
{
	return (item && (!(item->item_bound.vending) || gmlv >= item->item_bound.override));
}

int itemdb_canstore_sub(struct item_data *item, int gmlv, int unused)
{
	return (item && (!(item->item_bound.storage) || gmlv >= item->item_bound.override));
}

int itemdb_canmail_sub(struct item_data *item, int gmlv, int unused)
{
	return (item && (!(item->item_bound.mail) || gmlv >= item->item_bound.override));
}

int itemdb_canauction_sub(struct item_data *item, int gmlv, int unused)
{
	return (item && (!(item->item_bound.auction) || gmlv >= item->item_bound.override));
}

int itemdb_isrestricted(struct item *item, int gmlv, int gmlv2, int (*func)(struct item_data *, int, int))
{
	struct item_data *item_data = itemdb_search(item->nameid);
	int i;

	if(!func(item_data, gmlv, gmlv2))
		return 0;

	if(item_data->slot == 0 || itemdb_isspecial(item->card[0]))
		return 1;

	for(i = 0; i < item_data->slot; i++) {
		if(!item->card[i]) continue;
		if(!func(itemdb_search(item->card[i]), gmlv, gmlv2))
			return 0;
	}
	return 1;
}
/*==========================================
 *  Specifies if item-type should drop unidentified.
 *------------------------------------------*/
int itemdb_isidentified(int nameid)
{
	int type=itemdb_type(nameid);
	switch(type) {
		case IT_WEAPON:
		case IT_ARMOR:
		case IT_PETARMOR:
			return 0;
		default:
			return 1;
	}
}

/* same as itemdb_isidentified but without a lookup */
int itemdb_isidentified2(struct item_data *data) {
	switch (data->type) {
		case IT_WEAPON:
		case IT_ARMOR:
		case IT_PETARMOR:
			return 0;
		default:
			return 1;
	}
}
/*==========================================
 * Search by name for the override flags available items
 * (Give item another sprite)
 *------------------------------------------*/
static bool itemdb_read_itemavail(char *str[], int columns, int current)
{
	// <nameid>,<sprite>
	int nameid, sprite;
	struct item_data *id;

	nameid = atoi(str[0]);

	if((id = itemdb_exists(nameid)) == NULL) {
		ShowWarning("itemdb_read_itemavail: Invalid item id %d.\n", nameid);
		return false;
	}

	sprite = atoi(str[1]);

	if(sprite > 0) {
		id->flag.available = 1;
		id->view_id = sprite;
	} else {
		id->flag.available = 0;
	}

	return true;
}

/*==========================================
 * read item group data
 *------------------------------------------*/
int itemdb_read_itemgroup_sub()
{
	const char *db[] = { get_database_name(26), get_database_name(27), get_database_name(28), get_database_name(29), get_database_name(30), get_database_name(31) };
	int dbQuery, dbRows, groupid, nameid, k, j, i;

	memset(itemgroup_db, 0, sizeof(itemgroup_db));

	for(i = 0; i < ARRAYLENGTH(db); ++i) {
		dbRows = 0;
		if(SQL_ERROR == Sql_Query(dbmysql_handle, "SELECT * FROM `%s`", db[i])) {
			Sql_ShowDebug(dbmysql_handle);
			continue;
		}

		while(SQL_SUCCESS == Sql_NextRow(dbmysql_handle)) {
			char *row[3];
			dbRows++;

			for(dbQuery = 0; dbQuery < 3; ++dbQuery)
				Sql_GetData(dbmysql_handle, dbQuery, &row[dbQuery], NULL);

			groupid = atoi(row[0]);
			if(groupid < 0 || groupid >= MAX_ITEMGROUP) {
				ShowWarning("itemdb_read_itemgroup: Grupo inválido %d em %s\n", groupid, db[i]);
				continue;
			}

			nameid = atoi(row[1]);
			if(!itemdb_exists(nameid)) {
				ShowWarning("itemdb_read_itemgroup: Inexistente item %d em %s\n", nameid, db[i]);
				continue;
			}

			k = atoi(row[2]);
			if(itemgroup_db[groupid].qty+k >= MAX_RANDITEM) {
				ShowWarning("itemdb_read_itemgroup: Group %d está cheio (%d entradas) em %s\n", groupid, MAX_RANDITEM, db[i]);
				continue;
			}

			for(j = 0; j < k; j++)
				itemgroup_db[groupid].nameid[itemgroup_db[groupid].qty++] = nameid;
		}

		ShowSQL("Leitura de '"CL_WHITE"%lu"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"'.\n", dbRows, db[i]);
	}

	Sql_FreeResult(dbmysql_handle);
	return 0;
}

static void itemdb_read_itemgroup(void)
{
	itemdb_read_itemgroup_sub();
	return;
}

/* [Ind] - HCache for Packages */
void itemdb_write_cached_packages(const char *config_filename) {
	FILE *file;
	unsigned short pcnt = itemdb->package_count;
	unsigned short i;

	if(!(file = HCache->open(config_filename,"wb"))) {
		return;
	}

	// first 2 bytes = package cnt
	hwrite(&pcnt,sizeof(pcnt),1,file);

	for(i = 0; i < pcnt; i++) {
		unsigned short id = itemdb->packages[i].id, random_qty = itemdb->packages[i].random_qty, must_qty = itemdb->packages[i].must_qty;
		unsigned short c;
		//into a package, first 2 bytes = id.
		hwrite(&id,sizeof(id),1,file);
		//next 2 bytes = must cnt
		hwrite(&must_qty,sizeof(must_qty),1,file);
		//next 2 bytes = random cnt
		hwrite(&random_qty,sizeof(random_qty),1,file);
		//now we loop into must
		for(c = 0; c < must_qty; c++) {
			struct item_package_must_entry *entry = &itemdb->packages[i].must_items[c];
			unsigned char onair = entry->onair == 1 ? 1 : 0, guid = entry->guid == 1 ? 1 : 0;
			//first 2 byte = item id
			hwrite(&entry->id,sizeof(entry->id),1,file);
			//next 2 byte = qty
			hwrite(&entry->qty,sizeof(entry->qty),1,file);
			//next 2 byte = hour
			hwrite(&entry->hour,sizeof(entry->hour),1,file);
			//next 1 byte = onair (1:0)
			hwrite(&onair,sizeof(onair),1,file);
			//next 1 byte = guid (1:0)
			hwrite(&guid,sizeof(onair),1,file);
		}
		//now we loop into random groups
		for(c = 0; c < random_qty; c++) {
			struct item_package_rand_group *group = &itemdb->packages[i].random_groups[c];
			unsigned short group_qty = group->random_qty, h;
			
			//next 2 bytes = how many entries in this group
			hwrite(&group_qty,sizeof(group_qty),1,file);
			//now we loop into the group's list
			for(h = 0; h < group_qty; h++) {
				struct item_package_rand_entry *entry = &itemdb->packages[i].random_groups[c].random_list[h];
				unsigned char onair = entry->onair == 1 ? 1 : 0, guid = entry->guid == 1 ? 1 : 0;
				//first 2 byte = item id
				hwrite(&entry->id,sizeof(entry->id),1,file);
				//next 2 byte = qty
				hwrite(&entry->qty,sizeof(entry->qty),1,file);
				//next 2 byte = probability
				hwrite(&entry->probability,sizeof(entry->probability),1,file);
				//next 2 byte = hour
				hwrite(&entry->hour,sizeof(entry->hour),1,file);
				//next 1 byte = onair (1:0)
				hwrite(&onair,sizeof(onair),1,file);
				//next 1 byte = guid (1:0)
				hwrite(&guid,sizeof(onair),1,file);
			}
		}
	}

	fclose(file);

	return;
}
bool itemdb_read_cached_packages(const char *config_filename) {
	FILE *file;
	unsigned short pcnt;
	unsigned short i;

	if(!(file = HCache->open(config_filename,"rb"))) {
		return false;
	}

	// first 2 bytes = package cnt
	hread(&pcnt,sizeof(pcnt),1,file);

	CREATE(itemdb->packages, struct item_package, pcnt);
	itemdb->package_count = pcnt;

	for(i = 0; i < pcnt; i++) {
		unsigned short id = 0, random_qty = 0, must_qty = 0;
		struct item_data *pdata;
		struct item_package *package = &itemdb->packages[i];
		unsigned short c;

		//into a package, first 2 bytes = id.
		hread(&id,sizeof(id),1,file);
		//next 2 bytes = must cnt
		hread(&must_qty,sizeof(must_qty),1,file);
		//next 2 bytes = random cnt
		hread(&random_qty,sizeof(random_qty),1,file);

		if(!(pdata = itemdb_exists(id)))
			ShowWarning("itemdb_read_packages: item '%d' de pacote desconhecido, saltando..\n",id);
		else
			pdata->package = &itemdb->packages[i];

		package->id = id;
		package->random_qty = random_qty;
		package->must_qty = must_qty;
		package->must_items = NULL;
		package->random_groups = NULL;

		if(package->must_qty) {
			CREATE(package->must_items, struct item_package_must_entry, package->must_qty);
			//now we loop into must
			for(c = 0; c < package->must_qty; c++) {
				struct item_package_must_entry *entry = &itemdb->packages[i].must_items[c];
				unsigned short mid = 0, qty = 0, hour = 0;
				unsigned char onair = 0, guid = 0;
				struct item_data *data;
				//first 2 byte = item id
				hread(&mid,sizeof(mid),1,file);
				//next 2 byte = qty
				hread(&qty,sizeof(qty),1,file);
				//next 2 byte = hour
				hread(&hour,sizeof(hour),1,file);
				//next 1 byte = onair (1:0)
				hread(&onair,sizeof(onair),1,file);
				//next 1 byte = guid (1:0)
				hread(&guid,sizeof(onair),1,file);

				if(!(data = itemdb_exists(mid)))
					ShowWarning("itemdb_read_packages: item '%d' desconhecido no pacote '%s'!\n",mid,itemdb_name(package->id));

				entry->id = data ? data->nameid : 0;
				entry->hour = hour;
				entry->qty = qty;
				entry->onair = onair ? 1 : 0;
				entry->guid = guid ? 1 : 0;
			}
		}
		if(package->random_qty) {
			//now we loop into random groups
			CREATE(package->random_groups, struct item_package_rand_group, package->random_qty);
			for(c = 0; c < package->random_qty; c++) {
				unsigned short group_qty = 0, h;
				struct item_package_rand_entry *prev = NULL;

				//next 2 bytes = how many entries in this group
				hread(&group_qty,sizeof(group_qty),1,file);

				package->random_groups[c].random_qty = group_qty;
				CREATE(package->random_groups[c].random_list, struct item_package_rand_entry, package->random_groups[c].random_qty);

				//now we loop into the group's list
				for(h = 0; h < group_qty; h++) {
					struct item_package_rand_entry *entry = &itemdb->packages[i].random_groups[c].random_list[h];
					unsigned short mid = 0, qty = 0, hour = 0, probability = 0;
					unsigned char onair = 0, guid = 0;
					struct item_data *data;

					if( prev ) prev->next = entry;

					//first 2 byte = item id
					hread(&mid,sizeof(mid),1,file);
					//next 2 byte = qty
					hread(&qty,sizeof(qty),1,file);
					//next 2 byte = probability
					hread(&probability,sizeof(probability),1,file);
					//next 2 byte = hour
					hread(&hour,sizeof(hour),1,file);
					//next 1 byte = onair (1:0)
					hread(&onair,sizeof(onair),1,file);
					//next 1 byte = guid (1:0)
					hread(&guid,sizeof(onair),1,file);

					if(!(data = itemdb_exists(mid)))
						ShowWarning("itemdb_read_packages: item '%d' desconhecido no pacote '%s'!\n",mid,itemdb_name(package->id));

					entry->id = data ? data->nameid : 0;
					entry->probability = probability;
					entry->hour = hour;
					entry->qty = qty;
					entry->onair = onair ? 1 : 0;
					entry->guid = guid ? 1 : 0;

					prev = entry;
				}
				if(prev)
					prev->next = &itemdb->packages[i].random_groups[c].random_list[0];
			}
		}
	}

	fclose(file);

	ShowConf("Leitura de '"CL_WHITE"%lu"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"' ("CL_GREEN"CACHE"CL_RESET").\n", pcnt, config_filename);

	return true;
}

void itemdb_read_packages(void) {
	config_t item_packages_conf;
	config_setting_t *itg = NULL, *it = NULL, *t = NULL;
#if VERSION == 1
	const char *config_filename = "db/PackageItem_re.conf"; // FIXME hardcoded name
#elif VERSION == 0
	const char *config_filename = "db/PackageItem_pre-re.conf"; // FIXME hardcoded name
#else
	const char *config_filename = "db/PackageItem_ot.conf"; // FIXME hardcoded name
#endif
	const char *itname;
	int i = 0, cnt = 0, c = 0, highest_gcnt = 0;
	unsigned int *must = NULL, *random = NULL, *rgroup = NULL, **rgroups = NULL;
	struct item_package_rand_entry **prev = NULL;

	if(HCache->check(config_filename)) {
		if(itemdb->read_cached_packages(config_filename))
			return;
	}

	if (libconfig->read_file(&item_packages_conf, config_filename)) {
		ShowError("Não é possível ler %s\n", config_filename);
		return;
	}

	must = aMalloc(libconfig->setting_length(item_packages_conf.root) * sizeof(unsigned int));
	random = aMalloc(libconfig->setting_length(item_packages_conf.root) * sizeof(unsigned int));
	rgroup = aMalloc(libconfig->setting_length(item_packages_conf.root) * sizeof(unsigned int));
	rgroups = aMalloc(libconfig->setting_length(item_packages_conf.root) * sizeof(unsigned int *));


	for (i = 0; i < libconfig->setting_length(item_packages_conf.root); i++) {
		must[i] = 0;
		random[i] = 0;
		rgroup[i] = 0;
		rgroups[i] = NULL;
	}

	/* validate tree, drop poisonous fruits! */
	i = 0;
	while((itg = libconfig->setting_get_elem(item_packages_conf.root,i++))) {
		const char *name = config_setting_name(itg);
		
		if(!itemdb->name2id(name)) {
			ShowWarning("itemdb_read_packages: pacote '%s' desconhecido, saltando..\n",name);
			libconfig->setting_remove(item_packages_conf.root, name);
			--i;
			continue;
		}

		c = 0;
		while((it = libconfig->setting_get_elem(itg,c++))) {
			int rval = 0;
			const char *itname, *name2;
			if(!(t = libconfig->setting_get_member(it,"item")) || !(itname = config_setting_get_string(t))) {
				ShowWarning("itemdb_read_packages: Valor do campo 'item' inválido no item '%d' do pacote '%s'. Ignorando entrada...\n",c,name);
				libconfig->setting_remove_elem(itg, c - 1);
				--c;
				continue;
			}
			if(!(t = libconfig->setting_get_member(it,"name")) || !(name2 = config_setting_get_string(t))) {
				ShowWarning("itemdb_read_packages: valor de 'name' inválido para o item '%s' no pacote '%s', padronizando para 'must'!\n",itname,name);
				config_setting_remove_elem(itg,c-1);
				--c;
				continue;
			}

			if((strstr(name2,"random") != NULL))
				rval = atoi(name2+6);

			if(rval == 0)
				must[i - 1] += 1;
			else {
				random[i - 1] += 1;
				if(rval > rgroup[i - 1])
					rgroup[i - 1] = rval;
				if(rval > highest_gcnt)
					highest_gcnt = rval;
			}
		}
	}
	
	CREATE(prev, struct item_package_rand_entry *, highest_gcnt);
	for(i = 0; i < highest_gcnt; i++) {
		prev[i] = NULL;
	}

	for(i = 0; i < config_setting_length(item_packages_conf.root); i++) {
		rgroups[i] = aMalloc( rgroup[i] * sizeof(unsigned int));
		for(c = 0; c < rgroup[i]; c++) {
			rgroups[i][c] = 0;
		}
	}
	
	/* grab the known sizes */
	i = 0;
	while( (itg = libconfig->setting_get_elem(item_packages_conf.root,i++)) ) {
	   c = 0;
	   while((it = libconfig->setting_get_elem(itg, c++))) {
			const char *name;
			int rval = 0;
			if((t = libconfig->setting_get_member(it, "name"))
			&& (name = config_setting_get_string(t))
			&& (strstr(name,"random") != NULL)) {
				rval = atoi(name+6);
				rgroups[i - 1][rval - 1] += 1;
			}
	   }
	}

	CREATE(itemdb->packages, struct item_package, config_setting_length(item_packages_conf.root));
	itemdb->package_count = (unsigned short)config_setting_length(item_packages_conf.root);
	
	/* write */
	i = 0;
	while((itg = libconfig->setting_get_elem(item_packages_conf.root,i++))) {
		struct item_data *data = itemdb->name2id(config_setting_name(itg));
		int r = 0, m = 0;
		
		for(r = 0; r < highest_gcnt; r++) {
			prev[r] = NULL;
		}
		
		data->package = &itemdb->packages[cnt];
		
		itemdb->packages[cnt].id  = data->nameid;
		itemdb->packages[cnt].random_groups = NULL;
		itemdb->packages[cnt].must_items = NULL;
		itemdb->packages[cnt].random_qty = rgroup[ i - 1 ];
		itemdb->packages[cnt].must_qty = must[ i - 1 ];
		
		if( itemdb->packages[cnt].random_qty ) {
			CREATE(itemdb->packages[cnt].random_groups, struct item_package_rand_group, itemdb->packages[cnt].random_qty);
			for( c = 0; c < itemdb->packages[cnt].random_qty; c++ ) {
				CREATE(itemdb->packages[cnt].random_groups[c].random_list, struct item_package_rand_entry, rgroups[ i - 1 ][c]);
				itemdb->packages[cnt].random_groups[c].random_qty = 0;
			}
		}

		if( itemdb->packages[cnt].must_qty )
			CREATE(itemdb->packages[cnt].must_items, struct item_package_must_entry, itemdb->packages[cnt].must_qty);
		
		c = 0;
		while((it = libconfig->setting_get_elem(itg,c++))) {
			int icnt = 1, hour = 0, probability = 10000, gid = 0;
			bool onair = false, guid = false;

			t = libconfig->setting_get_member(it, "item");
			itname = config_setting_get_string(t);

			if(itname[0] == 'I' && itname[1] == 'D' && strlen(itname) < 8) {
				if(!(data = itemdb_exists(atoi(itname+2))))
					ShowWarning("itemdb_read_packages: ID do item '%d' desconhecida no pacote '%s'!\n",atoi(itname+2),config_setting_name(itg));
			} else if(!(data = itemdb->name2id(itname)))
				ShowWarning("itemdb_read_packages: item '%s' desconhecido no pacote '%s'!\n",itname,config_setting_name(itg));

			if(!(t = libconfig->setting_get_member(it, "cnt"))) {
				ShowWarning("itemdb_read_packages: falta o campo 'cnt' para o item '%s' no pacote '%s'.\n",itname,config_setting_name(itg));
			}

			if((t = libconfig->setting_get_member(it, "cnt")))
				icnt = config_setting_get_int(t);

			if(!(t = libconfig->setting_get_member(it, "hour"))) {
				ShowWarning("itemdb_read_packages: falta o campo 'hour' para o item '%s' no pacote '%s'.\n",itname,config_setting_name(itg));
			}

			if((t = libconfig->setting_get_member(it, "hour")))
				hour = config_setting_get_int(t);

			if(!(t = libconfig->setting_get_member(it, "probability"))) {
				ShowWarning("itemdb_read_packages: falta o campo 'probability' para o item '%s' no pacote '%s'.\n",itname,config_setting_name(itg));
				return;
			}

			if((t = libconfig->setting_get_member(it, "probability"))) {
				if((probability = (unsigned short)config_setting_get_int(t)) > 10000 ) {
					ShowWarning("itemdb_read_packages: taxa ('%d') inválida  para o item '%s' no pacote '%s'!\n",probability,itname,config_setting_name(itg));
					probability = 10000;
				}
			}

			if(!(t = libconfig->setting_get_member(it, "onair"))) {
				ShowWarning("itemdb_read_packages: falta o campo 'onair' para o item '%s' no pacote '%s'.\n",itname,config_setting_name(itg));
			}

			if((t = libconfig->setting_get_member(it, "onair")) && config_setting_get_bool(t))
				onair = true;

			if(!(t = libconfig->setting_get_member(it, "guid"))) {
				ShowWarning("itemdb_read_packages: falta o campo 'guid' para o item '%s' no pacote '%s'.\n",itname,config_setting_name(itg));
			}

			if((t = libconfig->setting_get_member(it, "guid")) && config_setting_get_bool(t))
				guid = true;

			if((t = libconfig->setting_get_member(it, "name"))) {
				const char *name = config_setting_get_string(t);
				if(strstr(name,"random"))
					gid = atoi(name+6);
			}

			if(gid == 0) {
				itemdb->packages[cnt].must_items[m].id = data ? data->nameid : 0;
				itemdb->packages[cnt].must_items[m].qty = icnt;
				itemdb->packages[cnt].must_items[m].hour = hour;
				itemdb->packages[cnt].must_items[m].onair = onair == true ? 1 : 0;
				itemdb->packages[cnt].must_items[m].guid = guid == true ? 1 : 0;
				m++;
			} else {
				int gidx = gid - 1;

				r = itemdb->packages[cnt].random_groups[gidx].random_qty;

				if(prev[gidx])
					prev[gidx]->next = &itemdb->packages[cnt].random_groups[gidx].random_list[r];

				itemdb->packages[cnt].random_groups[gidx].random_list[r].id = data ? data->nameid : 0;
				itemdb->packages[cnt].random_groups[gidx].random_list[r].qty = icnt;
				if((itemdb->packages[cnt].random_groups[gidx].random_list[r].probability = probability) == 10000) {
					ShowWarning("itemdb_read_packages: item '%s' em '%s' tem taxa de queda de 100%%!!!! definir este item como 'Random: 0' ou outros itens não vão cair!!!\n",itname,config_setting_name(itg));
				}
				itemdb->packages[cnt].random_groups[gidx].random_list[r].hour = hour;
				itemdb->packages[cnt].random_groups[gidx].random_list[r].onair = onair == true ? 1 : 0;
				itemdb->packages[cnt].random_groups[gidx].random_list[r].guid = guid == true ? 1 : 0;
				itemdb->packages[cnt].random_groups[gidx].random_qty += 1;
				
				prev[gidx] = &itemdb->packages[cnt].random_groups[gidx].random_list[r];
			}
			
		}

		for(r = 0; r < highest_gcnt; r++) {
			if(prev[r])
				prev[r]->next = &itemdb->packages[cnt].random_groups[r].random_list[0];
		}

		for(r = 0; r < itemdb->packages[cnt].random_qty; r++ ) {
			if( itemdb->packages[cnt].random_groups[r].random_qty == 1 ) {
				//item packages dont stop looping until something comes out of them, so if you have only one item in it the drop is guaranteed.
				ShowWarning("itemdb_read_packages: em '%s' 'Random: %d' grupo tem apenas 1 opção aleatória, queda da taxa será de 100%!\n",itemdb_name(itemdb->packages[cnt].id),r+1);
				itemdb->packages[cnt].random_groups[r].random_list[0].probability = 10000;
			}
		}

		cnt++;
	}


	aFree(must);
	aFree(random);
	for(i = 0; i < config_setting_length(item_packages_conf.root); i++ ) {
		aFree(rgroups[i]);
	}
	aFree(rgroups);
	aFree(rgroup);
	aFree(prev);

	config_destroy(&item_packages_conf);

	if(HCache->enabled)
		itemdb->write_cached_packages(config_filename);

	ShowConf("Leitura de '"CL_WHITE"%lu"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"'.\n", cnt, config_filename);
}
/*==========================================
 * Reads bound restrictions [Megasantos/brAthena]
 *------------------------------------------*/
static bool ItemMoveInfo(char *str[], int columns, int current)
{
	// <nameid>,<mask>,<gm level>
	int nameid, drop, trade, storage, cart, vending, mail, auction, bindonequip, gmlv;
	struct item_data *id;

	nameid = atoi(str[0]);

	if((id = itemdb_exists(nameid)) == NULL) {
		//ShowWarning("ItemMoveInfo: Invalid item id %d.\n", nameid);
		//return false;
		// FIXME: item_trade.txt contains items, which are commented in item database.
		return true;
	}

	drop = atoi(str[1]);
	trade = atoi(str[2]);
	storage = atoi(str[3]);
	cart = atoi(str[4]);
	vending = atoi(str[5]);
	mail = atoi(str[6]);
	auction = atoi(str[7]);
	bindonequip = atoi(str[8]);
	gmlv = atoi(str[9]);

	if(gmlv < 1) {
		ShowWarning("ItemMoveInfo: Invalid override GM level %d for item id %d.\n", gmlv, nameid);
		return false;
	}

	id->item_bound.drop = drop;
	id->item_bound.trade = trade;
	id->item_bound.storage = storage;
	id->item_bound.cart = cart;
	id->item_bound.vending = vending;
	id->item_bound.mail = mail;
	id->item_bound.auction = auction;
	id->flag.bindonequip = bindonequip;
	id->item_bound.override = gmlv;

	return true;
}

/*==========================================
 * Reads item delay amounts [Paradox924X]
 *------------------------------------------*/
static bool itemdb_read_itemdelay(char *str[], int columns, int current)
{
	// <nameid>,<delay>
	int nameid, delay;
	struct item_data *id;

	nameid = atoi(str[0]);

	if((id = itemdb_exists(nameid)) == NULL) {
		ShowWarning("itemdb_read_itemdelay: Invalid item id %d.\n", nameid);
		return false;
	}

	delay = atoi(str[1]);

	if(delay < 0) {
		ShowWarning("itemdb_read_itemdelay: Invalid delay %d for item id %d.\n", id->delay, nameid);
		return false;
	}

	id->delay = delay;

	return true;
}

/*==================================================================
 * Reads item stacking restrictions
 *----------------------------------------------------------------*/
static bool itemdb_read_stack(char *fields[], int columns, int current)
{
	// <item id>,<stack limit amount>,<type>
	unsigned short nameid, amount;
	unsigned int type;
	struct item_data *id;

	nameid = (unsigned short)strtoul(fields[0], NULL, 10);

	if((id = itemdb_exists(nameid)) == NULL) {
		ShowWarning("itemdb_read_stack: Unknown item id '%hu'.\n", nameid);
		return false;
	}

	if(!itemdb_isstackable2(id)) {
		ShowWarning("itemdb_read_stack: Item id '%hu' is not stackable.\n", nameid);
		return false;
	}

	amount = (unsigned short)strtoul(fields[1], NULL, 10);
	type = (unsigned int)strtoul(fields[2], NULL, 10);

	if(!amount) {
		// ignore
		return true;
	}

	id->stack.amount       = amount;
	id->stack.inventory    = (type&1)!=0;
	id->stack.cart         = (type&2)!=0;
	id->stack.storage      = (type&4)!=0;
	id->stack.guildstorage = (type&8)!=0;

	return true;
}


/// Reads items allowed to be sold in buying stores
static bool itemdb_read_buyingstore(char *fields[], int columns, int current)
{
	// <nameid>
	int nameid;
	struct item_data *id;

	nameid = atoi(fields[0]);

	if((id = itemdb_exists(nameid)) == NULL) {
		ShowWarning("itemdb_read_buyingstore: Invalid item id %d.\n", nameid);
		return false;
	}

	if(!itemdb_isstackable2(id)) {
		ShowWarning("itemdb_read_buyingstore: Non-stackable item id %d cannot be enabled for buying store.\n", nameid);
		return false;
	}

	id->flag.buyingstore = true;

	return true;
}

/*******************************************
** Item usage restriction
********************************************/
static bool itemdb_read_nouse(char* fields[], int columns, int current)
{// <nameid>,<flag>,<override>
	int nameid, flag, override;
	struct item_data* id;

	nameid = atoi(fields[0]);

	if( ( id = itemdb_exists(nameid) ) == NULL ) {
		ShowWarning("itemdb_read_nouse: ID do item inválido %d.\n", nameid);
		return false;
	}

	flag = atoi(fields[1]);
	override = atoi(fields[2]);

	id->item_usage.flag = flag;
	id->item_usage.override = override;

	return true;
}

/**
 * @return: amount of retrieved entries.
 **/
int itemdb_combo_split_atoi(char *str, int *val)
{
	int i;

	for(i=0; i<MAX_ITEMS_PER_COMBO; i++) {
		if(!str) break;

		val[i] = atoi(str);

		str = strchr(str,':');

		if(str)
			*str++=0;
	}

	if(i == 0)   //No data found.
		return 0;

	return i;
}
/**
 * <combo{:combo{:combo:{..}}}>,<{ script }>
 **/
void itemdb_read_combos()
{
	int items[MAX_ITEMS_PER_COMBO], v = 0, retcount = 0, idx = 0, rows = 0, i;
	struct item_data *id = NULL;

	if(SQL_ERROR == Sql_Query(dbmysql_handle, "SELECT * FROM `%s`", get_database_name(38))) {
		Sql_ShowDebug(dbmysql_handle);
		return;
	}

	while(SQL_SUCCESS == Sql_NextRow(dbmysql_handle)) {
		char *row[2];

		for(i = 0; i < 2; ++i)
			Sql_GetData(dbmysql_handle, i, &row[i], NULL);

		if((retcount = itemdb_combo_split_atoi(row[0], items)) < 2) {
			ShowError("itemdb_read_combos: Não tem elementos suficientes (min:2).\n");
			continue;
		}

		for(v = 0; v < retcount; v++) {
			if(!itemdb_exists(items[v])) {
				ShowError("itemdb_read_combos: Item desconhecido ID: %d.\n", items[v]);
				break;
			}
		}

		if(v < retcount)
			continue;

		id = itemdb_exists(items[0]);

		idx = id->combos_count;

		if(id->combos == NULL) {
			CREATE(id->combos, struct item_combo *, 1);
			id->combos_count = 1;
		} else {
			RECREATE(id->combos, struct item_combo *, ++id->combos_count);
		}

		CREATE(id->combos[idx],struct item_combo,1);

		id->combos[idx]->nameid = aMalloc(retcount * sizeof(unsigned short));
		id->combos[idx]->count = retcount;
		id->combos[idx]->script = script->parse(row[1], "item_combo_db", rows, 0);
		id->combos[idx]->id = rows;
		id->combos[idx]->isRef = false;

		for(v = 0; v < retcount; v++)
			id->combos[idx]->nameid[v] = items[v];

		for(v = 1; v < retcount; v++) {
			struct item_data *it;
			int index;

			it = itemdb_exists(items[v]);
			index = it->combos_count;

			if(it->combos == NULL) {
				CREATE(it->combos, struct item_combo *, 1);
				it->combos_count = 1;
			} else {
				RECREATE(it->combos, struct item_combo *, ++it->combos_count);
			}

			CREATE(it->combos[index],struct item_combo,1);
			memcpy(it->combos[index],id->combos[idx],sizeof(struct item_combo));
			it->combos[index]->isRef = true;
		}

		rows++;
	}

	ShowSQL("Leitura de '"CL_WHITE"%lu"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"'.\n", rows, get_database_name(38));
	Sql_FreeResult(dbmysql_handle);
	return;
}



/*======================================
 * Applies gender restrictions according to settings. [Skotlex]
 *======================================*/
static int itemdb_gendercheck(struct item_data *id)
{
	if(id->nameid == WEDDING_RING_M)  //Grom Ring
		return 1;
	if(id->nameid == WEDDING_RING_F)  //Bride Ring
		return 0;
	if(id->look == W_MUSICAL && id->type == IT_WEAPON)  //Musical instruments are always male-only
		return 1;
	if(id->look == W_WHIP && id->type == IT_WEAPON)  //Whips are always female-only
		return 0;

	return (battle_config.ignore_items_gender) ? 2 : id->sex;
}
/**
 * [RRInd]
 * For backwards compatibility, in Renewal mode, MATK from weapons comes from the atk slot
 * We use a ':' delimiter which, if not found, assumes the weapon does not provide any matk.
 **/
void itemdb_re_split_atoi(char *str, int *atk, int *matk)
{
	int i, val[2];

	for(i=0; i<2; i++) {
		if(!str) break;
		val[i] = atoi(str);
		str = strchr(str,':');
		if(str)
			*str++=0;
	}
	if(i == 0) {
		*atk = *matk = 0;
		return;//no data found
	}
	if(i == 1) {  //Single Value, we assume it's the ATK
		*atk = val[0];
		*matk = 0;
		return;
	}
	//We assume we have 2 values.
	*atk = val[0];
	*matk = val[1];
	return;
}
/*==========================================
 * processes one itemdb entry
 *------------------------------------------*/
static bool itemdb_parse_dbrow(char **str, const char *source, int line, int scriptopt)
{
	/*
	    +----+--------------+---------------+------+-----------+------------+--------+--------+---------+-------+-------+------------+-------------+---------------+-----------------+--------------+-------------+------------+------+--------+--------------+----------------+
	    | 00 |      01      |       02      |  03  |     04    |     05     |   06   |   07   |    08   |   09  |   10  |     11     |      12     |       13      |        14       |      15      |      16     |     17     |  18  |   19   |      20      |        21      |
	    +----+--------------+---------------+------+-----------+------------+--------+--------+---------+-------+-------+------------+-------------+---------------+-----------------+--------------+-------------+------------+------+--------+--------------+----------------+
	    | id | name_english | name_japanese | type | price_buy | price_sell | weight | attack | defence | range | slots | equip_jobs | equip_upper | equip_genders | equip_locations | weapon_level | equip_level | refineable | view | script | equip_script | unequip_script |
	    +----+--------------+---------------+------+-----------+------------+--------+--------+---------+-------+-------+------------+-------------+---------------+-----------------+--------------+-------------+------------+------+--------+--------------+----------------+
	*/
	int nameid;
	struct item_data *id;

	nameid = atoi(str[0]);
	if(nameid <= 0) {
		ShowWarning("itemdb_parse_dbrow: Invalid id %d in line %d of \"%s\", skipping.\n", nameid, line, source);
		return false;
	} else if (nameid >= MAX_ITEMDB) {
		ShowWarning("itemdb_parse_dbrow: Invalid id %d in line %d of \"%s\", beyond MAX_ITEMDB, skipping.\n", nameid, line, source);
		return false;
	}

	//ID,Name,Jname,Type,Price,Sell,Weight,ATK,DEF,Range,Slot,Job,Job Upper,Gender,Loc,wLV,eLV,refineable,View
	id = itemdb_load(nameid);
	safestrncpy(id->name, str[1], sizeof(id->name));
	safestrncpy(id->jname, str[2], sizeof(id->jname));

	id->type = atoi(str[3]);

	if(id->type < 0 || id->type == IT_UNKNOWN || id->type == IT_UNKNOWN2 || (id->type > IT_SHADOWGEAR && id->type < IT_CASH) || id->type >= IT_MAX) {
		// catch invalid item types
		ShowWarning("itemdb_parse_dbrow: Invalid item type %d for item %d. IT_ETC will be used.\n", id->type, nameid);
		id->type = IT_ETC;
	}

	if(id->type == IT_DELAYCONSUME) {
		//Items that are consumed only after target confirmation
		id->type = IT_USABLE;
		id->flag.delay_consume = 1;
	} else //In case of an itemdb reload and the item type changed.
		id->flag.delay_consume = 0;

	//When a particular price is not given, we should base it off the other one
	//(it is important to make a distinction between 'no price' and 0z)
	if(str[4][0])
		id->value_buy = atoi(str[4]);
	else
		id->value_buy = atoi(str[5]) * 2;

	if(str[5][0])
		id->value_sell = atoi(str[5]);
	else
		id->value_sell = id->value_buy / 2;
	/*
	if ( !str[4][0] && !str[5][0])
	{
	    ShowWarning("itemdb_parse_dbrow: No buying/selling price defined for item %d (%s), using 20/10z\n",       nameid, id->jname);
	    id->value_buy = 20;
	    id->value_sell = 10;
	} else
	*/
	if(id->value_buy/124. < id->value_sell/75.)
		ShowWarning("itemdb_parse_dbrow: Buying/Selling [%d/%d] price of item %d (%s) allows Zeny making exploit  through buying/selling at discounted/overcharged prices!\n",
		            id->value_buy, id->value_sell, nameid, id->jname);

	id->weight = atoi(str[6]);
#if VERSION == 1
	itemdb_re_split_atoi(str[7],&id->atk,&id->matk);
#else
	id->atk = atoi(str[7]);
#endif
	id->def = atoi(str[8]);
	id->range = atoi(str[9]);
	id->slot = atoi(str[10]);

	if(id->slot > MAX_SLOTS) {
		ShowWarning("itemdb_parse_dbrow: Item %d (%s) specifies %d slots, but the server only supports up to %d. Using %d slots.\n", nameid, id->jname, id->slot, MAX_SLOTS, MAX_SLOTS);
		id->slot = MAX_SLOTS;
	}

	itemdb_jobid2mapid(id->class_base, (unsigned int)strtoul(str[11],NULL,0));
	id->class_upper = atoi(str[12]);
	id->sex = atoi(str[13]);
	id->equip = atoi(str[14]);

	if(!id->equip && itemdb_isequip2(id)) {
		ShowWarning("Item %d (%s) is an equipment with no equip-field! Making it an etc item.\n", nameid, id->jname);
		id->type = IT_ETC;
	}

	id->wlv = cap_value(atoi(str[15]), REFINE_TYPE_ARMOR, REFINE_TYPE_MAX);
#if VERSION == 1
	itemdb_re_split_atoi(str[16],&id->elv,&id->elvmax);
#else
	id->elv = atoi(str[16]);
#endif
	id->flag.no_refine = atoi(str[17]) ? 0 : 1; //FIXME: verify this
	id->look = atoi(str[18]);

	id->flag.available = 1;
	id->view_id = 0;
	id->sex = itemdb_gendercheck(id); //Apply gender filtering.

	if(id->script) {
		script->free_code(id->script);
		id->script = NULL;
	}
	if(id->equip_script) {
		script->free_code(id->equip_script);
		id->equip_script = NULL;
	}
	if(id->unequip_script) {
		script->free_code(id->unequip_script);
		id->unequip_script = NULL;
	}

	if(*str[19])
		id->script = script->parse(str[19], source, line, scriptopt);
	if(*str[20])
		id->equip_script = script->parse(str[20], source, line, scriptopt);
	if(*str[21])
		id->unequip_script = script->parse(str[21], source, line, scriptopt);

	return true;
}

/*======================================
 * item_db table reading
 *======================================*/
static int itemdb_read_sqldb(void)
{

	uint32 lines = 0, count = 0;

	// retrieve all rows from the item database
	if(SQL_ERROR == Sql_Query(dbmysql_handle, "SELECT * FROM `%s`", get_database_name(55))) {
		Sql_ShowDebug(dbmysql_handle);
		return -1;
	}

	// process rows one by one
	while(SQL_SUCCESS == Sql_NextRow(dbmysql_handle)) {  // wrap the result into a TXT-compatible format
		char *str[22];
		char *dummy = "";
		int i;
		++lines;
		for(i = 0; i < 22; ++i) {
			Sql_GetData(dbmysql_handle, i, &str[i], NULL);
			if(str[i] == NULL)
				str[i] = dummy; // get rid of NULL columns
		}

		if(!itemdb_parse_dbrow(str, get_database_name(55), lines, SCRIPT_IGNORE_EXTERNAL_BRACKETS))
			continue;
		++count;
	}

	// free the query result
	Sql_FreeResult(dbmysql_handle);

	ShowSQL("Leitura de '"CL_WHITE"%lu"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"'.\n", count, get_database_name(55));

	return 0;
}
/*==========================================
* Unique item ID function
* Only one operation by once
* Flag:
* 0 return new id
* 1 set new value, checked with current value
* 2 set new value bypassing anything
* 3/other return last value
*------------------------------------------*/
uint64 itemdb_unique_id(int8 flag, int64 value)
{
	static uint64 item_uid = 0;

	if(flag) {
		if(flag == 1) {
			if(item_uid < value)
				return (item_uid = value);
		} else if(flag == 2)
			return (item_uid = value);

		return item_uid;
	}

	return ++item_uid;
}
int itemdb_uid_load()
{

	char *uid;
	if(SQL_ERROR == Sql_Query(mmysql_handle, "SELECT `value` FROM `%s` WHERE `varname`='unique_id'", interreg_db))
		Sql_ShowDebug(mmysql_handle);

	if(SQL_SUCCESS != Sql_NextRow(mmysql_handle)) {
		ShowError("itemdb_uid_load: Unable to fetch unique_id data\n");
		Sql_FreeResult(mmysql_handle);
		return -1;
	}

	Sql_GetData(mmysql_handle, 0, &uid, NULL);
	itemdb_unique_id(1, (uint64)strtoull(uid, NULL, 10));
	Sql_FreeResult(mmysql_handle);

	return 0;
}


/*====================================
 * read all item-related databases
 *------------------------------------*/
static void itemdb_read(void)
{
	int i;
	DBData prev;
	itemdb_read_sqldb();
	for(i = 0; i < ARRAYLENGTH(itemdb_array); ++i) {
		if(itemdb_array[i]) {
			if(itemdb->names->put(itemdb->names, DB->str2key(itemdb_array[i]->name), DB->ptr2data(itemdb_array[i]), &prev)) {
				struct item_data *data = DB->data2ptr(&prev);
				ShowError("itemdb_read: duplicate AegisName '%s' in item ID %d and %d\n",itemdb_array[i]->name,itemdb_array[i]->nameid,data->nameid);
			}
		}
	}

	itemdb_read_combos();
	itemdb_read_itemgroup();
	itemdb->read_packages();

	sv_readsqldb(get_database_name(20), NULL, 2, -1, &itemdb_read_itemavail);
	sv_readsqldb(get_database_name(22), NULL, 10, -1,&ItemMoveInfo);
	sv_readsqldb(get_database_name(23), NULL, 2, -1, &itemdb_read_itemdelay);
	sv_readsqldb(get_database_name(24), NULL, 3, -1, &itemdb_read_stack);
	sv_readsqldb(get_database_name(25), NULL, 1, -1, &itemdb_read_buyingstore);
	sv_readsqldb(get_database_name(58), NULL, 3, -1, &itemdb_read_nouse);

	itemdb_uid_load();
}

/*==========================================
 * Initialize / Finalize
 *------------------------------------------*/

/// Destroys the item_data.
static void destroy_item_data(struct item_data *self, int free_self)
{
	if(self == NULL)
		return;
	// free scripts
	if(self->script)
		script->free_code(self->script);
	if(self->equip_script)
		script->free_code(self->equip_script);
	if(self->unequip_script)
		script->free_code(self->unequip_script);
	if(self->combos_count) {
		int i;
		for(i = 0; i < self->combos_count; i++) {
			if(!self->combos[i]->isRef) {
				aFree(self->combos[i]->nameid);
				script->free_code(self->combos[i]->script);
			}
			aFree(self->combos[i]);
		}
		aFree(self->combos);
	}
#if defined(DEBUG)
	// trash item
	memset(self, 0xDD, sizeof(struct item_data));
#endif
	// free self
	if(free_self)
		aFree(self);
}

/**
 * @see DBApply
 */
static int itemdb_final_sub(DBKey key, DBData *data, va_list ap)
{
	struct item_data *id = DB->data2ptr(data);

	if(id != &dummy_item)
		destroy_item_data(id, 1);

	return 0;
}

void itemdb_reload(void)
{
	struct s_mapiterator *iter;
	struct map_session_data *sd;

	int i,d,k;

	// clear the previous itemdb data
	for(i = 0; i < ARRAYLENGTH(itemdb_array); ++i)
		if(itemdb_array[i])
			destroy_item_data(itemdb_array[i], 1);

	for(i = 0; i < itemdb->package_count; i++) {
		int c;
		for(c = 0; c < itemdb->packages[i].random_qty; c++)
			aFree(itemdb->packages[i].random_groups[c].random_list);
		if(itemdb->packages[i].random_groups )
			aFree(itemdb->packages[i].random_groups);
		if(itemdb->packages[i].must_items )
			aFree(itemdb->packages[i].must_items);
	}

	if(itemdb->packages)
		aFree(itemdb->packages);

	itemdb->packages = NULL;
	itemdb->package_count = 0;

	itemdb_other->clear(itemdb_other, itemdb_final_sub);

	memset(itemdb_array, 0, sizeof(itemdb_array));

	db_clear(itemdb->names);

	// read new data
	itemdb_read();

	//Epoque's awesome @reloaditemdb fix - thanks! [Ind]
	//- Fixes the need of a @reloadmobdb after a @reloaditemdb to re-link monster drop data
	for(i = 0; i < MAX_MOB_DB; i++) {
		struct mob_db *entry;
		if(!((i < 1324 || i > 1363) && (i < 1938 || i > 1946)))
			continue;
		entry = mob_db(i);
		for(d = 0; d < MAX_MOB_DROP; d++) {
			struct item_data *id;
			if(!entry->dropitem[d].nameid)
				continue;
			id = itemdb_search(entry->dropitem[d].nameid);

			for(k = 0; k < MAX_SEARCH; k++) {
				if(id->mob[k].chance <= entry->dropitem[d].p)
					break;
			}

			if(k == MAX_SEARCH)
				continue;

			if(id->mob[k].id != i)
				memmove(&id->mob[k+1], &id->mob[k], (MAX_SEARCH-k-1)*sizeof(id->mob[0]));
			id->mob[k].chance = entry->dropitem[d].p;
			id->mob[k].id = i;
		}
	}

	// readjust itemdb pointer cache for each player
	iter = mapit_geteachpc();
	for(sd = (struct map_session_data *)mapit_first(iter); mapit_exists(iter); sd = (struct map_session_data *)mapit_next(iter)) {
		memset(sd->item_delay, 0, sizeof(sd->item_delay));  // reset item delays
		pc_setinventorydata(sd);
		if(battle_config.item_check)
			sd->state.itemcheck = 1;
		pc_checkitem(sd);
		/* clear combo bonuses */
		if(sd->combos.count) {
			aFree(sd->combos.bonus);
			aFree(sd->combos.id);
			sd->combos.bonus = NULL;
			sd->combos.id = NULL;
			sd->combos.count = 0;
			if(pc_load_combo(sd) > 0)
				status_calc_pc(sd,SCO_FORCE);
		}

	}
	mapit_free(iter);
}
void itemdb_name_constants(void) {
	DBIterator *iter = db_iterator(itemdb->names);
	struct item_data *data;

	for(data = dbi_first(iter); dbi_exists(iter); data = dbi_next(iter))
		script->set_constant2(data->name,data->nameid,0);

	dbi_destroy(iter);	
}
void do_final_itemdb(void) {
	int i;

	for(i = 0; i < ARRAYLENGTH(itemdb_array); ++i)
		if(itemdb_array[i])
			destroy_item_data(itemdb_array[i], 1);

	for(i = 0; i < itemdb->package_count; i++) {
		int c;
		for(c = 0; c < itemdb->packages[i].random_qty; c++)
			aFree(itemdb->packages[i].random_groups[c].random_list);
		if(itemdb->packages[i].random_groups)
			aFree(itemdb->packages[i].random_groups);
		if(itemdb->packages[i].must_items)
			aFree(itemdb->packages[i].must_items);
	}

	if(itemdb->packages)
		aFree(itemdb->packages);

	itemdb_other->destroy(itemdb_other, itemdb_final_sub);
	destroy_item_data(&dummy_item, 0);
	db_destroy(itemdb->names);
}

void do_init_itemdb(void)
{
	memset(itemdb_array, 0, sizeof(itemdb_array));
	itemdb_other = idb_alloc(DB_OPT_BASE);
	itemdb->names = strdb_alloc(DB_OPT_BASE,ITEM_NAME_LENGTH);
	create_dummy_data(); //Dummy data item.
	itemdb_read();
	clif_cashshop_db();

}
/* incomplete */
void itemdb_defaults(void) {
	itemdb = &itemdb_s;

	itemdb->name_constants = itemdb_name_constants;
	/* */
	itemdb->packages = NULL;
	itemdb->package_count = 0;
	/* */
	itemdb->names = NULL;
	/* */
	itemdb->read_packages = itemdb_read_packages;
	/* */
	itemdb->write_cached_packages = itemdb_write_cached_packages;
	itemdb->read_cached_packages = itemdb_read_cached_packages;
	/* */
	itemdb->name2id = itemdb_name2id;
	itemdb->package_item = itemdb_package_item;
}
