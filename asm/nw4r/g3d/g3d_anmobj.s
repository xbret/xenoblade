.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn PlayPolicy_Onetime__Q24nw4r3g3dFfff, global
/* 803E73B0 003B0970  FC 20 18 90 */	fmr f1, f3
/* 803E73B4 003B0974  4E 80 00 20 */	blr
.endfn PlayPolicy_Onetime__Q24nw4r3g3dFfff

.fn PlayPolicy_Loop__Q24nw4r3g3dFfff, global
/* 803E73B8 003B0978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E73BC 003B097C  7C 08 02 A6 */	mflr r0
/* 803E73C0 003B0980  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E73C4 003B0984  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 803E73C8 003B0988  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 803E73CC 003B098C  C0 02 C0 40 */	lfs f0, float_8066C3C0@sda21(r2)
/* 803E73D0 003B0990  EF E2 08 28 */	fsubs f31, f2, f1
/* 803E73D4 003B0994  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803E73D8 003B0998  4C 41 13 82 */	cror 2, 1, 2
/* 803E73DC 003B099C  40 82 00 18 */	bne .L_803E73F4
/* 803E73E0 003B09A0  FC 20 18 90 */	fmr f1, f3
/* 803E73E4 003B09A4  FC 40 F8 90 */	fmr f2, f31
/* 803E73E8 003B09A8  4B EE 3E 25 */	bl fmod
/* 803E73EC 003B09AC  FC 20 08 18 */	frsp f1, f1
/* 803E73F0 003B09B0  48 00 00 20 */	b .L_803E7410
.L_803E73F4:
/* 803E73F4 003B09B4  FC 40 F8 90 */	fmr f2, f31
/* 803E73F8 003B09B8  EC 23 F8 2A */	fadds f1, f3, f31
/* 803E73FC 003B09BC  4B EE 3E 11 */	bl fmod
/* 803E7400 003B09C0  FC 20 08 18 */	frsp f1, f1
/* 803E7404 003B09C4  C0 02 C0 40 */	lfs f0, float_8066C3C0@sda21(r2)
/* 803E7408 003B09C8  FC 01 F8 2E */	fsel f0, f1, f0, f31
/* 803E740C 003B09CC  EC 21 00 2A */	fadds f1, f1, f0
.L_803E7410:
/* 803E7410 003B09D0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 803E7414 003B09D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E7418 003B09D8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 803E741C 003B09DC  7C 08 03 A6 */	mtlr r0
/* 803E7420 003B09E0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E7424 003B09E4  4E 80 00 20 */	blr 
.endfn PlayPolicy_Loop__Q24nw4r3g3dFfff

.fn SetAnmFlag__Q34nw4r3g3d6AnmObjFQ44nw4r3g3d6AnmObj7AnmFlagb, global
/* 803E7428 003B09E8  2C 05 00 00 */	cmpwi r5, 0
/* 803E742C 003B09EC  41 82 00 14 */	beq .L_803E7440
/* 803E7430 003B09F0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803E7434 003B09F4  7C 00 23 78 */	or r0, r0, r4
/* 803E7438 003B09F8  90 03 00 0C */	stw r0, 0xc(r3)
/* 803E743C 003B09FC  4E 80 00 20 */	blr
.L_803E7440:
/* 803E7440 003B0A00  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803E7444 003B0A04  7C 00 20 78 */	andc r0, r0, r4
/* 803E7448 003B0A08  90 03 00 0C */	stw r0, 0xc(r3)
/* 803E744C 003B0A0C  4E 80 00 20 */	blr 
.endfn SetAnmFlag__Q34nw4r3g3d6AnmObjFQ44nw4r3g3d6AnmObj7AnmFlagb

.fn TestAnmFlag__Q34nw4r3g3d6AnmObjCFQ44nw4r3g3d6AnmObj7AnmFlag, global
/* 803E7450 003B0A10  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803E7454 003B0A14  7C 03 20 38 */	and r3, r0, r4
/* 803E7458 003B0A18  7C 03 00 D0 */	neg r0, r3
/* 803E745C 003B0A1C  7C 00 1B 78 */	or r0, r0, r3
/* 803E7460 003B0A20  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803E7464 003B0A24  4E 80 00 20 */	blr 
.endfn TestAnmFlag__Q34nw4r3g3d6AnmObjCFQ44nw4r3g3d6AnmObj7AnmFlag

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global TYPE_NAME__Q34nw4r3g3d6AnmObj
TYPE_NAME__Q34nw4r3g3d6AnmObj:
	.4byte 0x00000007
	.asciz "AnmObj"
	.balign 4
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global smBaseUpdateRate__Q34nw4r3g3d9FrameCtrl
smBaseUpdateRate__Q34nw4r3g3d9FrameCtrl:
	.float 1.0
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066C3C0
float_8066C3C0:
	.float 0
	.4byte 0