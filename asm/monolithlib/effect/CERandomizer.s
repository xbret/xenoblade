.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__18CERandomizerSimpleFv
__ct__18CERandomizerSimpleFv:
/* 804DB438 004A49F8  C0 02 D6 58 */	lfs f0, lbl_8066D9D8@sda21(r2)
/* 804DB43C 004A49FC  3C 80 80 57 */	lis r4, __vt__18CERandomizerSimple@ha
/* 804DB440 004A4A00  38 00 3A 90 */	li r0, 0x3a90
/* 804DB444 004A4A04  B0 03 00 04 */	sth r0, 4(r3)
/* 804DB448 004A4A08  38 84 36 50 */	addi r4, r4, __vt__18CERandomizerSimple@l
/* 804DB44C 004A4A0C  90 83 00 00 */	stw r4, 0(r3)
/* 804DB450 004A4A10  B0 03 00 06 */	sth r0, 6(r3)
/* 804DB454 004A4A14  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DB458 004A4A18  4E 80 00 20 */	blr 

.global create__18CERandomizerSimpleFi
create__18CERandomizerSimpleFi:
/* 804DB45C 004A4A1C  2C 04 00 00 */	cmpwi r4, 0
/* 804DB460 004A4A20  40 80 00 18 */	bge .L_804DB478
/* 804DB464 004A4A24  3C 80 80 66 */	lis r4, ceRandomizerSimple@ha
/* 804DB468 004A4A28  38 84 29 30 */	addi r4, r4, ceRandomizerSimple@l
/* 804DB46C 004A4A2C  A0 04 00 04 */	lhz r0, 4(r4)
/* 804DB470 004A4A30  B0 03 00 04 */	sth r0, 4(r3)
/* 804DB474 004A4A34  48 00 00 08 */	b .L_804DB47C
.L_804DB478:
/* 804DB478 004A4A38  B0 83 00 04 */	sth r4, 4(r3)
.L_804DB47C:
/* 804DB47C 004A4A3C  A0 03 00 04 */	lhz r0, 4(r3)
/* 804DB480 004A4A40  C0 02 D6 58 */	lfs f0, lbl_8066D9D8@sda21(r2)
/* 804DB484 004A4A44  B0 03 00 06 */	sth r0, 6(r3)
/* 804DB488 004A4A48  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DB48C 004A4A4C  4E 80 00 20 */	blr 

.global execute__18CERandomizerSimpleFf
execute__18CERandomizerSimpleFf:
/* 804DB490 004A4A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DB494 004A4A54  7C 08 02 A6 */	mflr r0
/* 804DB498 004A4A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DB49C 004A4A5C  C0 43 00 08 */	lfs f2, 8(r3)
/* 804DB4A0 004A4A60  EC 02 08 2A */	fadds f0, f2, f1
/* 804DB4A4 004A4A64  FC 20 10 1E */	fctiwz f1, f2
/* 804DB4A8 004A4A68  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DB4AC 004A4A6C  FC 00 00 1E */	fctiwz f0, f0
/* 804DB4B0 004A4A70  D8 21 00 08 */	stfd f1, 8(r1)
/* 804DB4B4 004A4A74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804DB4B8 004A4A78  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804DB4BC 004A4A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB4C0 004A4A80  7C 04 00 00 */	cmpw r4, r0
/* 804DB4C4 004A4A84  40 82 00 10 */	bne .L_804DB4D4
/* 804DB4C8 004A4A88  A0 03 00 06 */	lhz r0, 6(r3)
/* 804DB4CC 004A4A8C  B0 03 00 04 */	sth r0, 4(r3)
/* 804DB4D0 004A4A90  48 00 00 2C */	b .L_804DB4FC
.L_804DB4D4:
/* 804DB4D4 004A4A94  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804DB4D8 004A4A98  A0 83 00 04 */	lhz r4, 4(r3)
/* 804DB4DC 004A4A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB4E0 004A4AA0  B0 83 00 06 */	sth r4, 6(r3)
/* 804DB4E4 004A4AA4  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 804DB4E8 004A4AA8  40 82 00 14 */	bne .L_804DB4FC
/* 804DB4EC 004A4AAC  81 83 00 00 */	lwz r12, 0(r3)
/* 804DB4F0 004A4AB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DB4F4 004A4AB4  7D 89 03 A6 */	mtctr r12
/* 804DB4F8 004A4AB8  4E 80 04 21 */	bctrl 
.L_804DB4FC:
/* 804DB4FC 004A4ABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DB500 004A4AC0  7C 08 03 A6 */	mtlr r0
/* 804DB504 004A4AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 804DB508 004A4AC8  4E 80 00 20 */	blr 

