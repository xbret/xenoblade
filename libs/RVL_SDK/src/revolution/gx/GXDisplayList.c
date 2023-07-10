#include "revolution/GX.h"
#include "revolution/OS.h"
#include <string.h>

//unused
static GXFifoObj DisplayListFifo;
static GXData __savedGXdata;
static GXFifoObj OldCPUFifo;

//TODO: match these two funcs

//unused
void GXBeginDisplayList(void* list, u32 size) {
}

//unused
u32 GXEndDisplayList(void) {
	return 0;
}

void GXCallDisplayList(void* list, u32 size) {
    if (__GXData->dirtyFlags != 0) {
        __GXSetDirtyState();
    }

    if (__GXData->WORD_0x0 == 0) {
        __GXSendFlushPrim();
    }

    WGPIPE.c = GX_FIFO_CALL_DL;
    WGPIPE.p = list;
    WGPIPE.i = size;
}
