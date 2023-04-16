#ifndef RVL_SDK_GX_BUMP_H
#define RVL_SDK_GX_BUMP_H
#include "RevoSDK/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void GXSetTevIndirect(GXTevStageID tev_stage, GXIndTexStageID ind_stage,
                      GXIndTexFormat format, GXIndTexBiasSel bias_sel,
                      GXIndTexMtxID matrix_sel, GXIndTexWrap wrap_s,
                      GXIndTexWrap wrap_t, GXBool add_prev, GXBool utc_lod,
                      GXIndTexAlphaSel alpha_sel);
void GXSetIndTexMtx(GXIndTexMtxID mtx_sel, const f32 offset_mtx[2][3], s8 scale_exp);
void GXSetIndTexCoordScale(GXIndTexStageID ind_stage, GXIndTexScale scale_s,
                           GXIndTexScale scale_t);
void GXSetIndTexOrder(GXIndTexStageID ind_stage, GXTexCoordID tex_coord,
                      GXTexMapID tex_map);
void GXSetNumIndStages(u8 nstages);
void GXSetTevDirect(GXTevStageID tev_stage);
void GXSetTevIndWarp(GXTevStageID tev_stage, GXIndTexStageID ind_stage,
GXBool signed_offsets, GXBool replace_mode, GXIndTexMtxID matrix_sel);
void __GXUpdateBPMask(void);
void __GXSetIndirectMask(u32 mask);
void __GXFlushTextureState(void);

#ifdef __cplusplus
}
#endif
#endif