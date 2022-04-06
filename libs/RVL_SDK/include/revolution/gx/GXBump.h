#ifndef RVL_SDK_GX_BUMP_H
#define RVL_SDK_GX_BUMP_H
#include "revolution/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void GXSetTevIndirect(GXTevStageID tevStage, GXIndTexStageID texStage,
                      GXIndTexFormat texFmt, GXIndTexBiasSel biasSel,
                      GXIndTexMtxID mtxId, GXIndTexWrap wrapS,
                      GXIndTexWrap wrapT, GXBool addPrev, GXBool utcLod,
                      GXIndTexAlphaSel alphaSel);
void GXSetIndTexMtx(GXIndTexMtxID id, const float offset[2][3], s8 scaleExp);
void GXSetIndTexCoordScale(GXIndTexStageID stage, GXIndTexScale scaleS,
                           GXIndTexScale scaleT);
void GXSetIndTexOrder(GXIndTexStageID stage, GXTexCoordID coord,
                      GXTexMapID map);
void GXSetNumIndStages(u8 num);
void GXSetTevDirect(GXTevStageID stage);

void GXSetTevIndWarp(GXTevStageID tev_stage, GXIndTexStageID ind_stage,
GXBool signed_offsets, GXBool replace_mode, GXIndTexMtxID matrix_sel);

void __GXUpdateBPMask(void);
void __GXSetIndirectMask(u32 mask);
void __GXFlushTextureState(void);

#ifdef __cplusplus
}
#endif
#endif
