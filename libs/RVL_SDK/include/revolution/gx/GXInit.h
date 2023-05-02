#ifndef RVL_SDK_GX_INIT_H
#define RVL_SDK_GX_INIT_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXData {
    union {
        u32 WORD_0x0;
        u16 SHORTS_0x0[2];
    };
    u16 SHORT_0x4;
    u16 SHORT_0x6;
    u32 WORD_0x8;
    char UNK_0xC[0x7C - 0xC];
    u32 WORD_0x7C;
    char UNK_0x80[0xA8 - 0x80];
    GXColor ambColors[2]; // at 0xA8
    GXColor matColors[2]; // at 0xB0
    u32 WORDS_0xB8[2];
    u32 WORD_0xC0;
    u32 WORD_0xC4;
    u32 WORDS_0xC8[2];
    char UNK_0xD0[0xE8 - 0xD0];
    u32 WORDS_0xE8[2];
    char UNK_0xF0[0x108 - 0xF0];
    u32 WORDS_0x108[2];
    char UNK_0x110[0x170 - 0x110];
    u32 WORD_0x170;
    u32 WORD_0x174;
    u32 WORD_0x178;
    u32 WORD_0x17C;
    char UNK_0x180[0x254 - 0x180];
    u32 WORD_0x254;
    char UNK_0x258[0x5F8 - 0x258];
    u8 dlistBegan; // at 0x5F8
    u8 BYTE_0x5F9;
    u32 dirtyFlags; // at 0x5FC
} GXData;

extern GXData* const __GXData;

#ifdef __cplusplus
}
#endif
#endif