.global rand__18CERandomizerSimpleFv
rand__18CERandomizerSimpleFv:
/* 804DB50C 004A4ACC  A0 03 00 04 */	lhz r0, 4(r3)
/* 804DB510 004A4AD0  3C E0 CC CD */	lis r7, 0xCCCCCCCD@ha
/* 804DB514 004A4AD4  3C C0 4F 89 */	lis r6, 0x4F88C4DF@ha
/* 804DB518 004A4AD8  3C 80 68 C9 */	lis r4, 0x68C8C4AD@ha
/* 804DB51C 004A4ADC  1D 00 02 A1 */	mulli r8, r0, 0x2a1
/* 804DB520 004A4AE0  38 E7 CC CD */	addi r7, r7, 0xCCCCCCCD@l
/* 804DB524 004A4AE4  38 C6 C4 DF */	addi r6, r6, 0x4F88C4DF@l
/* 804DB528 004A4AE8  3C A0 00 02 */	lis r5, 0x000186A3@ha
/* 804DB52C 004A4AEC  39 08 03 B1 */	addi r8, r8, 0x3b1
/* 804DB530 004A4AF0  38 04 C4 AD */	addi r0, r4, 0x68C8C4AD@l
/* 804DB534 004A4AF4  7C E7 40 16 */	mulhwu r7, r7, r8
/* 804DB538 004A4AF8  38 85 86 A3 */	addi r4, r5, 0x000186A3@l
/* 804DB53C 004A4AFC  7C 00 40 16 */	mulhwu r0, r0, r8
/* 804DB540 004A4B00  54 E7 E8 FE */	srwi r7, r7, 3
/* 804DB544 004A4B04  7C C6 38 16 */	mulhwu r6, r6, r7
/* 804DB548 004A4B08  54 00 A3 3E */	srwi r0, r0, 0xc
/* 804DB54C 004A4B0C  1C 00 27 17 */	mulli r0, r0, 0x2717
/* 804DB550 004A4B10  7C A6 38 50 */	subf r5, r6, r7
/* 804DB554 004A4B14  54 A5 F8 7E */	srwi r5, r5, 1
/* 804DB558 004A4B18  7C A5 32 14 */	add r5, r5, r6
/* 804DB55C 004A4B1C  54 A5 84 3E */	srwi r5, r5, 0x10
/* 804DB560 004A4B20  7C 85 21 D6 */	mullw r4, r5, r4
/* 804DB564 004A4B24  7C 84 38 50 */	subf r4, r4, r7
/* 804DB568 004A4B28  B0 83 00 04 */	sth r4, 4(r3)
/* 804DB56C 004A4B2C  7C 60 40 50 */	subf r3, r0, r8
/* 804DB570 004A4B30  4E 80 00 20 */	blr 

.global init__6CERandFv
init__6CERandFv:
/* 804DB574 004A4B34  3C 60 80 66 */	lis r3, ceRandomizerSimple@ha
/* 804DB578 004A4B38  C0 02 D6 58 */	lfs f0, lbl_8066D9D8@sda21(r2)
/* 804DB57C 004A4B3C  38 63 29 30 */	addi r3, r3, ceRandomizerSimple@l
/* 804DB580 004A4B40  38 00 3A 90 */	li r0, 0x3a90
/* 804DB584 004A4B44  B0 03 00 04 */	sth r0, 4(r3)
/* 804DB588 004A4B48  B0 03 00 06 */	sth r0, 6(r3)
/* 804DB58C 004A4B4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DB590 004A4B50  4E 80 00 20 */	blr 

