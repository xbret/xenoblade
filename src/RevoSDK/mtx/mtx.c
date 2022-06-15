#include "types.h"
#include "fdlibm.h"
#include "RevoSDK/mtx.h"
static f32 Unit01[] = { 0.0f, 1.0f };
static f32 one_c = 0.0f;
static f32 zero_c = 0.0f;


asm void PSMTXIdentity
(
    register Mtx m
)
{
   	lfs f0, zero_c@sda21(r2)
	lfs f1, one_c@sda21(r2)
	psq_st f0, 8(r3), 0, qr0
	ps_merge10 f2, f1, f0
	ps_merge01 f1, f0, f1
	psq_st f0, 24(r3), 0, qr0
	psq_st f0, 32(r3), 0, qr0
	psq_st f1, 16(r3), 0, qr0
	psq_st f2, 0(r3), 0, qr0
	psq_st f2, 40(r3), 0, qr0
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
    const register Mtx r3,    // mA
    const register Mtx r4,    // mB
          register Mtx r5    // mAB
)
{
    nofralloc
	stwu r1, -0x40(r1)
psq_l f0, 0(r3), 0, qr0
stfd f14, 8(r1)
psq_l f6, 0(r4), 0, qr0
lis r6, Unit01@ha
psq_l f7, 8(r4), 0, qr0
stfd f15, 0x10(r1)
addi r6, r6, Unit01@l
stfd f31, 0x28(r1)
psq_l f8, 16(r4), 0, qr0
ps_muls0 f12, f6, f0
psq_l f2, 16(r3), 0, qr0
ps_muls0 f13, f7, f0
psq_l f31, 0(r6), 0, qr0
ps_muls0 f14, f6, f2
psq_l f9, 24(r4), 0, qr0
ps_muls0 f15, f7, f2
psq_l f1, 8(r3), 0, qr0
ps_madds1 f12, f8, f0, f12
psq_l f3, 24(r3), 0, qr0
ps_madds1 f14, f8, f2, f14
psq_l f10, 32(r4), 0, qr0
ps_madds1 f13, f9, f0, f13
psq_l f11, 40(r4), 0, qr0
ps_madds1 f15, f9, f2, f15
psq_l f4, 32(r3), 0, qr0
psq_l f5, 40(r3), 0, qr0
ps_madds0 f12, f10, f1, f12
ps_madds0 f13, f11, f1, f13
ps_madds0 f14, f10, f3, f14
ps_madds0 f15, f11, f3, f15
psq_st f12, 0(r5), 0, qr0
ps_muls0 f2, f6, f4
ps_madds1 f13, f31, f1, f13
ps_muls0 f0, f7, f4
psq_st f14, 16(r5), 0, qr0
ps_madds1 f15, f31, f3, f15
psq_st f13, 8(r5), 0, qr0
ps_madds1 f2, f8, f4, f2
ps_madds1 f0, f9, f4, f0
ps_madds0 f2, f10, f5, f2
lfd f14, 8(r1)
psq_st f15, 24(r5), 0, qr0
ps_madds0 f0, f11, f5, f0
psq_st f2, 32(r5), 0, qr0
ps_madds1 f0, f31, f5, f0
lfd f15, 0x10(r1)
psq_st f0, 40(r5), 0, qr0
lfd f31, 0x28(r1)
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
	stfd f31, 0x40(r1)
	psq_st f31, 72(r1), 0, qr0
	stfd f30, 0x30(r1)
	psq_st f30, 56(r1), 0, qr0
	stfd f29, 0x20(r1)
	psq_st f29, 40(r1), 0, qr0
	stfd f28, 0x10(r1)
	psq_st f28, 24(r1), 0, qr0
	addi r0, r6, -1
	psq_l f0, 0(r3), 0, qr0
	psq_l f1, 8(r3), 0, qr0
	addi r6, r13, Unit01@sda21
	psq_l f2, 16(r3), 0, qr0
	psq_l f3, 24(r3), 0, qr0
	psq_l f4, 32(r3), 0, qr0
	psq_l f5, 40(r3), 0, qr0
	mtctr r0
	psq_l f6, 0(r4), 0, qr0
	psq_l f7, 8(r4), 0, qr0
	ps_muls0 f11, f6, f0
	psq_l f8, 16(r4), 0, qr0
	ps_muls0 f13, f6, f2
	psq_l f9, 32(r4), 0, qr0
	ps_muls0 f30, f6, f4
	psq_l f6, 24(r4), 0, qr0
	ps_madds1 f11, f8, f0, f11
	psq_l f28, 0(r6), 0, qr0
	ps_madds1 f13, f8, f2, f13
	psq_l f10, 40(r4), 0, qr0
	ps_madds1 f30, f8, f4, f30
	ps_muls0 f12, f7, f0
	ps_muls0 f31, f7, f2
	ps_muls0 f29, f7, f4
	ps_madds0 f11, f9, f1, f11
	ps_madds0 f13, f9, f3, f13
	ps_madds0 f30, f9, f5, f30
	psq_st f11, 0(r5), 0, qr0
	ps_madds1 f12, f6, f0, f12
	ps_madds1 f31, f6, f2, f31
	psq_st f13, 16(r5), 0, qr0
	ps_madds1 f29, f6, f4, f29
lbl_8034D3C8:
	ps_madds0 f12, f10, f1, f12
	psq_l f6, 48(r4), 0, qr0
	ps_madds0 f31, f10, f3, f31
	psq_st f30, 32(r5), 0, qr0
	ps_madds0 f29, f10, f5, f29
	psq_l f8, 64(r4), 0, qr0
	ps_madd f12, f28, f1, f12
	psq_l f9, 80(r4), 0, qr0
	ps_muls0 f11, f6, f0
	psq_l f7, 56(r4), 0, qr0
	psq_st f12, 8(r5), 0, qr0
	ps_madd f31, f28, f3, f31
	ps_muls0 f13, f6, f2
	psq_st f31, 24(r5), 0, qr0
	ps_muls0 f30, f6, f4
	psq_l f6, 72(r4), 0, qr0
	ps_madds1 f11, f8, f0, f11
	psq_l f10, 88(r4), 0, qr0
	ps_madd f29, f28, f5, f29
	addi r4, r4, 0x30
	ps_madds1 f13, f8, f2, f13
	psq_st f29, 40(r5), 0, qr0
	ps_madds1 f30, f8, f4, f30
	ps_madds0 f11, f9, f1, f11
	ps_muls0 f12, f7, f0
	ps_muls0 f31, f7, f2
	psq_st f11, 48(r5), 0, qr0
	ps_muls0 f29, f7, f4
	ps_madds0 f13, f9, f3, f13
	ps_madds0 f30, f9, f5, f30
	psq_st f13, 64(r5), 0, qr0
	ps_madds1 f12, f6, f0, f12
	ps_madds1 f31, f6, f2, f31
	addi r5, r5, 0x30
	ps_madds1 f29, f6, f4, f29
	bdnz lbl_8034D3C8
	ps_madds0 f12, f10, f1, f12
	psq_st f30, 32(r5), 0, qr0
	ps_madds0 f31, f10, f3, f31
	ps_madds0 f29, f10, f5, f29
	ps_madd f12, f28, f1, f12
	ps_madd f31, f28, f3, f31
	psq_st f12, 8(r5), 0, qr0
	ps_madd f29, f28, f5, f29
	psq_st f31, 24(r5), 0, qr0
	psq_st f29, 40(r5), 0, qr0
	psq_l f31, 72(r1), 0, qr0
	lfd f31, 0x40(r1)
	psq_l f30, 56(r1), 0, qr0
	lfd f30, 0x30(r1)
	psq_l f29, 40(r1), 0, qr0
	lfd f29, 0x20(r1)
	psq_l f28, 24(r1), 0, qr0
	lfd f28, 0x10(r1)
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
asm void PSMTXTranspose ( const register Mtx src, register Mtx xPose )
{
        psq_l f1, 0(src), 0, qr0
		psq_l f2, 16(src), 0, qr0
		lfs f0, zero_c@sda21(r2)
		ps_merge00 f4, f1, f2
		psq_l f3, 8(src), 1, qr0
		ps_merge11 f5, f1, f2
		psq_l f2, 24(src), 1, qr0
		psq_l f1, 32(src), 0, qr0
		ps_merge00 f2, f3, f2
		psq_st f4, 0(xPose), 0, qr0
		ps_merge00 f4, f1, f0
		lfs f3, 0x28(src)
		psq_st f5, 16(xPose), 0, qr0
		ps_merge10 f5, f1, f0
		stfs f0, 0x2c(xPose)
		psq_st f2, 32(xPose), 0, qr0
		psq_st f4, 8(xPose), 0, qr0
		psq_st f5, 24(xPose), 0, qr0
		stfs f3, 0x28(xPose)
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
 * Size:	0000F8
 */
asm u32 PSMTXInverse ( const register Mtx src, register Mtx inv )
{
    nofralloc
    psq_l f0, 0(src), 1, qr0
	psq_l f1, 4(src), 0, qr0
	psq_l f2, 16(src), 1, qr0
	ps_merge10 f6, f1, f0
	psq_l f3, 20(src), 0, qr0
	psq_l f4, 32(src), 1, qr0
	ps_merge10 f7, f3, f2
	psq_l f5, 36(src), 0, qr0
	ps_mul f11, f3, f6
	ps_merge10 f8, f5, f4
	ps_mul f13, f5, f7
	ps_msub f11, f1, f7, f11
	ps_mul f12, f1, f8
	ps_msub f13, f3, f8, f13
	ps_mul f10, f3, f4
	ps_msub f12, f5, f6, f12
	ps_mul f7, f0, f13
	ps_mul f9, f0, f5
	ps_mul f8, f1, f2
	ps_madd f7, f2, f12, f7
	ps_sub f6, f6, f6
	ps_msub f10, f2, f5, f10
	ps_madd f7, f4, f11, f7
	ps_msub f9, f1, f4, f9
	ps_msub f8, f0, f3, f8
	ps_cmpo0 cr0, f7, f6
	bne lbl_8034D574
	li r3, 0
	blr
lbl_8034D574:
	fres f0, f7
	ps_add f6, f0, f0
	ps_mul f5, f7, f0
	ps_nmsub f0, f0, f5, f6
	lfs f1, 0xc(src)
	ps_muls0 f13, f13, f0
	lfs f2, 0x1c(src)
	ps_muls0 f12, f12, f0
	lfs f3, 0x2c(src)
	ps_muls0 f11, f11, f0
	ps_merge00 f5, f13, f12
	ps_merge11 f4, f13, f12
	ps_mul f6, f13, f1
	psq_st f5, 0(inv), 0, qr0
	psq_st f4, 16(inv), 0, qr0
	ps_muls0 f10, f10, f0
	ps_muls0 f9, f9, f0
	ps_madd f6, f12, f2, f6
	psq_st f10, 32(inv), 1, qr0
	ps_muls0 f8, f8, f0
	ps_nmadd f6, f11, f3, f6
	psq_st f9, 36(inv), 1, qr0
	ps_mul f7, f10, f1
	ps_merge00 f5, f11, f6
	psq_st f8, 40(inv), 1, qr0
	ps_madd f7, f9, f2, f7
	ps_merge11 f4, f11, f6
	psq_st f5, 8(inv), 0, qr0
	ps_nmadd f7, f8, f3, f7
	psq_st f4, 24(inv), 0, qr0
	psq_st f7, 44(inv), 1, qr0
	li r3, 1
	blr 
}


void PSMTXRotRad ( Mtx m, char axis, f32 rad )
{
    f32 sinA, cosA;

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
    register f32    sinA,
    register f32    cosA )
{
		frsp f5, f1
		ori r0, r4, 0x20
		frsp f4, f2
		cmplwi r0, 0x78
		lfs f0, zero_c@sda21(r2)
		ps_neg f2, f5
		lfs f1, one_c@sda21(r2)
		beq lbl_8034D6B4
		cmplwi r0, 0x79
		beq lbl_8034D6DC
		cmplwi r0, 0x7a
		beq lbl_8034D708
		blr
    _case_x:
        ps_merge00 f3, f5, f4
		psq_st f1, 0(r3), 1, qr0
		ps_merge00 f1, f4, f2
		psq_st f0, 4(r3), 0, qr0
		psq_st f0, 12(r3), 0, qr0
		psq_st f0, 28(r3), 0, qr0
		psq_st f0, 44(r3), 1, qr0
		psq_st f3, 36(r3), 0, qr0
		psq_st f1, 20(r3), 0, qr0
		blr

    _case_y:
        ps_merge00 f3, f4, f0
		psq_st f0, 24(r3), 0, qr0
		ps_merge00 f1, f0, f1
		ps_merge00 f2, f2, f0
		psq_st f3, 0(r3), 0, qr0
		ps_merge00 f0, f5, f0
		psq_st f3, 40(r3), 0, qr0
		psq_st f1, 16(r3), 0, qr0
		psq_st f0, 8(r3), 0, qr0
		psq_st f2, 32(r3), 0, qr0
		blr

    _case_z:
        ps_merge00 f3, f5, f4
        psq_st f0, 8(r3), 0, qr0
        ps_merge00 f2, f4, f2
        ps_merge00 f1, f1, f0
        psq_st f0, 24(r3), 0, qr0
        psq_st f0, 32(r3), 0, qr0
        psq_st f3, 16(r3), 0, qr0
        psq_st f2, 0(r3), 0, qr0
        psq_st f1, 40(r3), 0, qr0

    _end:
}

/*
 * --INFO--
 * Address:	800EA634
 * Size:	0000B0
 */
static asm void __PSMTXRotAxisRadInternal(
    register Mtx    r3,
    const register Vec *r4,
    register f32    fp1,
    register f32    fp2 )
{
   psq_l f3, 0(r4), 0, qr0
	frsp f11, f2
	lfs f10, lbl_8066C130@sda21(r2)
	frsp f12, f1
	ps_mul f4, f3, f3
	lfs f2, 8(r4)
	fadds f8, f10, f10
	lfs f9, lbl_8066C134@sda21(r2)
	fsubs f1, f10, f10
	ps_madd f5, f2, f2, f4
	fsubs f0, f8, f11
	ps_merge00 f11, f11, f11
	ps_sum0 f6, f5, f2, f4
	frsqrte f7, f6
	fmuls f4, f7, f7
	fmuls f5, f7, f10
	fnmsubs f4, f4, f6, f9
	fmuls f7, f4, f5
	ps_muls0 f3, f3, f7
	ps_muls0 f2, f2, f7
	ps_muls0 f6, f3, f0
	ps_muls0 f7, f2, f0
	ps_muls0 f10, f3, f12
	ps_muls1 f5, f6, f3
	ps_muls0 f4, f6, f3
	ps_muls0 f6, f6, f2
	fnmsubs f0, f2, f12, f5
	ps_neg f3, f10
	fmadds f8, f2, f12, f5
	ps_sum0 f4, f4, f0, f11
	ps_sum0 f0, f3, f1, f6
	ps_muls0 f7, f7, f2
	psq_st f4, 0(r3), 0, qr0
	ps_sum0 f9, f6, f1, f10
	ps_sum0 f3, f6, f6, f3
	psq_st f0, 24(r3), 0, qr0
	ps_sum1 f5, f11, f8, f5
	ps_sum0 f7, f7, f1, f11
	psq_st f9, 8(r3), 0, qr0
	ps_sum1 f6, f10, f3, f6
	psq_st f5, 16(r3), 0, qr0
	psq_st f6, 32(r3), 0, qr0
	psq_st f7, 40(r3), 0, qr0
}
// clang-format on
/*
 * --INFO--
 * Address:	800EA6E4
 * Size:	000070
 */
void PSMTXRotAxisRad(Mtx m, const Vec* axis, f32 rad)
{
	f32 sinT, cosT;

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
    register f32 xT,
    register f32 yT,
    register f32 zT
)
{
    lfs f0, zero_c@sda21(r2)
	lfs f4, one_c@sda21(r2)
	stfs f1, 0xc(r3)
	stfs f2, 0x1c(r3)
	psq_st f0, 4(r3), 0, qr0
	psq_st f0, 32(r3), 0, qr0
	stfs f0, 0x10(r3)
	stfs f4, 0x14(r3)
	stfs f0, 0x18(r3)
	stfs f4, 0x28(r3)
	stfs f3, 0x2c(r3)
	stfs f4, 0(r3)
}


asm void PSMTXTransApply(
    const register Mtx r3,
    register Mtx r4,
    register f32 f1,
    register f32 f2,
    register f32 f3 )
{
    nofralloc
    psq_l f4, 0(r3), 0, qr0
	frsp f1, f1
	psq_l f5, 8(r3), 0, qr0
	frsp f2, f2
	psq_l f7, 24(r3), 0, qr0
	frsp f3, f3
	psq_l f8, 40(r3), 0, qr0
	psq_st f4, 0(r4), 0, qr0
	ps_sum1 f5, f1, f5, f5
	psq_l f6, 16(r3), 0, qr0
	psq_st f5, 8(r4), 0, qr0
	ps_sum1 f7, f2, f7, f7
	psq_l f9, 32(r3), 0, qr0
	psq_st f6, 16(r4), 0, qr0
	ps_sum1 f8, f3, f8, f8
	psq_st f7, 24(r4), 0, qr0
	psq_st f9, 32(r4), 0, qr0
	psq_st f8, 40(r4), 0, qr0
	blr 
}


asm void PSMTXScale(
    register Mtx m,
    register f32 xS,
    register f32 yS,
    register f32 zS
)
{
    lfs f0, zero_c@sda21(r2)
	stfs f1, 0(r3)
	psq_st f0, 4(r3), 0, qr0
	psq_st f0, 12(r3), 0, qr0
	stfs f2, 0x14(r3)
	psq_st f0, 24(r3), 0, qr0
	psq_st f0, 32(r3), 0, qr0
	stfs f3, 0x28(r3)
	stfs f0, 0x2c(r3)
}

asm void PSMTXScaleApply (
    const register Mtx src,
    register Mtx dst,
    register f32 xS,
    register f32 yS,
    register f32 zS )
{
    nofralloc;
    frsp f1, f1
	psq_l f4, 0(r3), 0, qr0
	frsp f2, f2
	psq_l f5, 8(r3), 0, qr0
	frsp f3, f3
	ps_muls0 f4, f4, f1
	psq_l f6, 16(r3), 0, qr0
	ps_muls0 f5, f5, f1
	psq_l f7, 24(r3), 0, qr0
	ps_muls0 f6, f6, f2
	psq_l f8, 32(r3), 0, qr0
	psq_st f4, 0(r4), 0, qr0
	ps_muls0 f7, f7, f2
	psq_l f2, 40(r3), 0, qr0
	psq_st f5, 8(r4), 0, qr0
	ps_muls0 f8, f8, f3
	psq_st f6, 16(r4), 0, qr0
	ps_muls0 f2, f2, f3
	psq_st f7, 24(r4), 0, qr0
	psq_st f8, 32(r4), 0, qr0
	psq_st f2, 40(r4), 0, qr0
	blr 
}


asm void PSMTXQuat ( register Mtx m, const register PSQuaternion *q )
{
	psq_l f4, 0(r4), 0, qr0
psq_l f5, 8(r4), 0, qr0
ps_mul f6, f4, f4
lfs f1, one_c@sda21(r2)
ps_merge10 f9, f4, f4
fsubs f0, f1, f1
ps_madd f8, f5, f5, f6
ps_muls1 f10, f5, f5
psq_st f0, 12(r3), 1, qr0
fadds f2, f1, f1
ps_sum0 f3, f8, f8, f8
psq_st f0, 44(r3), 1, qr0
ps_mul f7, f5, f5
ps_madd f12, f4, f9, f10
fres f13, f3
ps_nmsub f3, f3, f13, f2
ps_muls1 f11, f9, f5
ps_msub f10, f4, f9, f10
ps_mul f3, f13, f3
ps_madds0 f9, f4, f5, f11
ps_sum1 f8, f7, f8, f6
fmuls f3, f3, f2
ps_nmsub f11, f11, f2, f9
ps_sum0 f6, f6, f6, f6
ps_mul f9, f9, f3
ps_mul f11, f11, f3
ps_nmsub f8, f8, f3, f1
psq_st f9, 8(r3), 1, qr0
ps_mul f12, f12, f3
ps_mul f10, f10, f3
ps_merge10 f7, f11, f0
ps_merge00 f5, f12, f8
ps_merge10 f4, f8, f10
psq_st f7, 24(r3), 0, qr0
ps_merge01 f13, f11, f9
ps_nmsub f6, f6, f3, f1
psq_st f5, 16(r3), 0, qr0
psq_st f6, 40(r3), 1, qr0
psq_st f4, 0(r3), 0, qr0
psq_st f13, 32(r3), 0, qr0
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
stfd f31, 0x10(r1)
psq_st f31, 24(r1), 0, qr0
fsubs f0, f4, f3
lfs f10, zero_c@sda21(r2)
lfs f12, one_c@sda21(r2)
fsubs f9, f1, f2
lfs f11, lbl_8066C138@sda21(r2)
fadds f3, f4, f3
fdivs f13, f12, f0
lfs f0, lbl_8066C13C@sda21(r2)
stfs f0, 0x28(r3)
lfs f31, 0x28(r1)
stfs f10, 4(r3)
stfs f10, 0xc(r3)
fmuls f4, f11, f5
stfs f10, 0x10(r3)
fadds f0, f1, f2
fmuls f1, f13, f3
stfs f10, 0x1c(r3)
fdivs f5, f12, f9
stfs f10, 0x20(r3)
stfs f10, 0x24(r3)
stfs f10, 0x2c(r3)
fmuls f2, f6, f1
fmuls f0, f5, f0
fmuls f3, f4, f13
fmuls f1, f4, f5
fmuls f0, f7, f0
fmuls f3, f6, f3
fsubs f2, f2, f8
fmuls f1, f7, f1
stfs f3, 0(r3)
fsubs f0, f0, f31
stfs f2, 8(r3)
stfs f1, 0x14(r3)
stfs f0, 0x18(r3)
psq_l f31, 24(r1), 0, qr0
lfd f31, 0x10(r1)
addi r1, r1, 0x20
blr 
}

/*
 * --INFO--
 * Address:	800EAA84
 * Size:	0000CC
 */
void C_MTXLightPerspective(Mtx m, f32 fovY, f32 aspect, float scaleS, float scaleT, float transS, float transT)
{
	f32 angle;
	f32 cot;

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
void C_MTXLightOrtho(Mtx m, f32 t, f32 b, f32 l, f32 r, float scaleS, float scaleT, float transS, float transT)
{
	f32 tmp;

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