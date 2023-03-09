.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn SinFIdx__Q26nw4hbm4mathFf, global
/* 80336640 002FFC00  3C 60 80 52 */	lis r3, lbl_80518AF0@ha
/* 80336644 002FFC04  FC 40 0A 10 */	fabs f2, f1
/* 80336648 002FFC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033664C 002FFC0C  C0 03 8A F0 */	lfs f0, lbl_80518AF0@l(r3)
/* 80336650 002FFC10  48 00 00 0C */	b .L_8033665C
/* 80336654 002FFC14  60 00 00 00 */	nop
.L_80336658:
/* 80336658 002FFC18  EC 42 00 28 */	fsubs f2, f2, f0
.L_8033665C:
/* 8033665C 002FFC1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80336660 002FFC20  4C 41 13 82 */	cror 2, 1, 2
/* 80336664 002FFC24  41 82 FF F4 */	beq .L_80336658
/* 80336668 002FFC28  38 61 00 0C */	addi r3, r1, 0xc
/* 8033666C 002FFC2C  F0 43 B0 00 */	psq_st f2, 0(r3), 1, qr3
/* 80336670 002FFC30  38 61 00 08 */	addi r3, r1, 8
/* 80336674 002FFC34  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80336678 002FFC38  B0 01 00 08 */	sth r0, 8(r1)
/* 8033667C 002FFC3C  E0 03 B0 00 */	psq_l f0, 0(r3), 1, qr3
/* 80336680 002FFC40  3C A0 80 55 */	lis r5, "sSinCosTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@ha
/* 80336684 002FFC44  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80336688 002FFC48  3C 60 80 52 */	lis r3, lbl_80518AF4@ha
/* 8033668C 002FFC4C  38 A5 DB 88 */	addi r5, r5, "sSinCosTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@l
/* 80336690 002FFC50  EC 82 00 28 */	fsubs f4, f2, f0
/* 80336694 002FFC54  7C 85 02 14 */	add r4, r5, r0
/* 80336698 002FFC58  C0 03 8A F4 */	lfs f0, lbl_80518AF4@l(r3)
/* 8033669C 002FFC5C  C0 64 00 08 */	lfs f3, 8(r4)
/* 803366A0 002FFC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803366A4 002FFC64  7C 45 04 2E */	lfsx f2, r5, r0
/* 803366A8 002FFC68  EC 04 00 F2 */	fmuls f0, f4, f3
/* 803366AC 002FFC6C  EC 22 00 2A */	fadds f1, f2, f0
/* 803366B0 002FFC70  40 80 00 08 */	bge .L_803366B8
/* 803366B4 002FFC74  FC 20 08 50 */	fneg f1, f1
.L_803366B8:
/* 803366B8 002FFC78  38 21 00 10 */	addi r1, r1, 0x10
/* 803366BC 002FFC7C  4E 80 00 20 */	blr 
.endfn SinFIdx__Q26nw4hbm4mathFf

.balign 16, 0
.fn CosFIdx__Q26nw4hbm4mathFf, global
/* 803366C0 002FFC80  3C 60 80 52 */	lis r3, lbl_80518AF0@ha
/* 803366C4 002FFC84  FC 20 0A 10 */	fabs f1, f1
/* 803366C8 002FFC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803366CC 002FFC8C  C0 03 8A F0 */	lfs f0, lbl_80518AF0@l(r3)
/* 803366D0 002FFC90  48 00 00 0C */	b .L_803366DC
/* 803366D4 002FFC94  60 00 00 00 */	nop 
.L_803366D8:
/* 803366D8 002FFC98  EC 21 00 28 */	fsubs f1, f1, f0
.L_803366DC:
/* 803366DC 002FFC9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803366E0 002FFCA0  4C 41 13 82 */	cror 2, 1, 2
/* 803366E4 002FFCA4  41 82 FF F4 */	beq .L_803366D8
/* 803366E8 002FFCA8  38 61 00 0C */	addi r3, r1, 0xc
/* 803366EC 002FFCAC  F0 23 B0 00 */	psq_st f1, 0(r3), 1, qr3
/* 803366F0 002FFCB0  38 61 00 08 */	addi r3, r1, 8
/* 803366F4 002FFCB4  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 803366F8 002FFCB8  B0 01 00 08 */	sth r0, 8(r1)
/* 803366FC 002FFCBC  E0 03 B0 00 */	psq_l f0, 0(r3), 1, qr3
/* 80336700 002FFCC0  3C 60 80 55 */	lis r3, "sSinCosTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@ha
/* 80336704 002FFCC4  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80336708 002FFCC8  38 63 DB 88 */	addi r3, r3, "sSinCosTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@l
/* 8033670C 002FFCCC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80336710 002FFCD0  7C 63 02 14 */	add r3, r3, r0
/* 80336714 002FFCD4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80336718 002FFCD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8033671C 002FFCDC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80336720 002FFCE0  EC 20 08 2A */	fadds f1, f0, f1
/* 80336724 002FFCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80336728 002FFCE8  4E 80 00 20 */	blr 
.endfn CosFIdx__Q26nw4hbm4mathFf

