.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_8049C438, global
/* 8049C438 004659F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C43C 004659FC  7C 08 02 A6 */	mflr r0
/* 8049C440 00465A00  3C E0 80 57 */	lis r7, __vt__CScnFadeMan@ha
/* 8049C444 00465A04  C0 02 CF B8 */	lfs f0, float_8066D338@sda21(r2)
/* 8049C448 00465A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C44C 00465A0C  38 00 00 00 */	li r0, 0
/* 8049C450 00465A10  38 E7 23 98 */	addi r7, r7, __vt__CScnFadeMan@l
/* 8049C454 00465A14  7C 88 23 78 */	mr r8, r4
/* 8049C458 00465A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C45C 00465A1C  7C 7F 1B 78 */	mr r31, r3
/* 8049C460 00465A20  38 A0 00 0C */	li r5, 0xc
/* 8049C464 00465A24  38 C0 00 01 */	li r6, 1
/* 8049C468 00465A28  90 83 00 04 */	stw r4, 4(r3)
/* 8049C46C 00465A2C  7F E4 FB 78 */	mr r4, r31
/* 8049C470 00465A30  90 E3 00 00 */	stw r7, 0(r3)
/* 8049C474 00465A34  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049C478 00465A38  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8049C47C 00465A3C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8049C480 00465A40  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8049C484 00465A44  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8049C488 00465A48  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8049C48C 00465A4C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8049C490 00465A50  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8049C494 00465A54  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8049C498 00465A58  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8049C49C 00465A5C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8049C4A0 00465A60  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8049C4A4 00465A64  90 03 00 38 */	stw r0, 0x38(r3)
/* 8049C4A8 00465A68  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8049C4AC 00465A6C  7D 03 43 78 */	mr r3, r8
/* 8049C4B0 00465A70  4B FF 9A 05 */	bl func_80495EB4
/* 8049C4B4 00465A74  7F E3 FB 78 */	mr r3, r31
/* 8049C4B8 00465A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C4BC 00465A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C4C0 00465A80  7C 08 03 A6 */	mtlr r0
/* 8049C4C4 00465A84  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C4C8 00465A88  4E 80 00 20 */	blr 
.endfn func_8049C438

.fn __dt__CScnFadeMan, global
/* 8049C4CC 00465A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C4D0 00465A90  7C 08 02 A6 */	mflr r0
/* 8049C4D4 00465A94  2C 03 00 00 */	cmpwi r3, 0
/* 8049C4D8 00465A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C4DC 00465A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C4E0 00465AA0  7C 9F 23 78 */	mr r31, r4
/* 8049C4E4 00465AA4  93 C1 00 08 */	stw r30, 8(r1)
/* 8049C4E8 00465AA8  7C 7E 1B 78 */	mr r30, r3
/* 8049C4EC 00465AAC  41 82 00 2C */	beq .L_8049C518
/* 8049C4F0 00465AB0  3C A0 80 57 */	lis r5, __vt__CScnFadeMan@ha
/* 8049C4F4 00465AB4  7F C4 F3 78 */	mr r4, r30
/* 8049C4F8 00465AB8  38 A5 23 98 */	addi r5, r5, __vt__CScnFadeMan@l
/* 8049C4FC 00465ABC  90 A3 00 00 */	stw r5, 0(r3)
/* 8049C500 00465AC0  80 63 00 04 */	lwz r3, 4(r3)
/* 8049C504 00465AC4  4B FF 9A 4D */	bl func_80495F50
/* 8049C508 00465AC8  2C 1F 00 00 */	cmpwi r31, 0
/* 8049C50C 00465ACC  40 81 00 0C */	ble .L_8049C518
/* 8049C510 00465AD0  7F C3 F3 78 */	mr r3, r30
/* 8049C514 00465AD4  4B F9 87 19 */	bl __dl__FPv
.L_8049C518:
/* 8049C518 00465AD8  7F C3 F3 78 */	mr r3, r30
/* 8049C51C 00465ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C520 00465AE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049C524 00465AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C528 00465AE8  7C 08 03 A6 */	mtlr r0
/* 8049C52C 00465AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C530 00465AF0  4E 80 00 20 */	blr 
.endfn __dt__CScnFadeMan

