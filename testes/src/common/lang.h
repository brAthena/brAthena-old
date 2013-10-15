/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/common/lang.h                                                    *
* Sistema Multi-Linguagem.                                                   *
* Mensagens de console, npcs, itens e etc.                                   *
* \author brAthena, Athena                                                   *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _LANG_H_
#define _LANG_H_

#define MAX_MESSAGES 0x7D0

extern char *read_message(const char *param);
extern void load_message_file_source(void);

typedef struct lang_ {
	char *group, *mes;
} LANG;

#endif
