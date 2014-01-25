/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/config/const.h                                                   *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, rAthena                                                  *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _H_CONSTANTS_
#define _H_CONSTANTS_

/**
 * Checagens de segurança para tempo de intervalo nos diálogos com npcs.
 **/
#if SECURE_NPCTIMEOUT_INTERVAL <= 0
	#error SECURE_NPCTIMEOUT_INTERVAL should be at least 1 (1s)
#endif
#if NPC_SECURE_TIMEOUT_INPUT < 0
	#error NPC_SECURE_TIMEOUT_INPUT cannot be lower than 0
#endif
#if NPC_SECURE_TIMEOUT_MENU < 0
	#error NPC_SECURE_TIMEOUT_MENU cannot be lower than 0
#endif
#if NPC_SECURE_TIMEOUT_NEXT < 0
	#error NPC_SECURE_TIMEOUT_NEXT cannot be lower than 0
#endif

/**
 * Sufixo para arquivos no banco de dados da renovação/pré-renovação
 **/
#if VERSION == 1
	#define DBPATH "_re.txt"
#elif VERSION == 0
	#define DBPATH "_pre-re.txt"
#else
	#define DBPATH "_ot.txt"
#endif

/**
 * DefType
 *
 *
#if VERSION == 1
 */
	typedef short defType;
	#define DEFTYPE_MIN SHRT_MIN
	#define DEFTYPE_MAX SHRT_MAX
/*
#else
	typedef signed char defType;
	#define DEFTYPE_MIN CHAR_MIN
	#define DEFTYPE_MAX CHAR_MAX
#endif
*/

/* Definições para corrigir vários gcc warnings */
#ifdef __64BIT__
	#define __64BPRTSIZE(y) ((intptr)(y))
#else
	#define __64BPRTSIZE(y) (y)
#endif

/* Cálculos de ATCMD_FUNC(mobinfo) HIT e FLEE */
#if VERSION == 1
	#define MOB_FLEE(mobdata) ((mobdata)->lv + (mobdata)->status.agi + 100)
	#define MOB_HIT(mobdata)  ((mobdata)->lv + (mobdata)->status.dex + 150)
	#define RE_SKILL_REDUCTION() do { \
		wd.damage = battle_calc_elefix(src, target, skill_id, skill_lv, battle_calc_cardfix(BF_WEAPON, src, target, nk, s_ele, s_ele_, wd.damage, 0, wd.flag), nk, n_ele, s_ele, s_ele_, false, flag.arrow); \
		if( flag.lh ) \
			wd.damage2 = battle_calc_elefix(src, target, skill_id, skill_lv, battle_calc_cardfix(BF_WEAPON, src, target, nk, s_ele, s_ele_, wd.damage2, 1, wd.flag), nk, n_ele, s_ele, s_ele_, true, flag.arrow); \
	} while(0)
#else
	#define MOB_FLEE(mobdata) ((mobdata)->lv + (mobdata)->status.agi)
	#define MOB_HIT(mobdata)  ((mobdata)->lv + (mobdata)->status.dex)
#endif

/* Modo de renovação para modificações de dano conforme o nível */
#ifdef RENEWAL_LVDMG
	#define RE_LVL_DMOD(val) do { \
		if(status->get_lv(src) > 100 && (val) > 0 ) \
			skillratio = skillratio * status->get_lv(src) / (val); \
	} while(0)
	#define RE_LVL_MDMOD(val) do { \
		if(status->get_lv(src) > 100 && (val) > 0) \
			md.damage = md.damage * status->get_lv(src) / (val); \
	} while(0)
	/* ranger traps special */
	#define RE_LVL_TMDMOD() do { \
		if(status->get_lv(src) > 100 ) \
			md.damage = md.damage * 150 / 100 + md.damage * status->get_lv(src) / 100; \
	} while(0)
#else
	#define RE_LVL_DMOD(val) 
	#define RE_LVL_MDMOD(val)
	#define RE_LVL_TMDMOD()
#endif

/* Número máximo de carrinhos para clientes de 2012 */
#if PACKETVER >= 20120201
	#define NEW_CARTS
	#define MAX_CARTS 9
#else
	#define MAX_CARTS 5
#endif

// Redução do tempo de conjuração variável da renovação.
#ifdef RENEWAL_CAST
	#define VARCAST_REDUCTION(val) do { \
		if( (varcast_r += (val)) != 0 && varcast_r >= 0 ) \
			time = time * (1 - (float)min((val), 100) / 100); \
	} while(0)
#endif

/* console_input doesn't go well with minicore */
#ifdef MINICORE
	#undef CONSOLE_INPUT
#endif

/**
 * End of File
 **/
#endif /* _H_CONSTANTS_ */