.fn func_8049C534, global
/* 8049C534 00465AF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049C538 00465AF8  3C 00 43 30 */	lis r0, 0x4330
/* 8049C53C 00465AFC  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8049C540 00465B00  90 01 00 08 */	stw r0, 8(r1)
/* 8049C544 00465B04  2C 04 00 00 */	cmpwi r4, 0
/* 8049C548 00465B08  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049C54C 00465B0C  41 82 01 24 */	beq .L_8049C670
/* 8049C550 00465B10  34 84 FF 00 */	addic. r4, r4, -256
/* 8049C554 00465B14  90 83 00 38 */	stw r4, 0x38(r3)
/* 8049C558 00465B18  41 81 00 30 */	bgt .L_8049C588
/* 8049C55C 00465B1C  80 E3 00 28 */	lwz r7, 0x28(r3)
/* 8049C560 00465B20  38 00 00 00 */	li r0, 0
/* 8049C564 00465B24  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 8049C568 00465B28  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 8049C56C 00465B2C  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8049C570 00465B30  90 E3 00 08 */	stw r7, 8(r3)
/* 8049C574 00465B34  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8049C578 00465B38  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8049C57C 00465B3C  90 83 00 14 */	stw r4, 0x14(r3)
/* 8049C580 00465B40  90 03 00 38 */	stw r0, 0x38(r3)
/* 8049C584 00465B44  48 00 00 EC */	b .L_8049C670
.L_8049C588:
/* 8049C588 00465B48  54 80 C0 0E */	slwi r0, r4, 0x18
/* 8049C58C 00465B4C  54 86 0F FE */	srwi r6, r4, 0x1f
/* 8049C590 00465B50  7C 06 00 50 */	subf r0, r6, r0
/* 8049C594 00465B54  80 E3 00 3C */	lwz r7, 0x3c(r3)
/* 8049C598 00465B58  54 05 40 3E */	rotlwi r5, r0, 8
/* 8049C59C 00465B5C  C8 A2 CF C8 */	lfd f5, double_8066D348@sda21(r2)
/* 8049C5A0 00465B60  7C C5 32 14 */	add r6, r5, r6
/* 8049C5A4 00465B64  7C 80 46 70 */	srawi r0, r4, 8
/* 8049C5A8 00465B68  7C 80 01 94 */	addze r4, r0
/* 8049C5AC 00465B6C  54 E5 0F FE */	srwi r5, r7, 0x1f
/* 8049C5B0 00465B70  54 E0 C0 0E */	slwi r0, r7, 0x18
/* 8049C5B4 00465B74  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8049C5B8 00465B78  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8049C5BC 00465B7C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8049C5C0 00465B80  7C 05 00 50 */	subf r0, r5, r0
/* 8049C5C4 00465B84  C0 62 CF BC */	lfs f3, float_8066D33C@sda21(r2)
/* 8049C5C8 00465B88  90 81 00 14 */	stw r4, 0x14(r1)
/* 8049C5CC 00465B8C  54 04 40 3E */	rotlwi r4, r0, 8
/* 8049C5D0 00465B90  7C E0 46 70 */	srawi r0, r7, 8
/* 8049C5D4 00465B94  C8 21 00 08 */	lfd f1, 8(r1)
/* 8049C5D8 00465B98  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8049C5DC 00465B9C  7C 84 2A 14 */	add r4, r4, r5
/* 8049C5E0 00465BA0  7C 00 01 94 */	addze r0, r0
/* 8049C5E4 00465BA4  EC 81 28 28 */	fsubs f4, f1, f5
/* 8049C5E8 00465BA8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8049C5EC 00465BAC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8049C5F0 00465BB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049C5F4 00465BB4  EC 40 28 28 */	fsubs f2, f0, f5
/* 8049C5F8 00465BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C5FC 00465BBC  C8 21 00 08 */	lfd f1, 8(r1)
/* 8049C600 00465BC0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8049C604 00465BC4  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 8049C608 00465BC8  EC 21 28 28 */	fsubs f1, f1, f5
/* 8049C60C 00465BCC  C1 02 CF C0 */	lfs f8, float_8066D340@sda21(r2)
/* 8049C610 00465BD0  EC 00 28 28 */	fsubs f0, f0, f5
/* 8049C614 00465BD4  C0 E3 00 28 */	lfs f7, 0x28(r3)
/* 8049C618 00465BD8  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 8049C61C 00465BDC  C0 C3 00 18 */	lfs f6, 0x18(r3)
/* 8049C620 00465BE0  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 8049C624 00465BE4  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 8049C628 00465BE8  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8049C62C 00465BEC  C0 83 00 1C */	lfs f4, 0x1c(r3)
/* 8049C630 00465BF0  ED 22 00 24 */	fdivs f9, f2, f0
/* 8049C634 00465BF4  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 8049C638 00465BF8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8049C63C 00465BFC  ED 08 48 28 */	fsubs f8, f8, f9
/* 8049C640 00465C00  EC E7 02 32 */	fmuls f7, f7, f8
/* 8049C644 00465C04  EC A5 02 32 */	fmuls f5, f5, f8
/* 8049C648 00465C08  EC 63 02 32 */	fmuls f3, f3, f8
/* 8049C64C 00465C0C  EC 21 02 32 */	fmuls f1, f1, f8
/* 8049C650 00465C10  EC C6 3A 7A */	fmadds f6, f6, f9, f7
/* 8049C654 00465C14  EC 84 2A 7A */	fmadds f4, f4, f9, f5
/* 8049C658 00465C18  EC 42 1A 7A */	fmadds f2, f2, f9, f3
/* 8049C65C 00465C1C  D0 C3 00 08 */	stfs f6, 8(r3)
/* 8049C660 00465C20  EC 00 0A 7A */	fmadds f0, f0, f9, f1
/* 8049C664 00465C24  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 8049C668 00465C28  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8049C66C 00465C2C  D0 03 00 14 */	stfs f0, 0x14(r3)
.L_8049C670:
/* 8049C670 00465C30  38 21 00 20 */	addi r1, r1, 0x20
/* 8049C674 00465C34  4E 80 00 20 */	blr 
.endfn func_8049C534

