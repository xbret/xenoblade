#ifndef RVL_SDK_TPL_H
#define RVL_SDK_TPL_H
#include "RevoSDK/gx/GXTexture.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

/**
 * Documentation from:
 * https://github.com/soopercool101/BrawlCrate/blob/master/BrawlLib/SSBB/Types/TPL.cs
 * https://wiki.tockdom.com/wiki/TPL_(File_Format)
 */

typedef struct TPLImageHeader {
    u16 height;      // at 0x0
    u16 width;       // at 0x2
    GXTexFmt format; // at 0x4
    union {
        // Offset before unpacking
        u32 offset;
        void* data;
    };                   // at 0x8
    GXTexWrapMode wrapS; // at 0xC
    GXTexWrapMode wrapT; // at 0x10
    GXTexFilter minFilt; // at 0x14
    GXTexFilter magFilt; // at 0x18
    f32 lodBias;         // at 0x1C
    u8 edgeLodEnable;    // at 0x20
    u8 minLod;           // at 0x21
    u8 maxLod;           // at 0x22
    u8 unpacked;         // at 0x23
} TPLImageHeader;

typedef struct TPLPaletteHeader {
    u16 numEntries; // at 0x0
    u8 unpacked;    // at 0x1
    char UNK_0x2;
    GXTlutFmt format; // at 0x4
    union {
        // Offset before unpacking
        u32 offset;
        void* data;
    }; // at 0x8
} TPLPaletteHeader;

typedef struct TPLDescriptor {
    union {
        // Offset before unpacking
        u32 imageOfs;
        TPLImageHeader* imageHeader;
    }; // at 0x0
    union {
        // Offset before unpacking
        u32 palOfs;
        TPLPaletteHeader* palHeader;
    }; // at 0x4
} TPLDescriptor;

typedef struct TPLPalette {
    u32 version;   // at 0x0
    u32 numImages; // at 0x4
    union {
        // Offset before unpacking
        u32 imageTableOfs;
        TPLDescriptor* imageTable;
    }; // at 0x8
} TPLPalette;

void TPLBind(TPLPalette*);
TPLDescriptor* TPLGet(TPLPalette*, u32);
void TPLGetGXTexObjFromPalette(TPLPalette*, GXTexObj*, u32);

#ifdef __cplusplus
}
#endif
#endif
