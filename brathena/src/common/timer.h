/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/common/timer.h                                                   *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena                                                   *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _TIMER_H_
#define _TIMER_H_

#include "../common/cbasetypes.h"

#define DIFF_TICK(a,b) ((a)-(b))
#define DIFF_TICK32(a,b) ((int32)((a)-(b)))

#define INVALID_TIMER (-1)
#define CLIF_WALK_TIMER (-2)

// timer flags
enum {
    TIMER_ONCE_AUTODEL = 0x01,
    TIMER_INTERVAL = 0x02,
    TIMER_REMOVE_HEAP = 0x10,
};

// Struct declaration

typedef int (*TimerFunc)(int tid, int64 tick, int id, intptr_t data);

struct TimerData {
	int64 tick;
	TimerFunc func;
	unsigned char type;
	int interval;
	int heap_pos;

	// general-purpose storage
	int id;
	intptr_t data;
};

// Function prototype declaration

int64 gettick(void);
int64 gettick_nocache(void);

int add_timer(int64 tick, TimerFunc func, int id, intptr_t data);
int add_timer_interval(int64 tick, TimerFunc func, int id, intptr_t data, int interval);
const struct TimerData *get_timer(int tid);
int delete_timer(int tid, TimerFunc func);

int64 addtick_timer(int tid, int64 tick);
int64 settick_timer(int tid, int64 tick);

int add_timer_func_list(TimerFunc func, char *name);

unsigned long get_uptime(void);

int do_timer(int64 tick);
void timer_init(void);
void timer_final(void);

#endif /* _TIMER_H_ */
