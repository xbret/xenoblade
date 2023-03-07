#include "types.h"
#include "stl/fdlibm.h"
#include "RevoSDK/mtx/mtx.h"

static float Unit01[] = { 0.0f, 1.0f };
static float one_c = 0.0f;
static float zero_c = 0.0f;


void PSMTXIdentity(register Mtx m)
{
	asm{
   	lfs fp0, zero_c //@sda21(r2)
	lfs fp1, one_c //@sda21(r2)
	psq_st fp0, 8(r3), 0, 0
	ps_merge10 fp2, fp1, fp0
	ps_merge01 fp1, fp0, fp1
	psq_st fp0, 24(r3), 0, 0
	psq_st fp0, 32(r3), 0, 0
	psq_st fp1, 16(r3), 0, 0
	psq_st fp2, 0(r3), 0, 0
	psq_st fp2, 40(r3), 0, 0
	}
}

/*
 * --INFO--
 * Address:	........
 * Size:	00006C
 */
void C_MTXCopy(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800EA2CC
 * Size:	000034
 */
asm void PSMTXCopy
(
    const register Mtx src,
    register Mtx dst
)
{
    nofralloc

    psq_l       fp0, 0(src),   0, 0
    psq_st      fp0, 0(dst),   0, 0
    psq_l       fp1, 8(src),   0, 0
    psq_st      fp1, 8(dst),   0, 0
    psq_l       fp2, 16(src),  0, 0
    psq_st      fp2, 16(dst),  0, 0
    psq_l       fp3, 24(src),  0, 0
    psq_st      fp3, 24(dst),  0, 0
    psq_l       fp4, 32(src),  0, 0
    psq_st      fp4, 32(dst),  0, 0
    psq_l       fp5, 40(src),  0, 0
    psq_st      fp5, 40(dst),  0, 0

    blr
}

/*
 * --INFO--
 * Address:	........
 * Size:	0002A8
 */
void C_MTXConcat(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800EA300
 * Size:	0000CC
 */
asm void PSMTXConcat
(
    const register Mtx mA,    // mA
    const register Mtx mB,    // mB
          register Mtx mAB    // mAB
)
{
    nofralloc
	stwu r1, -0x40(r1)
	psq_l fp0, 0(mA), 0, 0
	stfd fp14, 8(r1)
	psq_l fp6, 0(mB), 0, 0
	lis r6, Unit01@ha
	psq_l fp7, 8(mB), 0, 0
	stfd fp15, 0x10(r1)
	addi r6, r6, Unit01@l
	stfd fp31, 0x28(r1)
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
	lfd fp15, 0x10(r1)
	psq_st fp0, 40(mAB), 0, 0
	lfd fp31, 0x28(r1)
	addi r1, r1, 0x40
	blr 
}

/*
 * --INFO--
 * Address:	........
 * Size:	000158
 */
asm void PSMTXConcatArray(void)
{
	nofralloc
	stwu r1, -0x50(r1)
	stfd fp31, 0x40(r1)
	psq_st fp31, 72(r1), 0, 0
	stfd fp30, 0x30(r1)
	psq_st fp30, 56(r1), 0, 0
	stfd fp29, 0x20(r1)
	psq_st fp29, 40(r1), 0, 0
	stfd fp28, 0x10(r1)
	psq_st fp28, 24(r1), 0, 0
	addi r0, r6, -1
	psq_l fp0, 0(r3), 0, 0
	psq_l fp1, 8(r3), 0, 0
	addi r6, r13, Unit01 //@sda21
	psq_l fp2, 16(r3), 0, 0
	psq_l fp3, 24(r3), 0, 0
	psq_l fp4, 32(r3), 0, 0
	psq_l fp5, 40(r3), 0, 0
	mtctr r0
	psq_l fp6, 0(r4), 0, 0
	psq_l fp7, 8(r4), 0, 0
	ps_muls0 fp11, fp6, fp0
	psq_l fp8, 16(r4), 0, 0
	ps_muls0 fp13, fp6, fp2
	psq_l fp9, 32(r4), 0, 0
	ps_muls0 fp30, fp6, fp4
	psq_l fp6, 24(r4), 0, 0
	ps_madds1 fp11, fp8, fp0, fp11
	psq_l fp28, 0(r6), 0, 0
	ps_madds1 fp13, fp8, fp2, fp13
	psq_l fp10, 40(r4), 0, 0
	ps_madds1 fp30, fp8, fp4, fp30
	ps_muls0 fp12, fp7, fp0
	ps_muls0 fp31, fp7, fp2
	ps_muls0 fp29, fp7, fp4
	ps_madds0 fp11, fp9, fp1, fp11
	ps_madds0 fp13, fp9, fp3, fp13
	ps_madds0 fp30, fp9, fp5, fp30
	psq_st fp11, 0(r5), 0, 0
	ps_madds1 fp12, fp6, fp0, fp12
	ps_madds1 fp31, fp6, fp2, fp31
	psq_st fp13, 16(r5), 0, 0
	ps_madds1 fp29, fp6, fp4, fp29
lbl_8034D3C8:
	ps_madds0 fp12, fp10, fp1, fp12
	psq_l fp6, 48(r4), 0, 0
	ps_madds0 fp31, fp10, fp3, fp31
	psq_st fp30, 32(r5), 0, 0
	ps_madds0 fp29, fp10, fp5, fp29
	psq_l fp8, 64(r4), 0, 0
	ps_madd fp12, fp28, fp1, fp12
	psq_l fp9, 80(r4), 0, 0
	ps_muls0 fp11, fp6, fp0
	psq_l fp7, 56(r4), 0, 0
	psq_st fp12, 8(r5), 0, 0
	ps_madd fp31, fp28, fp3, fp31
	ps_muls0 fp13, fp6, fp2
	psq_st fp31, 24(r5), 0, 0
	ps_muls0 fp30, fp6, fp4
	psq_l fp6, 72(r4), 0, 0
	ps_madds1 fp11, fp8, fp0, fp11
	psq_l fp10, 88(r4), 0, 0
	ps_madd fp29, fp28, fp5, fp29
	addi r4, r4, 0x30
	ps_madds1 fp13, fp8, fp2, fp13
	psq_st fp29, 40(r5), 0, 0
	ps_madds1 fp30, fp8, fp4, fp30
	ps_madds0 fp11, fp9, fp1, fp11
	ps_muls0 fp12, fp7, fp0
	ps_muls0 fp31, fp7, fp2
	psq_st fp11, 48(r5), 0, 0
	ps_muls0 fp29, fp7, fp4
	ps_madds0 fp13, fp9, fp3, fp13
	ps_madds0 fp30, fp9, fp5, fp30
	psq_st fp13, 64(r5), 0, 0
	ps_madds1 fp12, fp6, fp0, fp12
	ps_madds1 fp31, fp6, fp2, fp31
	addi r5, r5, 0x30
	ps_madds1 fp29, fp6, fp4, fp29
	bdnz lbl_8034D3C8
	ps_madds0 fp12, fp10, fp1, fp12
	psq_st fp30, 32(r5), 0, 0
	ps_madds0 fp31, fp10, fp3, fp31
	ps_madds0 fp29, fp10, fp5, fp29
	ps_madd fp12, fp28, fp1, fp12
	ps_madd fp31, fp28, fp3, fp31
	psq_st fp12, 8(r5), 0, 0
	ps_madd fp29, fp28, fp5, fp29
	psq_st fp31, 24(r5), 0, 0
	psq_st fp29, 40(r5), 0, 0
	psq_l fp31, 72(r1), 0, 0
	lfd fp31, 0x40(r1)
	psq_l fp30, 56(r1), 0, 0
	lfd fp30, 0x30(r1)
	psq_l fp29, 40(r1), 0, 0
	lfd fp29, 0x20(r1)
	psq_l fp28, 24(r1), 0, 0
	lfd fp28, 0x10(r1)
	addi r1, r1, 0x50
}

/*
 * --INFO--
 * Address:	........
 * Size:	00009C
 */
void C_MTXTranspose(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800EA3CC
 * Size:	000050
 */
#pragma scheduling off
void PSMTXTranspose ( const register Mtx src, register Mtx xPose )
{
	asm{
        psq_l fp1, 0(src), 0, 0
		psq_l fp2, 16(src), 0, 0
		lfs fp0, zero_c //@sda21(r2)
		ps_merge00 fp4, fp1, fp2
		psq_l fp3, 8(src), 1, 0
		ps_merge11 fp5, fp1, fp2
		psq_l fp2, 24(src), 1, 0
		psq_l fp1, 32(src), 0, 0
		ps_merge00 fp2, fp3, fp2
		psq_st fp4, 0(xPose), 0, 0
		ps_merge00 fp4, fp1, fp0
		lfs fp3, 0x28(src)
		psq_st fp5, 16(xPose), 0, 0
		ps_merge10 fp5, fp1, fp0
		stfs fp0, 0x2c(xPose)
		psq_st fp2, 32(xPose), 0, 0
		psq_st fp4, 8(xPose), 0, 0
		psq_st fp5, 24(xPose), 0, 0
		stfs fp3, 0x28(xPose)
	}
}
/*
 * --INFO--
 * Address:	........
 * Size:	0002AC
 */
void C_MTXInverse(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800EA41C
 * Size:	0000fp8
 */
asm u32 PSMTXInverse ( const register Mtx src, register Mtx inv )
{
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
	bne lbl_8034D574
	li r3, 0
	blr
lbl_8034D574:
	fres fp0, fp7
	ps_add fp6, fp0, fp0
	ps_mul fp5, fp7, fp0
	ps_nmsub fp0, fp0, fp5, fp6
	lfs fp1, 0xc(src)
	ps_muls0 fp13, fp13, fp0
	lfs fp2, 0x1c(src)
	ps_muls0 fp12, fp12, fp0
	lfs fp3, 0x2c(src)
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
	li r3, 1
	blr 
}


void PSMTXRotRad ( Mtx m, char axis, float rad )
{
    float sinA, cosA;

    sinA = sinf(rad);
    cosA = cosf(rad);

    PSMTXRotTrig( m, axis, sinA, cosA );
}

/*
 * --INFO--
 * Address:	........
 * Size:	000104
 */
void C_MTXRotTrig(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800EA584
 * Size:	0000B0
 */
asm void PSMTXRotTrig (
    register Mtx    m,
    register char   axis,
    register float    sinA,
    register float    cosA )
{
		frsp fp5, fp1
		ori r0, r4, 0x20
		frsp fp4, fp2
		cmplwi r0, 0x78
		lfs fp0, zero_c //@sda21(r2)
		ps_neg fp2, fp5
		lfs fp1, one_c //@sda21(r2)
		beq lbl_8034D6B4
		cmplwi r0, 0x79
		beq lbl_8034D6DC
		cmplwi r0, 0x7a
		beq lbl_8034D708
		blr
    _case_x:
        ps_merge00 fp3, fp5, fp4
		psq_st fp1, 0(r3), 1, 0
		ps_merge00 fp1, fp4, fp2
		psq_st fp0, 4(r3), 0, 0
		psq_st fp0, 12(r3), 0, 0
		psq_st fp0, 28(r3), 0, 0
		psq_st fp0, 44(r3), 1, 0
		psq_st fp3, 36(r3), 0, 0
		psq_st fp1, 20(r3), 0, 0
		blr

    _case_y:
        ps_merge00 fp3, fp4, fp0
		psq_st fp0, 24(r3), 0, 0
		ps_merge00 fp1, fp0, fp1
		ps_merge00 fp2, fp2, fp0
		psq_st fp3, 0(r3), 0, 0
		ps_merge00 fp0, fp5, fp0
		psq_st fp3, 40(r3), 0, 0
		psq_st fp1, 16(r3), 0, 0
		psq_st fp0, 8(r3), 0, 0
		psq_st fp2, 32(r3), 0, 0
		blr

    _case_z:
        ps_merge00 fp3, fp5, fp4
        psq_st fp0, 8(r3), 0, 0
        ps_merge00 fp2, fp4, fp2
        ps_merge00 fp1, fp1, fp0
        psq_st fp0, 24(r3), 0, 0
        psq_st fp0, 32(r3), 0, 0
        psq_st fp3, 16(r3), 0, 0
        psq_st fp2, 0(r3), 0, 0
        psq_st fp1, 40(r3), 0, 0

    _end:
}

/*
 * --INFO--
 * Address:	800EA634
 * Size:	0000B0
 */
static void __PSMTXRotAxisRadInternal(
    register Mtx    r3,
    const register Vec *r4,
    register float    sT,
    register float    cT )
{
	asm{
   psq_l fp3, 0(r4), 0, 0
	frsp fp11, cT
	lfs fp10, float_8066C130 //@sda21(r2)
	frsp fp12, sT
	ps_mul fp4, fp3, fp3
	lfs fp2, 8(r4)
	fadds fp8, fp10, fp10
	lfs fp9, float_8066C134 //@sda21(r2)
	fsubs fp1, fp10, fp10
	ps_madd fp5, fp2, fp2, fp4
	fsubs fp0, fp8, fp11
	ps_merge00 fp11, fp11, fp11
	ps_sum0 fp6, fp5, fp2, fp4
	frsqrte fp7, fp6
	fmuls fp4, fp7, fp7
	fmuls fp5, fp7, fp10
	fnmsubs fp4, fp4, fp6, fp9
	fmuls fp7, fp4, fp5
	ps_muls0 fp3, fp3, fp7
	ps_muls0 fp2, fp2, fp7
	ps_muls0 fp6, fp3, fp0
	ps_muls0 fp7, fp2, fp0
	ps_muls0 fp10, fp3, fp12
	ps_muls1 fp5, fp6, fp3
	ps_muls0 fp4, fp6, fp3
	ps_muls0 fp6, fp6, fp2
	fnmsubs fp0, fp2, fp12, fp5
	ps_neg fp3, fp10
	fmadds fp8, fp2, fp12, fp5
	ps_sum0 fp4, fp4, fp0, fp11
	ps_sum0 fp0, fp3, fp1, fp6
	ps_muls0 fp7, fp7, fp2
	psq_st fp4, 0(r3), 0, 0
	ps_sum0 fp9, fp6, fp1, fp10
	ps_sum0 fp3, fp6, fp6, fp3
	psq_st fp0, 24(r3), 0, 0
	ps_sum1 fp5, fp11, fp8, fp5
	ps_sum0 fp7, fp7, fp1, fp11
	psq_st fp9, 8(r3), 0, 0
	ps_sum1 fp6, fp10, fp3, fp6
	psq_st fp5, 16(r3), 0, 0
	psq_st fp6, 32(r3), 0, 0
	psq_st fp7, 40(r3), 0, 0
	}
}
// clang-format on
/*
 * --INFO--
 * Address:	800EA6E4
 * Size:	000070
 */
void PSMTXRotAxisRad(Mtx m, const Vec* axis, float rad)
{
	float sinT, cosT;

	sinT = sinf(rad);
	cosT = cosf(rad);

	__PSMTXRotAxisRadInternal(m, axis, sinT, cosT);
}
// clang-format off
/*
 * --INFO--
 * Address:	........
 * Size:	00003C
 */
void C_MTXTrans(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800EA754
 * Size:	000034
 */
asm void PSMTXTrans(
    register Mtx m,
    register float xT,
    register float yT,
    register float zT
)
{
    lfs fp0, zero_c@sda21(r2)
	lfs fp4, one_c@sda21(r2)
	stfs fp1, 0xc(r3)
	stfs fp2, 0x1c(r3)
	psq_st fp0, 4(r3), 0, 0
	psq_st fp0, 32(r3), 0, 0
	stfs fp0, 0x10(r3)
	stfs fp4, 0x14(r3)
	stfs fp0, 0x18(r3)
	stfs fp4, 0x28(r3)
	stfs fp3, 0x2c(r3)
	stfs fp4, 0(r3)
}


asm void PSMTXTransApply(
    const register Mtx r3,
    register Mtx r4,
    register float fp1,
    register float fp2,
    register float fp3 )
{
    nofralloc
    psq_l fp4, 0(r3), 0, 0
	frsp fp1, fp1
	psq_l fp5, 8(r3), 0, 0
	frsp fp2, fp2
	psq_l fp7, 24(r3), 0, 0
	frsp fp3, fp3
	psq_l fp8, 40(r3), 0, 0
	psq_st fp4, 0(r4), 0, 0
	ps_sum1 fp5, fp1, fp5, fp5
	psq_l fp6, 16(r3), 0, 0
	psq_st fp5, 8(r4), 0, 0
	ps_sum1 fp7, fp2, fp7, fp7
	psq_l fp9, 32(r3), 0, 0
	psq_st fp6, 16(r4), 0, 0
	ps_sum1 fp8, fp3, fp8, fp8
	psq_st fp7, 24(r4), 0, 0
	psq_st fp9, 32(r4), 0, 0
	psq_st fp8, 40(r4), 0, 0
	blr 
}


asm void PSMTXScale(
    register Mtx m,
    register float xS,
    register float yS,
    register float zS
)
{
    lfs fp0, zero_c //@sda21(r2)
	stfs fp1, 0(r3)
	psq_st fp0, 4(r3), 0, 0
	psq_st fp0, 12(r3), 0, 0
	stfs fp2, 0x14(r3)
	psq_st fp0, 24(r3), 0, 0
	psq_st fp0, 32(r3), 0, 0
	stfs fp3, 0x28(r3)
	stfs fp0, 0x2c(r3)
}

asm void PSMTXScaleApply (
    const register Mtx src,
    register Mtx dst,
    register float xS,
    register float yS,
    register float zS )
{
    nofralloc;
    frsp fp1, fp1
	psq_l fp4, 0(r3), 0, 0
	frsp fp2, fp2
	psq_l fp5, 8(r3), 0, 0
	frsp fp3, fp3
	ps_muls0 fp4, fp4, fp1
	psq_l fp6, 16(r3), 0, 0
	ps_muls0 fp5, fp5, fp1
	psq_l fp7, 24(r3), 0, 0
	ps_muls0 fp6, fp6, fp2
	psq_l fp8, 32(r3), 0, 0
	psq_st fp4, 0(r4), 0, 0
	ps_muls0 fp7, fp7, fp2
	psq_l fp2, 40(r3), 0, 0
	psq_st fp5, 8(r4), 0, 0
	ps_muls0 fp8, fp8, fp3
	psq_st fp6, 16(r4), 0, 0
	ps_muls0 fp2, fp2, fp3
	psq_st fp7, 24(r4), 0, 0
	psq_st fp8, 32(r4), 0, 0
	psq_st fp2, 40(r4), 0, 0
	blr 
}


asm void PSMTXQuat ( register Mtx m, const register PSQuaternion *q )
{
	psq_l fp4, 0(r4), 0, 0
	psq_l fp5, 8(r4), 0, 0
	ps_mul fp6, fp4, fp4
	lfs fp1, one_c //@sda21(r2)
	ps_merge10 fp9, fp4, fp4
	fsubs fp0, fp1, fp1
	ps_madd fp8, fp5, fp5, fp6
	ps_muls1 fp10, fp5, fp5
	psq_st fp0, 12(r3), 1, 0
	fadds fp2, fp1, fp1
	ps_sum0 fp3, fp8, fp8, fp8
	psq_st fp0, 44(r3), 1, 0
	ps_mul fp7, fp5, fp5
	ps_madd fp12, fp4, fp9, fp10
	fres fp13, fp3
	ps_nmsub fp3, fp3, fp13, fp2
	ps_muls1 fp11, fp9, fp5
	ps_msub fp10, fp4, fp9, fp10
	ps_mul fp3, fp13, fp3
	ps_madds0 fp9, fp4, fp5, fp11
	ps_sum1 fp8, fp7, fp8, fp6
	fmuls fp3, fp3, fp2
	ps_nmsub fp11, fp11, fp2, fp9
	ps_sum0 fp6, fp6, fp6, fp6
	ps_mul fp9, fp9, fp3
	ps_mul fp11, fp11, fp3
	ps_nmsub fp8, fp8, fp3, fp1
	psq_st fp9, 8(r3), 1, 0
	ps_mul fp12, fp12, fp3
	ps_mul fp10, fp10, fp3
	ps_merge10 fp7, fp11, fp0
	ps_merge00 fp5, fp12, fp8
	ps_merge10 fp4, fp8, fp10
	psq_st fp7, 24(r3), 0, 0
	ps_merge01 fp13, fp11, fp9
	ps_nmsub fp6, fp6, fp3, fp1
	psq_st fp5, 16(r3), 0, 0
	psq_st fp6, 40(r3), 1, 0
	psq_st fp4, 0(r3), 0, 0
	psq_st fp13, 32(r3), 0, 0
}

void C_MTXLookAt(Mtx m, const Vec* camPos, const Vec* camUp, const Vec* target)
{

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

/*
 * --INFO--
 * Address:	........
 * Size:	000094
 */
asm void C_MTXLightFrustum(void)
{
	nofralloc
	stwu r1, -0x20(r1)
	stfd fp31, 0x10(r1)
	psq_st fp31, 24(r1), 0, 0
	fsubs fp0, fp4, fp3
	lfs fp10, zero_c //@sda21(r2)
	lfs fp12, one_c //@sda21(r2)
	fsubs fp9, fp1, fp2
	lfs fp11, float_8066C138 //@sda21(r2)
	fadds fp3, fp4, fp3
	fdivs fp13, fp12, fp0
	lfs fp0, float_8066C13C //@sda21(r2)
	stfs fp0, 0x28(r3)
	lfs fp31, 0x28(r1)
	stfs fp10, 4(r3)
	stfs fp10, 0xc(r3)
	fmuls fp4, fp11, fp5
	stfs fp10, 0x10(r3)
	fadds fp0, fp1, fp2
	fmuls fp1, fp13, fp3
	stfs fp10, 0x1c(r3)
	fdivs fp5, fp12, fp9
	stfs fp10, 0x20(r3)
	stfs fp10, 0x24(r3)
	stfs fp10, 0x2c(r3)
	fmuls fp2, fp6, fp1
	fmuls fp0, fp5, fp0
	fmuls fp3, fp4, fp13
	fmuls fp1, fp4, fp5
	fmuls fp0, fp7, fp0
	fmuls fp3, fp6, fp3
	fsubs fp2, fp2, fp8
	fmuls fp1, fp7, fp1
	stfs fp3, 0(r3)
	fsubs fp0, fp0, fp31
	stfs fp2, 8(r3)
	stfs fp1, 0x14(r3)
	stfs fp0, 0x18(r3)
	psq_l fp31, 24(r1), 0, 0
	lfd fp31, 0x10(r1)
	addi r1, r1, 0x20
	blr 
}

/*
 * --INFO--
 * Address:	800EAA84
 * Size:	0000CC
 */
void C_MTXLightPerspective(Mtx m, float fovY, float aspect, float scaleS, float scaleT, float transS, float transT)
{
	float angle;
	float cot;

	angle = fovY * 0.5f;
	angle = MTXDegToRad(angle);

	cot = 1.0f / tanf(angle);

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

/*
 * --INFO--
 * Address:	800EAB50
 * Size:	000088
 */
void C_MTXLightOrtho(Mtx m, float t, float b, float l, float r, float scaleS, float scaleT, float transS, float transT)
{
	float tmp;

	tmp     = 1.0f / (r - l);
	m[0][0] = (2.0f * tmp * scaleS);
	m[0][1] = 0.0f;
	m[0][2] = 0.0f;
	m[0][3] = ((-(r + l) * tmp) * scaleS) + transS;

	tmp     = 1.0f / (t - b);
	m[1][0] = 0.0f;
	m[1][1] = (2.0f * tmp) * scaleT;
	m[1][2] = 0.0f;
	m[1][3] = ((-(t + b) * tmp) * scaleT) + transT;

	m[2][0] = 0.0f;
	m[2][1] = 0.0f;
	m[2][2] = 0.0f;
	m[2][3] = 1.0f;
}
