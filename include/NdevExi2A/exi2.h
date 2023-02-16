#ifndef RVL_SDK_NDEV_EXI2AD_EXI2_H
#define RVL_SDK_NDEV_EXI2AD_EXI2_H
#include "RevoSDK/exi/EXICommon.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

BOOL __EXI2Imm(void*, int, EXIType);
void __DBEXIInit(void);
BOOL __DBEXIReadReg(u32, void*, s32);
BOOL __DBEXIWriteReg(u32, const void*, s32);
BOOL __DBEXIReadRam(u32, void*, s32);
BOOL __DBEXIWriteRam(u32, const void*, s32);

#ifdef __cplusplus
}
#endif
#endif
