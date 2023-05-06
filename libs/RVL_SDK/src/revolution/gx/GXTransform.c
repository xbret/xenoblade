#include "revolution/GX.h"

// TODO: Fake inline
inline void LoadProjPS(register f32* dst) {
    register f32 ps_0, ps_1, ps_2;
    register GXData* src;

    asm volatile {
        lwz src, __GXData
        psq_l  ps_0,  0  + GXData.proj(src), 0, 0
        psq_l  ps_1,  8  + GXData.proj(src), 0, 0
        psq_l  ps_2,  16 + GXData.proj(src), 0, 0
        psq_st ps_0,  0(dst),                0, 0
        psq_st ps_1,  8(dst),                0, 0
        psq_st ps_2, 16(dst),                0, 0
    }
}

inline void WriteProjPS(register volatile void* dst, register const f32* src) {
    register f32 ps_0, ps_1, ps_2;

    asm volatile {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_st ps_0,  0(dst), 0, 0
        psq_st ps_1,  0(dst), 0, 0
        psq_st ps_2,  0(dst), 0, 0
    }
}

inline void Copy6Floats(register f32* dst, register const f32* src) {
    register f32 ps_0, ps_1, ps_2;

    asm volatile {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_st ps_0,  0(dst), 0, 0
        psq_st ps_1,  8(dst), 0, 0
        psq_st ps_2, 16(dst), 0, 0
    }
}

//unused
void GXProject(){
}

void __GXSetProjection(void) {
    // Temp required to match
    volatile void* wgpipe = &WGPIPE;

    GX_LOAD_XF_REG_NSIZE(ARRAY_LENGTH(__GXData->proj), GX_XF_REG_PROJECTIONA);
    WriteProjPS(wgpipe, __GXData->proj);
    WGPIPE.i = __GXData->projType;
}

void GXSetProjection(const Mtx44 proj, GXProjectionType type) {
    __GXData->projType = type;

    __GXData->proj[0] = proj[0][0];
    __GXData->proj[2] = proj[1][1];
    __GXData->proj[4] = proj[2][2];
    __GXData->proj[5] = proj[2][3];

    if (type == GX_ORTHOGRAPHIC) {
        __GXData->proj[1] = proj[0][3];
        __GXData->proj[3] = proj[1][3];
    } else {
        __GXData->proj[1] = proj[0][2];
        __GXData->proj[3] = proj[1][2];
    }

    __GXData->dirtyFlags |= GX_DIRTY_PROJECTION;
}

void GXSetProjectionv(const f32 proj[7]) {
    __GXData->projType = proj[0] == 0.0f ? GX_PERSPECTIVE : GX_ORTHOGRAPHIC;
    Copy6Floats(__GXData->proj, proj + 1);
    __GXData->dirtyFlags |= GX_DIRTY_PROJECTION;
}

//unused
void GXGetProjectionv(f32 proj[7]) {
    proj[0] = __GXData->projType != GX_PERSPECTIVE ? 1.0f : 0.0f;
    LoadProjPS(proj + 1);
}

inline void WriteMTXPS4x3(register volatile void* dst, register const Mtx src) {
    register f32 ps_0, ps_1, ps_2, ps_3, ps_4, ps_5;

    asm volatile {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_l  ps_3, 24(src), 0, 0
        psq_l  ps_4, 32(src), 0, 0
        psq_l  ps_5, 40(src), 0, 0

        psq_st ps_0, 0(dst),  0, 0
        psq_st ps_1, 0(dst),  0, 0
        psq_st ps_2, 0(dst),  0, 0
        psq_st ps_3, 0(dst),  0, 0
        psq_st ps_4, 0(dst),  0, 0
        psq_st ps_5, 0(dst),  0, 0
    }
}

inline void WriteMTXPS3x3(register volatile void* dst, register const Mtx src) {
    register f32 ps_0, ps_1, ps_2, ps_3, ps_4, ps_5;

    asm volatile {
        psq_l  ps_0,  0(src), 0, 0
        lfs    ps_1,  8(src)
        psq_l  ps_2, 16(src), 0, 0
        lfs    ps_3, 24(src)
        psq_l  ps_4, 32(src), 0, 0
        lfs    ps_5, 40(src)

        psq_st ps_0, 0(dst),  0, 0
        stfs   ps_1, 0(dst)
        psq_st ps_2, 0(dst),  0, 0
        stfs   ps_3, 0(dst)
        psq_st ps_4, 0(dst),  0, 0
        stfs   ps_5, 0(dst)
    }
}

