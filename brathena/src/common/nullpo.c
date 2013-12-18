/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/common/nullpo.c                                                  *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena                                                   *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "../common/nullpo.h"
#include "../common/showmsg.h"

/**
 * Reports failed assertions or NULL pointers
 * 
 * @param file       Source file where the error was detected
 * @param line       Line
 * @param func       Function
 * @param targetname Name of the checked symbol
 * @param title      Message title to display (i.e. failed assertion or nullpo info)
 */
void assert_report(const char *file, int line, const char *func, const char *targetname, const char *title) {
	if (file == NULL)
		file = "??";

	if (func == NULL || *func == '\0')
		func = read_message("svn_version_mes3");

	ShowError("--- %s --------------------------------------------\n", title);
	ShowError(read_message("Source.common.nullpo_info_core"), file, line, targetname, func);
	ShowError("--- end %s ----------------------------------------\n", title);
}
