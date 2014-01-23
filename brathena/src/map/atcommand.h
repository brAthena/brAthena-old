/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/map/atcommand.h                                                  *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena, eAthena                                          *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/ 

#ifndef _ATCOMMAND_H_
#define _ATCOMMAND_H_

#include "../common/conf.h"
#include "../common/db.h"
#include "pc_groups.h"

/**
 * Declarations
 **/
struct map_session_data;
struct AtCommandInfo;
struct block_list;

//This is the distance at which @autoloot works,
//if the item drops farther from the player than this,
//it will not be autolooted. [Skotlex]
//Note: The range is unlimited unless this define is set.
//#define AUTOLOOT_DISTANCE AREA_SIZE


extern char atcommand_symbol;
extern char charcommand_symbol;

#define ATCOMMAND_LENGTH 50

typedef enum {
    COMMAND_ATCOMMAND = 1,
    COMMAND_CHARCOMMAND = 2,
} AtCommandType;

typedef int (*AtCommandFunc)(const int fd, struct map_session_data *sd, const char *command, const char *message);

typedef struct AtCommandInfo AtCommandInfo;

struct AtCommandInfo {
	char command[ATCOMMAND_LENGTH];
	AtCommandFunc func;
	char *at_groups;/* quick @commands "can-use" lookup */
	char *char_groups;/* quick @charcommands "can-use" lookup */
	char *help;/* quick access to this @command's help string */
	bool log;/* whether to log this command or not, regardless of group settings */
};

AtCommandInfo *get_atcommandinfo_byname(const char *name);

bool atcommand_exec(const int fd, struct map_session_data *sd, const char *message, bool player_invoked);
bool atcommand_can_use(struct map_session_data *sd, const char *command);
bool atcommand_can_use2(struct map_session_data *sd, const char *command, AtCommandType type);

void do_init_atcommand(void);
void do_final_atcommand(void);
void atcommand_db_load_groups(GroupSettings **groups, config_setting_t **commands_, size_t sz);
bool atcommand_can_use(struct map_session_data *sd, const char *command);


bool atcommand_exists(const char *name);

const char *msg_txt(int msg_number);
bool msg_config_read(const char *cfgName);
void do_final_msg(void);

extern int atcmd_binding_count;

// @commands (script based)
struct atcmd_binding_data {
	char command[50];
	char npc_event[50];
	int level;
	int level2;
	bool log;
};

struct atcmd_binding_data **atcmd_binding;

struct atcmd_binding_data *get_atcommandbind_byname(const char *name);

#endif /* _ATCOMMAND_H_ */
