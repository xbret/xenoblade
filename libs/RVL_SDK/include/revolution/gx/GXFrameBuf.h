#ifndef RVL_SDK_GX_FRAMEBUF_H
#define RVL_SDK_GX_FRAMEBUF_H
#include <types.h>
#include <revolution/GX/GXTypes.h>
#include <revolution/VI/vitypes.h>
#ifdef __cplusplus
extern "C" {
#endif

#define GX_VFILTER_SZ 7

typedef struct _GXRenderModeObj {
    u32 viTVmode;              // at 0x0
    u16 fbWidth;               // at 0x4
    u16 efbHeight;             // at 0x6
    u16 xfbHeight;             // at 0x8
    u16 viXOrigin;             // at 0xA
    u16 viYOrigin;             // at 0xC
    u16 viWidth;               // at 0xE
    u16 viHeight;              // at 0x10
    VIXFBMode xFBmode;         // at 0x14
    GXBool field_rendering;    // at 0x18
    GXBool aa;                 // at 0x19
    u8 sample_pattern[12][2];  // at 0x1A
    u8 vfilter[GX_VFILTER_SZ]; // at 0x32
} GXRenderModeObj;

extern GXRenderModeObj GXNtsc240Ds;
extern GXRenderModeObj GXNtsc480IntDf;
extern GXRenderModeObj GXNtsc480Int;
extern GXRenderModeObj GXNtsc480Prog;
extern GXRenderModeObj GXNtsc480ProgSoft;
extern GXRenderModeObj GXMpal240Ds;
extern GXRenderModeObj GXMpal480IntDf;
extern GXRenderModeObj GXMpal480Int;
extern GXRenderModeObj GXMpal480Prog;
extern GXRenderModeObj GXMpal480ProgSoft;
extern GXRenderModeObj GXPal264Ds;
extern GXRenderModeObj GXPal528IntDf;
extern GXRenderModeObj GXPal528Int;
extern GXRenderModeObj GXEurgb60Hz240Ds;
extern GXRenderModeObj GXEurgb60Hz480IntDf;
extern GXRenderModeObj GXEurgb60Hz480Int;
extern GXRenderModeObj GXEurgb60Hz480Prog;
extern GXRenderModeObj GXEurgb60Hz480ProgSoft;

void GXSetDispCopySrc(u16 x, u16 y, u16 w, u16 h);
void GXSetTexCopySrc(u16 x, u16 y, u16 w, u16 h);

void GXSetDispCopyDst(u16 w, u16 numXfbLines);
void GXSetTexCopyDst(u16 w, u16 h, GXTexFmt fmt, GXBool mipmap);

void GXSetCopyClamp(GXCopyClamp clamp);

void GXSetDispCopyGamma(u32);

u32 GXGetNumXfbLines(u16 efbHeight, f32 scaleY);
f32 GXGetYScaleFactor(u16 efbHeight, u16 xfbHeight);
void GXSetDispCopyYScale(f32 scaleY);

void GXSetCopyClear(GXColor color, u32 z);
void GXSetCopyFilter(GXBool, const u8 sample_pattern[12][2], GXBool,
                     const u8 vfilter[GX_VFILTER_SZ]);

void GXCopyDisp(void*, GXBool);
void GXCopyTex(void*, GXBool);

#ifdef __cplusplus
}
#endif
#endif
