#ifndef RVL_SDK_GX_MISC_H
#define RVL_SDK_GX_MISC_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef void (*GXDrawSyncCallback)(u16 token);
typedef void (*GXDrawDoneCallback)(void);

void GXSetMisc(UNKWORD token, UNKWORD val);
void GXFlush(void);
void GXResetWriteGatherPipe(void);

void GXAbortFrame(void);

void GXDrawDone(void);
void GXSetDrawDone(void);
void GXPixModeSync(void);
void GXSetDrawSync(u16 token);
u16 GXReadDrawSync(void);

GXDrawSyncCallback GXSetDrawSyncCallback(GXDrawSyncCallback callback);
GXDrawDoneCallback GXSetDrawDoneCallback(GXDrawDoneCallback callback);


#ifdef __cplusplus
}
#endif
#endif
