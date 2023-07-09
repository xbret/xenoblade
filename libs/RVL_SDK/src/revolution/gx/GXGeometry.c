#include "revolution/GX.h"

inline void __GXSetAmbMat(u32 dirtyFlags) {
    if (dirtyFlags & GX_DIRTY_AMB_COLOR0) {
        GX_LOAD_XF_REG(GX_XF_REG_AMBIENT0, *(u32*)&__GXData->ambColors[0]);
    }

    if (dirtyFlags & GX_DIRTY_AMB_COLOR1) {
        GX_LOAD_XF_REG(GX_XF_REG_AMBIENT1, *(u32*)&__GXData->ambColors[1]);
    }

    if (dirtyFlags & GX_DIRTY_MAT_COLOR0) {
        GX_LOAD_XF_REG(GX_XF_REG_MATERIAL0, *(u32*)&__GXData->matColors[0]);
    }

    if (dirtyFlags & GX_DIRTY_MAT_COLOR1) {
        GX_LOAD_XF_REG(GX_XF_REG_MATERIAL1, *(u32*)&__GXData->matColors[1]);
    }
}

inline void __GXSetLightChan(volatile s32 dirtyFlags) {
    int i;
    u32 bits;
    u32 addr = GX_XF_REG_COLOR0CNTRL;

    if (dirtyFlags & 0x1000000) {
        u32 colors = (__GXData->genMode & 0x70) >> 4;
        GX_LOAD_XF_REG(GX_XF_REG_NUMCOLORS, colors);
    }

    bits = dirtyFlags;
    bits = (bits >> 12) & 0xF;
    i = 0;
    for (; bits != 0; i++, addr++, bits >>= 1) {
        if (bits & 1) {
            GX_LOAD_XF_REG(addr, __GXData->colorControl[i]);
        }
    }
}

inline void __GXSetTexGen(volatile s32 dirtyFlags) {
    int i;
    u32 bits;
    u32 taddr = GX_XF_REG_TEX0;
    u32 dtaddr;

    if (dirtyFlags & 0x2000000) {
        u32 gens = __GXData->genMode & 0xF;
        GX_LOAD_XF_REG(GX_XF_REG_NUMTEX, gens);
    }

    bits = dirtyFlags;
    bits = (bits >> 16) & 0xFF;
    i = 0;
    for (; bits != 0; taddr++, i++, bits >>= 1) {
        dtaddr = taddr + GX_XF_REG_DUALTEX0 - GX_XF_REG_TEX0;
        if (bits & 1) {
            GX_LOAD_XF_REG(taddr, __GXData->texRegs[i]);
            GX_LOAD_XF_REG(dtaddr, __GXData->dualTexRegs[i]);
        }
    }
}

void __GXSetDirtyState(void) {
    u32 tempFlags;
    u32 dirtyFlags = __GXData->dirtyFlags;

    if (dirtyFlags & GX_DIRTY_SU_TEX) {
        __GXSetSUTexRegs();
    }

    if (dirtyFlags & GX_DIRTY_BP_MASK) {
        __GXUpdateBPMask();
    }

    if (dirtyFlags & GX_DIRTY_GEN_MODE) {
        //__GXSetGenMode();
        //the compiler really doesn't want to inline __GXSetGenMode
        GX_LOAD_BP_REG(__GXData->genMode);
        __GXData->xfWritten = FALSE;
    }

    if (dirtyFlags & GX_DIRTY_VCD) {
        __GXSetVCD();
    }

    if (dirtyFlags & GX_DIRTY_VAT) {
        __GXSetVAT();
    }

    if (dirtyFlags & GX_DIRTY_VLIM) {
        __GXCalculateVLim();
    }

    dirtyFlags &= ~0xFF;
    if (dirtyFlags) {
        tempFlags = dirtyFlags & GX_AMB_MAT_MASK;
        if (tempFlags != 0) {
            __GXSetAmbMat(tempFlags);
        }

        tempFlags = dirtyFlags & GX_LIGHT_CHAN_MASK;
        if (tempFlags != 0) {
            __GXSetLightChan(tempFlags);
        }

        tempFlags = dirtyFlags & GX_TEX_GEN_MASK;
        if (tempFlags != 0) {
            __GXSetTexGen(tempFlags);
        }

        tempFlags = dirtyFlags & GX_DIRTY_MTX_IDX;
        if (tempFlags != 0) {
            __GXSetMatrixIndex(0);
            __GXSetMatrixIndex(5);
        }

        tempFlags = dirtyFlags & GX_DIRTY_VIEWPORT;
        if (tempFlags != 0) {
            __GXSetViewport();
        }

        tempFlags = dirtyFlags & GX_DIRTY_PROJECTION;
        if (tempFlags != 0) {
            __GXSetProjection();
        }

        __GXData->xfWritten = TRUE;
    }

    __GXData->dirtyFlags = 0;
}