.global execute__6CERandFf
execute__6CERandFf:
/* 804DB594 004A4B54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DB598 004A4B58  7C 08 02 A6 */	mflr r0
/* 804DB59C 004A4B5C  3C 60 80 66 */	lis r3, ceRandomizerSimple@ha
/* 804DB5A0 004A4B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DB5A4 004A4B64  38 63 29 30 */	addi r3, r3, ceRandomizerSimple@l
/* 804DB5A8 004A4B68  C0 43 00 08 */	lfs f2, 8(r3)
/* 804DB5AC 004A4B6C  EC 02 08 2A */	fadds f0, f2, f1
/* 804DB5B0 004A4B70  FC 20 10 1E */	fctiwz f1, f2
/* 804DB5B4 004A4B74  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DB5B8 004A4B78  FC 00 00 1E */	fctiwz f0, f0
/* 804DB5BC 004A4B7C  D8 21 00 08 */	stfd f1, 8(r1)
/* 804DB5C0 004A4B80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804DB5C4 004A4B84  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804DB5C8 004A4B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB5CC 004A4B8C  7C 04 00 00 */	cmpw r4, r0
/* 804DB5D0 004A4B90  40 82 00 10 */	bne .L_804DB5E0
/* 804DB5D4 004A4B94  A0 03 00 06 */	lhz r0, 6(r3)
/* 804DB5D8 004A4B98  B0 03 00 04 */	sth r0, 4(r3)
/* 804DB5DC 004A4B9C  48 00 00 2C */	b .L_804DB608
.L_804DB5E0:
/* 804DB5E0 004A4BA0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804DB5E4 004A4BA4  A0 83 00 04 */	lhz r4, 4(r3)
/* 804DB5E8 004A4BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB5EC 004A4BAC  B0 83 00 06 */	sth r4, 6(r3)
/* 804DB5F0 004A4BB0  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 804DB5F4 004A4BB4  40 82 00 14 */	bne .L_804DB608
/* 804DB5F8 004A4BB8  81 83 00 00 */	lwz r12, 0(r3)
/* 804DB5FC 004A4BBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DB600 004A4BC0  7D 89 03 A6 */	mtctr r12
/* 804DB604 004A4BC4  4E 80 04 21 */	bctrl 
.L_804DB608:
/* 804DB608 004A4BC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DB60C 004A4BCC  7C 08 03 A6 */	mtlr r0
/* 804DB610 004A4BD0  38 21 00 20 */	addi r1, r1, 0x20
/* 804DB614 004A4BD4  4E 80 00 20 */	blr 

