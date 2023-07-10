#ifndef METROTRK_PPC_TARGIMPL
#define METROTRK_PPC_TARGIMPL

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_except.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_reg.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct TRKSaveState{
	u32 unk0;
	u32 unk4;
	u32 unk8;
	u32 unkC;
	u8 unk10[0x88 - 0x10];
	u32 cr; //0x88
	u32 unk8C;
	u32 unk90;
} TRKSaveState;

typedef struct TRKState {
	u32 gprs[32]; //0x0
	u32 lr; //0x80
	u32 ctr; //0x84
	u32 xer; //0x88
	u32 msr; //0x8c
	u32 dar; //0x90
	u32 dsisr; //0x94
	BOOL stopped; //0x98
	u32 unk9C;
	void* trkInputPendingPtr; //0xA0
} TRKState;

typedef struct TRKRestoreFlags {
	u8 unk0;
	u8 unk1;
	u8 unk2[0x9 - 0x2];
} TRKRestoreFlags;

extern TRKRestoreFlags gTRKRestoreFlags;
extern TRKCPUState gTRKCPUState;
extern TRKState gTRKState;

#ifdef __cplusplus
}
#endif

#endif
