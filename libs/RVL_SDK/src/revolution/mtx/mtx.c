#include <math.h>
#include <revolution/MTX.h>

static f32 Unit01[] = { 0.0f, 1.0f };

DECOMP_FORCELITERAL(mtx_c, 1.0f, 0.0f);

//unused
void C_MTXIdentity(){
}

void PSMTXIdentity(register Mtx m) {
    register f32 c_zero = 0.0f;
    register f32 c_one = 1.0f;
    register f32 c_01;
    register f32 c_10;

    asm {
        psq_st     c_zero, 8(m),  0, 0 // m[0][2] = 0, m[0][3] = 0;
        ps_merge01 c_01, c_zero,   c_one // c_01 = (0,0)
        psq_st     c_zero, 24(m), 0, 0 // m[]
        ps_merge10 c_10, c_one,   c_zero // c_10 = (0,0)
        psq_st     c_zero, 32(m), 0, 0
        psq_st     c_01, 16(m), 0, 0
        psq_st     c_10, 0(m),  0, 0
        psq_st     c_10, 40(m), 0, 0
    }
}

//unused
void C_MTXCopy(){
}

asm void PSMTXCopy(const register Mtx src, register Mtx dst) {
    nofralloc
    psq_l  fp0, 0(src), 0, 0
    psq_st fp0, 0(dst), 0, 0
    psq_l  fp1, 8(src), 0, 0
    psq_st fp1, 8(dst), 0, 0
    psq_l  fp2, 16(src), 0, 0
    psq_st fp2, 16(dst), 0, 0
    psq_l  fp3, 24(src), 0, 0
    psq_st fp3, 24(dst), 0, 0
    psq_l  fp4, 32(src), 0, 0
    psq_st fp4, 32(dst), 0, 0
    psq_l  fp5, 40(src), 0, 0
    psq_st fp5, 40(dst), 0, 0
    blr
}

//unused
void C_MTXConcat(){
}

asm void PSMTXConcat(const register Mtx mA, const register Mtx mB,
                     register Mtx mAB) {
    nofralloc
    stwu r1, -64(r1)
    psq_l fp0, 0(mA), 0, 0
    stfd fp14, 8(r1)
    psq_l fp6, 0(mB), 0, 0
    addis r6, 0, Unit01 @ha
    psq_l fp7, 8(mB), 0, 0
    stfd fp15, 16(r1)
    addi r6, r6, Unit01 @l
    stfd fp31, 40(r1)
    psq_l fp8, 16(mB), 0, 0
    ps_muls0 fp12, fp6, fp0
    psq_l fp2, 16(mA), 0, 0
    ps_muls0 fp13, fp7, fp0
    psq_l fp31, 0(r6), 0, 0
    ps_muls0 fp14, fp6, fp2
    psq_l fp9, 24(mB), 0, 0
    ps_muls0 fp15, fp7, fp2
    psq_l fp1, 8(mA), 0, 0
    ps_madds1 fp12, fp8, fp0, fp12
    psq_l fp3, 24(mA), 0, 0
    ps_madds1 fp14, fp8, fp2, fp14
    psq_l fp10, 32(mB), 0, 0
    ps_madds1 fp13, fp9, fp0, fp13
    psq_l fp11, 40(mB), 0, 0
    ps_madds1 fp15, fp9, fp2, fp15
    psq_l fp4, 32(mA), 0, 0
    psq_l fp5, 40(mA), 0, 0
    ps_madds0 fp12, fp10, fp1, fp12
    ps_madds0 fp13, fp11, fp1, fp13
    ps_madds0 fp14, fp10, fp3, fp14
    ps_madds0 fp15, fp11, fp3, fp15
    psq_st fp12, 0(mAB), 0, 0
    ps_muls0 fp2, fp6, fp4
    ps_madds1 fp13, fp31, fp1, fp13
    ps_muls0 fp0, fp7, fp4
    psq_st fp14, 16(mAB), 0, 0
    ps_madds1 fp15, fp31, fp3, fp15
    psq_st fp13, 8(mAB), 0, 0
    ps_madds1 fp2, fp8, fp4, fp2
    ps_madds1 fp0, fp9, fp4, fp0
    ps_madds0 fp2, fp10, fp5, fp2
    lfd fp14, 8(r1)
    psq_st fp15, 24(mAB), 0, 0
    ps_madds0 fp0, fp11, fp5, fp0
    psq_st fp2, 32(mAB), 0, 0
    ps_madds1 fp0, fp31, fp5, fp0
    lfd fp15, 16(r1)
    psq_st fp0, 40(mAB), 0, 0
    lfd fp31, 40(r1)
    addi r1, r1, 64
    blr
}