.global randVec__6CERandFP4Vec3
randVec__6CERandFP4Vec3:
/* 804DB618 004A4BD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DB61C 004A4BDC  7C 08 02 A6 */	mflr r0
/* 804DB620 004A4BE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DB624 004A4BE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804DB628 004A4BE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804DB62C 004A4BEC  7C 7E 1B 78 */	mr r30, r3
/* 804DB630 004A4BF0  4B F5 A8 A9 */	bl mtRand
/* 804DB634 004A4BF4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804DB638 004A4BF8  3F E0 43 30 */	lis r31, 0x4330
/* 804DB63C 004A4BFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DB640 004A4C00  C8 62 D6 68 */	lfd f3, lbl_8066D9E8@sda21(r2)
/* 804DB644 004A4C04  93 E1 00 08 */	stw r31, 8(r1)
/* 804DB648 004A4C08  C0 22 D6 5C */	lfs f1, lbl_8066D9DC@sda21(r2)
/* 804DB64C 004A4C0C  C8 41 00 08 */	lfd f2, 8(r1)
/* 804DB650 004A4C10  C0 02 D6 60 */	lfs f0, lbl_8066D9E0@sda21(r2)
/* 804DB654 004A4C14  EC 42 18 28 */	fsubs f2, f2, f3
/* 804DB658 004A4C18  EC 22 08 24 */	fdivs f1, f2, f1
/* 804DB65C 004A4C1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DB660 004A4C20  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804DB664 004A4C24  4B F5 A8 75 */	bl mtRand
/* 804DB668 004A4C28  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804DB66C 004A4C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB670 004A4C30  C8 62 D6 68 */	lfd f3, lbl_8066D9E8@sda21(r2)
/* 804DB674 004A4C34  93 E1 00 10 */	stw r31, 0x10(r1)
/* 804DB678 004A4C38  C0 22 D6 5C */	lfs f1, lbl_8066D9DC@sda21(r2)
/* 804DB67C 004A4C3C  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 804DB680 004A4C40  C0 02 D6 60 */	lfs f0, lbl_8066D9E0@sda21(r2)
/* 804DB684 004A4C44  EC 42 18 28 */	fsubs f2, f2, f3
/* 804DB688 004A4C48  EC 22 08 24 */	fdivs f1, f2, f1
/* 804DB68C 004A4C4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DB690 004A4C50  D0 1E 00 04 */	stfs f0, 4(r30)
/* 804DB694 004A4C54  4B F5 A8 45 */	bl mtRand
/* 804DB698 004A4C58  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804DB69C 004A4C5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DB6A0 004A4C60  C8 62 D6 68 */	lfd f3, lbl_8066D9E8@sda21(r2)
/* 804DB6A4 004A4C64  93 E1 00 18 */	stw r31, 0x18(r1)
/* 804DB6A8 004A4C68  C0 22 D6 5C */	lfs f1, lbl_8066D9DC@sda21(r2)
/* 804DB6AC 004A4C6C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 804DB6B0 004A4C70  C0 02 D6 60 */	lfs f0, lbl_8066D9E0@sda21(r2)
/* 804DB6B4 004A4C74  EC 42 18 28 */	fsubs f2, f2, f3
/* 804DB6B8 004A4C78  EC 22 08 24 */	fdivs f1, f2, f1
/* 804DB6BC 004A4C7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DB6C0 004A4C80  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804DB6C4 004A4C84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804DB6C8 004A4C88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804DB6CC 004A4C8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DB6D0 004A4C90  7C 08 03 A6 */	mtlr r0
/* 804DB6D4 004A4C94  38 21 00 30 */	addi r1, r1, 0x30
/* 804DB6D8 004A4C98  4E 80 00 20 */	blr 

.global randFHalf__12CERandomizerFv
randFHalf__12CERandomizerFv:
/* 804DB6DC 004A4C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB6E0 004A4CA0  7C 08 02 A6 */	mflr r0
/* 804DB6E4 004A4CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB6E8 004A4CA8  4B F5 A7 F1 */	bl mtRand
/* 804DB6EC 004A4CAC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804DB6F0 004A4CB0  3C 00 43 30 */	lis r0, 0x4330
/* 804DB6F4 004A4CB4  90 01 00 08 */	stw r0, 8(r1)
/* 804DB6F8 004A4CB8  C8 62 D6 68 */	lfd f3, lbl_8066D9E8@sda21(r2)
/* 804DB6FC 004A4CBC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804DB700 004A4CC0  C0 22 D6 5C */	lfs f1, lbl_8066D9DC@sda21(r2)
/* 804DB704 004A4CC4  C8 41 00 08 */	lfd f2, 8(r1)
/* 804DB708 004A4CC8  C0 02 D6 60 */	lfs f0, lbl_8066D9E0@sda21(r2)
/* 804DB70C 004A4CCC  EC 42 18 28 */	fsubs f2, f2, f3
/* 804DB710 004A4CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB714 004A4CD4  EC 22 08 24 */	fdivs f1, f2, f1
/* 804DB718 004A4CD8  EC 21 00 28 */	fsubs f1, f1, f0
/* 804DB71C 004A4CDC  7C 08 03 A6 */	mtlr r0
/* 804DB720 004A4CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB724 004A4CE4  4E 80 00 20 */	blr 

