#ifndef CRI_PUBLIC_ADXF_H
#define CRI_PUBLIC_ADXF_H

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

//States
#define ADXF_STAT_STOP      1
#define ADXF_STAT_READING   2
#define ADXF_STAT_READEND   3
#define ADXF_STAT_ERROR     4

s32 ADXF_LoadPartitionNw(s32 ptid, const char* filename, void* ptinfo, void* nfile);
s32 ADXF_GetPtStat(s32 ptid);

#ifdef __cplusplus
}
#endif
#endif
