.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __HBMSYNGetRelativePitch, global
/* 80341810 0030ADD0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80341814 0030ADD4  3C E0 80 55 */	lis r7, __HBMSYNCentsTable@ha
/* 80341818 0030ADD8  38 E7 00 20 */	addi r7, r7, __HBMSYNCentsTable@l
/* 8034181C 0030ADDC  7C 60 86 70 */	srawi r0, r3, 0x10
/* 80341820 0030ADE0  7C 60 01 95 */	addze. r3, r0
/* 80341824 0030ADE4  40 81 00 90 */	ble .L_803418B4
/* 80341828 0030ADE8  3C A0 1B 4F */	lis r5, 0x1B4E81B5@ha
/* 8034182C 0030ADEC  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 80341830 0030ADF0  38 05 81 B5 */	addi r0, r5, 0x1B4E81B5@l
/* 80341834 0030ADF4  38 C7 00 00 */	addi r6, r7, 0
/* 80341838 0030ADF8  7C 00 18 96 */	mulhw r0, r0, r3
/* 8034183C 0030ADFC  39 04 85 1F */	addi r8, r4, 0x51EB851F@l
/* 80341840 0030AE00  38 A7 01 90 */	addi r5, r7, 0x190
/* 80341844 0030AE04  38 87 01 C0 */	addi r4, r7, 0x1c0
/* 80341848 0030AE08  7C 09 3E 70 */	srawi r9, r0, 7
/* 8034184C 0030AE0C  7C 00 3E 70 */	srawi r0, r0, 7
/* 80341850 0030AE10  54 07 0F FE */	srwi r7, r0, 0x1f
/* 80341854 0030AE14  55 2A 0F FE */	srwi r10, r9, 0x1f
/* 80341858 0030AE18  7C 00 3A 14 */	add r0, r0, r7
/* 8034185C 0030AE1C  1C E0 04 B0 */	mulli r7, r0, 0x4b0
/* 80341860 0030AE20  7C 09 52 14 */	add r0, r9, r10
/* 80341864 0030AE24  54 00 10 3A */	slwi r0, r0, 2
/* 80341868 0030AE28  7C E7 18 50 */	subf r7, r7, r3
/* 8034186C 0030AE2C  7C 25 04 2E */	lfsx f1, r5, r0
/* 80341870 0030AE30  7C 08 38 96 */	mulhw r0, r8, r7
/* 80341874 0030AE34  7C 05 2E 70 */	srawi r5, r0, 5
/* 80341878 0030AE38  7C 08 18 96 */	mulhw r0, r8, r3
/* 8034187C 0030AE3C  54 A7 0F FE */	srwi r7, r5, 0x1f
/* 80341880 0030AE40  7C E5 3A 14 */	add r7, r5, r7
/* 80341884 0030AE44  7C 05 2E 70 */	srawi r5, r0, 5
/* 80341888 0030AE48  54 E0 10 3A */	slwi r0, r7, 2
/* 8034188C 0030AE4C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80341890 0030AE50  54 A7 0F FE */	srwi r7, r5, 0x1f
/* 80341894 0030AE54  7C 05 3A 14 */	add r0, r5, r7
/* 80341898 0030AE58  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8034189C 0030AE5C  EC 21 00 32 */	fmuls f1, f1, f0
/* 803418A0 0030AE60  7C 60 18 50 */	subf r3, r0, r3
/* 803418A4 0030AE64  54 60 10 3A */	slwi r0, r3, 2
/* 803418A8 0030AE68  7C 06 04 2E */	lfsx f0, r6, r0
/* 803418AC 0030AE6C  EC 20 00 72 */	fmuls f1, f0, f1
/* 803418B0 0030AE70  4E 80 00 20 */	blr
.L_803418B4:
/* 803418B4 0030AE74  40 80 00 60 */	bge .L_80341914
/* 803418B8 0030AE78  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 803418BC 0030AE7C  38 04 85 1F */	addi r0, r4, 0x51EB851F@l
/* 803418C0 0030AE80  7C 00 18 96 */	mulhw r0, r0, r3
/* 803418C4 0030AE84  7C 05 2E 70 */	srawi r5, r0, 5
/* 803418C8 0030AE88  7C 00 2E 70 */	srawi r0, r0, 5
/* 803418CC 0030AE8C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 803418D0 0030AE90  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 803418D4 0030AE94  7C 00 22 14 */	add r0, r0, r4
/* 803418D8 0030AE98  1C 00 00 64 */	mulli r0, r0, 0x64
/* 803418DC 0030AE9C  7C 85 32 14 */	add r4, r5, r6
/* 803418E0 0030AEA0  7C 60 18 51 */	subf. r3, r0, r3
/* 803418E4 0030AEA4  41 82 00 0C */	beq .L_803418F0
/* 803418E8 0030AEA8  38 63 00 64 */	addi r3, r3, 0x64
/* 803418EC 0030AEAC  38 84 FF FF */	addi r4, r4, -1
.L_803418F0:
/* 803418F0 0030AEB0  54 80 10 3A */	slwi r0, r4, 2
/* 803418F4 0030AEB4  38 87 01 F0 */	addi r4, r7, 0x1f0
/* 803418F8 0030AEB8  7C A0 00 D0 */	neg r5, r0
/* 803418FC 0030AEBC  54 60 10 3A */	slwi r0, r3, 2
/* 80341900 0030AEC0  38 67 00 00 */	addi r3, r7, 0
/* 80341904 0030AEC4  7C 24 2C 2E */	lfsx f1, r4, r5
/* 80341908 0030AEC8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8034190C 0030AECC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80341910 0030AED0  4E 80 00 20 */	blr
.L_80341914:
/* 80341914 0030AED4  3C 60 80 52 */	lis r3, lbl_80518B78@ha
/* 80341918 0030AED8  C0 23 8B 78 */	lfs f1, lbl_80518B78@l(r3)
/* 8034191C 0030AEDC  4E 80 00 20 */	blr 
.endfn __HBMSYNGetRelativePitch


