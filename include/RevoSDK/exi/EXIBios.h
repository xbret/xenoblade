#ifndef RVL_SDK_EXI_BIOS_H
#define RVL_SDK_EXI_BIOS_H
#include "RevoSDK/exi/EXICommon.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct EXIUnkStruct0 {
    u32 WORD_0x0;
    u32 WORD_0x4;
    u32 WORD_0x8;
    u32 WORD_0xC;
    u32 WORD_0x10;
} EXIUnkStruct0;

// Length is at least channel count
volatile EXIUnkStruct0 EXI_CD006800[EXI_MAX_CHAN] : 0xCD006800;

typedef struct EXIItem {
    u32 dev;              // at 0x0
    EXICallback callback; // at 0x4
} EXIItem;

typedef struct EXIData {
    EXICallback exiCallback; // at 0x0
    EXICallback tcCallback;  // at 0x4
    EXICallback extCallback; // at 0x8
    volatile s32 state;      // at 0xC
    s32 bytesRead;           // at 0x10
    void* buffer;            // at 0x14
    u32 dev;                 // at 0x18
    u32 id;                  // at 0x1C
    u32 WORD_0x20;
    s32 numItems;     // at 0x24
    EXIItem items[3]; // at 0x28
} EXIData;

BOOL EXIImm(EXIChannel, void*, s32, u32, EXICallback);
BOOL EXIImmEx(EXIChannel, void*, s32, u32);
BOOL EXIDma(EXIChannel, void*, s32, u32, EXICallback);
BOOL EXISync(EXIChannel);
void EXIClearInterrupts(EXIChannel, BOOL, BOOL, BOOL);
EXICallback EXISetExiCallback(EXIChannel, EXICallback);
void EXIProbeReset(void);
BOOL EXIProbe(EXIChannel);
BOOL EXIAttach(EXIChannel, EXICallback);
BOOL EXIDetach(EXIChannel);
BOOL EXISelect(EXIChannel, u32, u32);
BOOL EXIDeselect(EXIChannel);
void EXIInit(void);
BOOL EXILock(EXIChannel, u32, EXICallback);
BOOL EXIUnlock(EXIChannel);
s32 EXIGetID(EXIChannel, u32, u32*);

#ifdef __cplusplus
}
#endif
#endif