inline void WriteMTXPS4x2(register volatile void* dst, register const Mtx src) {
    register f32 ps_0, ps_1, ps_2, ps_3;

    asm volatile {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_l  ps_3, 24(src), 0, 0

        psq_st ps_0, 0(dst),  0, 0
        psq_st ps_1, 0(dst),  0, 0
        psq_st ps_2, 0(dst),  0, 0
        psq_st ps_3, 0(dst),  0, 0
    }
}

void GXLoadPosMtxImm(const Mtx mtx, u32 id) {
    // Position matrices are 4x3
    GX_LOAD_XF_REG_NSIZE(4 * 3 - 1, id * 4 + GX_XF_MEM_POSMTX);
    WriteMTXPS4x3(&WGPIPE, mtx);
}

void GXLoadPosMtxIndx(u16 index, u32 id) {
    u32 cmd = 0;
    // Position matrices are 4x3
    cmd = GX_BITSET(cmd, 20, 12, id * 4);
    cmd = GX_BITSET(cmd, 16, 4, 4 * 3 - 1);
    cmd = GX_BITSET(cmd, 0, 16, index);

    WGPIPE.c = GX_FIFO_LOAD_INDX_A;
    WGPIPE.i = cmd;
}

void GXLoadNrmMtxImm(const Mtx mtx, u32 id) {
    // Normal matrices are 3x3
    GX_LOAD_XF_REG_NSIZE(3 * 3 - 1, id * 3 + GX_XF_MEM_NRMMTX);
    WriteMTXPS3x3(&WGPIPE, mtx);
}

//unused
void GXLoadNrmMtxImm3x3(){
}

void GXLoadNrmMtxIndx3x3(u16 index, u32 id) {
    u32 cmd = 0;
    // Normal matrices are 3x3
    cmd = GX_BITSET(cmd, 20, 12, id * 3 + GX_XF_MEM_NRMMTX);
    cmd = GX_BITSET(cmd, 16, 4, 3 * 3 - 1);
    cmd = GX_BITSET(cmd, 0, 16, index);

    WGPIPE.c = GX_FIFO_LOAD_INDX_B;
    WGPIPE.i = cmd;
}

void GXSetCurrentMtx(u32 id) {
    __GXData->matrixIndex0 = GX_BITSET(__GXData->matrixIndex0, 26, 6, id);
    __GXData->dirtyFlags |= GX_DIRTY_MTX_IDX;
}

void GXLoadTexMtxImm(const Mtx mtx, u32 id, GXMtxType type) {
    u32 addr;
    u32 num;

    // Matrix address in XF memory
    addr = id >= GX_DTEXMTX0 ? (id - GX_DTEXMTX0) * 4 + GX_XF_MEM_DUALTEXMTX
                             : id * 4 + (u64)GX_XF_MEM_POSMTX;

    // Number of elements in matrix
    num = type == GX_MTX_2x4 ? (u64)(2 * 4) : 3 * 4;

    GX_LOAD_XF_REG_NSIZE(num - 1, addr);

    if (type == GX_MTX_3x4) {
        WriteMTXPS4x3(&WGPIPE, mtx);
    } else {
        WriteMTXPS4x2(&WGPIPE, mtx);
    }
}

//unused
void GXLoadTexMtxIndx(){
}

void __GXSetViewport(void) {
    f32 a, b, c, d, e, f;
    f32 near, far;

    a = __GXData->vpSx / 2.0f;
    b = -__GXData->vpSy / 2.0f;
    d = __GXData->vpOx + (__GXData->vpSx / 2.0f) + 342.0f;
    e = __GXData->vpOy + (__GXData->vpSy / 2.0f) + 342.0f;

    near = __GXData->vpNear * __GXData->scaleZ;
    far = __GXData->vpFar * __GXData->scaleZ;

    c = far - near;
    f = far + __GXData->offsetZ;

    GX_LOAD_XF_REG_NSIZE(6 - 1, GX_XF_REG_VIEWPORT);
    WGPIPE.f = a;
    WGPIPE.f = b;
    WGPIPE.f = c;
    WGPIPE.f = d;
    WGPIPE.f = e;
    WGPIPE.f = f;
}

