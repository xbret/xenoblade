#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/mem_TRK.h"

TRKEventQueue gTRKEventQueue;


static inline DSError TRKReleaseMutex(void* p1) { return kNoError; }
static inline DSError TRKAcquireMutex(void* p1) { return kNoError; }
static inline DSError TRKInitializeMutex(void* p1) { return kNoError; }

DSError TRKInitializeEventQueue()
{
	TRKInitializeMutex(&gTRKEventQueue);
	TRKAcquireMutex(&gTRKEventQueue);
	gTRKEventQueue.mCurrEvtID = 0;
	gTRKEventQueue.mNextSlotToOverwrite = 0;
	gTRKEventQueue._24 = 0x100;
	TRKReleaseMutex(&gTRKEventQueue);
	return kNoError;
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

DSError TRKPostEvent(TRKEvent* ev)
{
	DSError ret = kNoError;
	int evID;

	TRKAcquireMutex(&gTRKEventQueue);

	if (gTRKEventQueue.mCurrEvtID == 2) {
		ret = kEventQueueFull;
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


void TRKDestructEvent(TRKEvent* event) {
	TRK_ReleaseBuffer(event->mBufferIndex);
}