//unused
void C_MTXConcatArray(){
}

void PSMTXConcatArray(const register Mtx mtx1, const register Mtx mtx2,
                      register Mtx mtx3, register u32 vv4) {
    register f32 va0, va1, va2, va3, va4, va5;
    register f32 vb0, vb1, vb2, vb3, vb4, vb5;
    register f32 vd0, vd1, vd2, vd3, vd4, vd5;
    register f32 u01;
    register f32* u01Ptr = Unit01;

    asm {
        psq_l va0, 0(mtx1), 0, 0
        psq_l va1, 8(mtx1), 0, 0
        psq_l va2, 16(mtx1), 0, 0
        psq_l va3, 24(mtx1), 0, 0
        subi vv4, vv4, 1
        psq_l va4, 32(mtx1), 0, 0
        psq_l va5, 40(mtx1), 0, 0
        mtctr vv4
        psq_l u01, 0(u01Ptr), 0, 0
        psq_l vb0, 0(mtx2), 0, 0
        psq_l vb2, 16(mtx2), 0, 0
        ps_muls0 vd0, vb0, va0
        ps_muls0 vd2, vb0, va2
        ps_muls0 vd4, vb0, va4
        psq_l vb4, 32(mtx2), 0, 0
        ps_madds1 vd0, vb2, va0, vd0
        ps_madds1 vd2, vb2, va2, vd2
        ps_madds1 vd4, vb2, va4, vd4
        psq_l vb1, 8(mtx2), 0, 0
        ps_madds0 vd0, vb4, va1, vd0
        ps_madds0 vd2, vb4, va3, vd2
        ps_madds0 vd4, vb4, va5, vd4
        psq_l vb3, 24(mtx2), 0, 0
        psq_st vd0, 0(mtx3), 0, 0
        ps_muls0 vd1, vb1, va0
        ps_muls0 vd3, vb1, va2
        ps_muls0 vd5, vb1, va4
        psq_l vb5, 40(mtx2), 0, 0
        psq_st vd2, 16(mtx3), 0, 0
        ps_madds1 vd1, vb3, va0, vd1
        ps_madds1 vd3, vb3, va2, vd3
        ps_madds1 vd5, vb3, va4, vd5
_loop:
        addi mtx2, mtx2, sizeof(Mtx)
        ps_madds0 vd1, vb5, va1, vd1
        ps_madds0 vd3, vb5, va3, vd3
        ps_madds0 vd5, vb5, va5, vd5
        psq_l vb0, 0(mtx2), 0, 0
        psq_st vd4, 32(mtx3), 0, 0
        ps_madd vd1, u01, va1, vd1
        ps_madd vd3, u01, va3, vd3
        ps_madd vd5, u01, va5, vd5
        psq_l vb2, 16(mtx2), 0, 0
        psq_st vd1, 8(mtx3), 0, 0
        ps_muls0 vd0, vb0, va0
        ps_muls0 vd2, vb0, va2
        ps_muls0 vd4, vb0, va4
        psq_l vb4, 32(mtx2), 0, 0
        psq_st vd3, 24(mtx3), 0, 0
        ps_madds1 vd0, vb2, va0, vd0
        ps_madds1 vd2, vb2, va2, vd2
        ps_madds1 vd4, vb2, va4, vd4
        psq_l vb1, 8(mtx2), 0, 0
        psq_st vd5, 40(mtx3), 0, 0
        addi mtx3, mtx3, sizeof(Mtx)
        ps_madds0 vd0, vb4, va1, vd0
        ps_madds0 vd2, vb4, va3, vd2
        ps_madds0 vd4, vb4, va5, vd4
        psq_l vb3, 24(mtx2), 0, 0
        psq_st vd0, 0(mtx3), 0, 0
        ps_muls0 vd1, vb1, va0
        ps_muls0 vd3, vb1, va2
        ps_muls0 vd5, vb1, va4
        psq_l vb5, 40(mtx2), 0, 0
        psq_st vd2, 16(mtx3), 0, 0
        ps_madds1 vd1, vb3, va0, vd1
        ps_madds1 vd3, vb3, va2, vd3
        ps_madds1 vd5, vb3, va4, vd5
        bdnz _loop
        psq_st vd4, 32(mtx3), 0, 0
        ps_madds0 vd1, vb5, va1, vd1
        ps_madds0 vd3, vb5, va3, vd3
        ps_madds0 vd5, vb5, va5, vd5
        ps_madd vd1, u01, va1, vd1
        ps_madd vd3, u01, va3, vd3
        ps_madd vd5, u01, va5, vd5
        psq_st vd1, 8(mtx3), 0, 0
        psq_st vd3, 24(mtx3), 0, 0
        psq_st vd5, 40(mtx3), 0, 0
    }
}

