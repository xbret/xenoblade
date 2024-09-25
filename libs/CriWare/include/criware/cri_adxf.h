#ifndef CRI_PUBLIC_ADXF_H
#define CRI_PUBLIC_ADXF_H

#include "types.h"

#ifdef __cplusplus
extern  "C" {
#endif

void ADXF_LoadPartitionRangeNw(u32 r3, const char* filename, u32 r5, void* r6);
s32 ADXF_GetPtStat(u32 r3);

#ifdef __cplusplus
}
#endif
#endif
