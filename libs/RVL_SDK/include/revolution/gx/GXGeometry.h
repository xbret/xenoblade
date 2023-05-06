#ifndef RVL_SDK_GX_GEOMETRY_H
#define RVL_SDK_GX_GEOMETRY_H
#include "revolution/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

static void GXEnd(void) {}

void __GXSetDirtyState(void);
void GXBegin(GXPrimitive prim, GXVtxFmtIdx fmt, u16 verts);
void __GXSendFlushPrim(void);
void GXSetLineWidth(u8 width, u32 offset);
void GXSetPointSize(u8 size, u32 offset);
void GXEnableTexOffsets(GXTexCoordID coordId, GXBool lineOfs, GXBool pointOfs);
void GXSetCullMode(GXCullMode mode);
void GXGetCullMode(GXCullMode* out);
void GXSetCoPlanar(GXBool coplanar);
void __GXSetGenMode(void);

#ifdef __cplusplus
}
#endif
#endif