.balign 16, 0
.fn Atan2FIdx__Q26nw4hbm4mathFff, global
/* 80336730 002FFCF0  3C 60 80 52 */	lis r3, lbl_80518AF0@ha
/* 80336734 002FFCF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80336738 002FFCF8  38 63 8A F0 */	addi r3, r3, lbl_80518AF0@l
/* 8033673C 002FFCFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80336740 002FFD00  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80336744 002FFD04  40 82 00 14 */	bne .L_80336758
/* 80336748 002FFD08  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8033674C 002FFD0C  40 82 00 0C */	bne .L_80336758
/* 80336750 002FFD10  FC 20 00 90 */	fmr f1, f0
/* 80336754 002FFD14  48 00 01 94 */	b .L_803368E8
.L_80336758:
/* 80336758 002FFD18  C0 83 00 04 */	lfs f4, 4(r3)
/* 8033675C 002FFD1C  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 80336760 002FFD20  4C 41 13 82 */	cror 2, 1, 2
/* 80336764 002FFD24  40 82 00 6C */	bne .L_803367D0
/* 80336768 002FFD28  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8033676C 002FFD2C  4C 41 13 82 */	cror 2, 1, 2
/* 80336770 002FFD30  40 82 00 30 */	bne .L_803367A0
/* 80336774 002FFD34  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80336778 002FFD38  4C 41 13 82 */	cror 2, 1, 2
/* 8033677C 002FFD3C  40 82 00 10 */	bne .L_8033678C
/* 80336780 002FFD40  FC 60 10 90 */	fmr f3, f2
/* 80336784 002FFD44  38 00 00 00 */	li r0, 0
/* 80336788 002FFD48  48 00 00 BC */	b .L_80336844
.L_8033678C:
/* 8033678C 002FFD4C  FC 60 08 90 */	fmr f3, f1
/* 80336790 002FFD50  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 80336794 002FFD54  FC 20 10 90 */	fmr f1, f2
/* 80336798 002FFD58  38 00 00 01 */	li r0, 1
/* 8033679C 002FFD5C  48 00 00 A8 */	b .L_80336844
.L_803367A0:
/* 803367A0 002FFD60  FC 20 08 50 */	fneg f1, f1
/* 803367A4 002FFD64  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 803367A8 002FFD68  4C 41 13 82 */	cror 2, 1, 2
/* 803367AC 002FFD6C  40 82 00 10 */	bne .L_803367BC
/* 803367B0 002FFD70  FC 60 10 90 */	fmr f3, f2
/* 803367B4 002FFD74  38 00 00 01 */	li r0, 1
/* 803367B8 002FFD78  48 00 00 8C */	b .L_80336844
.L_803367BC:
/* 803367BC 002FFD7C  FC 60 08 90 */	fmr f3, f1
/* 803367C0 002FFD80  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 803367C4 002FFD84  FC 20 10 90 */	fmr f1, f2
/* 803367C8 002FFD88  38 00 00 00 */	li r0, 0
/* 803367CC 002FFD8C  48 00 00 78 */	b .L_80336844
.L_803367D0:
/* 803367D0 002FFD90  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 803367D4 002FFD94  4C 41 13 82 */	cror 2, 1, 2
/* 803367D8 002FFD98  40 82 00 38 */	bne .L_80336810
/* 803367DC 002FFD9C  FC 00 10 50 */	fneg f0, f2
/* 803367E0 002FFDA0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803367E4 002FFDA4  4C 41 13 82 */	cror 2, 1, 2
/* 803367E8 002FFDA8  40 82 00 14 */	bne .L_803367FC
/* 803367EC 002FFDAC  FC 60 00 90 */	fmr f3, f0
/* 803367F0 002FFDB0  C0 83 00 1C */	lfs f4, 0x1c(r3)
/* 803367F4 002FFDB4  38 00 00 01 */	li r0, 1
/* 803367F8 002FFDB8  48 00 00 4C */	b .L_80336844
.L_803367FC:
/* 803367FC 002FFDBC  FC 60 08 90 */	fmr f3, f1
/* 80336800 002FFDC0  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 80336804 002FFDC4  FC 20 00 90 */	fmr f1, f0
/* 80336808 002FFDC8  38 00 00 00 */	li r0, 0
/* 8033680C 002FFDCC  48 00 00 38 */	b .L_80336844
.L_80336810:
/* 80336810 002FFDD0  FC 00 10 50 */	fneg f0, f2
/* 80336814 002FFDD4  FC 20 08 50 */	fneg f1, f1
/* 80336818 002FFDD8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8033681C 002FFDDC  4C 41 13 82 */	cror 2, 1, 2
/* 80336820 002FFDE0  40 82 00 14 */	bne .L_80336834
/* 80336824 002FFDE4  FC 60 00 90 */	fmr f3, f0
/* 80336828 002FFDE8  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 8033682C 002FFDEC  38 00 00 00 */	li r0, 0
/* 80336830 002FFDF0  48 00 00 14 */	b .L_80336844
.L_80336834:
/* 80336834 002FFDF4  FC 60 08 90 */	fmr f3, f1
/* 80336838 002FFDF8  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 8033683C 002FFDFC  FC 20 00 90 */	fmr f1, f0
/* 80336840 002FFE00  38 00 00 01 */	li r0, 1
.L_80336844:
/* 80336844 002FFE04  2C 00 00 00 */	cmpwi r0, 0
/* 80336848 002FFE08  41 82 00 54 */	beq .L_8033689C
/* 8033684C 002FFE0C  EC 21 18 24 */	fdivs f1, f1, f3
/* 80336850 002FFE10  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80336854 002FFE14  38 61 00 10 */	addi r3, r1, 0x10
/* 80336858 002FFE18  EC 21 00 32 */	fmuls f1, f1, f0
/* 8033685C 002FFE1C  F0 23 B0 00 */	psq_st f1, 0(r3), 1, qr3
/* 80336860 002FFE20  38 61 00 0A */	addi r3, r1, 0xa
/* 80336864 002FFE24  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80336868 002FFE28  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8033686C 002FFE2C  E0 03 B0 00 */	psq_l f0, 0(r3), 1, qr3
/* 80336870 002FFE30  3C 80 80 55 */	lis r4, "sArcTanTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@ha
/* 80336874 002FFE34  54 00 18 38 */	slwi r0, r0, 3
/* 80336878 002FFE38  38 84 EB 98 */	addi r4, r4, "sArcTanTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@l
/* 8033687C 002FFE3C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80336880 002FFE40  7C 64 02 14 */	add r3, r4, r0
/* 80336884 002FFE44  7C 04 04 2E */	lfsx f0, r4, r0
/* 80336888 002FFE48  C0 23 00 04 */	lfs f1, 4(r3)
/* 8033688C 002FFE4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80336890 002FFE50  EC 00 08 2A */	fadds f0, f0, f1
/* 80336894 002FFE54  EC 24 00 28 */	fsubs f1, f4, f0
/* 80336898 002FFE58  48 00 00 50 */	b .L_803368E8
.L_8033689C:
/* 8033689C 002FFE5C  EC 21 18 24 */	fdivs f1, f1, f3
/* 803368A0 002FFE60  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 803368A4 002FFE64  38 61 00 0C */	addi r3, r1, 0xc
/* 803368A8 002FFE68  EC 21 00 32 */	fmuls f1, f1, f0
/* 803368AC 002FFE6C  F0 23 B0 00 */	psq_st f1, 0(r3), 1, qr3
/* 803368B0 002FFE70  38 61 00 08 */	addi r3, r1, 8
/* 803368B4 002FFE74  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 803368B8 002FFE78  B0 01 00 08 */	sth r0, 8(r1)
/* 803368BC 002FFE7C  E0 03 B0 00 */	psq_l f0, 0(r3), 1, qr3
/* 803368C0 002FFE80  3C 80 80 55 */	lis r4, "sArcTanTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@ha
/* 803368C4 002FFE84  54 00 18 38 */	slwi r0, r0, 3
/* 803368C8 002FFE88  38 84 EB 98 */	addi r4, r4, "sArcTanTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"@l
/* 803368CC 002FFE8C  EC 41 00 28 */	fsubs f2, f1, f0
/* 803368D0 002FFE90  7C 64 02 14 */	add r3, r4, r0
/* 803368D4 002FFE94  7C 04 04 2E */	lfsx f0, r4, r0
/* 803368D8 002FFE98  C0 23 00 04 */	lfs f1, 4(r3)
/* 803368DC 002FFE9C  EC 22 00 72 */	fmuls f1, f2, f1
/* 803368E0 002FFEA0  EC 00 08 2A */	fadds f0, f0, f1
/* 803368E4 002FFEA4  EC 24 00 2A */	fadds f1, f4, f0
.L_803368E8:
/* 803368E8 002FFEA8  38 21 00 20 */	addi r1, r1, 0x20
/* 803368EC 002FFEAC  4E 80 00 20 */	blr
.endfn Atan2FIdx__Q26nw4hbm4mathFff

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj lbl_80518AF0, global
	.float 65536 #0x47800000