.global randSignVec__6CERandFP4Vec3
randSignVec__6CERandFP4Vec3:
/* 804DB728 004A4CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB72C 004A4CEC  7C 08 02 A6 */	mflr r0
/* 804DB730 004A4CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB734 004A4CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB738 004A4CF8  7C 7F 1B 78 */	mr r31, r3
/* 804DB73C 004A4CFC  4B F5 A7 9D */	bl mtRand
/* 804DB740 004A4D00  54 64 0F FE */	srwi r4, r3, 0x1f
/* 804DB744 004A4D04  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 804DB748 004A4D08  7C 00 22 78 */	xor r0, r0, r4
/* 804DB74C 004A4D0C  7C 04 00 51 */	subf. r0, r4, r0
/* 804DB750 004A4D10  41 82 00 0C */	beq .L_804DB75C
/* 804DB754 004A4D14  C0 22 D6 70 */	lfs f1, lbl_8066D9F0@sda21(r2)
/* 804DB758 004A4D18  48 00 00 08 */	b .L_804DB760
.L_804DB75C:
/* 804DB75C 004A4D1C  C0 22 D6 74 */	lfs f1, lbl_8066D9F4@sda21(r2)
.L_804DB760:
/* 804DB760 004A4D20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804DB764 004A4D24  EC 00 00 72 */	fmuls f0, f0, f1
/* 804DB768 004A4D28  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804DB76C 004A4D2C  4B F5 A7 6D */	bl mtRand
/* 804DB770 004A4D30  54 64 0F FE */	srwi r4, r3, 0x1f
/* 804DB774 004A4D34  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 804DB778 004A4D38  7C 00 22 78 */	xor r0, r0, r4
/* 804DB77C 004A4D3C  7C 04 00 51 */	subf. r0, r4, r0
/* 804DB780 004A4D40  41 82 00 0C */	beq .L_804DB78C
/* 804DB784 004A4D44  C0 22 D6 70 */	lfs f1, lbl_8066D9F0@sda21(r2)
/* 804DB788 004A4D48  48 00 00 08 */	b .L_804DB790
.L_804DB78C:
/* 804DB78C 004A4D4C  C0 22 D6 74 */	lfs f1, lbl_8066D9F4@sda21(r2)
.L_804DB790:
/* 804DB790 004A4D50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804DB794 004A4D54  EC 00 00 72 */	fmuls f0, f0, f1
/* 804DB798 004A4D58  D0 1F 00 04 */	stfs f0, 4(r31)
/* 804DB79C 004A4D5C  4B F5 A7 3D */	bl mtRand
/* 804DB7A0 004A4D60  54 64 0F FE */	srwi r4, r3, 0x1f
/* 804DB7A4 004A4D64  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 804DB7A8 004A4D68  7C 00 22 78 */	xor r0, r0, r4
/* 804DB7AC 004A4D6C  7C 04 00 51 */	subf. r0, r4, r0
/* 804DB7B0 004A4D70  41 82 00 0C */	beq .L_804DB7BC
/* 804DB7B4 004A4D74  C0 22 D6 70 */	lfs f1, lbl_8066D9F0@sda21(r2)
/* 804DB7B8 004A4D78  48 00 00 08 */	b .L_804DB7C0
.L_804DB7BC:
/* 804DB7BC 004A4D7C  C0 22 D6 74 */	lfs f1, lbl_8066D9F4@sda21(r2)
.L_804DB7C0:
/* 804DB7C0 004A4D80  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804DB7C4 004A4D84  EC 00 00 72 */	fmuls f0, f0, f1
/* 804DB7C8 004A4D88  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804DB7CC 004A4D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB7D0 004A4D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB7D4 004A4D94  7C 08 03 A6 */	mtlr r0
/* 804DB7D8 004A4D98  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB7DC 004A4D9C  4E 80 00 20 */	blr 

.global randSign__12CERandomizerFv
randSign__12CERandomizerFv:
/* 804DB7E0 004A4DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB7E4 004A4DA4  7C 08 02 A6 */	mflr r0
/* 804DB7E8 004A4DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB7EC 004A4DAC  4B F5 A6 ED */	bl mtRand
/* 804DB7F0 004A4DB0  54 64 0F FE */	srwi r4, r3, 0x1f
/* 804DB7F4 004A4DB4  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 804DB7F8 004A4DB8  7C 00 22 78 */	xor r0, r0, r4
/* 804DB7FC 004A4DBC  7C 04 00 51 */	subf. r0, r4, r0
/* 804DB800 004A4DC0  41 82 00 0C */	beq .L_804DB80C
/* 804DB804 004A4DC4  C0 22 D6 70 */	lfs f1, lbl_8066D9F0@sda21(r2)
/* 804DB808 004A4DC8  48 00 00 08 */	b .L_804DB810
.L_804DB80C:
/* 804DB80C 004A4DCC  C0 22 D6 74 */	lfs f1, lbl_8066D9F4@sda21(r2)
.L_804DB810:
/* 804DB810 004A4DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB814 004A4DD4  7C 08 03 A6 */	mtlr r0
/* 804DB818 004A4DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB81C 004A4DDC  4E 80 00 20 */	blr 

