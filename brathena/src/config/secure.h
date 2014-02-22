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
 * Temporizador de diálogo para npcs.
 * Todos os diálogos com npcs são desabilitados caso o jogador não faça nenhuma ação em um determinado tempo (oficial).
 * O npc muda o botão da janela de diálogo para close.
 * Comente a definição abaixo para desativar.
 **/
#define SECURE_NPCTIMEOUT

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

/**
 * Uncomment to disable
 * while enabled, movement of invisible (cloaking, hide, etca [not chase walk]) units is not informed to nearby foes,
 * rendering any client-side cheat, that would otherwise make these units visible, to
 * - "Why is this a setting?" because theres a cost, while enabled if a hidden character uses a skill with cast time,
 * - for example "cloaking -> walk a bit -> soul break another player" the character display will be momentarily abrupted
 * - on the action of unhiding (its a quick effect, ~0.007s in duration), and due to the nature of the skill cast on the client
 * - it was not possible to work around this, and thus why it is optional, comment the line to disable.
 **/
#define ANTI_MAYAP_CHEAT

#endif // _CONFIG_SECURE_H_
