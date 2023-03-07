#ifndef RVL_SDK_OS_ARENA_H
#define RVL_SDK_OS_ARENA_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void* OSGetMEM1ArenaHi(void);
void* OSGetMEM2ArenaHi(void);
void* OSGetArenaHi(void);

void* OSGetMEM1ArenaLo(void);
void* OSGetMEM2ArenaLo(void);
void* OSGetArenaLo(void);

void OSSetMEM1ArenaHi(void*);
void OSSetMEM2ArenaHi(void*);
void OSSetArenaHi(void*);

void OSSetMEM1ArenaLo(void*);
void OSSetMEM2ArenaLo(void*);
void OSSetArenaLo(void*);

void* OSAllocFromMEM1ArenaLo(size_t, u32);

#ifdef __cplusplus
}
#endif
#endif