.global randSign__18CERandomizerSimpleFv
randSign__18CERandomizerSimpleFv:
/* 804DB820 004A4DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB824 004A4DE4  7C 08 02 A6 */	mflr r0
/* 804DB828 004A4DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB82C 004A4DEC  81 83 00 00 */	lwz r12, 0(r3)
/* 804DB830 004A4DF0  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DB834 004A4DF4  7D 89 03 A6 */	mtctr r12
/* 804DB838 004A4DF8  4E 80 04 21 */	bctrl 
/* 804DB83C 004A4DFC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804DB840 004A4E00  41 82 00 0C */	beq .L_804DB84C
/* 804DB844 004A4E04  C0 22 D6 70 */	lfs f1, lbl_8066D9F0@sda21(r2)
/* 804DB848 004A4E08  48 00 00 08 */	b .L_804DB850
.L_804DB84C:
/* 804DB84C 004A4E0C  C0 22 D6 74 */	lfs f1, lbl_8066D9F4@sda21(r2)
.L_804DB850:
/* 804DB850 004A4E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB854 004A4E14  7C 08 03 A6 */	mtlr r0
/* 804DB858 004A4E18  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB85C 004A4E1C  4E 80 00 20 */	blr 

.global randFHalf__18CERandomizerSimpleFv
randFHalf__18CERandomizerSimpleFv:
/* 804DB860 004A4E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB864 004A4E24  7C 08 02 A6 */	mflr r0
/* 804DB868 004A4E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB86C 004A4E2C  81 83 00 00 */	lwz r12, 0(r3)
/* 804DB870 004A4E30  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DB874 004A4E34  7D 89 03 A6 */	mtctr r12
/* 804DB878 004A4E38  4E 80 04 21 */	bctrl 
/* 804DB87C 004A4E3C  3C 00 43 30 */	lis r0, 0x4330
/* 804DB880 004A4E40  90 01 00 08 */	stw r0, 8(r1)
/* 804DB884 004A4E44  C8 62 D6 80 */	lfd f3, lbl_8066DA00@sda21(r2)
/* 804DB888 004A4E48  90 61 00 0C */	stw r3, 0xc(r1)
/* 804DB88C 004A4E4C  C0 22 D6 78 */	lfs f1, lbl_8066D9F8@sda21(r2)
/* 804DB890 004A4E50  C8 41 00 08 */	lfd f2, 8(r1)
/* 804DB894 004A4E54  C0 02 D6 60 */	lfs f0, lbl_8066D9E0@sda21(r2)
/* 804DB898 004A4E58  EC 42 18 28 */	fsubs f2, f2, f3
/* 804DB89C 004A4E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB8A0 004A4E60  EC 22 08 24 */	fdivs f1, f2, f1
/* 804DB8A4 004A4E64  EC 21 00 28 */	fsubs f1, f1, f0
/* 804DB8A8 004A4E68  7C 08 03 A6 */	mtlr r0
/* 804DB8AC 004A4E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB8B0 004A4E70  4E 80 00 20 */	blr 

.global randF__18CERandomizerSimpleFv
randF__18CERandomizerSimpleFv:
/* 804DB8B4 004A4E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB8B8 004A4E78  7C 08 02 A6 */	mflr r0
/* 804DB8BC 004A4E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB8C0 004A4E80  81 83 00 00 */	lwz r12, 0(r3)
/* 804DB8C4 004A4E84  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DB8C8 004A4E88  7D 89 03 A6 */	mtctr r12
/* 804DB8CC 004A4E8C  4E 80 04 21 */	bctrl 
/* 804DB8D0 004A4E90  3C 00 43 30 */	lis r0, 0x4330
/* 804DB8D4 004A4E94  90 01 00 08 */	stw r0, 8(r1)
/* 804DB8D8 004A4E98  C8 42 D6 80 */	lfd f2, lbl_8066DA00@sda21(r2)
/* 804DB8DC 004A4E9C  90 61 00 0C */	stw r3, 0xc(r1)
/* 804DB8E0 004A4EA0  C0 02 D6 78 */	lfs f0, lbl_8066D9F8@sda21(r2)
/* 804DB8E4 004A4EA4  C8 21 00 08 */	lfd f1, 8(r1)
/* 804DB8E8 004A4EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB8EC 004A4EAC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804DB8F0 004A4EB0  EC 21 00 24 */	fdivs f1, f1, f0
/* 804DB8F4 004A4EB4  7C 08 03 A6 */	mtlr r0
/* 804DB8F8 004A4EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB8FC 004A4EBC  4E 80 00 20 */	blr

