#ifndef METROTRK_PPC_TARGIMPL
#define METROTRK_PPC_TARGIMPL

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_except.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_reg.h"

#ifdef __cplusplus
extern "C"{
#endif

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
	u8 tbr;
	u8 dec;
	u8 unk2[0x9 - 0x2];
} TRKRestoreFlags;

extern TRKRestoreFlags gTRKRestoreFlags;
extern TRKCPUState gTRKCPUState;
extern TRKState gTRKState;

DSError TRKPPCAccessSPR(void* srcDestPtr, u32 spr, BOOL read);
DSError TRKPPCAccessPairedSingleRegister(void* srcDestPtr, u32 psr, BOOL read);
DSError TRKPPCAccessFPRegister(void* srcDestPtr, u32 fpr, BOOL read);
DSError TRKPPCAccessSpecialReg(void* srcDestPtr, u32* instructionData, BOOL read);
void TRKPostInterruptEvent();
u32* ConvertAddress(u32);

#ifdef __cplusplus
}
#endif

#endif
