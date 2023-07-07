#ifndef TRK_NUBEVENT
#define TRK_NUBEVENT

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif

/**
 * @size{0xC}
 */
typedef struct TRKEvent {
	int mEventType;
	int _04;
	int mBufferIndex;
} TRKEvent;

/**
 * @size{0x28}
 */
typedef struct TRKEventQueue {
	int mCurrEvtID;
	int mNextSlotToOverwrite;
	TRKEvent mEvents[2];
	u32 _24; /* max of 0x100? */
	u8 unk28[4];
} TRKEventQueue;

extern TRKEventQueue gTRKEventQueue;

DSError TRKInitializeEventQueue();
BOOL TRKGetNextEvent(TRKEvent*);
DSError TRKPostEvent(TRKEvent*);
void TRKConstructEvent(TRKEvent*, int);
void TRKDestructEvent(TRKEvent*);

#ifdef __cplusplus
}
#endif
#endif
