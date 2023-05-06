#include "revolution/GX.h"

void GXSetTevIndirect(GXTevStageID tev_stage, GXIndTexStageID ind_stage,
                      GXIndTexFormat format, GXIndTexBiasSel bias_sel,
                      GXIndTexMtxID matrix_sel, GXIndTexWrap wrap_s,
                      GXIndTexWrap wrap_t, GXBool add_prev, GXBool utc_lod,
                      GXIndTexAlphaSel alpha_sel) {
    u32 opcode = tev_stage + GX_BP_REG_IND_CMD;
    u32 cmd = 0;

    cmd = GX_BITSET(cmd, 30, 2, ind_stage);
    cmd = GX_BITSET(cmd, 28, 2, format);
    cmd = GX_BITSET(cmd, 25, 3, bias_sel);
    cmd = GX_BITSET(cmd, 23, 2, alpha_sel);
    cmd = GX_BITSET(cmd, 19, 4, matrix_sel);
    cmd = GX_BITSET(cmd, 16, 3, wrap_s);
    cmd = GX_BITSET(cmd, 13, 3, wrap_t);
    cmd = GX_BITSET(cmd, 12, 1, utc_lod);
    cmd = GX_BITSET(cmd, 11, 1, add_prev);
    cmd = GX_BITSET(cmd, 0, 8, opcode);

    GX_LOAD_BP_REG(cmd);
    __GXData->xfWritten = FALSE;
}

//only matches on 1.0
void GXSetIndTexMtx(GXIndTexMtxID mtx_sel, const float offset_mtx[2][3], s8 scale_exp) {
    u32 index;
    u32 cmd;

    switch (mtx_sel) {
    case GX_ITM_0:
    case GX_ITM_1:
    case GX_ITM_2:
        index = mtx_sel - GX_ITM_0;
        break;
    case GX_ITM_S0:
    case GX_ITM_S1:
    case GX_ITM_S2:
        index = mtx_sel - GX_ITM_S0;
        break;
    case GX_ITM_T0:
    case GX_ITM_T1:
    case GX_ITM_T2:
        index = mtx_sel - GX_ITM_T0;
        break;
    case 4:
    case 8:
    default:
        index = 0;
    }

    scale_exp += 0x11;

    cmd = 0;
    cmd = GX_BITSET(cmd, 21, 11, 1024.0f * offset_mtx[0][0]);
    cmd = GX_BITSET(cmd, 10, 11, 1024.0f * offset_mtx[1][0]);
    cmd = GX_BITSET(cmd, 8, 2, scale_exp);
    GX_BP_CMD_SET_OPCODE(cmd, (index * 4) - index + GX_BP_REG_IND_MTXA);
    GX_LOAD_BP_REG(cmd);

    cmd = 0;
    cmd = GX_BITSET(cmd, 21, 11, 1024.0f * offset_mtx[0][1]);
    cmd = GX_BITSET(cmd, 10, 11, 1024.0f * offset_mtx[1][1]);
    cmd = __rlwimi(cmd, scale_exp, 20, 8, 9);
    GX_BP_CMD_SET_OPCODE(cmd, (index * 4) - index + GX_BP_REG_IND_MTXB);
    GX_LOAD_BP_REG(cmd);

    cmd = 0;
    cmd = GX_BITSET(cmd, 21, 11, 1024.0f * offset_mtx[0][2]);
    cmd = GX_BITSET(cmd, 10, 11, 1024.0f * offset_mtx[1][2]);
    cmd = __rlwimi(cmd, scale_exp, 18, 8, 9);
    GX_BP_CMD_SET_OPCODE(cmd, (index * 4) - index + GX_BP_REG_IND_MTXC);
    GX_LOAD_BP_REG(cmd);

    __GXData->xfWritten = FALSE;
}


void GXSetIndTexCoordScale(GXIndTexStageID ind_stage, GXIndTexScale scale_s,
                           GXIndTexScale scale_t) {
    switch (ind_stage) {
    case GX_INDTEXSTAGE0:
        __GXData->ras1_ss0 = GX_BITSET(__GXData->ras1_ss0, 28, 4, scale_s);
        __GXData->ras1_ss0 = GX_BITSET(__GXData->ras1_ss0, 24, 4, scale_t);
        GX_BP_CMD_SET_OPCODE(__GXData->ras1_ss0, GX_BP_REG_RAS1_SS0);
        GX_LOAD_BP_REG(__GXData->ras1_ss0);
        break;
    case GX_INDTEXSTAGE1:
        __GXData->ras1_ss0 = GX_BITSET(__GXData->ras1_ss0, 20, 4, scale_s);
        __GXData->ras1_ss0 = GX_BITSET(__GXData->ras1_ss0, 16, 4, scale_t);
        GX_BP_CMD_SET_OPCODE(__GXData->ras1_ss0, GX_BP_REG_RAS1_SS0);
        GX_LOAD_BP_REG(__GXData->ras1_ss0);
        break;
    case GX_INDTEXSTAGE2:
        __GXData->ras1_ss1 = GX_BITSET(__GXData->ras1_ss1, 28, 4, scale_s);
        __GXData->ras1_ss1 = GX_BITSET(__GXData->ras1_ss1, 24, 4, scale_t);
        GX_BP_CMD_SET_OPCODE(__GXData->ras1_ss1, GX_BP_REG_RAS1_SS1);
        GX_LOAD_BP_REG(__GXData->ras1_ss1);
        break;
    case GX_INDTEXSTAGE3:
        __GXData->ras1_ss1 = GX_BITSET(__GXData->ras1_ss1, 20, 4, scale_s);
        __GXData->ras1_ss1 = GX_BITSET(__GXData->ras1_ss1, 16, 4, scale_t);
        GX_BP_CMD_SET_OPCODE(__GXData->ras1_ss1, GX_BP_REG_RAS1_SS1);
        GX_LOAD_BP_REG(__GXData->ras1_ss1);
        break;
    }

    __GXData->xfWritten = FALSE;
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
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 29, 3, tex_map);
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 26, 3, tex_coord);
        break;
    case GX_INDTEXSTAGE1:
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 23, 3, tex_map);
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 20, 3, tex_coord);
        break;
    case GX_INDTEXSTAGE2:
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 17, 3, tex_map);
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 14, 3, tex_coord);
        break;
    case GX_INDTEXSTAGE3:
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 11, 3, tex_map);
        __GXData->ras1_iref = GX_BITSET(__GXData->ras1_iref, 8, 3, tex_coord);
        break;
    }

    GX_LOAD_BP_REG(__GXData->ras1_iref);
    __GXData->dirtyFlags |= 0x3;
    __GXData->xfWritten = FALSE;
}

void GXSetNumIndStages(u8 nstages) {
    __GXData->genMode = GX_BITSET(__GXData->genMode, 13, 3, nstages);
    __GXData->dirtyFlags |= GX_DIRTY_BP_MASK;
    __GXData->dirtyFlags |= GX_DIRTY_GEN_MODE;
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
    __GXData->ind_imask = GX_BITSET(__GXData->ind_imask, 24, 8, mask);
    GX_LOAD_BP_REG(__GXData->ind_imask);
    __GXData->xfWritten = FALSE;
}

void __GXFlushTextureState(void) {
    GX_LOAD_BP_REG(__GXData->ind_imask);
    __GXData->xfWritten = FALSE;
}
