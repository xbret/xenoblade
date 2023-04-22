#include "revolution/os/OSReboot.h"

static u32 SaveStart;
static u32 SaveEnd;

void __OSReboot(u32 r3, u32 r4){
    BOOL enabled;
    char r1_8[8];

    enabled = OSDisableInterrupts();
    OSSetArenaLo(0x8128);
    OSSetArenaHi(0x812F);
    r1_8 = NULL;
    __OSNextPartitionType = OSPhysicalToCached(OS_PHYS_CURRENT_APP_NAME_1);
    __OSBootDol(r4, r3 | 0x8000, r1_8);
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