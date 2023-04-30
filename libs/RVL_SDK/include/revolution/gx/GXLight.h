#ifndef RVL_SDK_GX_LIGHT_H
#define RVL_SDK_GX_LIGHT_H
#include "revolution/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXLightObj {
    char UNK_0x0[0xC];
    GXColor color; // at 0xC
    float aa;        // at 0x10
    float ab;        // at 0x14
    float ac;        // at 0x18
    float ka;        // at 0x1C
    float kb;        // at 0x20
    float kc;        // at 0x24
    float posX;      // at 0x28
    float posY;      // at 0x2C
    float posZ;      // at 0x30
    float dirX;      // at 0x34
    float dirY;      // at 0x38
    float dirZ;      // at 0x3C
} GXLightObj;

void GXInitLightAttn(GXLightObj* light, float aa, float ab, float ac, float ka, float kb,
                     float kc);
void GXInitLightAttnA(GXLightObj* light, float a, float b, float c);
void GXInitLightAttnK(GXLightObj* light, float a, float b, float c);
void GXInitLightSpot(GXLightObj* light, float angle, GXSpotFn fn);
void GXInitLightDistAttn(GXLightObj* light, float f1, float f2, GXDistAttnFn fn);
void GXInitLightPos(GXLightObj* light, float x, float y, float z);
void GXGetLightPos(const GXLightObj* light, float* x, float* y, float* z);
void GXInitLightDir(GXLightObj* light, float x, float y, float z);
void GXGetLightDir(const GXLightObj* light, float* x, float* y, float* z);
void GXInitSpecularDir(GXLightObj* light, float x, float y, float z);
void GXInitLightColor(GXLightObj* light, GXColor color);
void GXLoadLightObjImm(GXLightObj* light, u32 id);
void GXLoadLightObjIndx(u32 index, u32 id);
void GXSetChanAmbColor(GXChannelID chan, GXColor color);
void GXSetChanMatColor(GXChannelID chan, GXColor color);
void GXSetNumChans(u8 num);
void GXSetChanCtrl(GXChannelID chan, GXBool r4, GXColorSrc src0,
                   GXColorSrc src1, GXLightID light, GXDiffuseFn diffFn,
                   GXAttnFn attnFn);

#ifdef __cplusplus
}
#endif
#endif