.fn func_8049C678, global
/* 8049C678 00465C38  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8049C67C 00465C3C  7C 08 02 A6 */	mflr r0
/* 8049C680 00465C40  C0 22 CF B8 */	lfs f1, float_8066D338@sda21(r2)
/* 8049C684 00465C44  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8049C688 00465C48  93 E1 00 EC */	stw r31, 0xec(r1)
/* 8049C68C 00465C4C  7C 7F 1B 78 */	mr r31, r3
/* 8049C690 00465C50  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8049C694 00465C54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8049C698 00465C58  41 82 00 80 */	beq .L_8049C718
/* 8049C69C 00465C5C  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 8049C6A0 00465C60  4B FA F7 99 */	bl func_8044BE38
/* 8049C6A4 00465C64  4B FA 5B 41 */	bl func_804421E4
/* 8049C6A8 00465C68  4B FA 67 01 */	bl func_80442DA8
/* 8049C6AC 00465C6C  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C6B0 00465C70  4B FB 9A 85 */	bl func_80456134
/* 8049C6B4 00465C74  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C6B8 00465C78  38 80 00 00 */	li r4, 0
/* 8049C6BC 00465C7C  4B FB 9E B5 */	bl func_80456570
/* 8049C6C0 00465C80  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C6C4 00465C84  38 80 00 00 */	li r4, 0
/* 8049C6C8 00465C88  4B FB 9E B5 */	bl func_8045657C
/* 8049C6CC 00465C8C  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C6D0 00465C90  38 9F 00 08 */	addi r4, r31, 8
/* 8049C6D4 00465C94  4B FB 9D CD */	bl func_804564A0
/* 8049C6D8 00465C98  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C6DC 00465C9C  38 80 00 09 */	li r4, 9
/* 8049C6E0 00465CA0  38 A0 00 01 */	li r5, 1
/* 8049C6E4 00465CA4  4B FB 9E E5 */	bl func_804565C8
/* 8049C6E8 00465CA8  4B FA 34 69 */	bl func_8043FB50
/* 8049C6EC 00465CAC  7C 64 1B 78 */	mr r4, r3
/* 8049C6F0 00465CB0  38 61 00 08 */	addi r3, r1, 8
/* 8049C6F4 00465CB4  4B FA 23 95 */	bl func_8043EA88
/* 8049C6F8 00465CB8  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C6FC 00465CBC  38 81 00 08 */	addi r4, r1, 8
/* 8049C700 00465CC0  4B FB A4 0D */	bl func_80456B0C
/* 8049C704 00465CC4  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C708 00465CC8  4B FB A6 81 */	bl func_80456D88
/* 8049C70C 00465CCC  38 61 00 10 */	addi r3, r1, 0x10
/* 8049C710 00465CD0  38 80 FF FF */	li r4, -1
/* 8049C714 00465CD4  4B FB 9A 99 */	bl __dt__804561AC
.L_8049C718:
/* 8049C718 00465CD8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8049C71C 00465CDC  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 8049C720 00465CE0  7C 08 03 A6 */	mtlr r0
/* 8049C724 00465CE4  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8049C728 00465CE8  4E 80 00 20 */	blr
.endfn func_8049C678

