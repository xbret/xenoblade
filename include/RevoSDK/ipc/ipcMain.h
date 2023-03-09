#ifndef RVL_SDK_IPC_MAIN_H
#define RVL_SDK_IPC_MAIN_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

u32 IPC_REGS[] : 0xCD000000;

static inline u32 ACRReadReg(u32 reg) {
    return *(u32*)((char*)IPC_REGS + (reg & ~0x3));
}

static inline void ACRWriteReg(u32 reg, u32 val) {
    *(u32*)((char*)IPC_REGS + (reg & ~0x3)) = val;
}

void IPCInit(void);
u32 IPCReadReg(s32);
void IPCWriteReg(s32, u32);
void* IPCGetBufferHi(void);
void* IPCGetBufferLo(void);
void IPCSetBufferLo(void*);

#ifdef __cplusplus
}
#endif
#endif