#ifndef METROTRK_PPC_TARGIMPL
#define METROTRK_PPC_TARGIMPL

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_except.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_reg.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct TRKState_PPC {
	ui32 GPR[32]; //0x0
	ui32 LR; //0x80
	ui32 CTR; //0x84
	ui32 XER; //0x88
	ui32 MSR; //0x8c
	ui32 DAR; //0x90
	ui32 DSISR; //0x94
	bool stopped; //0x98
	bool inputActivated; //0x9c
	ui8* inputPendingPtr; //0xA0
} TRKState_PPC;

typedef struct ProcessorRestoreFlags_PPC {
	ui8 TBR;
	ui8 DEC;
	ui8 linker_padding[0x9 - 0x2];
} ProcessorRestoreFlags_PPC;

extern ProcessorRestoreFlags_PPC gTRKRestoreFlags;
extern ProcessorState_PPC gTRKCPUState;
extern TRKState_PPC gTRKState;

DSError TRKPPCAccessSPR(void* srcDestPtr, ui32 spr, bool read);
DSError TRKPPCAccessPairedSingleRegister(void* srcDestPtr, ui32 psr, bool read);
DSError TRKPPCAccessFPRegister(void* srcDestPtr, ui32 fpr, bool read);
DSError TRKPPCAccessSpecialReg(void* srcDestPtr, ui32* instructionData, bool read);
void TRKPostInterruptEvent();
ui32* ConvertAddress(ui32);

#ifdef __cplusplus
}
#endif

#endif
