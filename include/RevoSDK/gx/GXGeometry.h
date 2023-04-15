#ifndef RVL_SDK_GX_GEOMETRY_H
#define RVL_SDK_GX_GEOMETRY_H
#include "RevoSDK/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

static void GXEnd(void) {}

void __GXSetDirtyState(void);
void GXBegin(GXPrimitive prim, u32 fmtIndex, u16 num);
void __GXSendFlushPrim(void);
void GXSetLineWidth(u8 width, u32 r5);
void GXSetPointSize(u8 width, u32 r5);
void GXEnableTexOffsets(u32 coordId, GXBool r4, GXBool r5);
void GXSetCullMode(GXCullMode mode);
void GXGetCullMode(GXCullMode* out);
void GXSetCoPlanar(u8 enable);
void __GXSetGenMode(void);

#ifdef __cplusplus
}
#endif
#endif