#ifndef TRK_MSG
#define TRK_MSG

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct TRKPacketSeq {
	u16 unk0;
	u8 unk2[6];
} TRKPacketSeq;

DSError TRK_MessageSend(MessageBuffer*);

#ifdef __cplusplus
}
#endif
#endif
