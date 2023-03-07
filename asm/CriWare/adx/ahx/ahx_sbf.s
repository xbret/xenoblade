.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn AHXDCD_SetupFtbl, global
/* 8038C42C 003559EC  3C 80 80 5F */	lis r4, lbl_805E9AF8@ha
/* 8038C430 003559F0  90 64 9A F8 */	stw r3, lbl_805E9AF8@l(r4)
/* 8038C434 003559F4  4E 80 00 20 */	blr
.endfn AHXDCD_SetupFtbl

.fn AHXDCD_SetupWtbl, global
/* 8038C438 003559F8  3C 80 80 5F */	lis r4, lbl_805E9AFC@ha
/* 8038C43C 003559FC  90 64 9A FC */	stw r3, lbl_805E9AFC@l(r4)
/* 8038C440 00355A00  4E 80 00 20 */	blr 
.endfn AHXDCD_SetupWtbl

.fn AHXSBF_Init, global
/* 8038C444 00355A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C448 00355A08  7C 08 02 A6 */	mflr r0
/* 8038C44C 00355A0C  3C 60 80 5F */	lis r3, lbl_805E9AF0@ha
/* 8038C450 00355A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C454 00355A14  80 03 9A F0 */	lwz r0, lbl_805E9AF0@l(r3)
/* 8038C458 00355A18  2C 00 00 00 */	cmpwi r0, 0
/* 8038C45C 00355A1C  40 82 00 08 */	bne .L_8038C464
/* 8038C460 00355A20  48 00 00 25 */	bl ahxsbf_init_filter
.L_8038C464:
/* 8038C464 00355A24  3C 80 80 5F */	lis r4, lbl_805E9AF0@ha
/* 8038C468 00355A28  80 64 9A F0 */	lwz r3, lbl_805E9AF0@l(r4)
/* 8038C46C 00355A2C  38 03 00 01 */	addi r0, r3, 1
/* 8038C470 00355A30  90 04 9A F0 */	stw r0, lbl_805E9AF0@l(r4)
/* 8038C474 00355A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C478 00355A38  7C 08 03 A6 */	mtlr r0
/* 8038C47C 00355A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C480 00355A40  4E 80 00 20 */	blr 
.endfn AHXSBF_Init