void GXSetViewportJitter(f32 ox, f32 oy, f32 sx, f32 sy, f32 near, f32 far,
                         u32 nextField) {
    // "Field" as in VI field
    // TODO: Is this an enum? I don't know anything about the return value other
    // than that it is a u32 (NW4R signature)
    if (nextField == 0) {
        oy -= 0.5f;
    }

    __GXData->vpOx = ox;
    __GXData->vpOy = oy;
    __GXData->vpSx = sx;
    __GXData->vpSy = sy;
    __GXData->vpNear = near;
    __GXData->vpFar = far;
    __GXData->dirtyFlags |= GX_DIRTY_VIEWPORT;
}

void GXSetViewport(f32 ox, f32 oy, f32 sx, f32 sy, f32 near, f32 far) {
    __GXData->vpOx = ox;
    __GXData->vpOy = oy;
    __GXData->vpSx = sx;
    __GXData->vpSy = sy;
    __GXData->vpNear = near;
    __GXData->vpFar = far;
    __GXData->dirtyFlags |= GX_DIRTY_VIEWPORT;
}

//unused
void GXGetViewportv(f32 view[6]) { Copy6Floats(view, __GXData->view); }

//unused
void GXSetZScaleOffset(f32 scale, f32 offset) {
    __GXData->offsetZ = (f32)0xFFFFFF * offset;      // ???
    __GXData->scaleZ = 1.0f + (f32)0xFFFFFF * scale; // ???
    __GXData->dirtyFlags |= GX_DIRTY_VIEWPORT;
}

void GXSetScissor(u32 x, u32 y, u32 w, u32 h) {
    u32 x1, y1, x2, y2;
    u32 cmd;

    x1 = x + 342;
    y1 = y + 342;
    x2 = x1 + w - 1;
    y2 = y1 + h - 1;

    cmd = __GXData->scissorX1Y1;
    cmd = GX_BITSET(cmd, 21, 11, y1);
    cmd = GX_BITSET(cmd, 9, 11, x1);
    __GXData->scissorX1Y1 = cmd;

    cmd = __GXData->scissorX2Y2;
    cmd = GX_BITSET(cmd, 21, 11, y2);
    cmd = GX_BITSET(cmd, 9, 11, x2);
    __GXData->scissorX2Y2 = cmd;

    GX_LOAD_BP_REG(__GXData->scissorX1Y1);
    GX_LOAD_BP_REG(__GXData->scissorX2Y2);
    __GXData->xfWritten = FALSE;
}

//unused
void GXGetScissor(u32* x, u32* y, u32* w, u32* h) {
    u32 y2, y1;
    u32 x2, x1;

    x1 = __GXData->scissorX1Y1 >> 12 & 0x7FF;
    y1 = __GXData->scissorX1Y1 & 0x7FF;
    x2 = __GXData->scissorX2Y2 >> 12 & 0x7FF;
    y2 = __GXData->scissorX2Y2 & 0x7FF;

    *x = x1 - 342;
    *y = y1 - 342;
    *w = x2 - x1 + 1;
    *h = y2 - y1 + 1;
}

void GXSetScissorBoxOffset(u32 ox, u32 oy) {
    u32 cmd = 0;
    cmd = GX_BITSET(cmd, 22, 10, (ox + 342) / 2);
    cmd = GX_BITSET(cmd, 12, 10, (oy + 342) / 2);
    cmd = GX_BITSET(cmd, 0, 8, GX_BP_REG_SCISSOROFFSET);
    GX_LOAD_BP_REG(cmd);

    __GXData->xfWritten = FALSE;
}

void GXSetClipMode(GXClipMode mode) {
    GX_LOAD_XF_REG(GX_XF_REG_CLIPDISABLE, mode);
    __GXData->xfWritten = TRUE;
}

void __GXSetMatrixIndex(GXAttr index) {
    // Tex4 and after is stored in XF MatrixIndex1
    if (index < GX_VA_TEX4MTXIDX) {
        GX_LOAD_CP_REG(GX_CP_REG_MATINDEX_A, __GXData->matrixIndex0);
        GX_LOAD_XF_REG(GX_XF_REG_MATINDEXA, __GXData->matrixIndex0);
    } else {
        GX_LOAD_CP_REG(GX_CP_REG_MATINDEX_B, __GXData->matrixIndex1);
        GX_LOAD_XF_REG(GX_XF_REG_MATINDEXB, __GXData->matrixIndex1);
    }

    __GXData->xfWritten = TRUE;
}
