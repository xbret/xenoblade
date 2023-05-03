#include "PowerPC_EABI_Support/MetroTRK/trk.h"

TRKEventQueue gTRKEventQueue;


static inline TRKResult TRKReleaseMutex(void* p1) { return TRKSuccess; }
static inline TRKResult TRKAcquireMutex(void* p1) { return TRKSuccess; }
static inline TRKResult TRKInitializeMutex(void* p1) { return TRKSuccess; }

TRKResult TRKInitializeEventQueue()
{
	TRKInitializeMutex(&gTRKEventQueue);
	TRKAcquireMutex(&gTRKEventQueue);
	gTRKEventQueue.mCurrEvtID = 0;
	gTRKEventQueue.mNextSlotToOverwrite = 0;
	gTRKEventQueue._24 = 0x100;
	TRKReleaseMutex(&gTRKEventQueue);
	return TRKSuccess;
}

//unused
void TRKCopyEvent(void)
{
}

BOOL TRKGetNextEvent(TRKEvent* ev)
{
	BOOL ret = FALSE;

	TRKAcquireMutex(&gTRKEventQueue);

	if (gTRKEventQueue.mCurrEvtID > 0) {
		TRK_memcpy(ev, &gTRKEventQueue.mEvents[gTRKEventQueue.mNextSlotToOverwrite], sizeof(TRKEvent));
		gTRKEventQueue.mCurrEvtID--;

		if (++gTRKEventQueue.mNextSlotToOverwrite == 2) {
			gTRKEventQueue.mNextSlotToOverwrite = 0;
		}

		ret = TRUE;
	}

	TRKReleaseMutex(&gTRKEventQueue);
	return ret;
}

TRKResult TRKPostEvent(TRKEvent* ev)
{
	TRKResult ret = 0;
	int evID;

	TRKAcquireMutex(&gTRKEventQueue);

	if (gTRKEventQueue.mCurrEvtID == 2) {
		ret = 256;
		OSReport("MetroTRK - Event Queue full\n");
	} else {
		evID = (gTRKEventQueue.mNextSlotToOverwrite + gTRKEventQueue.mCurrEvtID) % 2;
		TRK_memcpy(&gTRKEventQueue.mEvents[evID], ev, sizeof(TRKEvent));
		gTRKEventQueue.mEvents[evID]._04 = gTRKEventQueue._24;

		if (++gTRKEventQueue._24 < 256) {
			gTRKEventQueue._24 = 256;
		}

		gTRKEventQueue.mCurrEvtID++;
	}

	TRKReleaseMutex(&gTRKEventQueue);
	return ret;
}

void TRKConstructEvent(TRKEvent* event, int eventType)
{
	event->mEventType = eventType;
	event->_04 = 0;
	event->mBufferIndex = -1;
}


void TRKDestructEvent(TRKEvent* event) { TRKReleaseBuffer(event->mBufferIndex); }