//fake inline bc the compiler doesn't want to be nice
inline void GXSendFlushPrim(void) {
    u32 i;
    u32 sz = __GXData->SHORT_0x4 * __GXData->SHORT_0x6;

    WGPIPE.uc = GX_TRIANGLESTRIP;
    WGPIPE.us = __GXData->SHORT_0x4;

    for (i = 0; i < sz; i += 4) {
        WGPIPE.i = 0;
    }

    __GXData->xfWritten = TRUE;
}

void GXBegin(GXPrimitive prim, GXVtxFmtIdx fmt, u16 verts) {
    if (__GXData->dirtyFlags != 0) {
        __GXSetDirtyState();
    }

    if (__GXData->WORD_0x0 == 0) {
        GXSendFlushPrim();
    }

    WGPIPE.c = fmt | prim;
    WGPIPE.s = verts;
}

void __GXSendFlushPrim(void) {
    u32 i;
    u32 sz = __GXData->SHORT_0x4 * __GXData->SHORT_0x6;

    WGPIPE.uc = GX_TRIANGLESTRIP;
    WGPIPE.us = __GXData->SHORT_0x4;

    for (i = 0; i < sz; i += 4) {
        WGPIPE.i = 0;
    }

    __GXData->xfWritten = TRUE;
}

void GXSetLineWidth(u8 width, u32 offset) {
    __GXData->linePtWidth = GX_BITSET(__GXData->linePtWidth, 24, 8, width);
    __GXData->linePtWidth = GX_BITSET(__GXData->linePtWidth, 13, 3, offset);
    GX_LOAD_BP_REG(__GXData->linePtWidth);
    __GXData->xfWritten = FALSE;
}

//unused
void GXGetLineWidth(){
}

void GXSetPointSize(u8 size, u32 offset) {
    __GXData->linePtWidth = GX_BITSET(__GXData->linePtWidth, 16, 8, size);
    __GXData->linePtWidth = GX_BITSET(__GXData->linePtWidth, 10, 3, offset);
    GX_LOAD_BP_REG(__GXData->linePtWidth);
    __GXData->xfWritten = FALSE;
}

//unused
void GXGetPointSize(){
}

void GXEnableTexOffsets(GXTexCoordID coordId, GXBool lineOfs,
                        GXBool pointOfs) {
    __GXData->txcRegs[coordId] = GX_BITSET(__GXData->txcRegs[coordId], 13, 1, lineOfs);
    __GXData->txcRegs[coordId] = GX_BITSET(__GXData->txcRegs[coordId], 12, 1, pointOfs);
    GX_LOAD_BP_REG(__GXData->txcRegs[coordId]);
    __GXData->xfWritten = FALSE;
}

void GXSetCullMode(GXCullMode mode) {
    GXCullMode bits = (GXCullMode)(mode << 1 & 2 | mode >> 1 & 1);
    __GXData->genMode = GX_BITSET(__GXData->genMode, 16, 2, bits);
    __GXData->dirtyFlags |= GX_DIRTY_GEN_MODE;
}

//unused
void GXGetCullMode(GXCullMode* out) {
    s32 bits = 0;
    bits |= (s32)(__GXData->genMode >> 14 & 2) >> 1;
    bits |= (s32)(__GXData->genMode >> 13 & 2);
    *out = (GXCullMode)bits;
}

void GXSetCoPlanar(GXBool coplanar) {
    __GXData->genMode = GX_BITSET(__GXData->genMode, 12, 1, coplanar);
    GX_LOAD_BP_REG(GX_BP_REG_SS_MASK << 24 | 0x80000)
    GX_LOAD_BP_REG(__GXData->genMode);
    __GXData->xfWritten = FALSE;
}

void __GXSetGenMode(void) {
    GX_LOAD_BP_REG(__GXData->genMode);
    __GXData->xfWritten = FALSE;
}
