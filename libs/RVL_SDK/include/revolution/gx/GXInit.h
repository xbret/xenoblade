#ifndef RVL_SDK_GX_INIT_H
#define RVL_SDK_GX_INIT_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXData {
    union {
        u32 WORD_0x0;
        struct {
            u16 SHORT_0x0; // at 0x0
            u16 xfWritten; // at 0x2
        };
    }; // at 0x0
    u16 SHORT_0x4;
    u16 SHORT_0x6;
    u32 WORD_0x8;
    char UNK_0xC[0x7C - 0xC];
    u32 linePtWidth;
    u32 matrixIndex0; // at 0x80
    u32 matrixIndex1; // at 0x84
    char UNK_0x88[0xA8 - 0x88];
    GXColor ambColors[2];         // at 0xA8
    GXColor matColors[2];         // at 0xB0
    u32 colorControl[4];          // at 0xB8
    u32 texRegs[8];               // at 0xC8
    u32 dualTexRegs[8];           // at 0xE8
    u32 txcRegs[GX_MAX_TEXCOORD]; // at 0x108
    char UNK_0x128[0x148 - 0x128];
    u32 scissorX1Y1; // at 0x148
    u32 scissorX2Y2; // at 0x14C
    char UNK_0x150[0x170 - 0x150];
    u32 ras1_iref;
    u32 ind_imask;
    u32 ras1_ss0;
    u32 ras1_ss1;
    char UNK_0x180[0x254 - 0x180];
    u32 genMode;
    char UNK_0x258[0x528 - 0x258];
    GXProjectionType projType; // at 0x528
    float proj[6];               // at 0x52C
    union {
        struct {
            float vpOx;   // at 0x544
            float vpOy;   // at 0x548
            float vpSx;   // at 0x54C
            float vpSy;   // at 0x550
            float vpNear; // at 0x554
            float vpFar;  // at 0x558
        };
        float view[6];
    };           // at 0x544
    float offsetZ; // at 0x55C
    float scaleZ;  // at 0x560
    char UNK_0x564[0x5F8 - 0x564];
    u8 dlistBegan; // at 0x5F8
    u8 BYTE_0x5F9;
    u32 dirtyFlags; // at 0x5FC
} GXData;

extern GXData* const __GXData;

#ifdef __cplusplus
}
#endif
#endif
