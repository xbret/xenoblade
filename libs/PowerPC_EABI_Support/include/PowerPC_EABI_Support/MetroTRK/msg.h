#ifndef TRK_MSG
#define TRK_MSG

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct TRKPacketSeq {
	ui16 unk0;
	ui8 unk2[6];
} TRKPacketSeq;

DSError TRK_MessageSend(MessageBuffer*);

#ifdef __cplusplus
}
#endif
#endif
