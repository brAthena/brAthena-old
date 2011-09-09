// Copyright (c) Equipe brAthena - licenciado por GNU GPL
// Para maiores informações ver o LICENSE na pasta root do emulador [Protimus]

#include "../common/cbasetypes.h"
#include "../common/malloc.h"
#include "../common/showmsg.h"
#include "../common/strlib.h"
#include "../common/timer.h"

#ifdef WIN32
#include <winsock2.h>
#endif
#include <string.h>
#include <stdlib.h>

unsigned long sqlit_num_rows(void) {
	return sqlite_num_rows;
}

void sqlite_time(sqlite3_context *context, int argn, sqlite3_value **rc) {
	char date_time[20];
	struct tm *timer;
	int len;
	time_t now;

	time(&now);
	timer = localtime(&now);
	len = sprintf((char *)&date_time,
			"%4d-%2d-%2d %2d:%2d:%2d",
				timer->tm_mday,timer->tm_mon+1, timer->tm_year,timer->tm_hour, timer->tm_min, timer->tm_sec);

	sqlite3_result_text(context, (char *)&date_time, len, SQLITE_TRANSIENT);
}

int sqlite_release_mem(int bytes) {

	if(bytes <= 0 || bytes >= INT_MAX)
		bytes = MIN_BYT;

	ShowInfo("Uso de %d\n da memoria", sqlite3_memory_used());
	#ifdef SQLITE_IN_DEBUG
		bytes = sqlite3_memory_used();
		ShowDebug("Liberados '%d bytes'\n", sqlite3_release_memory(sqlite3_memory_used()), bytes);
	#else
		ShowInfo("Liberados '%d bytes'\n", sqlite3_release_memory(bytes));
	#endif

	return bytes;
}

void sqlite_do_final(void) {

	ShowStatus("Finalizando SQLite...\n");
	sqlite_release_mem(0);
	sqlite3_close(sqlite_data);

	ShowInfo("Finalizado.\n");
}

void sqlite_do_init(void) {

	if (sqlite_database_file[0] == 0 || sqlite_database_file[0] == "")
	{
		ShowError("Local de arquivo de database SQLite nao encontrado...\n");
		strcpy((char *)&sqlite_database_file, "sqlite/brathena_sqlite.db");
		ShowInfo("Local do arquivo de database SQLite padronizado.(%s)\n", sqlite_database_file);
	}
	#ifdef SQLITE_IN_DEBUG
		ShowInfo("Versao do SQLite: %s, Versao do SQLite no brAthena: %s\n", SQLITE_VERSION, SQLITE_VERSION_IN);
	#endif
	if (SQLITE_VERSION_IN != SQLITE_VERSION)
	{
		ShowFatalError("SQLite incompativel com o emulador!\n");
		do_final(); //Finaliza o servidor
	}
	ShowStatus("Carregando database SQLite de %s\n", sqlite_database_file);

	if ((sqlite3_open(sqlite_database_file, &sqlite_data)) != 0)
	{
		ShowFatalError("Erro ao abrir o database SQLite \n");
		sqlite3_close(sqlite_data);
		do_final();
	}

	sqlite_release_mem(0);
	add_timer_func_list(sqlite_release_mem, "sqlite_release_mem");
}