#include "revolution/GX.h"

void GXSetTevIndirect(GXTevStageID tev_stage, GXIndTexStageID ind_stage,
                      GXIndTexFormat format, GXIndTexBiasSel bias_sel,
                      GXIndTexMtxID matrix_sel, GXIndTexWrap wrap_s,
                      GXIndTexWrap wrap_t, GXBool add_prev, GXBool utc_lod,
                      GXIndTexAlphaSel alpha_sel) {
    u32 field = 0;
    const u32 stage = tev_stage + GX_MAX_TEVSTAGE;

    GX_BITFIELD_SET(field, 30, 2, ind_stage);
    GX_BITFIELD_SET(field, 28, 2, format);
    GX_BITFIELD_SET(field, 25, 3, bias_sel);
    GX_BITFIELD_SET(field, 23, 2, alpha_sel);
    GX_BITFIELD_SET(field, 19, 4, matrix_sel);
    GX_BITFIELD_SET(field, 16, 3, wrap_s);
    GX_BITFIELD_SET(field, 13, 3, wrap_t);
    GX_BITFIELD_SET(field, 12, 1, utc_lod);
    GX_BITFIELD_SET(field, 11, 1, add_prev);
    GX_BITFIELD_SET(field, 0, 8, stage);

    WGPIPE.c = GX_FIFO_ACCESS_BP;
    WGPIPE.i = field;
    __GXData->SHORTS_0x0[1] = 0;
}

//only matches on 1.0

void GXSetIndTexMtx(GXIndTexMtxID mtx_sel, const float offset_mtx[2][3], s8 scale_exp) {
    u32 val;
    u32 field;

    switch (mtx_sel) {
    case GX_ITM_0:
    case GX_ITM_1:
    case GX_ITM_2:
        val = mtx_sel - 1;
        break;
    case GX_ITM_S0:
    case GX_ITM_S1:
    case GX_ITM_S2:
        val = mtx_sel - 5;
        break;
    case GX_ITM_T0:
    case GX_ITM_T1:
    case GX_ITM_T2:
        val = mtx_sel - 9;
        break;
    case 4:
    case 8:
    default:
        val = 0;
    }

    scale_exp += 0x11;

    field = 0;
    GX_BITFIELD_SET(field, 21, 11, 1024.0f * offset_mtx[0][0]);
    GX_BITFIELD_SET(field, 10, 11, 1024.0f * offset_mtx[1][0]);
    GX_BITFIELD_SET(field, 8, 2, scale_exp);
    GX_BITFIELD_SET(field, 0, 8, (val * 4) - val + 6);
    WGPIPE.c = GX_FIFO_ACCESS_BP;
    WGPIPE.i = field;

    field = 0;
    GX_BITFIELD_SET(field, 21, 11, 1024.0f * offset_mtx[0][1]);
    GX_BITFIELD_SET(field, 10, 11, 1024.0f * offset_mtx[1][1]);
    field = __rlwimi(field, scale_exp, 20, 8, 9);
    GX_BITFIELD_SET(field, 0, 8, (val * 4) - val + 7);
    WGPIPE.c = GX_FIFO_ACCESS_BP;
    WGPIPE.i = field;

    field = 0;
    GX_BITFIELD_SET(field, 21, 11, 1024.0f * offset_mtx[0][2]);
    GX_BITFIELD_SET(field, 10, 11, 1024.0f * offset_mtx[1][2]);
    field = __rlwimi(field, scale_exp, 18, 8, 9);
    GX_BITFIELD_SET(field, 0, 8, (val * 4) - val + 8);
    WGPIPE.c = GX_FIFO_ACCESS_BP;
    WGPIPE.i = field;

    __GXData->SHORTS_0x0[1] = 0;
}


