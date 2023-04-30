#ifndef RVL_SDK_GX_PIXEL_H
#define RVL_SDK_GX_PIXEL_H
#include "revolution/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void GXSetFog(GXFogType, GXColor, float, float, float, float);

void GXSetBlendMode(GXBlendMode, GXBlendFactor, GXBlendFactor, GXLogicOp);
void GXSetColorUpdate(u8);
void GXSetAlphaUpdate(u8);
void GXSetZMode(u8, GXCompare, u8);
void GXSetZCompLoc(u8);

void GXSetDither(u8);
void GXSetDstAlpha(u8, u8);

#ifdef __cplusplus
}
#endif
#endif