/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/common/ers.c                                                     *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena                                                   *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/
#include <stdlib.h>

#include "../common/cbasetypes.h"
#include "../common/malloc.h" // CREATE, RECREATE, aMalloc, aFree
#include "../common/showmsg.h" // ShowMessage, ShowError, ShowFatalError, CL_BOLD, CL_NORMAL
#include "ers.h"

#ifndef DISABLE_ERS

#define ERS_BLOCK_ENTRIES 2048

struct ers_list {
	struct ers_list *Next;
};

struct ers_instance_t;

typedef struct ers_cache {
	// Allocated object size, including ers_list size
	unsigned int ObjectSize;

	// Number of ers_instances referencing this
	int ReferenceCount;

	// Reuse linked list
	struct ers_list *ReuseList;

	// Memory blocks array
	unsigned char **Blocks;

	// Max number of blocks
	unsigned int Max;

	// Free objects count
	unsigned int Free;

	// Used objects count
	unsigned int Used;

	// Objects in-use count
	unsigned int UsedObjs;

	// Default = ERS_BLOCK_ENTRIES, can be adjusted for performance for individual cache sizes.
	unsigned int ChunkSize;

	// Linked list
	struct ers_cache *Next, *Prev;
} ers_cache_t;

struct ers_instance_t {
	// Interface to ERS
	struct eri VTable;

	// Name, used for debbuging purpouses
	char *Name;

	// Misc options
	enum ERSOptions Options;

	// Our cache
	ers_cache_t *Cache;

	// Count of objects in use, used for detecting memory leaks
	unsigned int Count;

#ifdef DEBUG
	/* for data analysis [Ind] */
	unsigned int Peak;
	struct ers_instance_t *Next, *Prev;
#endif

};


// Array containing a pointer for all ers_cache structures
static ers_cache_t *CacheList = NULL;
#ifdef DEBUG
	static struct ers_instance_t *InstanceList = NULL;
#endif

static ers_cache_t *ers_find_cache(unsigned int size)
{
	ers_cache_t *cache;

	for(cache = CacheList; cache; cache = cache->Next)
		if(cache->ObjectSize == size)
			return cache;

	CREATE(cache, ers_cache_t, 1);
	cache->ObjectSize = size;
	cache->ReferenceCount = 0;
	cache->ReuseList = NULL;
	cache->Blocks = NULL;
	cache->Free = 0;
	cache->Used = 0;
	cache->UsedObjs = 0;
	cache->Max = 0;
	cache->ChunkSize = ERS_BLOCK_ENTRIES;

	if(CacheList == NULL) {
		CacheList = cache;
	} else {
		cache->Next = CacheList;
		cache->Next->Prev = cache;
		CacheList = cache;
		CacheList->Prev = NULL;
	}

	return cache;
}

static void ers_free_cache(ers_cache_t *cache, bool remove)
{
	unsigned int i;

	for(i = 0; i < cache->Used; i++)
		aFree(cache->Blocks[i]);

	if(cache->Next)
		cache->Next->Prev = cache->Prev;

	if(cache->Prev)
		cache->Prev->Next = cache->Next;
	else
		CacheList = cache->Next;

	aFree(cache->Blocks);
	aFree(cache);
}