.fn ahxsbf_init_filter, global
/* 8038C484 00355A44  3C 60 80 5F */	lis r3, lbl_805E9AE8@ha
/* 8038C488 00355A48  38 63 9A E8 */	addi r3, r3, lbl_805E9AE8@l
/* 8038C48C 00355A4C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038C490 00355A50  2C 00 00 00 */	cmpwi r0, 0
/* 8038C494 00355A54  4C 82 00 20 */	bnelr 
/* 8038C498 00355A58  80 E3 00 14 */	lwz r7, 0x14(r3)
/* 8038C49C 00355A5C  38 00 00 80 */	li r0, 0x80
/* 8038C4A0 00355A60  39 00 08 00 */	li r8, 0x800
/* 8038C4A4 00355A64  38 87 00 1F */	addi r4, r7, 0x1f
/* 8038C4A8 00355A68  54 86 00 34 */	rlwinm r6, r4, 0, 0, 0x1a
/* 8038C4AC 00355A6C  90 C3 00 04 */	stw r6, 4(r3)
/* 8038C4B0 00355A70  7C 09 03 A6 */	mtctr r0
.L_8038C4B4:
/* 8038C4B4 00355A74  7C 07 40 AE */	lbzx r0, r7, r8
/* 8038C4B8 00355A78  7C 87 42 14 */	add r4, r7, r8
/* 8038C4BC 00355A7C  7C A6 42 14 */	add r5, r6, r8
/* 8038C4C0 00355A80  7C 06 41 AE */	stbx r0, r6, r8
/* 8038C4C4 00355A84  39 08 FF F8 */	addi r8, r8, -8
/* 8038C4C8 00355A88  88 04 FF FF */	lbz r0, -1(r4)
/* 8038C4CC 00355A8C  98 05 FF FF */	stb r0, -1(r5)
/* 8038C4D0 00355A90  88 04 FF FE */	lbz r0, -2(r4)
/* 8038C4D4 00355A94  98 05 FF FE */	stb r0, -2(r5)
/* 8038C4D8 00355A98  88 04 FF FD */	lbz r0, -3(r4)
/* 8038C4DC 00355A9C  98 05 FF FD */	stb r0, -3(r5)
/* 8038C4E0 00355AA0  88 04 FF FC */	lbz r0, -4(r4)
/* 8038C4E4 00355AA4  98 05 FF FC */	stb r0, -4(r5)
/* 8038C4E8 00355AA8  88 04 FF FB */	lbz r0, -5(r4)
/* 8038C4EC 00355AAC  98 05 FF FB */	stb r0, -5(r5)
/* 8038C4F0 00355AB0  88 04 FF FA */	lbz r0, -6(r4)
/* 8038C4F4 00355AB4  98 05 FF FA */	stb r0, -6(r5)
/* 8038C4F8 00355AB8  88 04 FF F9 */	lbz r0, -7(r4)
/* 8038C4FC 00355ABC  7C 87 42 14 */	add r4, r7, r8
/* 8038C500 00355AC0  98 05 FF F9 */	stb r0, -7(r5)
/* 8038C504 00355AC4  7C A6 42 14 */	add r5, r6, r8
/* 8038C508 00355AC8  7C 07 40 AE */	lbzx r0, r7, r8
/* 8038C50C 00355ACC  7C 06 41 AE */	stbx r0, r6, r8
/* 8038C510 00355AD0  39 08 FF F8 */	addi r8, r8, -8
/* 8038C514 00355AD4  88 04 FF FF */	lbz r0, -1(r4)
/* 8038C518 00355AD8  98 05 FF FF */	stb r0, -1(r5)
/* 8038C51C 00355ADC  88 04 FF FE */	lbz r0, -2(r4)
/* 8038C520 00355AE0  98 05 FF FE */	stb r0, -2(r5)
/* 8038C524 00355AE4  88 04 FF FD */	lbz r0, -3(r4)
/* 8038C528 00355AE8  98 05 FF FD */	stb r0, -3(r5)
/* 8038C52C 00355AEC  88 04 FF FC */	lbz r0, -4(r4)
/* 8038C530 00355AF0  98 05 FF FC */	stb r0, -4(r5)
/* 8038C534 00355AF4  88 04 FF FB */	lbz r0, -5(r4)
/* 8038C538 00355AF8  98 05 FF FB */	stb r0, -5(r5)
/* 8038C53C 00355AFC  88 04 FF FA */	lbz r0, -6(r4)
/* 8038C540 00355B00  98 05 FF FA */	stb r0, -6(r5)
/* 8038C544 00355B04  88 04 FF F9 */	lbz r0, -7(r4)
/* 8038C548 00355B08  98 05 FF F9 */	stb r0, -7(r5)
/* 8038C54C 00355B0C  42 00 FF 68 */	bdnz .L_8038C4B4
/* 8038C550 00355B10  7C A7 40 AE */	lbzx r5, r7, r8
/* 8038C554 00355B14  3C 80 80 52 */	lis r4, lbl_8051ABD0@ha
/* 8038C558 00355B18  38 00 00 40 */	li r0, 0x40
/* 8038C55C 00355B1C  C0 24 AB D0 */	lfs f1, lbl_8051ABD0@l(r4)
/* 8038C560 00355B20  7C A6 41 AE */	stbx r5, r6, r8
/* 8038C564 00355B24  38 A0 00 00 */	li r5, 0
/* 8038C568 00355B28  7C 09 03 A6 */	mtctr r0
.L_8038C56C:
/* 8038C56C 00355B2C  80 83 00 04 */	lwz r4, 4(r3)
/* 8038C570 00355B30  7C 04 2C 2E */	lfsx f0, r4, r5
/* 8038C574 00355B34  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C578 00355B38  7C 04 2D 2E */	stfsx f0, r4, r5
/* 8038C57C 00355B3C  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C580 00355B40  7C 80 2A 14 */	add r4, r0, r5
/* 8038C584 00355B44  C0 04 00 04 */	lfs f0, 4(r4)
/* 8038C588 00355B48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C58C 00355B4C  D0 04 00 04 */	stfs f0, 4(r4)
/* 8038C590 00355B50  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C594 00355B54  7C 80 2A 14 */	add r4, r0, r5
/* 8038C598 00355B58  C0 04 00 08 */	lfs f0, 8(r4)
/* 8038C59C 00355B5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C5A0 00355B60  D0 04 00 08 */	stfs f0, 8(r4)
/* 8038C5A4 00355B64  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C5A8 00355B68  7C 80 2A 14 */	add r4, r0, r5
/* 8038C5AC 00355B6C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8038C5B0 00355B70  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C5B4 00355B74  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 8038C5B8 00355B78  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C5BC 00355B7C  7C 80 2A 14 */	add r4, r0, r5
/* 8038C5C0 00355B80  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8038C5C4 00355B84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C5C8 00355B88  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8038C5CC 00355B8C  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C5D0 00355B90  7C 80 2A 14 */	add r4, r0, r5
/* 8038C5D4 00355B94  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8038C5D8 00355B98  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C5DC 00355B9C  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8038C5E0 00355BA0  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C5E4 00355BA4  7C 80 2A 14 */	add r4, r0, r5
/* 8038C5E8 00355BA8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8038C5EC 00355BAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C5F0 00355BB0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8038C5F4 00355BB4  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C5F8 00355BB8  7C 80 2A 14 */	add r4, r0, r5
/* 8038C5FC 00355BBC  38 A5 00 20 */	addi r5, r5, 0x20
/* 8038C600 00355BC0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8038C604 00355BC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038C608 00355BC8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8038C60C 00355BCC  42 00 FF 60 */	bdnz .L_8038C56C
/* 8038C610 00355BD0  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8038C614 00355BD4  38 00 02 00 */	li r0, 0x200
/* 8038C618 00355BD8  39 00 20 00 */	li r8, 0x2000
/* 8038C61C 00355BDC  38 87 00 1F */	addi r4, r7, 0x1f
/* 8038C620 00355BE0  54 85 00 34 */	rlwinm r5, r4, 0, 0, 0x1a
/* 8038C624 00355BE4  90 A3 00 00 */	stw r5, 0(r3)
/* 8038C628 00355BE8  7C 09 03 A6 */	mtctr r0
.L_8038C62C:
/* 8038C62C 00355BEC  7C 07 40 AE */	lbzx r0, r7, r8
/* 8038C630 00355BF0  7C 87 42 14 */	add r4, r7, r8
/* 8038C634 00355BF4  7C C5 42 14 */	add r6, r5, r8
/* 8038C638 00355BF8  7C 05 41 AE */	stbx r0, r5, r8
/* 8038C63C 00355BFC  39 08 FF F8 */	addi r8, r8, -8
/* 8038C640 00355C00  88 04 FF FF */	lbz r0, -1(r4)
/* 8038C644 00355C04  98 06 FF FF */	stb r0, -1(r6)
/* 8038C648 00355C08  88 04 FF FE */	lbz r0, -2(r4)
/* 8038C64C 00355C0C  98 06 FF FE */	stb r0, -2(r6)
/* 8038C650 00355C10  88 04 FF FD */	lbz r0, -3(r4)
/* 8038C654 00355C14  98 06 FF FD */	stb r0, -3(r6)
/* 8038C658 00355C18  88 04 FF FC */	lbz r0, -4(r4)
/* 8038C65C 00355C1C  98 06 FF FC */	stb r0, -4(r6)
/* 8038C660 00355C20  88 04 FF FB */	lbz r0, -5(r4)
/* 8038C664 00355C24  98 06 FF FB */	stb r0, -5(r6)
/* 8038C668 00355C28  88 04 FF FA */	lbz r0, -6(r4)
/* 8038C66C 00355C2C  98 06 FF FA */	stb r0, -6(r6)
/* 8038C670 00355C30  88 04 FF F9 */	lbz r0, -7(r4)
/* 8038C674 00355C34  7C 87 42 14 */	add r4, r7, r8
/* 8038C678 00355C38  98 06 FF F9 */	stb r0, -7(r6)
/* 8038C67C 00355C3C  7C C5 42 14 */	add r6, r5, r8
/* 8038C680 00355C40  7C 07 40 AE */	lbzx r0, r7, r8
/* 8038C684 00355C44  7C 05 41 AE */	stbx r0, r5, r8
/* 8038C688 00355C48  39 08 FF F8 */	addi r8, r8, -8
/* 8038C68C 00355C4C  88 04 FF FF */	lbz r0, -1(r4)
/* 8038C690 00355C50  98 06 FF FF */	stb r0, -1(r6)
/* 8038C694 00355C54  88 04 FF FE */	lbz r0, -2(r4)
/* 8038C698 00355C58  98 06 FF FE */	stb r0, -2(r6)
/* 8038C69C 00355C5C  88 04 FF FD */	lbz r0, -3(r4)
/* 8038C6A0 00355C60  98 06 FF FD */	stb r0, -3(r6)
/* 8038C6A4 00355C64  88 04 FF FC */	lbz r0, -4(r4)
/* 8038C6A8 00355C68  98 06 FF FC */	stb r0, -4(r6)
/* 8038C6AC 00355C6C  88 04 FF FB */	lbz r0, -5(r4)
/* 8038C6B0 00355C70  98 06 FF FB */	stb r0, -5(r6)
/* 8038C6B4 00355C74  88 04 FF FA */	lbz r0, -6(r4)
/* 8038C6B8 00355C78  98 06 FF FA */	stb r0, -6(r6)
/* 8038C6BC 00355C7C  88 04 FF F9 */	lbz r0, -7(r4)
/* 8038C6C0 00355C80  98 06 FF F9 */	stb r0, -7(r6)
/* 8038C6C4 00355C84  42 00 FF 68 */	bdnz .L_8038C62C
/* 8038C6C8 00355C88  7C 87 40 AE */	lbzx r4, r7, r8
/* 8038C6CC 00355C8C  38 00 00 01 */	li r0, 1
/* 8038C6D0 00355C90  7C 85 41 AE */	stbx r4, r5, r8
/* 8038C6D4 00355C94  90 03 00 0C */	stw r0, 0xc(r3)
/* 8038C6D8 00355C98  4E 80 00 20 */	blr
.endfn ahxsbf_init_filter