.fn __HBMSYNSetupPitch, global
/* 80341920 0030AEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80341924 0030AEE4  3C 00 43 30 */	lis r0, 0x4330
/* 80341928 0030AEE8  3C A0 80 52 */	lis r5, double_80518B80@ha
/* 8034192C 0030AEEC  3C 80 80 52 */	lis r4, lbl_80518B7C@ha
/* 80341930 0030AEF0  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 80341934 0030AEF4  90 01 00 08 */	stw r0, 8(r1)
/* 80341938 0030AEF8  A0 C6 00 02 */	lhz r6, 2(r6)
/* 8034193C 0030AEFC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80341940 0030AF00  C8 45 8B 80 */	lfd f2, double_80518B80@l(r5)
/* 80341944 0030AF04  C8 21 00 08 */	lfd f1, 8(r1)
/* 80341948 0030AF08  C0 04 8B 7C */	lfs f0, lbl_80518B7C@l(r4)
/* 8034194C 0030AF0C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80341950 0030AF10  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 80341954 0030AF14  88 03 00 0D */	lbz r0, 0xd(r3)
/* 80341958 0030AF18  EC 01 00 24 */	fdivs f0, f1, f0
/* 8034195C 0030AF1C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80341960 0030AF20  88 85 00 00 */	lbz r4, 0(r5)
/* 80341964 0030AF24  7C 04 00 50 */	subf r0, r4, r0
/* 80341968 0030AF28  1C 80 00 64 */	mulli r4, r0, 0x64
/* 8034196C 0030AF2C  90 83 00 28 */	stw r4, 0x28(r3)
/* 80341970 0030AF30  A8 05 00 02 */	lha r0, 2(r5)
/* 80341974 0030AF34  7C 04 02 14 */	add r0, r4, r0
/* 80341978 0030AF38  54 00 80 1E */	slwi r0, r0, 0x10
/* 8034197C 0030AF3C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80341980 0030AF40  38 21 00 10 */	addi r1, r1, 0x10
/* 80341984 0030AF44  4E 80 00 20 */	blr 
.endfn __HBMSYNSetupPitch

