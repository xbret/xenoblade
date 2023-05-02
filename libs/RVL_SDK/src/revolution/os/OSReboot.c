#include "revolution/OS.h"

static u32 SaveEnd;
static u32 SaveStart;

void __OSReboot(u32 r3, u32 r4){
    BOOL enabled;
    u32 r1_8[2];

    enabled = OSDisableInterrupts();
    OSSetArenaLo((void*)0x81280000);
    OSSetArenaHi((void*)0x812F0000);
    r1_8[0] = 0;
    __OSNextPartitionType = *(void**)OSPhysicalToCached(OS_PHYS_CURRENT_APP_NAME_1);
    __OSBootDol(r4, r3 | 0x80000000, r1_8);
}

//unused
void OSSetSaveRegion(){
}

void OSGetSaveRegion(u32* saveStartPtr, u32* saveEndPtr){
    *saveStartPtr = SaveStart;
    *saveEndPtr = SaveEnd;
}

//unused
void OSGetSavedRegion(){
}
