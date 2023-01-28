.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/e_asin.o"

# 0x802C7564 - 0x802C77FC
.text
.balign 4

.fn __ieee754_asin, global
/* 802C7564 00290B24  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C7568 00290B28  7C 08 02 A6 */	mflr r0
/* 802C756C 00290B2C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C7570 00290B30  3C 00 3F F0 */	lis r0, 0x3ff0
/* 802C7574 00290B34  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802C7578 00290B38  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 802C757C 00290B3C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802C7580 00290B40  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 802C7584 00290B44  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 802C7588 00290B48  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 802C758C 00290B4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C7590 00290B50  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802C7594 00290B54  83 E1 00 08 */	lwz r31, 0x8(r1)
/* 802C7598 00290B58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C759C 00290B5C  57 FE 00 7E */	clrlwi r30, r31, 1
/* 802C75A0 00290B60  7C 1E 00 00 */	cmpw r30, r0
/* 802C75A4 00290B64  41 80 00 40 */	blt .L_802C75E4
/* 802C75A8 00290B68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C75AC 00290B6C  3C 7E C0 10 */	addis r3, r30, 0xc010
/* 802C75B0 00290B70  7C 60 03 79 */	or. r0, r3, r0
/* 802C75B4 00290B74  40 82 00 1C */	bne .L_802C75D0
/* 802C75B8 00290B78  C8 42 B5 A8 */	lfd f2, "@43"@sda21(r2)
/* 802C75BC 00290B7C  C8 02 B5 B0 */	lfd f0, "@44"@sda21(r2)
/* 802C75C0 00290B80  FC 42 00 72 */	fmul f2, f2, f1
/* 802C75C4 00290B84  FC 00 00 72 */	fmul f0, f0, f1
/* 802C75C8 00290B88  FC 22 00 2A */	fadd f1, f2, f0
/* 802C75CC 00290B8C  48 00 02 00 */	b .L_802C77CC
.L_802C75D0:
/* 802C75D0 00290B90  3C 60 80 66 */	lis r3, __float_nan@ha
/* 802C75D4 00290B94  38 00 00 21 */	li r0, 0x21
/* 802C75D8 00290B98  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802C75DC 00290B9C  C0 23 58 88 */	lfs f1, __float_nan@l(r3)
/* 802C75E0 00290BA0  48 00 01 EC */	b .L_802C77CC
.L_802C75E4:
/* 802C75E4 00290BA4  3C 00 3F E0 */	lis r0, 0x3fe0
/* 802C75E8 00290BA8  7C 1E 00 00 */	cmpw r30, r0
/* 802C75EC 00290BAC  40 80 00 B4 */	bge .L_802C76A0
/* 802C75F0 00290BB0  3C 00 3E 40 */	lis r0, 0x3e40
/* 802C75F4 00290BB4  7C 1E 00 00 */	cmpw r30, r0
/* 802C75F8 00290BB8  40 80 00 1C */	bge .L_802C7614
/* 802C75FC 00290BBC  C8 42 B5 B8 */	lfd f2, "@45"@sda21(r2)
/* 802C7600 00290BC0  C8 02 B5 C0 */	lfd f0, "@46"@sda21(r2)
/* 802C7604 00290BC4  FC 42 08 2A */	fadd f2, f2, f1
/* 802C7608 00290BC8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802C760C 00290BCC  40 81 00 0C */	ble .L_802C7618
/* 802C7610 00290BD0  48 00 01 BC */	b .L_802C77CC
.L_802C7614:
/* 802C7614 00290BD4  FF E1 00 72 */	fmul f31, f1, f1
.L_802C7618:
/* 802C7618 00290BD8  C8 42 B5 F0 */	lfd f2, "@52"@sda21(r2)
/* 802C761C 00290BDC  C8 02 B6 10 */	lfd f0, "@56"@sda21(r2)
/* 802C7620 00290BE0  FC 82 07 F2 */	fmul f4, f2, f31
/* 802C7624 00290BE4  C8 62 B5 E8 */	lfd f3, "@51"@sda21(r2)
/* 802C7628 00290BE8  C9 02 B5 E0 */	lfd f8, "@50"@sda21(r2)
/* 802C762C 00290BEC  FC 40 07 F2 */	fmul f2, f0, f31
/* 802C7630 00290BF0  C8 02 B6 08 */	lfd f0, "@55"@sda21(r2)
/* 802C7634 00290BF4  C8 E2 B5 D8 */	lfd f7, "@49"@sda21(r2)
/* 802C7638 00290BF8  FC 83 20 2A */	fadd f4, f3, f4
/* 802C763C 00290BFC  C8 62 B6 00 */	lfd f3, "@54"@sda21(r2)
/* 802C7640 00290C00  FC 00 10 2A */	fadd f0, f0, f2
/* 802C7644 00290C04  C8 42 B5 F8 */	lfd f2, "@53"@sda21(r2)
/* 802C7648 00290C08  FD 3F 01 32 */	fmul f9, f31, f4
/* 802C764C 00290C0C  C8 C2 B5 D0 */	lfd f6, "@48"@sda21(r2)
/* 802C7650 00290C10  C8 A2 B5 C8 */	lfd f5, "@47"@sda21(r2)
/* 802C7654 00290C14  FC 9F 00 32 */	fmul f4, f31, f0
/* 802C7658 00290C18  C8 02 B5 C0 */	lfd f0, "@46"@sda21(r2)
/* 802C765C 00290C1C  FD 08 48 2A */	fadd f8, f8, f9
/* 802C7660 00290C20  FC 63 20 2A */	fadd f3, f3, f4
/* 802C7664 00290C24  FC 9F 02 32 */	fmul f4, f31, f8
/* 802C7668 00290C28  FC 7F 00 F2 */	fmul f3, f31, f3
/* 802C766C 00290C2C  FC 87 20 2A */	fadd f4, f7, f4
/* 802C7670 00290C30  FC 42 18 2A */	fadd f2, f2, f3
/* 802C7674 00290C34  FC 7F 01 32 */	fmul f3, f31, f4
/* 802C7678 00290C38  FC 5F 00 B2 */	fmul f2, f31, f2
/* 802C767C 00290C3C  FC 66 18 2A */	fadd f3, f6, f3
/* 802C7680 00290C40  FC 40 10 2A */	fadd f2, f0, f2
/* 802C7684 00290C44  FC 1F 00 F2 */	fmul f0, f31, f3
/* 802C7688 00290C48  FC 05 00 2A */	fadd f0, f5, f0
/* 802C768C 00290C4C  FC 1F 00 32 */	fmul f0, f31, f0
/* 802C7690 00290C50  FC 00 10 24 */	fdiv f0, f0, f2
/* 802C7694 00290C54  FC 01 00 32 */	fmul f0, f1, f0
/* 802C7698 00290C58  FC 21 00 2A */	fadd f1, f1, f0
/* 802C769C 00290C5C  48 00 01 30 */	b .L_802C77CC
.L_802C76A0:
/* 802C76A0 00290C60  FC 20 0A 10 */	fabs f1, f1
/* 802C76A4 00290C64  C9 62 B5 C0 */	lfd f11, "@46"@sda21(r2)
/* 802C76A8 00290C68  C8 42 B6 18 */	lfd f2, "@57"@sda21(r2)
/* 802C76AC 00290C6C  C8 02 B5 F0 */	lfd f0, "@52"@sda21(r2)
/* 802C76B0 00290C70  FC 6B 08 28 */	fsub f3, f11, f1
/* 802C76B4 00290C74  C8 22 B6 10 */	lfd f1, "@56"@sda21(r2)
/* 802C76B8 00290C78  C9 22 B5 E8 */	lfd f9, "@51"@sda21(r2)
/* 802C76BC 00290C7C  C9 02 B5 E0 */	lfd f8, "@50"@sda21(r2)
/* 802C76C0 00290C80  FF E2 00 F2 */	fmul f31, f2, f3
/* 802C76C4 00290C84  C8 62 B6 08 */	lfd f3, "@55"@sda21(r2)
/* 802C76C8 00290C88  C8 42 B6 00 */	lfd f2, "@54"@sda21(r2)
/* 802C76CC 00290C8C  C8 E2 B5 D8 */	lfd f7, "@49"@sda21(r2)
/* 802C76D0 00290C90  C8 C2 B5 D0 */	lfd f6, "@48"@sda21(r2)
/* 802C76D4 00290C94  FD 40 07 F2 */	fmul f10, f0, f31
/* 802C76D8 00290C98  C8 02 B5 F8 */	lfd f0, "@53"@sda21(r2)
/* 802C76DC 00290C9C  FC 81 07 F2 */	fmul f4, f1, f31
/* 802C76E0 00290CA0  C8 A2 B5 C8 */	lfd f5, "@47"@sda21(r2)
/* 802C76E4 00290CA4  FD 29 50 2A */	fadd f9, f9, f10
/* 802C76E8 00290CA8  FC 20 F8 90 */	fmr f1, f31
/* 802C76EC 00290CAC  FC 63 20 2A */	fadd f3, f3, f4
/* 802C76F0 00290CB0  FC 9F 02 72 */	fmul f4, f31, f9
/* 802C76F4 00290CB4  FC 7F 00 F2 */	fmul f3, f31, f3
/* 802C76F8 00290CB8  FC 88 20 2A */	fadd f4, f8, f4
/* 802C76FC 00290CBC  FC 42 18 2A */	fadd f2, f2, f3
/* 802C7700 00290CC0  FC 7F 01 32 */	fmul f3, f31, f4
/* 802C7704 00290CC4  FC 5F 00 B2 */	fmul f2, f31, f2
/* 802C7708 00290CC8  FC 67 18 2A */	fadd f3, f7, f3
/* 802C770C 00290CCC  FC 00 10 2A */	fadd f0, f0, f2
/* 802C7710 00290CD0  FC 5F 00 F2 */	fmul f2, f31, f3
/* 802C7714 00290CD4  FC 1F 00 32 */	fmul f0, f31, f0
/* 802C7718 00290CD8  FC 46 10 2A */	fadd f2, f6, f2
/* 802C771C 00290CDC  FF AB 00 2A */	fadd f29, f11, f0
/* 802C7720 00290CE0  FC 1F 00 B2 */	fmul f0, f31, f2
/* 802C7724 00290CE4  FC 05 00 2A */	fadd f0, f5, f0
/* 802C7728 00290CE8  FF DF 00 32 */	fmul f30, f31, f0
/* 802C772C 00290CEC  48 00 3D 3D */	bl sqrt
/* 802C7730 00290CF0  3C 60 3F EF */	lis r3, 0x3fef
/* 802C7734 00290CF4  38 03 33 33 */	addi r0, r3, 0x3333
/* 802C7738 00290CF8  7C 1E 00 00 */	cmpw r30, r0
/* 802C773C 00290CFC  41 80 00 2C */	blt .L_802C7768
/* 802C7740 00290D00  FC 9E E8 24 */	fdiv f4, f30, f29
/* 802C7744 00290D04  C8 62 B6 20 */	lfd f3, "@58"@sda21(r2)
/* 802C7748 00290D08  C8 42 B5 B0 */	lfd f2, "@44"@sda21(r2)
/* 802C774C 00290D0C  C8 02 B5 A8 */	lfd f0, "@43"@sda21(r2)
/* 802C7750 00290D10  FC 81 01 32 */	fmul f4, f1, f4
/* 802C7754 00290D14  FC 21 20 2A */	fadd f1, f1, f4
/* 802C7758 00290D18  FC 23 00 72 */	fmul f1, f3, f1
/* 802C775C 00290D1C  FC 21 10 28 */	fsub f1, f1, f2
/* 802C7760 00290D20  FC 20 08 28 */	fsub f1, f0, f1
/* 802C7764 00290D24  48 00 00 58 */	b .L_802C77BC
.L_802C7768:
/* 802C7768 00290D28  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 802C776C 00290D2C  38 00 00 00 */	li r0, 0x0
/* 802C7770 00290D30  C8 A2 B6 20 */	lfd f5, "@58"@sda21(r2)
/* 802C7774 00290D34  FD 1E E8 24 */	fdiv f8, f30, f29
/* 802C7778 00290D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C777C 00290D3C  C8 62 B5 B0 */	lfd f3, "@44"@sda21(r2)
/* 802C7780 00290D40  C8 E1 00 10 */	lfd f7, 0x10(r1)
/* 802C7784 00290D44  C8 42 B6 28 */	lfd f2, "@59"@sda21(r2)
/* 802C7788 00290D48  FC 85 00 72 */	fmul f4, f5, f1
/* 802C778C 00290D4C  FC 07 01 F2 */	fmul f0, f7, f7
/* 802C7790 00290D50  FC C1 38 2A */	fadd f6, f1, f7
/* 802C7794 00290D54  FC 84 02 32 */	fmul f4, f4, f8
/* 802C7798 00290D58  FC 3F 00 28 */	fsub f1, f31, f0
/* 802C779C 00290D5C  FC 05 01 F2 */	fmul f0, f5, f7
/* 802C77A0 00290D60  FC 21 30 24 */	fdiv f1, f1, f6
/* 802C77A4 00290D64  FC 25 00 72 */	fmul f1, f5, f1
/* 802C77A8 00290D68  FC 23 08 28 */	fsub f1, f3, f1
/* 802C77AC 00290D6C  FC 62 00 28 */	fsub f3, f2, f0
/* 802C77B0 00290D70  FC 04 08 28 */	fsub f0, f4, f1
/* 802C77B4 00290D74  FC 00 18 28 */	fsub f0, f0, f3
/* 802C77B8 00290D78  FC 22 00 28 */	fsub f1, f2, f0
.L_802C77BC:
/* 802C77BC 00290D7C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C77C0 00290D80  40 81 00 08 */	ble .L_802C77C8
/* 802C77C4 00290D84  48 00 00 08 */	b .L_802C77CC
.L_802C77C8:
/* 802C77C8 00290D88  FC 20 08 50 */	fneg f1, f1
.L_802C77CC:
/* 802C77CC 00290D8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C77D0 00290D90  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 802C77D4 00290D94  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802C77D8 00290D98  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 802C77DC 00290D9C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802C77E0 00290DA0  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 802C77E4 00290DA4  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 802C77E8 00290DA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C77EC 00290DAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C77F0 00290DB0  7C 08 03 A6 */	mtlr r0
/* 802C77F4 00290DB4  38 21 00 50 */	addi r1, r1, 0x50
/* 802C77F8 00290DB8  4E 80 00 20 */	blr
.endfn __ieee754_asin