.fn func_8049C72C, global
/* 8049C72C 00465CEC  54 8C 40 2E */	slwi r12, r4, 8
/* 8049C730 00465CF0  81 63 00 08 */	lwz r11, 8(r3)
/* 8049C734 00465CF4  2C 04 00 00 */	cmpwi r4, 0
/* 8049C738 00465CF8  81 43 00 0C */	lwz r10, 0xc(r3)
/* 8049C73C 00465CFC  81 23 00 10 */	lwz r9, 0x10(r3)
/* 8049C740 00465D00  81 03 00 14 */	lwz r8, 0x14(r3)
/* 8049C744 00465D04  80 E5 00 00 */	lwz r7, 0(r5)
/* 8049C748 00465D08  80 C5 00 04 */	lwz r6, 4(r5)
/* 8049C74C 00465D0C  80 85 00 08 */	lwz r4, 8(r5)
/* 8049C750 00465D10  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8049C754 00465D14  91 63 00 18 */	stw r11, 0x18(r3)
/* 8049C758 00465D18  91 43 00 1C */	stw r10, 0x1c(r3)
/* 8049C75C 00465D1C  91 23 00 20 */	stw r9, 0x20(r3)
/* 8049C760 00465D20  91 03 00 24 */	stw r8, 0x24(r3)
/* 8049C764 00465D24  90 E3 00 28 */	stw r7, 0x28(r3)
/* 8049C768 00465D28  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 8049C76C 00465D2C  90 83 00 30 */	stw r4, 0x30(r3)
/* 8049C770 00465D30  90 03 00 34 */	stw r0, 0x34(r3)
/* 8049C774 00465D34  91 83 00 38 */	stw r12, 0x38(r3)
/* 8049C778 00465D38  91 83 00 3C */	stw r12, 0x3c(r3)
/* 8049C77C 00465D3C  4C 82 00 20 */	bnelr 
/* 8049C780 00465D40  90 E3 00 08 */	stw r7, 8(r3)
/* 8049C784 00465D44  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8049C788 00465D48  90 83 00 10 */	stw r4, 0x10(r3)
/* 8049C78C 00465D4C  90 03 00 14 */	stw r0, 0x14(r3)
/* 8049C790 00465D50  4E 80 00 20 */	blr 
.endfn func_8049C72C

.fn func_8049C794, global
/* 8049C794 00465D54  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8049C798 00465D58  38 60 00 01 */	li r3, 1
/* 8049C79C 00465D5C  7C 00 00 34 */	cntlzw r0, r0
/* 8049C7A0 00465D60  5C 63 07 FE */	rlwnm r3, r3, r0, 0x1f, 0x1f
/* 8049C7A4 00465D64  4E 80 00 20 */	blr 
.endfn func_8049C794