static void *ers_obj_alloc_entry(ERS self)
{
	struct ers_instance_t *instance = (struct ers_instance_t *)self;
	void *ret;

	if(instance == NULL) {
		ShowError(read_message("Source.common.ers_obj_alloc_entry"));
		return NULL;
	}

	if(instance->Cache->ReuseList != NULL) {
		ret = (void *)((unsigned char *)instance->Cache->ReuseList + sizeof(struct ers_list));
		instance->Cache->ReuseList = instance->Cache->ReuseList->Next;
	} else if(instance->Cache->Free > 0) {
		instance->Cache->Free--;
		ret = &instance->Cache->Blocks[instance->Cache->Used - 1][instance->Cache->Free * instance->Cache->ObjectSize + sizeof(struct ers_list)];
	} else {
		if(instance->Cache->Used == instance->Cache->Max) {
			instance->Cache->Max = (instance->Cache->Max * 4) + 3;
			RECREATE(instance->Cache->Blocks, unsigned char *, instance->Cache->Max);
		}

		CREATE(instance->Cache->Blocks[instance->Cache->Used], unsigned char, instance->Cache->ObjectSize * instance->Cache->ChunkSize);
		instance->Cache->Used++;

		instance->Cache->Free = instance->Cache->ChunkSize -1;
		ret = &instance->Cache->Blocks[instance->Cache->Used - 1][instance->Cache->Free * instance->Cache->ObjectSize + sizeof(struct ers_list)];
	}

	instance->Count++;
	instance->Cache->UsedObjs++;
	
#ifdef DEBUG
	if( instance->Count > instance->Peak )
		instance->Peak = instance->Count;
#endif

	return ret;
}

static void ers_obj_free_entry(ERS self, void *entry)
{
	struct ers_instance_t *instance = (struct ers_instance_t *)self;
	struct ers_list *reuse = (struct ers_list *)((unsigned char *)entry - sizeof(struct ers_list));

	if(instance == NULL) {
		ShowError(read_message("Source.common.ers_obj_alloc_entry"));
		return;
	} else if(entry == NULL) {
		ShowError(read_message("Source.common.ers_obj_free_entry"));
		return;
	}

	reuse->Next = instance->Cache->ReuseList;
	instance->Cache->ReuseList = reuse;
	instance->Count--;
	instance->Cache->UsedObjs--;
}

static size_t ers_obj_entry_size(ERS self)
{
	struct ers_instance_t *instance = (struct ers_instance_t *)self;

	if(instance == NULL) {
		ShowError(read_message("Source.common.ers_obj_alloc_entry"));
		return 0;
	}

	return instance->Cache->ObjectSize;
}

static void ers_obj_destroy(ERS self)
{
	struct ers_instance_t *instance = (struct ers_instance_t *)self;

	if(instance == NULL) {
		ShowError(read_message("Source.common.ers_obj_alloc_entry"));
		return;
	}

	if(instance->Count > 0)
		if(!(instance->Options & ERS_OPT_CLEAR))
			ShowWarning(read_message("Source.common.ers_obj_destroy"), instance->Name, instance->Count);

	if(--instance->Cache->ReferenceCount <= 0)
		ers_free_cache(instance->Cache, true);

#ifdef DEBUG
	if (instance->Next)
		instance->Next->Prev = instance->Prev;
	
	if (instance->Prev)
		instance->Prev->Next = instance->Next;
	else
		InstanceList = instance->Next;
#endif
	
	if( instance->Options & ERS_OPT_FREE_NAME )
		aFree(instance->Name);
	
	aFree(instance);
}

void ers_cache_size(ERS self, unsigned int new_size) {
	struct ers_instance_t *instance = (struct ers_instance_t *)self;

	if (instance == NULL) {//change as per piotrhalaczkiewicz comment
		ShowError("ers_cache_size: NULL object, skipping...\n");
		return;
	}

	instance->Cache->ChunkSize = new_size;
}


ERS ers_new(uint32 size, char *name, enum ERSOptions options)
{
	struct ers_instance_t *instance;
	CREATE(instance,struct ers_instance_t, 1);

	size += sizeof(struct ers_list);
	if(size % ERS_ALIGNED)
		size += ERS_ALIGNED - size % ERS_ALIGNED;

	instance->VTable.alloc = ers_obj_alloc_entry;
	instance->VTable.free = ers_obj_free_entry;
	instance->VTable.entry_size = ers_obj_entry_size;
	instance->VTable.destroy = ers_obj_destroy;
	instance->VTable.chunk_size = ers_cache_size;

	instance->Name = ( options & ERS_OPT_FREE_NAME ) ? aStrdup(name) : name;
	instance->Options = options;

	instance->Cache = ers_find_cache(size);
	instance->Cache->ReferenceCount++;
#ifdef DEBUG
	if (InstanceList == NULL) {
		InstanceList = instance;
	} else {
		instance->Next = InstanceList;
		instance->Next->Prev = instance;
		InstanceList = instance;
		InstanceList->Prev = NULL;
	}
#endif

	instance->Count = 0;

	return &instance->VTable;
}