.balign 16, 0
.fn __HBMSYNSetupSrc, global
/* 80341990 0030AF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80341994 0030AF54  7C 08 02 A6 */	mflr r0
/* 80341998 0030AF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034199C 0030AF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803419A0 0030AF60  7C 7F 1B 78 */	mr r31, r3
/* 803419A4 0030AF64  4B FF FE 6D */	bl __HBMSYNGetRelativePitch
/* 803419A8 0030AF68  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 803419AC 0030AF6C  3C 60 80 52 */	lis r3, lbl_80518B88@ha
/* 803419B0 0030AF70  C0 03 8B 88 */	lfs f0, lbl_80518B88@l(r3)
/* 803419B4 0030AF74  EC 22 00 72 */	fmuls f1, f2, f1
/* 803419B8 0030AF78  EC 20 00 72 */	fmuls f1, f0, f1
/* 803419BC 0030AF7C  4B F7 86 71 */	bl __cvt_fp2unsigned
/* 803419C0 0030AF80  80 BF 00 04 */	lwz r5, 4(r31)
/* 803419C4 0030AF84  38 C0 00 01 */	li r6, 1
/* 803419C8 0030AF88  54 64 84 3E */	srwi r4, r3, 0x10
/* 803419CC 0030AF8C  38 00 00 00 */	li r0, 0
/* 803419D0 0030AF90  B0 C5 00 30 */	sth r6, 0x30(r5)
/* 803419D4 0030AF94  80 BF 00 04 */	lwz r5, 4(r31)
/* 803419D8 0030AF98  B0 85 00 CE */	sth r4, 0xce(r5)
/* 803419DC 0030AF9C  B0 65 00 D0 */	sth r3, 0xd0(r5)
/* 803419E0 0030AFA0  B0 05 00 D2 */	sth r0, 0xd2(r5)
/* 803419E4 0030AFA4  B0 05 00 D4 */	sth r0, 0xd4(r5)
/* 803419E8 0030AFA8  B0 05 00 D6 */	sth r0, 0xd6(r5)
/* 803419EC 0030AFAC  B0 05 00 D8 */	sth r0, 0xd8(r5)
/* 803419F0 0030AFB0  B0 05 00 DA */	sth r0, 0xda(r5)
/* 803419F4 0030AFB4  80 7F 00 04 */	lwz r3, 4(r31)
/* 803419F8 0030AFB8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803419FC 0030AFBC  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 80341A00 0030AFC0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80341A04 0030AFC4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80341A08 0030AFC8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80341A0C 0030AFCC  64 00 00 01 */	oris r0, r0, 1
/* 80341A10 0030AFD0  60 00 00 01 */	ori r0, r0, 1
/* 80341A14 0030AFD4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80341A18 0030AFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80341A1C 0030AFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80341A20 0030AFE0  7C 08 03 A6 */	mtlr r0
/* 80341A24 0030AFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80341A28 0030AFE8  4E 80 00 20 */	blr 
.endfn __HBMSYNSetupSrc

