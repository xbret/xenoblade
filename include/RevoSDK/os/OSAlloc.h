#ifndef RVL_SDK_OS_ALLOC_H
#define RVL_SDK_OS_ALLOC_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

extern volatile s32 __OSCurrHeap;

void* OSAllocFromHeap(s32, s32);
void OSFreeToHeap(s32, void*);
s32 OSSetCurrentHeap(s32);
void* OSInitAlloc(void*, void*, s32);
s32 OSCreateHeap(void*, void*);

#ifdef __cplusplus
}
#endif
#endif