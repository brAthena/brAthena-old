/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/config/secure.h                                                  *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, rAthena                                                  *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _CONFIG_SECURE_H_
#define _CONFIG_SECURE_H_

/**
 * Tempo de habilitação no diálogo para npcs.
 * Quando habilitado, todos os diálogos com npcs são desabilitados conforme número de segundos.
 * - ? : Tempo em segundos (ex: 10)
 * - 0 : Disabilitado
 **/

//#define SECURE_NPCTIMEOUT

/**
 * Tempo de intervalo no diálogo para npcs.

/**
 * number of seconds to 'timeout' if the user is on idle for longer than the value allowed after a 'input' field is displayed.
 * default: 180
 **/
#define NPC_SECURE_TIMEOUT_INPUT 180

/**
 * number of seconds to 'timeout' if the user is on idle for longer than the value allowed after a 'menu' is displayed.
 * default: 60
 **/
#define NPC_SECURE_TIMEOUT_MENU 60

/**
 * number of seconds to 'timeout' if the user is on idle for longer than the value allowed after a 'next' button is displayed.
 * default: 60
 **/
#define NPC_SECURE_TIMEOUT_NEXT 60

/**
 * (Secure) Optional NPC Dialog Timer
 * @requirement : SECURE_NPCTIMEOUT must be enabled
 * Minimum Interval Between timeout checks in seconds
 * Default: 1s
 **/
#define SECURE_NPCTIMEOUT_INTERVAL 1

#endif // _CONFIG_SECURE_H_