.balign 16, 0
.fn __HBMSYNUpdateSrc, global
/* 80341A30 0030AFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80341A34 0030AFF4  7C 08 02 A6 */	mflr r0
/* 80341A38 0030AFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80341A3C 0030AFFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80341A40 0030B000  7C 7F 1B 78 */	mr r31, r3
/* 80341A44 0030B004  4B FF FD CD */	bl __HBMSYNGetRelativePitch
/* 80341A48 0030B008  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80341A4C 0030B00C  3C 60 80 52 */	lis r3, lbl_80518B88@ha
/* 80341A50 0030B010  C0 03 8B 88 */	lfs f0, lbl_80518B88@l(r3)
/* 80341A54 0030B014  EC 22 00 72 */	fmuls f1, f2, f1
/* 80341A58 0030B018  EC 20 00 72 */	fmuls f1, f0, f1
/* 80341A5C 0030B01C  4B F7 85 D1 */	bl __cvt_fp2unsigned
/* 80341A60 0030B020  80 9F 00 04 */	lwz r4, 4(r31)
/* 80341A64 0030B024  90 64 00 CE */	stw r3, 0xce(r4)
/* 80341A68 0030B028  80 7F 00 04 */	lwz r3, 4(r31)
/* 80341A6C 0030B02C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80341A70 0030B030  64 00 00 02 */	oris r0, r0, 2
/* 80341A74 0030B034  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80341A78 0030B038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80341A7C 0030B03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80341A80 0030B040  7C 08 03 A6 */	mtlr r0
/* 80341A84 0030B044  38 21 00 10 */	addi r1, r1, 0x10
/* 80341A88 0030B048  4E 80 00 20 */	blr
.endfn __HBMSYNUpdateSrc

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj lbl_80518B78, global
	.float 1.0
.endobj lbl_80518B78


.obj lbl_80518B7C, global
	.float 32000
.endobj lbl_80518B7C


.obj double_80518B80, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_80518B80

.obj lbl_80518B88, global
	.4byte 0x47800000
	.4byte 0
.endobj lbl_80518B88

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

#the tables after are accessed by adding their offset from the first table
.obj __HBMSYNCentsTable, local
	.float 1.0
	.float 1.000578
	.float 1.001156
	.float 1.001734
	.float 1.002313
	.float 1.002892
	.float 1.003472
	.float 1.004052
	.float 1.004632
	.float 1.0052119
	.float 1.005793
	.float 1.006374
	.float 1.006956
	.float 1.007537
	.float 1.0081199
	.float 1.008702
	.float 1.009285
	.float 1.009868
	.float 1.010451
	.float 1.011035
	.float 1.011619
	.float 1.0122041
	.float 1.012789
	.float 1.013374
	.float 1.0139591
	.float 1.014545
	.float 1.015132
	.float 1.015718
	.float 1.016305
	.float 1.016892
	.float 1.01748
	.float 1.018068
	.float 1.018656
	.float 1.019244
	.float 1.019833
	.float 1.0204231
	.float 1.0210119
	.float 1.021602
	.float 1.022192
	.float 1.022783
	.float 1.023374
	.float 1.023965
	.float 1.024557
	.float 1.025149
	.float 1.025741
	.float 1.026334
	.float 1.026927
	.float 1.0275199
	.float 1.028114
	.float 1.028708
	.float 1.029302
	.float 1.029897
	.float 1.0304919
	.float 1.031087
	.float 1.031683
	.float 1.032279
	.float 1.032876
	.float 1.0334719
	.float 1.03407
	.float 1.034667
	.float 1.035265
	.float 1.035863
	.float 1.0364619
	.float 1.03706
	.float 1.03766
	.float 1.038259
	.float 1.038859
	.float 1.039459
	.float 1.04006
	.float 1.040661
	.float 1.041262
	.float 1.041864
	.float 1.042466
	.float 1.0430681
	.float 1.043671
	.float 1.044274
	.float 1.0448771
	.float 1.045481
	.float 1.046085
	.float 1.046689
	.float 1.047294
	.float 1.047899
	.float 1.0485049
	.float 1.049111
	.float 1.0497169
	.float 1.050323
	.float 1.05093
	.float 1.051537
	.float 1.052145
	.float 1.052753
	.float 1.0533611
	.float 1.05397
	.float 1.054579
	.float 1.0551879
	.float 1.0557981
	.float 1.056408
	.float 1.057018
	.float 1.057629
	.float 1.0582401
	.float 1.058851
.endobj __HBMSYNCentsTable

