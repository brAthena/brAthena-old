/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/common/utils.h                                                   *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena                                                   *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _UTILS_H_
#define _UTILS_H_

#include "../common/cbasetypes.h"
#include <stdio.h> // FILE*
#include <time.h>

// generate a hex dump of the first 'length' bytes of 'buffer'
void WriteDump(FILE *fp, const void *buffer, size_t length);
void ShowDump(const void *buffer, size_t length);

void findfile(const char *p, const char *pat, void (func)(const char *));
bool exists(const char *filename);

//Caps values to min/max
#define cap_value(a, min, max) ((a >= max) ? max : (a <= min) ? min : a)

/// calculates the value of A / B, in percent (rounded down)
unsigned int get_percentage(const unsigned int A, const unsigned int B);

//////////////////////////////////////////////////////////////////////////
// byte word dword access [Shinomori]
//////////////////////////////////////////////////////////////////////////

extern uint8 GetByte(uint32 val, int idx);
extern uint16 GetWord(uint32 val, int idx);
extern uint16 MakeWord(uint8 byte0, uint8 byte1);
extern uint32 MakeDWord(uint16 word0, uint16 word1);

size_t hread(void * ptr, size_t size, size_t count, FILE * stream);
size_t hwrite(const void * ptr, size_t size, size_t count, FILE * stream);

/* [Ind] Caching */
struct HCache_interface {
	void (*init) (void);
	/* */
	bool (*check) (const char *file);
	FILE *(*open) (const char *file, const char *opt);
	/* */
	time_t recompile_time;
	bool enabled;
};

struct HCache_interface *HCache;

void HCache_defaults(void);

#endif /* _UTILS_H_ */