//unused
void C_MTXTranspose(){
}

void PSMTXTranspose(const register Mtx src, register Mtx xPose) {
    register f32 c_zero = 0.0f;
    register f32 row0a, row1a, row0b, row1b;
    register f32 trns0, trns1, trns2;

    asm {
        psq_l       row0a, 0(src),  0, 0
        stfs        c_zero, 44(xPose)
        psq_l       row1a, 16(src), 0, 0
        ps_merge00  trns0, row0a, row1a
        psq_l       row0b, 8(src),  1, 0
        ps_merge11  trns1, row0a, row1a
        psq_l       row1b, 24(src), 1, 0
        psq_st      trns0, 0(xPose),  0, 0
        psq_l       row0a, 32(src), 0, 0
        ps_merge00  trns2, row0b, row1b
        psq_st      trns1, 16(xPose), 0, 0
        ps_merge00  trns0, row0a, c_zero
        psq_st      trns2, 32(xPose), 0, 0
        ps_merge10  trns1, row0a, c_zero
        psq_st      trns0, 8(xPose),  0, 0
        lfs         row0b, 40(src)
        psq_st      trns1, 24(xPose), 0, 0
        stfs        row0b, 40(xPose)
    }
}

//unused
void C_MTXInverse(){
}

asm void PSMTXInverse(const register Mtx src, register Mtx inv) {
    nofralloc
    psq_l fp0, 0(src), 1, 0
    psq_l fp1, 4(src), 0, 0
    psq_l fp2, 16(src), 1, 0
    ps_merge10 fp6, fp1, fp0
    psq_l fp3, 20(src), 0, 0
    psq_l fp4, 32(src), 1, 0
    ps_merge10 fp7, fp3, fp2
    psq_l fp5, 36(src), 0, 0
    ps_mul fp11, fp3, fp6
    ps_merge10 fp8, fp5, fp4
    ps_mul fp13, fp5, fp7
    ps_msub fp11, fp1, fp7, fp11
    ps_mul fp12, fp1, fp8
    ps_msub fp13, fp3, fp8, fp13
    ps_mul fp10, fp3, fp4
    ps_msub fp12, fp5, fp6, fp12
    ps_mul fp7, fp0, fp13
    ps_mul fp9, fp0, fp5
    ps_mul fp8, fp1, fp2
    ps_madd fp7, fp2, fp12, fp7
    ps_sub fp6, fp6, fp6
    ps_msub fp10, fp2, fp5, fp10
    ps_madd fp7, fp4, fp11, fp7
    ps_msub fp9, fp1, fp4, fp9
    ps_msub fp8, fp0, fp3, fp8
    ps_cmpo0 cr0, fp7, fp6
    bne loc0
    addi r3, 0, 0
    blr
loc0:
    fres fp0, fp7
    ps_add fp6, fp0, fp0
    ps_mul fp5, fp7, fp0
    ps_nmsub fp0, fp0, fp5, fp6
    lfs fp1, 12(src)
    ps_muls0 fp13, fp13, fp0
    lfs fp2, 28(src)
    ps_muls0 fp12, fp12, fp0
    lfs fp3, 44(src)
    ps_muls0 fp11, fp11, fp0
    ps_merge00 fp5, fp13, fp12
    ps_merge11 fp4, fp13, fp12
    ps_mul fp6, fp13, fp1
    psq_st fp5, 0(inv), 0, 0
    psq_st fp4, 16(inv), 0, 0
    ps_muls0 fp10, fp10, fp0
    ps_muls0 fp9, fp9, fp0
    ps_madd fp6, fp12, fp2, fp6
    psq_st fp10, 32(inv), 1, 0
    ps_muls0 fp8, fp8, fp0
    ps_nmadd fp6, fp11, fp3, fp6
    psq_st fp9, 36(inv), 1, 0
    ps_mul fp7, fp10, fp1
    ps_merge00 fp5, fp11, fp6
    psq_st fp8, 40(inv), 1, 0
    ps_madd fp7, fp9, fp2, fp7
    ps_merge11 fp4, fp11, fp6
    psq_st fp5, 8(inv), 0, 0
    ps_nmadd fp7, fp8, fp3, fp7
    psq_st fp4, 24(inv), 0, 0
    psq_st fp7, 44(inv), 1, 0
    addi r3, 0, 1
    blr
}

