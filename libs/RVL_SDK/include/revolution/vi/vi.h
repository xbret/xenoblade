#ifndef RVL_SDK_VI_H
#define RVL_SDK_VI_H
#include "types.h"
#include "revolution/GX.h"
#include "revolution/vi/vitypes.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef void (*VIRetraceCallback)(u32 retraceCount);
typedef void (*VIPositionCallback)(s16 displayX, s16 displayY);

VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback callback);
VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback callback);

void VIInit(void);
void VIWaitForRetrace(void);

void VIConfigure(const GXRenderModeObj* rmo);
void VIConfigurePan(u16 x, u16 y, u16 w, u16 h);
void VIFlush(void);
void VISetNextFrameBuffer(void* fb);

void VISetBlack(BOOL black);
s32 VIGetRetraceCount(void);

u32 VIGetTvFormat(void);
u32 VIGetScanMode(void);

u32 VIGetDTVStatus();
u32 VIGetDimmingCount();
BOOL VIEnableDimming(BOOL enable);

#ifdef __cplusplus
}
#endif
#endif