.fn func_8049C7A8, global
/* 8049C7A8 00465D68  38 63 00 08 */	addi r3, r3, 8
/* 8049C7AC 00465D6C  4E 80 00 20 */	blr
.endfn func_8049C7A8

.fn func_8049C7B0, global
/* 8049C7B0 00465D70  C0 22 CF C0 */	lfs f1, float_8066D340@sda21(r2)
/* 8049C7B4 00465D74  38 80 00 00 */	li r4, 0
/* 8049C7B8 00465D78  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8049C7BC 00465D7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8049C7C0 00465D80  40 82 00 10 */	bne .L_8049C7D0
/* 8049C7C4 00465D84  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8049C7C8 00465D88  2C 00 00 00 */	cmpwi r0, 0
/* 8049C7CC 00465D8C  41 82 00 20 */	beq .L_8049C7EC
.L_8049C7D0:
/* 8049C7D0 00465D90  C0 22 CF C0 */	lfs f1, float_8066D340@sda21(r2)
/* 8049C7D4 00465D94  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8049C7D8 00465D98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8049C7DC 00465D9C  40 82 00 14 */	bne .L_8049C7F0
/* 8049C7E0 00465DA0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8049C7E4 00465DA4  2C 00 00 00 */	cmpwi r0, 0
/* 8049C7E8 00465DA8  41 82 00 08 */	beq .L_8049C7F0
.L_8049C7EC:
/* 8049C7EC 00465DAC  38 80 00 01 */	li r4, 1
.L_8049C7F0:
/* 8049C7F0 00465DB0  7C 83 23 78 */	mr r3, r4
/* 8049C7F4 00465DB4  4E 80 00 20 */	blr 
.endfn func_8049C7B0


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CScnFadeMan_typestr, global
	.asciz "CScnFadeMan"
	.4byte 0
.endobj CScnFadeMan_typestr
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CScnFadeMan, global
	.4byte __RTTI__CScnFadeMan
	.4byte 0
	.4byte __dt__CScnFadeMan
	.4byte func_8049C678
.endobj __vt__CScnFadeMan


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CScnFadeMan, global
	.4byte CScnFadeMan_typestr
	.4byte 0
.endobj __RTTI__CScnFadeMan

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066D338, global
	.float 0
.endobj float_8066D338


.obj float_8066D33C, global
	.float 0.00390625 #0x3B800000
.endobj float_8066D33C


.obj float_8066D340, global
	.float 1.0
	.4byte 0
.endobj float_8066D340


.obj double_8066D348, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066D348

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001F48C", local
.hidden "@etb_8001F48C"
	.4byte 0x080A0000
	.4byte 0x0000007C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__IScnRender
.endobj "@etb_8001F48C"

.obj "@etb_8001F4A8", local
.hidden "@etb_8001F4A8"
	.4byte 0x10080000
	.4byte 0x0000003C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IScnRender
.endobj "@etb_8001F4A8"

.obj "@etb_8001F4C4", local
.hidden "@etb_8001F4C4"
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_8001F4C4"

.obj "@etb_8001F4CC", local
.hidden "@etb_8001F4CC"
	.4byte 0x080A0000
	.4byte 0x00000048
	.4byte 0x00130010
	.4byte 0x00000000
	.4byte 0x82000010
	.4byte __dt__804561AC
.endobj "@etb_8001F4CC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80036F44", local
.hidden "@eti_80036F44"
	.4byte func_8049C438
	.4byte 0x00000094
	.4byte "@etb_8001F48C"
.endobj "@eti_80036F44"

.obj "@eti_80036F50", local
.hidden "@eti_80036F50"
	.4byte __dt__CScnFadeMan
	.4byte 0x00000068
	.4byte "@etb_8001F4A8"
.endobj "@eti_80036F50"

.obj "@eti_80036F5C", local
.hidden "@eti_80036F5C"
	.4byte func_8049C534
	.4byte 0x00000144
	.4byte "@etb_8001F4C4"
.endobj "@eti_80036F5C"

.obj "@eti_80036F68", local
.hidden "@eti_80036F68"
	.4byte func_8049C678
	.4byte 0x000000B4
	.4byte "@etb_8001F4CC"
.endobj "@eti_80036F68"