//unused
void C_MTXRotRad(){
}

void PSMTXRotRad(Mtx m, char axis, f32 rad) {
    f32 sinA, cosA;
    sinA = sinf(rad);
    cosA = cosf(rad);
    PSMTXRotTrig(m, axis, sinA, cosA);
}

//unused
void C_MTXRotTrig(){
}

void PSMTXRotTrig(register Mtx m, register char arg2, register f32 sinA,
                  register f32 cosA) {
    register f32 fc0, fc1, nsinA;
    register f32 fw0, fw1, fw2, fw3;

    asm {
        frsp sinA, sinA
        frsp cosA, cosA
    }

    fc0 = 0.0f;
    fc1 = 1.0f;

    asm {
        ori arg2, arg2, 0x20
        ps_neg nsinA, sinA
        cmplwi arg2, 'x'
        beq loc0
        cmplwi arg2, 'y'
        beq loc1
        cmplwi arg2, 'z'
        beq loc2
        b loc3
loc0:
        psq_st fc1, 0(m), 1, 0
        psq_st fc0, 4(m), 0, 0
        ps_merge00 fw0, sinA, cosA
        psq_st fc0, 12(m), 0, 0
        ps_merge00 fw1, cosA, nsinA
        psq_st fc0, 28(m), 0, 0
        psq_st fc0, 44(m), 1, 0
        psq_st fw0, 36(m), 0, 0
        psq_st fw1, 20(m), 0, 0
        b loc3
loc1:
        ps_merge00 fw0, cosA, fc0
        ps_merge00 fw1, fc0, fc1
        psq_st fc0, 24(m), 0, 0
        psq_st fw0, 0(m), 0, 0
        ps_merge00 fw2, nsinA, fc0
        ps_merge00 fw3, sinA, fc0
        psq_st fw0, 40(m), 0, 0
        psq_st fw1, 16(m), 0, 0
        psq_st fw3, 8(m), 0, 0
        psq_st fw2, 32(m), 0, 0
        b loc3
loc2:
        psq_st fc0, 8(m), 0, 0
        ps_merge00 fw0, sinA, cosA
        ps_merge00 fw2, cosA, nsinA
        psq_st fc0, 24(m), 0, 0
        psq_st fc0, 32(m), 0, 0
        ps_merge00 fw1, fc1, fc0
        psq_st fw0, 16(m), 0, 0
        psq_st fw2, 0(m), 0, 0
        psq_st fw1, 40(m), 0, 0
loc3:
    }
}

//unused
void C_MTXRotAxisRad(){
}