#__sinit_\CERand_cpp
.global __sinit_CERand_cpp
__sinit_CERand_cpp:
/* 804DB900 004A4EC0  3C A0 80 66 */	lis r5, ceRandomizerSimple@ha
/* 804DB904 004A4EC4  3C C0 80 57 */	lis r6, __vt__CERandomizer@ha
/* 804DB908 004A4EC8  3C 80 80 57 */	lis r4, __vt__18CERandomizerSimple@ha
/* 804DB90C 004A4ECC  C0 02 D6 58 */	lfs f0, lbl_8066D9D8@sda21(r2)
/* 804DB910 004A4ED0  38 65 29 30 */	addi r3, r5, ceRandomizerSimple@l
/* 804DB914 004A4ED4  38 00 3A 90 */	li r0, 0x3a90
/* 804DB918 004A4ED8  38 C6 36 78 */	addi r6, r6, __vt__CERandomizer@l
/* 804DB91C 004A4EDC  38 84 36 50 */	addi r4, r4, __vt__18CERandomizerSimple@l
/* 804DB920 004A4EE0  90 CD C1 60 */	stw r6, ceRandomizer@sda21(r13)
/* 804DB924 004A4EE4  90 85 29 30 */	stw r4, ceRandomizerSimple@l(r5)
/* 804DB928 004A4EE8  B0 03 00 04 */	sth r0, 4(r3)
/* 804DB92C 004A4EEC  B0 03 00 06 */	sth r0, 6(r3)
/* 804DB930 004A4EF0  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DB934 004A4EF4  4E 80 00 20 */	blr

.global randF__12CERandomizerFv
randF__12CERandomizerFv:
/* 804DB938 004A4EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB93C 004A4EFC  7C 08 02 A6 */	mflr r0
/* 804DB940 004A4F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB944 004A4F04  4B F5 A5 95 */	bl mtRand
/* 804DB948 004A4F08  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804DB94C 004A4F0C  3C 00 43 30 */	lis r0, 0x4330
/* 804DB950 004A4F10  90 01 00 08 */	stw r0, 8(r1)
/* 804DB954 004A4F14  C8 42 D6 68 */	lfd f2, lbl_8066D9E8@sda21(r2)
/* 804DB958 004A4F18  90 61 00 0C */	stw r3, 0xc(r1)
/* 804DB95C 004A4F1C  C0 02 D6 5C */	lfs f0, lbl_8066D9DC@sda21(r2)
/* 804DB960 004A4F20  C8 21 00 08 */	lfd f1, 8(r1)
/* 804DB964 004A4F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB968 004A4F28  EC 21 10 28 */	fsubs f1, f1, f2
/* 804DB96C 004A4F2C  EC 21 00 24 */	fdivs f1, f1, f0
/* 804DB970 004A4F30  7C 08 03 A6 */	mtlr r0
/* 804DB974 004A4F34  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB978 004A4F38  4E 80 00 20 */	blr 

.global rand__12CERandomizerFv
rand__12CERandomizerFv:
/* 804DB97C 004A4F3C  4B F5 A5 5C */	b mtRand

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte __sinit_CERand_cpp


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CERandomizerSimple_typestr
CERandomizerSimple_typestr:
	.asciz "CERandomizerSimple"
	.balign 4

.global IRandomizer_typestr
IRandomizer_typestr:
	.asciz "IRandomizer"

.global CERandomizer_typestr
CERandomizer_typestr:
	.asciz "CERandomizer"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__18CERandomizerSimple
