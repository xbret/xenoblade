#ifndef METROTRK_MEM_TRK_H
#define METROTRK_MEM_TRK_H
#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct TRKMemMap{
	u32 unk0[2];
	int unk8;
	int unkC;
} TRKMemMap;

#ifdef __cplusplus
}
#endif
#endif