void __PSMTXRotAxisRadInternal(register Mtx m, const register Vec* axis,
                               register f32 sT, register f32 cT) {
    register f32 tT, fc0;
    register f32 tmp0, tmp1, tmp2, tmp3, tmp4;
    register f32 tmp5, tmp6, tmp7, tmp8, tmp9;

    tmp9 = 0.5f;
    tmp8 = 3.0f;

    asm {
        frsp cT, cT
        psq_l tmp0, 0(axis), 0, 0
        frsp sT, sT
        lfs tmp1, 8(axis)
        ps_mul tmp2, tmp0, tmp0
        fadds tmp7, tmp9, tmp9
        ps_madd tmp3, tmp1, tmp1, tmp2
        fsubs fc0, tmp9, tmp9
        ps_sum0 tmp4, tmp3, tmp1, tmp2
        fsubs tT, tmp7, cT
        frsqrte tmp5, tmp4
        fmuls tmp2, tmp5, tmp5
        fmuls tmp3, tmp5, tmp9
        fnmsubs tmp2, tmp2, tmp4, tmp8
        fmuls tmp5, tmp2, tmp3
        ps_merge00  cT, cT, cT
        ps_muls0 tmp0, tmp0, tmp5
        ps_muls0 tmp1, tmp1, tmp5
        ps_muls0 tmp4, tmp0, tT
        ps_muls0 tmp9, tmp0, sT
        ps_muls0 tmp5, tmp1, tT
        ps_muls1 tmp3, tmp4, tmp0
        ps_muls0 tmp2, tmp4, tmp0
        ps_muls0 tmp4, tmp4, tmp1
        fnmsubs tmp6, tmp1, sT, tmp3
        fmadds tmp7, tmp1, sT, tmp3
        ps_neg tmp0, tmp9
        ps_sum0 tmp8, tmp4, fc0, tmp9
        ps_sum0 tmp2, tmp2, tmp6, cT
        ps_sum1 tmp3, cT, tmp7, tmp3
        ps_sum0 tmp6, tmp0, fc0, tmp4
        psq_st tmp8, 8(m), 0, 0
        ps_sum0 tmp0, tmp4, tmp4, tmp0
        psq_st tmp2, 0(m), 0, 0
        ps_muls0 tmp5, tmp5, tmp1
        psq_st tmp3, 16(m), 0, 0
        ps_sum1 tmp4, tmp9, tmp0, tmp4
        psq_st tmp6, 24(m), 0, 0
        ps_sum0 tmp5, tmp5, fc0, cT
        psq_st tmp4, 32(m), 0, 0
        psq_st tmp5, 40(m), 0, 0
    }
}

void PSMTXRotAxisRad(Mtx m, const Vec* axis, f32 rad) {
    f32 sinT = sinf(rad);
    f32 cosT = cosf(rad);
    __PSMTXRotAxisRadInternal(m, axis, sinT, cosT);
}

//unused
void C_MTXTrans(){
}

void PSMTXTrans(register Mtx m, register f32 xT, register f32 yT,
                register f32 zT) {
    register f32 c0 = 0.0f;
    register f32 c1 = 1.0f;

    asm {
        stfs xT, 12(m)
        stfs yT, 28(m)
        psq_st c0, 4(m), 0, 0
        psq_st c0, 32(m), 0, 0
        stfs c0, 16(m)
        stfs c1, 20(m)
        stfs c0, 24(m)
        stfs c1, 40(m)
        stfs zT, 44(m)
        stfs c1, 0(m)
    }
}

//unused
void C_MTXTransApply(){
}

asm void PSMTXTransApply(const register Mtx src, register Mtx dst,
                         register f32 xT, register f32 yT, register f32 zT) {
    nofralloc

    psq_l fp4, 0(src), 0, 0
    frsp xT, xT
    psq_l fp5, 8(src), 0, 0
    frsp yT, yT
    psq_l fp7, 24(src), 0, 0
    frsp zT, zT

    psq_l fp8, 40(src), 0, 0
    psq_st fp4, 0(dst), 0, 0
    ps_sum1 fp5, xT, fp5, fp5

    psq_l fp6, 16(src), 0, 0
    psq_st fp5, 8(dst), 0, 0
    ps_sum1 fp7, yT, fp7, fp7

    psq_l fp9, 32(src), 0, 0
    psq_st fp6, 16(dst), 0, 0
    ps_sum1 fp8, zT, fp8, fp8

    psq_st fp7, 24(dst), 0, 0
    psq_st fp9, 32(dst), 0, 0
    psq_st fp8, 40(dst), 0, 0
    blr
}

