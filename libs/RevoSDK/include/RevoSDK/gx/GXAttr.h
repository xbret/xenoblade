#ifndef RVL_SDK_GX_ATTR_H
#define RVL_SDK_GX_ATTR_H
#include "RevoSDK/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void GXSetVtxDesc(GXAttr, GXAttr);

void __GXSetVCD(void);
void __GXCalculateVLim(void);

void GXClearVtxDesc(void);
void GXSetVtxAttrFmt(u32 formatIndex, GXAttr, u32, u32, u8 frac);

void __GXSetVAT(void);

void GXSetArray(GXAttr, const void*, u8);

void GXSetTexCoordGen2(GXTexCoordID, GXTexGenType, GXTexGenSrc, u32, u8,
                       u32);
void GXSetNumTexGens(u8);

static inline void GXSetTexCoordGen(GXTexCoordID coord, GXTexGenType type,
                                    GXTexGenSrc src, u32 r6) {
    GXSetTexCoordGen2(coord, type, src, r6, 0, 0x7D);
}

#ifdef __cplusplus
}
#endif
#endif