#ifndef TRK_MSG
#define TRK_MSG

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif


typedef struct _TRK_Msg {
	u8 _00[4];      // _00
	u32 mMsgLength; // _04
	u32 _0C;        // _08
	u32 mMsg;       // _0C
	u8 unk10[2];
	u16 unk12;
} TRK_Msg;


typedef struct TRKPacketSeq {
	u16 unk0;
	u8 unk2[6];
} TRKPacketSeq;

DSError TRK_MessageSend(TRK_Msg*);

#ifdef __cplusplus
}
#endif
#endif