//unused
void C_MTXScale(){
}

void PSMTXScale(register Mtx m, register f32 xS, register f32 yS,
                register f32 zS) {
    register f32 c0 = 0.0f;

    asm {
        stfs xS, 0(m)
        psq_st c0, 4(m), 0, 0
        psq_st c0, 12(m), 0, 0
        stfs yS, 20(m)
        psq_st c0, 24(m), 0, 0
        psq_st c0, 32(m), 0, 0
        stfs zS, 40(m)
        stfs c0, 44(m)
    }
}

//unused
void C_MTXScaleApply(){
}

asm void PSMTXScaleApply(const register Mtx src, register Mtx dst,
                         register f32 xS, register f32 yS, register f32 zS) {
    nofralloc

    frsp xS, xS
    psq_l fp4, 0(src), 0, 0
    frsp yS, yS
    psq_l fp5, 8(src), 0, 0
    frsp zS, zS

    ps_muls0 fp4, fp4, xS
    psq_l fp6, 16(src), 0, 0
    ps_muls0 fp5, fp5, xS
    psq_l fp7, 24(src), 0, 0

    ps_muls0 fp6, fp6, yS
    psq_l fp8, 32(src), 0, 0
    psq_st fp4, 0(dst), 0, 0
    ps_muls0 fp7, fp7, yS
    psq_l fp2, 40(src), 0, 0
    psq_st fp5, 8(dst), 0, 0
    ps_muls0 fp8, fp8, zS
    psq_st fp6, 16(dst), 0, 0
    ps_muls0 fp2, fp2, zS
    psq_st fp7, 24(dst), 0, 0
    psq_st fp8, 32(dst), 0, 0
    psq_st fp2, 40(dst), 0, 0
    blr
}

//unused
void C_MTXQuat(){
}

void PSMTXQuat(register Mtx m, const register Quaternion* q) {
    register f32 c_zero, c_one, c_two, scale;
    register f32 tmp0, tmp1, tmp2, tmp3, tmp4;
    register f32 tmp5, tmp6, tmp7, tmp8, tmp9;
    c_one = 1.0f;

    asm {
        psq_l tmp0, 0(q), 0, 0
        psq_l tmp1, 8(q), 0, 0

        fsubs c_zero, c_one, c_one
        fadds c_two, c_one, c_one

        ps_mul tmp2, tmp0, tmp0
        ps_merge10 tmp5, tmp0, tmp0
        ps_madd tmp4, tmp1, tmp1, tmp2
        ps_mul tmp3, tmp1, tmp1
        ps_sum0 scale, tmp4, tmp4, tmp4
        ps_muls1 tmp7, tmp5, tmp1
        fres tmp9, scale
        ps_sum1 tmp4, tmp3, tmp4, tmp2
        ps_nmsub scale, scale, tmp9, c_two
        ps_muls1 tmp6, tmp1, tmp1
        ps_mul scale, tmp9, scale
        ps_sum0 tmp2, tmp2, tmp2, tmp2
        fmuls scale, scale, c_two
        ps_madd tmp8, tmp0, tmp5, tmp6
        ps_msub tmp6, tmp0, tmp5, tmp6
        psq_st c_zero, 12(m), 1, 0
        ps_nmsub tmp2, tmp2, scale, c_one
        ps_nmsub tmp4, tmp4, scale, c_one
        psq_st c_zero, 44(m), 1, 0
        ps_mul tmp8, tmp8, scale
        ps_mul tmp6, tmp6, scale
        psq_st tmp2, 40(m), 1, 0
        ps_madds0 tmp5, tmp0, tmp1, tmp7
        ps_merge00 tmp1, tmp8, tmp4
        ps_nmsub tmp7, tmp7, c_two, tmp5
        ps_merge10 tmp0, tmp4, tmp6
        psq_st tmp1, 16(m), 0, 0
        ps_mul tmp5, tmp5, scale
        ps_mul tmp7, tmp7, scale
        psq_st tmp0,  0(m), 0, 0
        psq_st tmp5,  8(m), 1, 0
        ps_merge10 tmp3, tmp7, c_zero
        ps_merge01 tmp9, tmp7, tmp5
        psq_st tmp3, 24(m), 0, 0
        psq_st tmp9, 32(m), 0, 0
    }
}