# 0x8066B928 - 0x8066B9B0
.section .sdata2, "a"
.balign 8

.obj "@43", local
	.4byte 0x3FF921FB
	.4byte 0x54442D18
.endobj "@43"

.obj "@44", local
	.4byte 0x3C91A626
	.4byte 0x33145C07
.endobj "@44"

.obj "@45", local
	.4byte 0x7E37E43C
	.4byte 0x8800759C
.endobj "@45"

.obj "@46", local
	.4byte 0x3FF00000
	.4byte 0x00000000
.endobj "@46"

.obj "@47", local
	.4byte 0x3FC55555
	.4byte 0x55555555
.endobj "@47"

.obj "@48", local
	.4byte 0xBFD4D612
	.4byte 0x03EB6F7D
.endobj "@48"

.obj "@49", local
	.4byte 0x3FC9C155
	.4byte 0x0E884455
.endobj "@49"

.obj "@50", local
	.4byte 0xBFA48228
	.4byte 0xB5688F3B
.endobj "@50"

.obj "@51", local
	.4byte 0x3F49EFE0
	.4byte 0x7501B288
.endobj "@51"

.obj "@52", local
	.4byte 0x3F023DE1
	.4byte 0x0DFDF709
.endobj "@52"

.obj "@53", local
	.4byte 0xC0033A27
	.4byte 0x1C8A2D4B
.endobj "@53"

.obj "@54", local
	.4byte 0x40002AE5
	.4byte 0x9C598AC8
.endobj "@54"

.obj "@55", local
	.4byte 0xBFE6066C
	.4byte 0x1B8D0159
.endobj "@55"

.obj "@56", local
	.4byte 0x3FB3B8C5
	.4byte 0xB12E9282
.endobj "@56"

.obj "@57", local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj "@57"

.obj "@58", local
	.4byte 0x40000000
	.4byte 0x00000000
.endobj "@58"

.obj "@59", local
	.4byte 0x3FE921FB
	.4byte 0x54442D18
.endobj "@59"
