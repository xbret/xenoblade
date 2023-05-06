#ifndef RVL_SDK_GX_TEXTURE_H
#define RVL_SDK_GX_TEXTURE_H
#include "revolution/gx/GXInternal.h"
#include "revolution/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

GX_DECL_PUBLIC_STRUCT(GXTexObj, 32);

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