.fn AHXSBF_Finish, global
/* 8038C6DC 00355C9C  3C 80 80 5F */	lis r4, lbl_805E9AF0@ha
/* 8038C6E0 00355CA0  80 64 9A F0 */	lwz r3, lbl_805E9AF0@l(r4)
/* 8038C6E4 00355CA4  38 03 FF FF */	addi r0, r3, -1
/* 8038C6E8 00355CA8  90 04 9A F0 */	stw r0, lbl_805E9AF0@l(r4)
/* 8038C6EC 00355CAC  4E 80 00 20 */	blr 
.endfn AHXSBF_Finish

.fn AHXSBF_Create, global
/* 8038C6F0 00355CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C6F4 00355CB4  7C 08 02 A6 */	mflr r0
/* 8038C6F8 00355CB8  7C 85 23 78 */	mr r5, r4
/* 8038C6FC 00355CBC  38 80 00 00 */	li r4, 0
/* 8038C700 00355CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C704 00355CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038C708 00355CC8  7C 7F 1B 78 */	mr r31, r3
/* 8038C70C 00355CCC  4B C7 7C 45 */	bl memset
/* 8038C710 00355CD0  38 C0 00 40 */	li r6, 0x40
/* 8038C714 00355CD4  3C A0 80 5F */	lis r5, lbl_805E9AEC@ha
/* 8038C718 00355CD8  90 DF 00 08 */	stw r6, 8(r31)
/* 8038C71C 00355CDC  3C 80 80 5F */	lis r4, lbl_805E9AE8@ha
/* 8038C720 00355CE0  38 00 00 01 */	li r0, 1
/* 8038C724 00355CE4  7F E3 FB 78 */	mr r3, r31
/* 8038C728 00355CE8  90 DF 00 04 */	stw r6, 4(r31)
/* 8038C72C 00355CEC  80 A5 9A EC */	lwz r5, lbl_805E9AEC@l(r5)
/* 8038C730 00355CF0  90 BF 00 10 */	stw r5, 0x10(r31)
/* 8038C734 00355CF4  80 84 9A E8 */	lwz r4, lbl_805E9AE8@l(r4)
/* 8038C738 00355CF8  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8038C73C 00355CFC  98 1F 00 00 */	stb r0, 0(r31)
/* 8038C740 00355D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038C744 00355D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C748 00355D08  7C 08 03 A6 */	mtlr r0
/* 8038C74C 00355D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C750 00355D10  4E 80 00 20 */	blr 
.endfn AHXSBF_Create

.fn AHXSBF_Destroy, global
/* 8038C754 00355D14  38 80 00 00 */	li r4, 0
/* 8038C758 00355D18  38 A0 10 14 */	li r5, 0x1014
/* 8038C75C 00355D1C  4B C7 7B F4 */	b memset
.endfn AHXSBF_Destroy

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8051ABD0, global
	.asciz "O"
	.4byte 0
	.2byte 0
.endobj lbl_8051ABD0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B


.obj lbl_805E9AE8, global
	.skip 0x4
.endobj lbl_805E9AE8

.obj lbl_805E9AEC, global
	.skip 0x4
.endobj lbl_805E9AEC

.obj lbl_805E9AF0, global
	.skip 0x8
.endobj lbl_805E9AF0

.obj lbl_805E9AF8, global
	.skip 0x4
.endobj lbl_805E9AF8

.obj lbl_805E9AFC, global
	.skip 0x4
.endobj lbl_805E9AFC