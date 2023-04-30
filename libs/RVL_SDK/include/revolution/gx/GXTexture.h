#ifndef RVL_SDK_GX_TEXTURE_H
#define RVL_SDK_GX_TEXTURE_H
#include "revolution/gx/GX.h"
#include "revolution/gx/GXTev.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXTexObj {
    char UNK_0x0[0x20];
} GXTexObj;

void __GXSetSUTexRegs(void);

void GXInitTexObj(GXTexObj*, void*, u16, u16, GXTexFmt, GXTexWrapMode,
                  GXTexWrapMode, u8);
void GXInitTexObjLOD(GXTexObj*, GXTexFilter, GXTexFilter, float, float, float, u8, u8,
                     GXAnisotropy);

void GXLoadTexObj(GXTexObj*, GXTexMapID);

#ifdef __cplusplus
}
#endif
#endif
