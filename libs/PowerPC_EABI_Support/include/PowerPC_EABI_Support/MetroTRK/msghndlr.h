#ifndef TRK_MSGHNDLR
#define TRK_MSGHNDLR

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct msgbuf_t {
	ui32 msgLength;
	//TODO: fix enum size shenanigans
	union{
		ui8 commandId;
		MessageCommandID commandIdInt;
	};
	union{
	    ui8 replyError;
        DSReplyError replyErrorInt;
    };
	ui32 unkC;
	ui8 unk10[0x30];
} msgbuf_t;

bool GetTRKConnected();
DSError TRK_DoConnect(MessageBuffer*);
DSError TRKDoDisconnect(MessageBuffer*);
DSError TRKDoReset(MessageBuffer*);
DSError TRKDoVersions(MessageBuffer*);
DSError TRKDoSupportMask(MessageBuffer*);
DSError TRKDoOverride(MessageBuffer*);
DSError TRKDoReadMemory(MessageBuffer*);
DSError TRKDoWriteMemory(MessageBuffer*);
DSError TRKDoReadRegisters(MessageBuffer*);
DSError TRKDoWriteRegisters(MessageBuffer*);
DSError TRKDoContinue(MessageBuffer*);
DSError TRKDoStep(MessageBuffer*);
DSError TRKDoStop(MessageBuffer*);
DSError TRKDoSetOption(MessageBuffer*);


#ifdef __cplusplus
}
#endif
#endif
