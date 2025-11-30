#include <revolution/OS.h>
#include <revolution/TPL.h>

#define TPL_VERSION 0x0020AF30

void TPLBind(TPLPalette* pal) {
    u16 i;

    // clang-format off
#line 25
    OS_ASSERT(pal->versionNumber == TPL_VERSION, "invalid version number for texture palette");
    // clang-format on

    pal->descriptorArray =
        (TPLDescriptor*)((char*)pal->descriptorArray + (u32)pal);

    for (i = 0; i < pal->numDescriptors; i++) {
        if (pal->descriptorArray[i].textureHeader != NULL) {
            // Convert header offset into pointer
            pal->descriptorArray[i].textureHeader =
                (TPLHeader*)((char*)pal +
                             (u32)pal->descriptorArray[i].textureHeader);

            if (!pal->descriptorArray[i].textureHeader->unpacked) {
                // Convert data offset into pointer
                pal->descriptorArray[i].textureHeader->data =
                    (char*)pal +
                    (u32)pal->descriptorArray[i].textureHeader->data;

                pal->descriptorArray[i].textureHeader->unpacked = TRUE;
            }
        }

        if (pal->descriptorArray[i].CLUTHeader != NULL) {
            // Convert header offset into pointer
            pal->descriptorArray[i].CLUTHeader =
                (TPLClutHeader*)((char*)pal +
                                 (u32)pal->descriptorArray[i].CLUTHeader);

            if (!pal->descriptorArray[i].CLUTHeader->unpacked) {
                // Convert data offset into pointer
                pal->descriptorArray[i].CLUTHeader->data =
                    (char*)pal + (u32)pal->descriptorArray[i].CLUTHeader->data;

                pal->descriptorArray[i].CLUTHeader->unpacked = TRUE;
            }
        }
    }
}

TPLDescriptor* TPLGet(TPLPalette* pal, u32 id) {
    return &pal->descriptorArray[id % pal->numDescriptors];
}

void TPLGetGXTexObjFromPalette(TPLPalette* pal, GXTexObj* to, u32 id) {
  TPLDescriptor* desc = TPLGet(pal, id);
  int mipMap = desc->textureHeader->minLOD == desc->textureHeader->maxLOD ? 0 : 1;
  GXInitTexObj(to, desc->textureHeader->data, desc->textureHeader->width,
               desc->textureHeader->height, desc->textureHeader->format,
               desc->textureHeader->wrapS, desc->textureHeader->wrapT, mipMap);
  GXInitTexObjLOD(to, desc->textureHeader->minFilter,
                  desc->textureHeader->magFilter, desc->textureHeader->minLOD,
                  desc->textureHeader->maxLOD, desc->textureHeader->LODBias, 0,
                  desc->textureHeader->edgeLODEnable, 0);
}

//unused
void TPLGetGXTexObjFromPaletteCI(){
}
