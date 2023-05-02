#ifndef RVL_SDK_GX_DISPLAY_LIST_H
#define RVL_SDK_GX_DISPLAY_LIST_H
#include "revolution/gx/GX.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void GXBeginDisplayList(void* list, u32 size);
u32 GXEndDisplayList(void);
void GXCallDisplayList(void* list, u32 size);

static inline void GXFastCallDisplayList(void* list, u32 size) {
    WGPIPE.c = 0x40;
    WGPIPE.p = list;
    WGPIPE.i = size;
}

#ifdef __cplusplus
}
#endif
#endif