__vt__18CERandomizerSimple:
	.4byte __RTTI__CERandomizerSimple
	.4byte 0
	.4byte rand__18CERandomizerSimpleFv
	.4byte randF__18CERandomizerSimpleFv
	.4byte randFHalf__18CERandomizerSimpleFv
	.4byte randSign__18CERandomizerSimpleFv

.global CERandomizerSimple_hierarchy
CERandomizerSimple_hierarchy:
	.4byte __RTTI__IRandomizer
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CERandomizer
__vt__CERandomizer:
	.4byte __RTTI__CERandomizer
	.4byte 0
	.4byte rand__12CERandomizerFv
	.4byte randF__12CERandomizerFv
	.4byte randFHalf__12CERandomizerFv
	.4byte randSign__12CERandomizerFv

.global CERandomizer_hierarchy
CERandomizer_hierarchy:
	.4byte __RTTI__IRandomizer
	.4byte 0
	.4byte 0
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CERandomizerSimple
__RTTI__CERandomizerSimple:
	.4byte CERandomizerSimple_typestr
	.4byte CERandomizerSimple_hierarchy

.global __RTTI__IRandomizer
__RTTI__IRandomizer:
	.4byte IRandomizer_typestr
	.4byte 0

.global __RTTI__CERandomizer
__RTTI__CERandomizer:
	.4byte CERandomizer_typestr
	.4byte CERandomizer_hierarchy


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066D9D8
lbl_8066D9D8:
	# ROM: 0x577838
	.4byte 0


#2147483648
.global lbl_8066D9DC
lbl_8066D9DC:
	# ROM: 0x57783C
	.4byte 0x4F000000


#0.5
.global lbl_8066D9E0
lbl_8066D9E0:
	.4byte 0x3f000000
	.4byte 0


#int to float constant
.global lbl_8066D9E8
lbl_8066D9E8:
	# ROM: 0x577848
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D9F0
lbl_8066D9F0:
	# ROM: 0x577850
	.float 1.0


.global lbl_8066D9F4
lbl_8066D9F4:
	# ROM: 0x577854
	.float -1.0


.global lbl_8066D9F8
lbl_8066D9F8:
	# ROM: 0x577858
	.4byte 0x461C5800
	.4byte 0


.global lbl_8066DA00
lbl_8066DA00:
	# ROM: 0x577860
	.4byte 0x43300000
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global ceRandomizerSimple
ceRandomizerSimple:
	.skip 0x10

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global ceRandomizer
ceRandomizer:
	.skip 0x8

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_80020798
lbl_80020798:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800207A0
lbl_800207A0:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800207A8
lbl_800207A8:
	.4byte 0x100A0000
	.4byte 0

.global lbl_800207B0
lbl_800207B0:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800207B8
lbl_800207B8:
	.4byte 0x080A0000
	.4byte 0

.global lbl_800207C0
lbl_800207C0:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800207C8
lbl_800207C8:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800207D0
lbl_800207D0:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800207D8
lbl_800207D8:
	.4byte 0x000A0000
	.4byte 0

.global lbl_800207E0
lbl_800207E0:
	.4byte 0x000A0000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte execute__18CERandomizerSimpleFf
	.4byte 0x0000007C
	.4byte lbl_80020798
	.4byte execute__6CERandFf
	.4byte 0x00000084
	.4byte lbl_800207A0
	.4byte randVec__6CERandFP4Vec3
	.4byte 0x000000C4
	.4byte lbl_800207A8
	.4byte randFHalf__12CERandomizerFv
	.4byte 0x0000004C
	.4byte lbl_800207B0
	.4byte randSignVec__6CERandFP4Vec3
	.4byte 0x000000B8
	.4byte lbl_800207B8
	.4byte randSign__12CERandomizerFv
	.4byte 0x00000040
	.4byte lbl_800207C0
	.4byte randSign__18CERandomizerSimpleFv
	.4byte 0x00000040
	.4byte lbl_800207C8
	.4byte randFHalf__18CERandomizerSimpleFv
	.4byte 0x00000054
	.4byte lbl_800207D0
	.4byte randF__18CERandomizerSimpleFv
	.4byte 0x0000004C
	.4byte lbl_800207D8
	.4byte randF__12CERandomizerFv
	.4byte 0x00000044
	.4byte lbl_800207E0