/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/map/chrif.h                                                      *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena, eAthena                                          *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _CHRIF_H_
#define _CHRIF_H_

#include "../common/cbasetypes.h"
#include <time.h>
#include "map.h" //TBL_stuff

#define CHRIF_PACKET_LEN_TABLE_SIZE 0x3d

enum sd_state { ST_LOGIN, ST_LOGOUT, ST_MAPCHANGE };
struct auth_node {
	int account_id, char_id;
	int login_id1, login_id2, sex, fd;
	time_t expiration_time; // # of seconds 1/1/1970 (timestamp): Validity limit of the account (0 = unlimited)
	struct map_session_data *sd;    //Data from logged on char.
	int64 node_created; //timestamp for node timeouts
	enum sd_state state; //To track whether player was login in/out or changing maps.
};

void chrif_setuserid(char *id);
void chrif_setpasswd(char *pwd);
void chrif_checkdefaultlogin(void);
bool chrif_setip(const char *ip);
void chrif_setport(uint16 port);
void chrif_sendmap(int fd);
void chrif_recvmap(int fd);
void chrif_removemap(int fd);
void chrif_connectack(int fd);
void chrif_sendmapack(int fd);

int chrif_isconnected(void);
void chrif_check_shutdown(void);

extern int chrif_connected;
extern int other_mapserver_count;

struct auth_node *chrif_search(int account_id);
struct auth_node *chrif_auth_check(int account_id, int char_id, enum sd_state state);
bool chrif_auth_delete(int account_id, int char_id, enum sd_state state);
bool chrif_auth_finished(struct map_session_data *sd);

void chrif_authreq(struct map_session_data *sd, bool hstandalone);
void chrif_authok(int fd);
bool chrif_scdata_request(int account_id, int char_id);
bool chrif_save(struct map_session_data *sd, int flag);
bool chrif_charselectreq(struct map_session_data *sd, uint32 s_ip);
bool chrif_changemapserver(struct map_session_data *sd, uint32 ip, uint16 port);
bool chrif_changemapserverack(int account_id, int login_id1, int login_id2, int char_id, short map_index, short x, short y, uint32 ip, uint16 port);

int send_usercount_tochar(int tid, int64 tick, int id, intptr_t data);
int auth_db_cleanup(int tid, int64 tick, int id, intptr_t data);

bool chrif_searchcharid(int char_id);
bool chrif_changeemail(int id, const char *actual_email, const char *new_email);
bool chrif_char_ask_name(int acc, const char *character_name, unsigned short operation_type, int year, int month, int day, int hour, int minute, int second);
int chrif_updatefamelist(struct map_session_data *sd);
bool chrif_buildfamelist(void);
bool chrif_save_scdata(struct map_session_data *sd);
bool chrif_ragsrvinfo(int base_rate,int job_rate, int drop_rate);
bool chrif_char_offline_nsd(int account_id, int char_id);
bool chrif_char_reset_offline(void);
bool send_users_tochar(void);
bool chrif_char_online(struct map_session_data *sd);
bool chrif_changesex(struct map_session_data *sd);
bool chrif_char_ask_name_answer(int acc, const char *player_name, uint16 type, uint16 answer);
//int chrif_chardisconnect(struct map_session_data *sd);
bool chrif_divorce(int partner_id1, int partner_id2);

bool chrif_removefriend(int char_id, int friend_id);
void chrif_changedsex(int fd);
void chrif_deadopt(int father_id, int mother_id, int child_id);
bool chrif_load_scdata(int fd);
void chrif_recvfamelist(int fd);
bool chrif_divorceack(int char_id, int partner_id);

void chrif_idbanned(int fd);

void chrif_send_report(char *buf, int len);

void do_final_chrif(void);
void do_init_chrif(void);

bool chrif_flush_fifo(void);
void chrif_skillid2idx(int fd);
// There's no need for another function when a simple macro can do exactly the same effect
#define chrif_char_offline(x) chrif_char_offline_nsd((x)->status.account_id,(x)->status.char_id)


#endif /* _CHRIF_H_ */