.obj __HBMSYNOctavesTableUp, local
	.float 1.0
	.float 2
	.float 4
	.float 8.0
	.float 16
	.float 32
	.float 64
	.float 128
	.float 256
	.float 512
	.float 1024
	.float 2048
.endobj __HBMSYNOctavesTableUp

.obj __HBMSYNSemitonesTableUp, local
	.float 1.0
	.float 1.059463
	.float 1.122462
	.float 1.189207
	.float 1.259921
	.float 1.3348401
	.float 1.414214
	.float 1.498307
	.float 1.587401
	.float 1.681793
	.float 1.7817971
	.float 1.887749
.endobj __HBMSYNSemitonesTableUp

.obj __HBMSYNSemitonesTableDown, local
	.float 1.0
	.float 0.943874
	.float 0.890899
	.float 0.84089601
	.float 0.79370099
	.float 0.74915397
	.float 0.70710701
	.float 0.66742003
	.float 0.62996101
	.float 0.59460402
	.float 0.56123102
	.float 0.52973199
	.float 0.5
	.float 0.471937
	.float 0.44544899
	.float 0.42044801
	.float 0.39684999
	.float 0.37457699
	.float 0.353553
	.float 0.33371001
	.float 0.31498
	.float 0.29730201
	.float 0.28061599
	.float 0.26486599
	.float 0.25
	.float 0.23596901
	.float 0.222725
	.float 0.210224
	.float 0.19842499
	.float 0.187288
	.float 0.17677701
	.float 0.16685501
	.float 0.15749
	.float 0.148651
	.float 0.14030799
	.float 0.132433
	.float 0.125
	.float 0.117984
	.float 0.111362
	.float 0.105112
	.float 0.099212997
	.float 0.093644001
	.float 0.088388003
	.float 0.083426997
	.float 0.078745
	.float 0.074325003
	.float 0.070153996
	.float 0.066215999
	.float 0.0625
	.float 0.058991998
	.float 0.055681001
	.float 0.052556001
	.float 0.049605999
	.float 0.046822
	.float 0.044194002
	.float 0.041714001
	.float 0.039372999
	.float 0.037163001
	.float 0.035076998
	.float 0.033108
	.float 0.03125
	.float 0.029495999
	.float 0.027841
	.float 0.026278
	.float 0.024803
	.float 0.023411
	.float 0.022097001
	.float 0.020857001
	.float 0.019686
	.float 0.018580999
	.float 0.017538
	.float 0.016554
	.float 0.015625
	.float 0.014748
	.float 0.01392
	.float 0.013139
	.float 0.012402
	.float 0.011706
	.float 0.011049
	.float 0.010428
	.float 0.0098430002
	.float 0.0092909997
	.float 0.0087689999
	.float 0.0082769999
	.float 0.0078130001
	.float 0.0073739998
	.float 0.0069599999
	.float 0.0065700002
	.float 0.006201
	.float 0.0058530001
	.float 0.0055240002
	.float 0.0052140001
	.float 0.0049220002
	.float 0.0046450002
	.float 0.0043850001
	.float 0.0041390001
	.float 0.0039059999
	.float 0.0036869999
	.float 0.00348
	.float 0.0032850001
	.float 0.0031000001
	.float 0.0029259999
	.float 0.0027620001
	.float 0.0026070001
	.float 0.0024610001
	.float 0.002323
	.float 0.0021919999
	.float 0.0020689999
	.float 0.001953
	.float 0.001844
	.float 0.00174
	.float 0.001642
	.float 0.00155
	.float 0.001463
	.float 0.001381
	.float 0.001304
	.float 0.0012300001
	.float 0.001161
	.float 0.001096
	.float 0.001035
	.float 0.00097699999
	.float 0.00092199998
	.float 0.00086999999
	.float 0.00082100002
	.float 0.00077500002
	.float 0.00073199999
	.float 0.00069100002
	.float 0.00065200002
.endobj __HBMSYNSemitonesTableDown
