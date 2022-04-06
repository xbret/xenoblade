#ifndef METROTRK_PPC_TARGIMPL
#define METROTRK_PPC_TARGIMPL

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Board/dolphin/target.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct TRKState_PPC {
	DefaultType GPR[32]; //0x0
	DefaultType LR; //0x80
	DefaultType CTR; //0x84
	DefaultType XER; //0x88
	Extended1Type MSR; //0x8c
	Extended1Type DAR; //0x90
	Extended1Type DSISR; //0x94
	bool stopped; //0x98
	bool inputActivated; //0x9c
	ui8* inputPendingPtr; //0xA0
} TRKState_PPC;

extern TRKState_PPC gTRKState;

typedef struct ProcessorRestoreFlags_PPC {
	ui8 TBR;
	ui8 DEC;
	ui8 linker_padding[0x9 - 0x2];
} ProcessorRestoreFlags_PPC;

extern ProcessorRestoreFlags_PPC gTRKRestoreFlags;
extern ProcessorState_PPC gTRKCPUState;

ui32 __TRK_get_MSR();
void __TRK_set_MSR(register ui32 val);
ui32 __TRK_get_PVR();
ui32 __TRK_get_IBAT0U();
ui32 __TRK_get_IBAT0L();
ui32 __TRK_get_IBAT1U();
ui32 __TRK_get_IBAT1L();
ui32 __TRK_get_IBAT2U();
ui32 __TRK_get_IBAT2L();
ui32 __TRK_get_IBAT3U();
ui32 __TRK_get_IBAT3L();
ui32 __TRK_get_DBAT0U();
ui32 __TRK_get_DBAT0L();
ui32 __TRK_get_DBAT1U();
ui32 __TRK_get_DBAT1L();
ui32 __TRK_get_DBAT2U();
ui32 __TRK_get_DBAT2L();
ui32 __TRK_get_DBAT3U();
ui32 __TRK_get_DBAT3L();

DSError TRKPPCAccessSPR(void* srcDestPtr, ui32 spr, bool read);
DSError TRKPPCAccessPairedSingleRegister(void* srcDestPtr, ui32 psr, bool read);
DSError TRKPPCAccessFPRegister(void* srcDestPtr, ui32 fpr, bool read);
DSError TRKPPCAccessSpecialReg(void* srcDestPtr, ui32* instructionData, bool read);
void TRKPostInterruptEvent();
ui32 ConvertAddress(ui32);

#ifdef __cplusplus
}
#endif

#endif
