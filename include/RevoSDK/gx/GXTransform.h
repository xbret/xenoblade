#ifndef RVL_SDK_GX_TRANSFORM_H
#define RVL_SDK_GX_TRANSFORM_H
#include "RevoSDK/gx/GXTypes.h"
#include "RevoSDK/MTX.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void __GXSetProjection(void);

void GXLoadPosMtxImm(const Mtx, u32);

void GXLoadNrmMtxImm(const Mtx, u32);

void GXSetCurrentMtx(u32);

void __GXSetViewport(void);

void __GXSetMatrixIndex(u32);

#ifdef __cplusplus
}
#endif
#endif