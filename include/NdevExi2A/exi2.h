
#ifndef NDEV_EXI2A_EXI2_H
#define NDEV_EXI2A_EXI2_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void __DBEXIInit(void);
BOOL __DBEXIReadReg(u32, void*, s32);
BOOL __DBEXIWriteReg(u32, const void*, s32);
BOOL __DBEXIReadRam(u32, void*, s32);
BOOL __DBEXIWriteRam(u32, const void*, s32);

#ifdef __cplusplus
}
#endif
#endif