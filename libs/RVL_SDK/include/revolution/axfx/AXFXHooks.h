#ifndef AXFX_HOOKS_H
#define AXFX_HOOKS_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

extern volatile s32 __OSCurrHeap;

typedef void* (*AXFXAlloc)(u32);
typedef void (*AXFXFree)(void*);

void* __AXFXAllocFunction(u32 param);
void __AXFXFreeFunction(void* param);

AXFXAlloc __AXFXAlloc = __AXFXAllocFunction;
AXFXFree __AXFXFree = __AXFXFreeFunction;


void AXFXSetHooks(AXFXAlloc allocHook, AXFXFree freeHook);
void AXFXGetHooks(AXFXAlloc* allocHook, AXFXFree* freeHook);

#ifdef __cplusplus
}
#endif
#endif