//unused
void C_MTXReflect(){
}

//unused
asm void PSMTXReflect(){
}

void C_MTXLookAt(Mtx m, const Vec* camPos, const Vec* camUp, const Vec* target) {
    Vec vLook, vRight, vUp;

    vLook.x = camPos->x - target->x;
    vLook.y = camPos->y - target->y;
    vLook.z = camPos->z - target->z;

    PSVECNormalize(&vLook, &vLook);
    PSVECCrossProduct(camUp, &vLook, &vRight);

    PSVECNormalize(&vRight, &vRight);

    PSVECCrossProduct(&vLook, &vRight, &vUp);
    
    m[0][0] = vRight.x;
    m[0][1] = vRight.y;
    m[0][2] = vRight.z;
    m[0][3] = -(camPos->x * vRight.x + camPos->y * vRight.y + camPos->z * vRight.z);

    m[1][0] = vUp.x;
    m[1][1] = vUp.y;
    m[1][2] = vUp.z;
    m[1][3] = -(camPos->x * vUp.x + camPos->y * vUp.y + camPos->z * vUp.z);

    m[2][0] = vLook.x;
    m[2][1] = vLook.y;
    m[2][2] = vLook.z;
    m[2][3] = -(camPos->x * vLook.x + camPos->y * vLook.y + camPos->z * vLook.z);
}

void C_MTXLightFrustum(Mtx m, f32 t, f32 b, f32 l, f32 r, f32 n,
                       f32 scaleS, f32 scaleT, f32 transS, f32 transT) {
    f32 tmp;
    
    tmp = 1.0f / (r - l);
    m[0][0] = ((2 * n) * tmp) * scaleS;
    m[0][1] = 0.0f;
    m[0][2] = (((r + l) * tmp) * scaleS) - transS;
    m[0][3] = 0.0f;

    tmp = 1.0f / (t - b);
    m[1][0] = 0.0f;
    m[1][1] = ((2 * n) * tmp) * scaleT;
    m[1][2] = (((t + b) * tmp) * scaleT) - transT;
    m[1][3] = 0.0f;

    m[2][0] = 0.0f;
    m[2][1] = 0.0f;
    m[2][2] = -1.0f;
    m[2][3] = 0.0f;
}

void C_MTXLightPerspective(Mtx m, f32 fovY, f32 aspect, f32 scaleS, f32 scaleT,
                           f32 transS, f32 transT) {
    f32 angle = MTXDegToRad(fovY * 0.5f);
    f32 cot = 1.0f / tanf(angle);

    m[0][0] = (cot / aspect) * scaleS;
    m[0][1] = 0.0f;
    m[0][2] = -transS;
    m[0][3] = 0.0f;

    m[1][0] = 0.0f;
    m[1][1] = cot * scaleT;
    m[1][2] = -transT;
    m[1][3] = 0.0f;

    m[2][0] = 0.0f;
    m[2][1] = 0.0f;
    m[2][2] = -1.0f;
    m[2][3] = 0.0f;
}

void C_MTXLightOrtho(Mtx m, f32 t, f32 b, f32 l, f32 r, f32 scaleS,
                     f32 scaleT, f32 transS, f32 transT) {
    f32 tmp;
    
    tmp = 1.0f / (r - l);
    m[0][0] = (2.0f * tmp * scaleS);
    m[0][1] = 0.0f;
    m[0][2] = 0.0f;
    m[0][3] = ((-(r + l) * tmp) * scaleS) + transS;

    tmp = 1.0f / (t - b);
    m[1][0] = 0.0f;
    m[1][1] = (2.0f * tmp) * scaleT;
    m[1][2] = 0.0f;
    m[1][3] = ((-(t + b) * tmp) * scaleT) + transT;

    m[2][0] = 0.0f;
    m[2][1] = 0.0f;
    m[2][2] = 0.0f;
    m[2][3] = 1.0f;
}
