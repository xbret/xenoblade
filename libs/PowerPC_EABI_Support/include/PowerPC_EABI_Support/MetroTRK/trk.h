#ifndef _METROTRK_TRK_H
#define _METROTRK_TRK_H

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/msgcmd.h"
#include "PowerPC_EABI_Support/MetroTRK/dserror.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/UART.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus


typedef struct MessageBuffer {
	u32 unk0;
	u32 unk4;
	s32 unk8;
	u32 unkC;
	u8 mCommandId;
	u8 unk11[3];
	u8 mBuffer[0x87C]; //0x14
} MessageBuffer;


extern BOOL gTRKBigEndian;
extern void* gTRKInputPendingPtr;


#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
