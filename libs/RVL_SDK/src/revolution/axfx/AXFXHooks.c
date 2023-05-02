#include "revolution/os/OSAlloc.h"
#include "revolution/axfx/AXFXHooks.h"

void* __AXFXAllocFunction(u32 param){
    return OSAllocFromHeap(__OSCurrHeap, param);
}

void __AXFXFreeFunction(void* param){
    OSFreeToHeap(__OSCurrHeap, param);
}

void AXFXSetHooks(AXFXAlloc allocHook, AXFXFree freeHook){
    __AXFXAlloc = allocHook;
    __AXFXFree = freeHook;
}

void AXFXGetHooks(AXFXAlloc* allocHook, AXFXFree* freeHook){
    *allocHook = __AXFXAlloc;
    *freeHook = __AXFXFree;
}