.endobj lbl_80518AF0


.obj lbl_80518AF4, global
	.4byte 0
	.float 1.0
	.4byte 0x42000000
	.4byte 0x42800000
	.float -1.0
	.4byte 0xC2800000
	.4byte 0x43000000
	.4byte 0xC3000000
	.4byte 0
.endobj lbl_80518AF4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj "sSinCosTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@", local
    .float 0
    .float 1.0
    .float 0.024541
    .float -0.00030099999
    .float 0.024541
    .float 0.999699
    .float 0.024526
    .float -0.00090300001
    .float 0.049068
    .float 0.99879497
    .float 0.024497001
    .float -0.001505
    .float 0.073564999
    .float 0.99729002
    .float 0.024452999
    .float -0.002106
    .float 0.098017
    .float 0.99518502
    .float 0.024394
    .float -0.002705
    .float 0.122411
    .float 0.99247998
    .float 0.024320001
    .float -0.003303
    .float 0.14673001
    .float 0.98917699
    .float 0.024231
    .float -0.0038989999
    .float 0.17096201
    .float 0.98527801
    .float 0.024127999
    .float -0.0044920002
    .float 0.19509
    .float 0.98078501
    .float 0.024010999
    .float -0.0050829998
    .float 0.219101
    .float 0.97570199
    .float 0.023879001
    .float -0.0056710001
    .float 0.24298
    .float 0.97003102
    .float 0.023732999
    .float -0.0062549999
    .float 0.26671299
    .float 0.96377599
    .float 0.023572
    .float -0.0068359999
    .float 0.29028499
    .float 0.95694
    .float 0.023397001
    .float -0.0074120001
    .float 0.31368199
    .float 0.94952798
    .float 0.023208
    .float -0.0079840003
    .float 0.33689001
    .float 0.941544
    .float 0.023004999
    .float -0.0085509997
    .float 0.35989499
    .float 0.93299299
    .float 0.022787999
    .float -0.0091129998
    .float 0.38268301
    .float 0.92387998
    .float 0.022558
    .float -0.0096699996
    .float 0.40524101
    .float 0.91421002
    .float 0.022314001
    .float -0.01022
    .float 0.42755499
    .float 0.90398902
    .float 0.022056
    .float -0.010765
    .float 0.44961101
    .float 0.893224
    .float 0.021785
    .float -0.011303
    .float 0.47139701
    .float 0.88192099
    .float 0.021500999
    .float -0.011834
    .float 0.49289799
    .float 0.87008703
    .float 0.021205001
    .float -0.012358
    .float 0.514103
    .float 0.85772902
    .float 0.020895001
    .float -0.012875
    .float 0.534998
    .float 0.844854
    .float 0.020572999
    .float -0.013384
    .float 0.55557001
    .float 0.83147001
    .float 0.020238001
    .float -0.013885
    .float 0.57580799
    .float 0.81758499
    .float 0.019890999
    .float -0.014377
    .float 0.59569901
    .float 0.80320799
    .float 0.019532001
    .float -0.014861
    .float 0.61523199
    .float 0.78834599
    .float 0.019161999
    .float -0.015336
    .float 0.63439298
    .float 0.77301002
    .float 0.018780001
    .float -0.015802
    .float 0.65317303
    .float 0.757209
    .float 0.018386001
    .float -0.016257999
    .float 0.67155898
    .float 0.740951
    .float 0.017982
    .float -0.016704001
    .float 0.68954098
    .float 0.72424698
    .float 0.017565999
    .float -0.017139999
    .float 0.70710701
    .float 0.70710701
    .float 0.017139999
    .float -0.017565999
    .float 0.72424698
    .float 0.68954098
    .float 0.016704001
    .float -0.017982
    .float 0.740951
    .float 0.67155898
    .float 0.016257999
    .float -0.018386001
    .float 0.757209
    .float 0.65317303
    .float 0.015802
    .float -0.018780001
    .float 0.77301002
    .float 0.63439298
    .float 0.015336
    .float -0.019161999
    .float 0.78834599
    .float 0.61523199
    .float 0.014861
    .float -0.019532001
    .float 0.80320799
    .float 0.59569901
    .float 0.014377
    .float -0.019890999
    .float 0.81758499
    .float 0.57580799
    .float 0.013885
    .float -0.020238001
    .float 0.83147001
    .float 0.55557001
    .float 0.013384
    .float -0.020572999
    .float 0.844854
    .float 0.534998
    .float 0.012875
    .float -0.020895001
    .float 0.85772902
    .float 0.514103
    .float 0.012358
    .float -0.021205001
    .float 0.87008703
    .float 0.49289799
    .float 0.011834
    .float -0.021500999
    .float 0.88192099
    .float 0.47139701
    .float 0.011303
    .float -0.021785
    .float 0.893224
    .float 0.44961101
    .float 0.010765
    .float -0.022056
    .float 0.90398902
    .float 0.42755499
    .float 0.01022
    .float -0.022314001
    .float 0.91421002
    .float 0.40524101
    .float 0.0096699996
    .float -0.022558
    .float 0.92387998
    .float 0.38268301
    .float 0.0091129998
    .float -0.022787999
    .float 0.93299299
    .float 0.35989499
    .float 0.0085509997
    .float -0.023004999
    .float 0.941544
    .float 0.33689001
    .float 0.0079840003
    .float -0.023208
    .float 0.94952798
    .float 0.31368199
    .float 0.0074120001
    .float -0.023397001
    .float 0.95694
    .float 0.29028499
    .float 0.0068359999
    .float -0.023572
    .float 0.96377599
    .float 0.26671299
    .float 0.0062549999
    .float -0.023732999
    .float 0.97003102
    .float 0.24298
    .float 0.0056710001
    .float -0.023879001
    .float 0.97570199
    .float 0.219101
    .float 0.0050829998
    .float -0.024010999
    .float 0.98078501
    .float 0.19509
    .float 0.0044920002
    .float -0.024127999
    .float 0.98527801
    .float 0.17096201
    .float 0.0038989999
    .float -0.024231
    .float 0.98917699
    .float 0.14673001
    .float 0.003303
    .float -0.024320001
    .float 0.99247998
    .float 0.122411
    .float 0.002705
    .float -0.024394
    .float 0.99518502
    .float 0.098017
    .float 0.002106
    .float -0.024452999
    .float 0.99729002
    .float 0.073564999
    .float 0.001505
    .float -0.024497001
    .float 0.99879497
    .float 0.049068
    .float 0.00090300001
    .float -0.024526
    .float 0.999699
    .float 0.024541
    .float 0.00030099999
    .float -0.024541
    .float 1.0
    .float 0 #0
    .float -0.00030099999
    .float -0.024541
    .float 0.999699
    .float -0.024541
    .float -0.00090300001
    .float -0.024526
    .float 0.99879497
    .float -0.049068
    .float -0.001505
    .float -0.024497001
    .float 0.99729002
    .float -0.073564999
    .float -0.002106
    .float -0.024452999
    .float 0.99518502
    .float -0.098017
    .float -0.002705
    .float -0.024394
    .float 0.99247998
    .float -0.122411
    .float -0.003303
    .float -0.024320001
    .float 0.98917699
    .float -0.14673001
    .float -0.0038989999
    .float -0.024231
    .float 0.98527801
    .float -0.17096201
    .float -0.0044920002
    .float -0.024127999
    .float 0.98078501
    .float -0.19509
    .float -0.0050829998
    .float -0.024010999
    .float 0.97570199
    .float -0.219101
    .float -0.0056710001
    .float -0.023879001
    .float 0.97003102
    .float -0.24298
    .float -0.0062549999
    .float -0.023732999
    .float 0.96377599
    .float -0.26671299
    .float -0.0068359999
    .float -0.023572
    .float 0.95694
    .float -0.29028499
    .float -0.0074120001
    .float -0.023397001
    .float 0.94952798
    .float -0.31368199
    .float -0.0079840003
    .float -0.023208
    .float 0.941544
    .float -0.33689001
    .float -0.0085509997
    .float -0.023004999
    .float 0.93299299
    .float -0.35989499
    .float -0.0091129998
    .float -0.022787999
    .float 0.92387998
    .float -0.38268301
    .float -0.0096699996
    .float -0.022558
    .float 0.91421002
    .float -0.40524101
    .float -0.01022
    .float -0.022314001
    .float 0.90398902
    .float -0.42755499
    .float -0.010765
    .float -0.022056
    .float 0.893224
    .float -0.44961101
    .float -0.011303
    .float -0.021785
    .float 0.88192099
    .float -0.47139701
    .float -0.011834
    .float -0.021500999
    .float 0.87008703
    .float -0.49289799
    .float -0.012358
    .float -0.021205001
    .float 0.85772902
    .float -0.514103
    .float -0.012875
    .float -0.020895001
    .float 0.844854
    .float -0.534998
    .float -0.013384
    .float -0.020572999
    .float 0.83147001
    .float -0.55557001
    .float -0.013885
    .float -0.020238001
    .float 0.81758499
    .float -0.57580799
    .float -0.014377
    .float -0.019890999
    .float 0.80320799
    .float -0.59569901
    .float -0.014861
    .float -0.019532001
    .float 0.78834599
    .float -0.61523199
    .float -0.015336
    .float -0.019161999
    .float 0.77301002
    .float -0.63439298
    .float -0.015802
    .float -0.018780001
    .float 0.757209
    .float -0.65317303
    .float -0.016257999
    .float -0.018386001
    .float 0.740951
    .float -0.67155898
    .float -0.016704001
    .float -0.017982
    .float 0.72424698
    .float -0.68954098
    .float -0.017139999
    .float -0.017565999
    .float 0.70710701
    .float -0.70710701
    .float -0.017565999
    .float -0.017139999
    .float 0.68954098
    .float -0.72424698
    .float -0.017982
    .float -0.016704001
    .float 0.67155898
    .float -0.740951
    .float -0.018386001
    .float -0.016257999
    .float 0.65317303
    .float -0.757209
    .float -0.018780001
    .float -0.015802
    .float 0.63439298
    .float -0.77301002
    .float -0.019161999
    .float -0.015336
    .float 0.61523199
    .float -0.78834599
    .float -0.019532001
    .float -0.014861
    .float 0.59569901
    .float -0.80320799
    .float -0.019890999
    .float -0.014377
    .float 0.57580799
    .float -0.81758499
    .float -0.020238001
    .float -0.013885
    .float 0.55557001
    .float -0.83147001
    .float -0.020572999
    .float -0.013384
    .float 0.534998
    .float -0.844854
    .float -0.020895001
    .float -0.012875
    .float 0.514103
    .float -0.85772902
    .float -0.021205001
    .float -0.012358
    .float 0.49289799
    .float -0.87008703
    .float -0.021500999
    .float -0.011834
    .float 0.47139701
    .float -0.88192099
    .float -0.021785
    .float -0.011303
    .float 0.44961101
    .float -0.893224
    .float -0.022056
    .float -0.010765
    .float 0.42755499
    .float -0.90398902
    .float -0.022314001
    .float -0.01022
    .float 0.40524101
    .float -0.91421002
    .float -0.022558
    .float -0.0096699996
    .float 0.38268301
    .float -0.92387998
    .float -0.022787999
    .float -0.0091129998
    .float 0.35989499
    .float -0.93299299
    .float -0.023004999
    .float -0.0085509997
    .float 0.33689001
    .float -0.941544
    .float -0.023208
    .float -0.0079840003
    .float 0.31368199
    .float -0.94952798
    .float -0.023397001
    .float -0.0074120001
    .float 0.29028499
    .float -0.95694
    .float -0.023572
    .float -0.0068359999
    .float 0.26671299
    .float -0.96377599
    .float -0.023732999
    .float -0.0062549999
    .float 0.24298
    .float -0.97003102
    .float -0.023879001
    .float -0.0056710001
    .float 0.219101
    .float -0.97570199
    .float -0.024010999
    .float -0.0050829998
    .float 0.19509
    .float -0.98078501
    .float -0.024127999
    .float -0.0044920002
    .float 0.17096201
    .float -0.98527801
    .float -0.024231
    .float -0.0038989999
    .float 0.14673001
    .float -0.98917699
    .float -0.024320001
    .float -0.003303
    .float 0.122411
    .float -0.99247998
    .float -0.024394
    .float -0.002705
    .float 0.098017
    .float -0.99518502
    .float -0.024452999
    .float -0.002106
    .float 0.073564999
    .float -0.99729002
    .float -0.024497001
    .float -0.001505
    .float 0.049068
    .float -0.99879497
    .float -0.024526
    .float -0.00090300001
    .float 0.024541
    .float -0.999699
    .float -0.024541
    .float -0.00030099999
    .float 0 #0
    .float -1.0
    .float -0.024541
    .float 0.00030099999
    .float -0.024541
    .float -0.999699
    .float -0.024526
    .float 0.00090300001
    .float -0.049068
    .float -0.99879497
    .float -0.024497001
    .float 0.001505
    .float -0.073564999
    .float -0.99729002
    .float -0.024452999
    .float 0.002106
    .float -0.098017
    .float -0.99518502
    .float -0.024394
    .float 0.002705
    .float -0.122411
    .float -0.99247998
    .float -0.024320001
    .float 0.003303
    .float -0.14673001
    .float -0.98917699
    .float -0.024231
    .float 0.0038989999
    .float -0.17096201
    .float -0.98527801
    .float -0.024127999
    .float 0.0044920002
    .float -0.19509
    .float -0.98078501
    .float -0.024010999
    .float 0.0050829998
    .float -0.219101
    .float -0.97570199
    .float -0.023879001
    .float 0.0056710001
    .float -0.24298
    .float -0.97003102
    .float -0.023732999
    .float 0.0062549999
    .float -0.26671299
    .float -0.96377599
    .float -0.023572
    .float 0.0068359999
    .float -0.29028499
    .float -0.95694
    .float -0.023397001
    .float 0.0074120001
    .float -0.31368199
    .float -0.94952798
    .float -0.023208
    .float 0.0079840003
    .float -0.33689001
    .float -0.941544
    .float -0.023004999
    .float 0.0085509997
    .float -0.35989499
    .float -0.93299299
    .float -0.022787999
    .float 0.0091129998
    .float -0.38268301
    .float -0.92387998
    .float -0.022558
    .float 0.0096699996
    .float -0.40524101
    .float -0.91421002
    .float -0.022314001
    .float 0.01022
    .float -0.42755499
    .float -0.90398902
    .float -0.022056
    .float 0.010765
    .float -0.44961101
    .float -0.893224
    .float -0.021785
    .float 0.011303
    .float -0.47139701
    .float -0.88192099
    .float -0.021500999
    .float 0.011834
    .float -0.49289799
    .float -0.87008703
    .float -0.021205001
    .float 0.012358
    .float -0.514103
    .float -0.85772902
    .float -0.020895001
    .float 0.012875
    .float -0.534998
    .float -0.844854
    .float -0.020572999
    .float 0.013384
    .float -0.55557001
    .float -0.83147001
    .float -0.020238001
    .float 0.013885
    .float -0.57580799
    .float -0.81758499
    .float -0.019890999
    .float 0.014377
    .float -0.59569901
    .float -0.80320799
    .float -0.019532001
    .float 0.014861
    .float -0.61523199
    .float -0.78834599
    .float -0.019161999
    .float 0.015336
    .float -0.63439298
    .float -0.77301002
    .float -0.018780001
    .float 0.015802
    .float -0.65317303
    .float -0.757209
    .float -0.018386001
    .float 0.016257999
    .float -0.67155898
    .float -0.740951
    .float -0.017982
    .float 0.016704001
    .float -0.68954098
    .float -0.72424698
    .float -0.017565999
    .float 0.017139999
    .float -0.70710701
    .float -0.70710701
    .float -0.017139999
    .float 0.017565999
    .float -0.72424698
    .float -0.68954098
    .float -0.016704001
    .float 0.017982
    .float -0.740951
    .float -0.67155898
    .float -0.016257999
    .float 0.018386001
    .float -0.757209
    .float -0.65317303
    .float -0.015802
    .float 0.018780001
    .float -0.77301002
    .float -0.63439298
    .float -0.015336
    .float 0.019161999
    .float -0.78834599
    .float -0.61523199
    .float -0.014861
    .float 0.019532001
    .float -0.80320799
    .float -0.59569901
    .float -0.014377
    .float 0.019890999
    .float -0.81758499
    .float -0.57580799
    .float -0.013885
    .float 0.020238001
    .float -0.83147001
    .float -0.55557001
    .float -0.013384
    .float 0.020572999
    .float -0.844854
    .float -0.534998
    .float -0.012875
    .float 0.020895001
    .float -0.85772902
    .float -0.514103
    .float -0.012358
    .float 0.021205001
    .float -0.87008703
    .float -0.49289799
    .float -0.011834
    .float 0.021500999
    .float -0.88192099
    .float -0.47139701
    .float -0.011303
    .float 0.021785
    .float -0.893224
    .float -0.44961101
    .float -0.010765
    .float 0.022056
    .float -0.90398902
    .float -0.42755499
    .float -0.01022
    .float 0.022314001
    .float -0.91421002
    .float -0.40524101
    .float -0.0096699996
    .float 0.022558
    .float -0.92387998
    .float -0.38268301
    .float -0.0091129998
    .float 0.022787999
    .float -0.93299299
    .float -0.35989499
    .float -0.0085509997
    .float 0.023004999
    .float -0.941544
    .float -0.33689001
    .float -0.0079840003
    .float 0.023208
    .float -0.94952798
    .float -0.31368199
    .float -0.0074120001
    .float 0.023397001
    .float -0.95694
    .float -0.29028499
    .float -0.0068359999
    .float 0.023572
    .float -0.96377599
    .float -0.26671299
    .float -0.0062549999
    .float 0.023732999
    .float -0.97003102
    .float -0.24298
    .float -0.0056710001
    .float 0.023879001
    .float -0.97570199
    .float -0.219101
    .float -0.0050829998
    .float 0.024010999
    .float -0.98078501
    .float -0.19509
    .float -0.0044920002
    .float 0.024127999
    .float -0.98527801
    .float -0.17096201
    .float -0.0038989999
    .float 0.024231
    .float -0.98917699
    .float -0.14673001
    .float -0.003303
    .float 0.024320001
    .float -0.99247998
    .float -0.122411
    .float -0.002705
    .float 0.024394
    .float -0.99518502
    .float -0.098017
    .float -0.002106
    .float 0.024452999
    .float -0.99729002
    .float -0.073564999
    .float -0.001505
    .float 0.024497001
    .float -0.99879497
    .float -0.049068
    .float -0.00090300001
    .float 0.024526
    .float -0.999699
    .float -0.024541
    .float -0.00030099999
    .float 0.024541
    .float -1.0
    .float -0
    .float 0.00030099999
    .float 0.024541
    .float -0.999699
    .float 0.024541
    .float 0.00090300001
    .float 0.024526
    .float -0.99879497
    .float 0.049068
    .float 0.001505
    .float 0.024497001
    .float -0.99729002
    .float 0.073564999
    .float 0.002106
    .float 0.024452999
    .float -0.99518502
    .float 0.098017
    .float 0.002705
    .float 0.024394
    .float -0.99247998
    .float 0.122411
    .float 0.003303
    .float 0.024320001
    .float -0.98917699
    .float 0.14673001
    .float 0.0038989999
    .float 0.024231
    .float -0.98527801
    .float 0.17096201
    .float 0.0044920002
    .float 0.024127999
    .float -0.98078501
    .float 0.19509
    .float 0.0050829998
    .float 0.024010999
    .float -0.97570199
    .float 0.219101
    .float 0.0056710001
    .float 0.023879001
    .float -0.97003102
    .float 0.24298
    .float 0.0062549999
    .float 0.023732999
    .float -0.96377599
    .float 0.26671299
    .float 0.0068359999
    .float 0.023572
    .float -0.95694
    .float 0.29028499
    .float 0.0074120001
    .float 0.023397001
    .float -0.94952798
    .float 0.31368199
    .float 0.0079840003
    .float 0.023208
    .float -0.941544
    .float 0.33689001
    .float 0.0085509997
    .float 0.023004999
    .float -0.93299299
    .float 0.35989499
    .float 0.0091129998
    .float 0.022787999
    .float -0.92387998
    .float 0.38268301
    .float 0.0096699996
    .float 0.022558
    .float -0.91421002
    .float 0.40524101
    .float 0.01022
    .float 0.022314001
    .float -0.90398902
    .float 0.42755499
    .float 0.010765
    .float 0.022056
    .float -0.893224
    .float 0.44961101
    .float 0.011303
    .float 0.021785
    .float -0.88192099
    .float 0.47139701
    .float 0.011834
    .float 0.021500999
    .float -0.87008703
    .float 0.49289799
    .float 0.012358
    .float 0.021205001
    .float -0.85772902
    .float 0.514103
    .float 0.012875
    .float 0.020895001
    .float -0.844854
    .float 0.534998
    .float 0.013384
    .float 0.020572999
    .float -0.83147001
    .float 0.55557001
    .float 0.013885
    .float 0.020238001
    .float -0.81758499
    .float 0.57580799
    .float 0.014377
    .float 0.019890999
    .float -0.80320799
    .float 0.59569901
    .float 0.014861
    .float 0.019532001
    .float -0.78834599
    .float 0.61523199
    .float 0.015336
    .float 0.019161999
    .float -0.77301002
    .float 0.63439298
    .float 0.015802
    .float 0.018780001
    .float -0.757209
    .float 0.65317303
    .float 0.016257999
    .float 0.018386001
    .float -0.740951
    .float 0.67155898
    .float 0.016704001
    .float 0.017982
    .float -0.72424698
    .float 0.68954098
    .float 0.017139999
    .float 0.017565999
    .float -0.70710701
    .float 0.70710701
    .float 0.017565999
    .float 0.017139999
    .float -0.68954098
    .float 0.72424698
    .float 0.017982
    .float 0.016704001
    .float -0.67155898
    .float 0.740951
    .float 0.018386001
    .float 0.016257999
    .float -0.65317303
    .float 0.757209
    .float 0.018780001
    .float 0.015802
    .float -0.63439298
    .float 0.77301002
    .float 0.019161999
    .float 0.015336
    .float -0.61523199
    .float 0.78834599
    .float 0.019532001
    .float 0.014861
    .float -0.59569901
    .float 0.80320799
    .float 0.019890999
    .float 0.014377
    .float -0.57580799
    .float 0.81758499
    .float 0.020238001
    .float 0.013885
    .float -0.55557001
    .float 0.83147001
    .float 0.020572999
    .float 0.013384
    .float -0.534998
    .float 0.844854
    .float 0.020895001
    .float 0.012875
    .float -0.514103
    .float 0.85772902
    .float 0.021205001
    .float 0.012358
    .float -0.49289799
    .float 0.87008703
    .float 0.021500999
    .float 0.011834
    .float -0.47139701
    .float 0.88192099
    .float 0.021785
    .float 0.011303
    .float -0.44961101
    .float 0.893224
    .float 0.022056
    .float 0.010765
    .float -0.42755499
    .float 0.90398902
    .float 0.022314001
    .float 0.01022
    .float -0.40524101
    .float 0.91421002
    .float 0.022558
    .float 0.0096699996
    .float -0.38268301
    .float 0.92387998
    .float 0.022787999
    .float 0.0091129998
    .float -0.35989499
    .float 0.93299299
    .float 0.023004999
    .float 0.0085509997
    .float -0.33689001
    .float 0.941544
    .float 0.023208
    .float 0.0079840003
    .float -0.31368199
    .float 0.94952798
    .float 0.023397001
    .float 0.0074120001
    .float -0.29028499
    .float 0.95694
    .float 0.023572
    .float 0.0068359999
    .float -0.26671299
    .float 0.96377599
    .float 0.023732999
    .float 0.0062549999
    .float -0.24298
    .float 0.97003102
    .float 0.023879001
    .float 0.0056710001
    .float -0.219101
    .float 0.97570199
    .float 0.024010999
    .float 0.0050829998
    .float -0.19509
    .float 0.98078501
    .float 0.024127999
    .float 0.0044920002
    .float -0.17096201
    .float 0.98527801
    .float 0.024231
    .float 0.0038989999
    .float -0.14673001
    .float 0.98917699
    .float 0.024320001
    .float 0.003303
    .float -0.122411
    .float 0.99247998
    .float 0.024394
    .float 0.002705
    .float -0.098017
    .float 0.99518502
    .float 0.024452999
    .float 0.002106
    .float -0.073564999
    .float 0.99729002
    .float 0.024497001
    .float 0.001505
    .float -0.049068
    .float 0.99879497
    .float 0.024526
    .float 0.00090300001
    .float -0.024541
    .float 0.999699
    .float 0.024541
    .float 0.00030099999
    .float -0
    .float 1.0
    .float 0.024541
    .float -0.00030099999
