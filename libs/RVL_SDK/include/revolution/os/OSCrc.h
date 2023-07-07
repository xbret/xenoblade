#ifndef RVL_SDK_OS_CRC_H
#define RVL_SDK_OS_CRC_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

u16 OSCalcCRC16(const u8* array, s32 length);

#ifdef __cplusplus
}
#endif
#endif
