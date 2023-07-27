#ifndef METROTRK_MEM_TRK_H
#define METROTRK_MEM_TRK_H
#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

typedef struct TRKMemMap{
	u32 unk0;
	u32 unk4;
	int unk8;
	int unkC;
} TRKMemMap;

const TRKMemMap gTRKMemMap = {
	0,
	-1,
	1,
	1
};


#endif