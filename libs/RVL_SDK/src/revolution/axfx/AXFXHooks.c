#include "revolution/AXFX.h"
#include "revolution/OS.h"

static void* __AXFXAllocFunction(size_t size);
static void __AXFXFreeFunction(void* block);

AXFXAllocHook __AXFXAlloc = __AXFXAllocFunction;
AXFXFreeHook __AXFXFree = __AXFXFreeFunction;

void* __AXFXAllocFunction(u32 param){
    return OSAllocFromHeap(__OSCurrHeap, param);
}

void __AXFXFreeFunction(void* param){
    OSFreeToHeap(__OSCurrHeap, param);
}

void AXFXSetHooks(AXFXAllocHook allocHook, AXFXFreeHook freeHook){
    __AXFXAlloc = allocHook;
    __AXFXFree = freeHook;
}

void AXFXGetHooks(AXFXAllocHook* allocHook, AXFXFreeHook* freeHook){
    *allocHook = __AXFXAlloc;
    *freeHook = __AXFXFree;
}
