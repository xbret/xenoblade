#ifndef RVL_SDK_GX_FRAMEBUF_H
#define RVL_SDK_GX_FRAMEBUF_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXRenderModeObj {
    u32 tvInfo;    // at 0x0
    u16 fbWidth;   // at 0x4
    u16 efbHeight; // at 0x6
    u16 xfbHeight; // at 0x8
    u16 viXOrigin; // at 0xA
    u16 viYOrigin; // at 0xC
    u16 viWidth;   // at 0xE
    u16 viHeight;  // at 0x10
    u32 xfbMode;   // at 0x14
    u8 BYTE_0x18;
    u8 BYTE_0x19;
    u8 BYTES_0x1A[24];
    u8 BYTES_0x32[7];
} GXRenderModeObj;

#ifdef __cplusplus
}
#endif
#endif