void GXSetIndTexCoordScale(GXIndTexStageID ind_stage, GXIndTexScale scale_s,
                           GXIndTexScale scale_t) {
    switch (ind_stage) {
    case GX_INDTEXSTAGE0:
        GX_BITFIELD_SET(__GXData->WORD_0x178, 28, 4, scale_s);
        GX_BITFIELD_SET(__GXData->WORD_0x178, 24, 4, scale_t);
        GX_BITFIELD_SET(__GXData->WORD_0x178, 0, 8, 0x25);
        WGPIPE.c = GX_FIFO_ACCESS_BP;
        WGPIPE.i = __GXData->WORD_0x178;
        break;
    case GX_INDTEXSTAGE1:
        GX_BITFIELD_SET(__GXData->WORD_0x178, 20, 4, scale_s);
        GX_BITFIELD_SET(__GXData->WORD_0x178, 16, 4, scale_t);
        GX_BITFIELD_SET(__GXData->WORD_0x178, 0, 8, 0x25);
        WGPIPE.c = GX_FIFO_ACCESS_BP;
        WGPIPE.i = __GXData->WORD_0x178;
        break;
    case GX_INDTEXSTAGE2:
        GX_BITFIELD_SET(__GXData->WORD_0x17C, 28, 4, scale_s);
        GX_BITFIELD_SET(__GXData->WORD_0x17C, 24, 4, scale_t);
        GX_BITFIELD_SET(__GXData->WORD_0x17C, 0, 8, 0x26);
        WGPIPE.c = GX_FIFO_ACCESS_BP;
        WGPIPE.i = __GXData->WORD_0x17C;
        break;
    case GX_INDTEXSTAGE3:
        GX_BITFIELD_SET(__GXData->WORD_0x17C, 20, 4, scale_s);
        GX_BITFIELD_SET(__GXData->WORD_0x17C, 16, 4, scale_t);
        GX_BITFIELD_SET(__GXData->WORD_0x17C, 0, 8, 0x26);
        WGPIPE.c = GX_FIFO_ACCESS_BP;
        WGPIPE.i = __GXData->WORD_0x17C;
        break;
    }

    __GXData->SHORTS_0x0[1] = 0;
}

void GXSetIndTexOrder(GXIndTexStageID ind_stage, GXTexCoordID tex_coord,
                      GXTexMapID tex_map) {
    if (tex_map == GX_TEXMAP_NULL) {
        tex_map = GX_TEXMAP0;
    }

    if (tex_coord == GX_TEXCOORD_NULL) {
        tex_coord = GX_TEXCOORD0;
    }

    switch (ind_stage) {
    case GX_INDTEXSTAGE0:
        GX_BITFIELD_SET(__GXData->WORD_0x170, 29, 3, tex_map);
        GX_BITFIELD_SET(__GXData->WORD_0x170, 26, 3, tex_coord);
        break;
    case GX_INDTEXSTAGE1:
        GX_BITFIELD_SET(__GXData->WORD_0x170, 23, 3, tex_map);
        GX_BITFIELD_SET(__GXData->WORD_0x170, 20, 3, tex_coord);
        break;
    case GX_INDTEXSTAGE2:
        GX_BITFIELD_SET(__GXData->WORD_0x170, 17, 3, tex_map);
        GX_BITFIELD_SET(__GXData->WORD_0x170, 14, 3, tex_coord);
        break;
    case GX_INDTEXSTAGE3:
        GX_BITFIELD_SET(__GXData->WORD_0x170, 11, 3, tex_map);
        GX_BITFIELD_SET(__GXData->WORD_0x170, 8, 3, tex_coord);
        break;
    }

    WGPIPE.c = GX_FIFO_ACCESS_BP;
    WGPIPE.i = __GXData->WORD_0x170;
    __GXData->dirtyFlags |= 0x3;
    __GXData->SHORTS_0x0[1] = 0;
}

void GXSetNumIndStages(u8 nstages) {
    GX_BITFIELD_SET(__GXData->WORD_0x254, 13, 3, nstages);
    __GXData->dirtyFlags |= 0x6;
}

void GXSetTevDirect(GXTevStageID tev_stage) {
    GXSetTevIndirect(tev_stage, GX_INDTEXSTAGE0, GX_ITF_8, GX_ITB_NONE, GX_ITM_OFF,
                     GX_ITW_OFF, GX_ITW_OFF, FALSE, FALSE, GX_ITBA_OFF);
}

void GXSetTevIndWarp(GXTevStageID tev_stage, GXIndTexStageID ind_stage,
GXBool signed_offsets, GXBool replace_mode, GXIndTexMtxID matrix_sel){
    GXIndTexWrap wrap = replace_mode ? GX_ITW_0 : GX_ITW_OFF;
    GXIndTexBiasSel bias = signed_offsets ? GX_ITB_STU : GX_ITB_NONE;

    GXSetTevIndirect(tev_stage, ind_stage, GX_ITF_8, bias, matrix_sel,
                    wrap, wrap, FALSE, FALSE, GX_ITBA_OFF);
}

//unused
void GXSetTevIndTile(){
}

//unused
void GXSetTevIndBumpST(){
}

//unused
void GXSetTevIndBumpXYZ(){    
}

//unused
void GXSetTevIndRepeat(){
}

void __GXUpdateBPMask(void) {}

void __GXSetIndirectMask(u32 mask) {
    GX_BITFIELD_SET(__GXData->WORD_0x174, 24, 8, mask);
    WGPIPE.c = GX_FIFO_ACCESS_BP;
    WGPIPE.i = __GXData->WORD_0x174;
    __GXData->SHORTS_0x0[1] = 0;
}

void __GXFlushTextureState(void) {
    WGPIPE.c = GX_FIFO_ACCESS_BP;
    WGPIPE.i = __GXData->WORD_0x174;
    __GXData->SHORTS_0x0[1] = 0;
}
