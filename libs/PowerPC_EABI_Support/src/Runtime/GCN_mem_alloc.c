#include "types.h"
#include <revolution/OS.h>

static void InitDefaultHeap(){
    void* arenaLo;
    void* arenaHi;

    OSReport("GCN_Mem_Alloc.c : InitDefaultHeap. No Heap Available\n");
    OSReport("Metrowerks CW runtime library initializing default heap\n");

    arenaLo = OSGetArenaLo();
    arenaHi = OSGetArenaHi();

    arenaLo = OSInitAlloc(arenaLo, arenaHi, 1);
    OSSetArenaLo(arenaLo);

    arenaLo = (void*)ROUND_UP_PTR(arenaLo, 32);
    arenaHi = (void*)ROUND_DOWN_PTR(arenaHi, 32);

    OSSetCurrentHeap(OSCreateHeap(arenaLo, arenaHi));
    OSSetArenaLo(arenaLo = arenaHi);
}

//unused
void __sys_alloc(){
}

__declspec(weak) extern void __sys_free(void* ptr){
    if (__OSCurrHeap == -1) {
        InitDefaultHeap();
    }
    OSFreeToHeap(__OSCurrHeap, ptr);
}