.endobj "sSinCosTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"


.obj "sArcTanTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@", local
    .float 0 #0
    .float 1.2728254
    .float 1.2728254
    .float 1.2703458
    .float 2.5431712
    .float 1.2654155
    .float 3.8085866
    .float 1.2580916
    .float 5.0666785
    .float 1.2484571
    .float 6.3151355
    .float 1.2366195
    .float 7.551755
    .float 1.2227072
    .float 8.7744617
    .float 1.2068666
    .float 9.981329
    .float 1.1892582
    .float 11.170587
    .float 1.1700529
    .float 12.34064
    .float 1.149428
    .float 13.49006748
    .float 1.1275644
    .float 14.617632
    .float 1.1046423
    .float 15.722275
    .float 1.0808387
    .float 16.803114
    .float 1.0563251
    .float 17.859438
    .float 1.0312649
    .float 18.890703
    .float 1.005812
    .float 19.896515
    .float 0.98010963
    .float 20.876625
    .float 0.95428908
    .float 21.830914
    .float 0.92846978
    .float 22.759384
    .float 0.90275896
    .float 23.662142
    .float 0.87725157
    .float 24.539394
    .float 0.85203087
    .float 25.391424
    .float 0.82716888
    .float 26.218594
    .float 0.80272698
    .float 27.02132
    .float 0.77875656
    .float 27.800077
    .float 0.7553001
    .float 28.555378
    .float 0.73239148
    .float 29.287769
    .float 0.71005738
    .float 29.997826
    .float 0.68831748
    .float 30.686144
    .float 0.66718566
    .float 31.353329
    .float 0.64667052
    .float 32
    .float 0.62677616
.endobj "sArcTanTbl__Q36nw4hbm4math29@unnamed@math_triangular_cpp@"