void ers_report(void)
{
	ers_cache_t *cache;
	unsigned int cache_c = 0, blocks_u = 0, blocks_a = 0, memory_b = 0, memory_t = 0;
#ifdef DEBUG
	struct ers_instance_t *instance;
	unsigned int instance_c = 0, instance_c_d = 0;

	for (instance = InstanceList; instance; instance = instance->Next) {
		instance_c++;
		if( (instance->Options & ERS_OPT_WAIT) && !instance->Count )
			continue;
		instance_c_d++;
		ShowMessage(CL_BOLD"[ERS Instance "CL_NORMAL""CL_WHITE"%s"CL_NORMAL""CL_BOLD" report]\n"CL_NORMAL, instance->Name);
		ShowMessage("\tblock size        : %u\n", instance->Cache->ObjectSize);
		ShowMessage("\tblocks being used : %u\n", instance->Count);
		ShowMessage("\tpeak blocks       : %u\n", instance->Peak);
		ShowMessage("\tmemory in use     : %.2f MB\n", instance->Count == 0 ? 0. : (double)((instance->Count * instance->Cache->ObjectSize)/1024)/1024);
	}
#endif

	for (cache = CacheList; cache; cache = cache->Next) {
		cache_c++;
		ShowMessage(CL_BOLD"[ERS Cache of size '"CL_NORMAL""CL_WHITE"%u"CL_NORMAL""CL_BOLD"' report]\n"CL_NORMAL, cache->ObjectSize);
		ShowMessage("\tinstances          : %u\n", cache->ReferenceCount);
		ShowMessage("\tblocks in use      : %u/%u\n", cache->UsedObjs, cache->UsedObjs+cache->Free);
		ShowMessage("\tblocks unused      : %u\n", cache->Free);
		ShowMessage("\tmemory in use      : %.2f MB\n", cache->UsedObjs == 0 ? 0. : (double)((cache->UsedObjs * cache->ObjectSize)/1024)/1024);
		ShowMessage("\tmemory allocated   : %.2f MB\n", (cache->Free+cache->UsedObjs) == 0 ? 0. : (double)(((cache->UsedObjs+cache->Free) * cache->ObjectSize)/1024)/1024);
		blocks_u += cache->UsedObjs;
		blocks_a += cache->UsedObjs + cache->Free;
		memory_b += cache->UsedObjs * cache->ObjectSize;
		memory_t += (cache->UsedObjs+cache->Free) * cache->ObjectSize;
	}
#ifdef DEBUG
	ShowInfo("ers_report: '"CL_WHITE"%u"CL_NORMAL"' instances in use, '"CL_WHITE"%u"CL_NORMAL"' displayed\n",instance_c,instance_c_d);
#endif
	ShowInfo("ers_report: '"CL_WHITE"%u"CL_NORMAL"' caches in use\n",cache_c);
	ShowInfo("ers_report: '"CL_WHITE"%u"CL_NORMAL"' blocks in use, consuming '"CL_WHITE"%.2f MB"CL_NORMAL"'\n",blocks_u,(double)((memory_b)/1024)/1024);
	ShowInfo("ers_report: '"CL_WHITE"%u"CL_NORMAL"' blocks total, consuming '"CL_WHITE"%.2f MB"CL_NORMAL"' \n",blocks_a,(double)((memory_t)/1024)/1024);
}

void ers_force_destroy_all(void)
{
	ers_cache_t *cache;

	for(cache = CacheList; cache; cache = cache->Next)
		ers_free_cache(cache, false);
}

#endif
