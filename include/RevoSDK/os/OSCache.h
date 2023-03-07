#ifndef RVL_SDK_OS_CACHE_H
#define RVL_SDK_OS_CACHE_H
#include "RevoSDK/os/OSError.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void DCEnable(void);
void DCInvalidateRange(void*, u32);
void DCFlushRange(void*, u32);
void DCStoreRange(void*, u32);
void DCFlushRangeNoSync(void*, u32);
void DCStoreRangeNoSync(void*, u32);
void DCZeroRange(void*, u32);

void ICInvalidateRange(void*, u32);
void ICFlashInvalidate(void);
void ICEnable(void);

void LCEnable(void);
void LCDisable(void);
void LCLoadBlocks(void*, void*, u32);
void LCStoreBlocks(void*, void*, u32);
u32 LCStoreData(void*, void*, u32);
u32 LCQueueLength(void);
void LCQueueWait(u32);

void L2Enable(void);
void L2Disable(void);
void L2GlobalInvalidate(void);

void DMAErrorHandler(u8, OSContext*, u32, u32, ...);

void __OSCacheInit(void);

#ifdef __cplusplus
}
#endif
#endif
