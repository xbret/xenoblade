#ifndef RVL_SDK_GX_LIGHT_H
#define RVL_SDK_GX_LIGHT_H
#include "revolution/gx/GXInternal.h"
#include "revolution/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

GX_DECL_PUBLIC_STRUCT(GXLightObj, 64);

void GXInitLightAttn(GXLightObj* light, float aa, float ab, float ac, float ka, float kb,
                     float kc);
void GXInitLightAttnA(GXLightObj* light, float a, float b, float c);
void GXInitLightAttnK(GXLightObj* light, float a, float b, float c);
void GXInitLightSpot(GXLightObj* light, float angle, GXSpotFn fn);
void GXInitLightDistAttn(GXLightObj* light, float distance, float brightness, GXDistAttnFn fn);
void GXInitLightPos(GXLightObj* light, float x, float y, float z);
void GXGetLightPos(const GXLightObj* light, float* x, float* y, float* z);
void GXInitLightDir(GXLightObj* light, float x, float y, float z);
void GXGetLightDir(const GXLightObj* light, float* x, float* y, float* z);
void GXInitSpecularDir(GXLightObj* light, float x, float y, float z);
void GXInitLightColor(GXLightObj* light, GXColor color);
void GXLoadLightObjImm(const GXLightObj* light, GXLightID id);
void GXLoadLightObjIndx(u16 index, GXLightID id);
void GXSetChanAmbColor(GXChannelID chan, GXColor color);
void GXSetChanMatColor(GXChannelID chan, GXColor color);
void GXSetNumChans(u8 num);
void GXSetChanCtrl(GXChannelID chan, GXBool enable, GXColorSrc ambSrc,
                   GXColorSrc matSrc, GXLightID lightMask, GXDiffuseFn diffFn,
                   GXAttnFn attnFn);

#ifdef __cplusplus
}
#endif
#endif
