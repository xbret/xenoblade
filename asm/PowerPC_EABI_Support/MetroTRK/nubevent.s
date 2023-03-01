.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TRKInitializeEventQueue, global
/* 802CC650 00295C10  3C 60 80 58 */	lis r3, gTRKEventQueue@ha
/* 802CC654 00295C14  38 A0 00 00 */	li r5, 0
/* 802CC658 00295C18  38 83 B8 B0 */	addi r4, r3, gTRKEventQueue@l
/* 802CC65C 00295C1C  38 00 01 00 */	li r0, 0x100
/* 802CC660 00295C20  90 A3 B8 B0 */	stw r5, gTRKEventQueue@l(r3)
/* 802CC664 00295C24  38 60 00 00 */	li r3, 0
/* 802CC668 00295C28  90 A4 00 04 */	stw r5, 4(r4)
/* 802CC66C 00295C2C  90 04 00 20 */	stw r0, 0x20(r4)
/* 802CC670 00295C30  4E 80 00 20 */	blr 
.endfn TRKInitializeEventQueue

.fn TRKGetNextEvent, global
/* 802CC674 00295C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC678 00295C38  7C 08 02 A6 */	mflr r0
/* 802CC67C 00295C3C  38 80 00 00 */	li r4, 0
/* 802CC680 00295C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC684 00295C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CC688 00295C48  93 C1 00 08 */	stw r30, 8(r1)
/* 802CC68C 00295C4C  3F C0 80 58 */	lis r30, gTRKEventQueue@ha
/* 802CC690 00295C50  80 1E B8 B0 */	lwz r0, gTRKEventQueue@l(r30)
/* 802CC694 00295C54  2C 00 00 00 */	cmpwi r0, 0
/* 802CC698 00295C58  40 81 00 4C */	ble .L_802CC6E4
/* 802CC69C 00295C5C  3B FE B8 B0 */	addi r31, r30, gTRKEventQueue@l
/* 802CC6A0 00295C60  38 A0 00 0C */	li r5, 0xc
/* 802CC6A4 00295C64  80 1F 00 04 */	lwz r0, 4(r31)
/* 802CC6A8 00295C68  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802CC6AC 00295C6C  7C 9F 02 14 */	add r4, r31, r0
/* 802CC6B0 00295C70  38 84 00 08 */	addi r4, r4, 8
/* 802CC6B4 00295C74  4B FF F4 C9 */	bl TRK_memcpy
/* 802CC6B8 00295C78  80 7F 00 04 */	lwz r3, 4(r31)
/* 802CC6BC 00295C7C  80 9E B8 B0 */	lwz r4, gTRKEventQueue@l(r30)
/* 802CC6C0 00295C80  38 03 00 01 */	addi r0, r3, 1
/* 802CC6C4 00295C84  90 1F 00 04 */	stw r0, 4(r31)
/* 802CC6C8 00295C88  2C 00 00 02 */	cmpwi r0, 2
/* 802CC6CC 00295C8C  38 04 FF FF */	addi r0, r4, -1
/* 802CC6D0 00295C90  90 1E B8 B0 */	stw r0, gTRKEventQueue@l(r30)
/* 802CC6D4 00295C94  40 82 00 0C */	bne .L_802CC6E0
/* 802CC6D8 00295C98  38 00 00 00 */	li r0, 0
/* 802CC6DC 00295C9C  90 1F 00 04 */	stw r0, 4(r31)
.L_802CC6E0:
/* 802CC6E0 00295CA0  38 80 00 01 */	li r4, 1
.L_802CC6E4:
/* 802CC6E4 00295CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CC6E8 00295CA8  7C 83 23 78 */	mr r3, r4
/* 802CC6EC 00295CAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CC6F0 00295CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC6F4 00295CB4  7C 08 03 A6 */	mtlr r0
/* 802CC6F8 00295CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC6FC 00295CBC  4E 80 00 20 */	blr 
.endfn TRKGetNextEvent

.fn TRKPostEvent, global
/* 802CC700 00295CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CC704 00295CC4  7C 08 02 A6 */	mflr r0
/* 802CC708 00295CC8  3C 80 80 58 */	lis r4, gTRKEventQueue@ha
/* 802CC70C 00295CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CC710 00295CD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CC714 00295CD4  3B E0 00 00 */	li r31, 0
/* 802CC718 00295CD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CC71C 00295CDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802CC720 00295CE0  80 C4 B8 B0 */	lwz r6, gTRKEventQueue@l(r4)
/* 802CC724 00295CE4  2C 06 00 02 */	cmpwi r6, 2
/* 802CC728 00295CE8  40 82 00 18 */	bne .L_802CC740
/* 802CC72C 00295CEC  3C 60 80 54 */	lis r3, lbl_8053FE68@ha
/* 802CC730 00295CF0  3B E0 01 00 */	li r31, 0x100
/* 802CC734 00295CF4  38 63 FE 68 */	addi r3, r3, lbl_8053FE68@l
/* 802CC738 00295CF8  48 08 87 B9 */	bl OSReport
/* 802CC73C 00295CFC  48 00 00 70 */	b .L_802CC7AC
.L_802CC740:
/* 802CC740 00295D00  3B C4 B8 B0 */	addi r30, r4, gTRKEventQueue@l
/* 802CC744 00295D04  7C 64 1B 78 */	mr r4, r3
/* 802CC748 00295D08  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CC74C 00295D0C  38 A0 00 0C */	li r5, 0xc
/* 802CC750 00295D10  7C 00 32 14 */	add r0, r0, r6
/* 802CC754 00295D14  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802CC758 00295D18  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802CC75C 00295D1C  7C 00 1A 78 */	xor r0, r0, r3
/* 802CC760 00295D20  7C 03 00 50 */	subf r0, r3, r0
/* 802CC764 00295D24  1F A0 00 0C */	mulli r29, r0, 0xc
/* 802CC768 00295D28  7C 7E EA 14 */	add r3, r30, r29
/* 802CC76C 00295D2C  38 63 00 08 */	addi r3, r3, 8
/* 802CC770 00295D30  4B FF F4 0D */	bl TRK_memcpy
/* 802CC774 00295D34  7C 7E EA 14 */	add r3, r30, r29
/* 802CC778 00295D38  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802CC77C 00295D3C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802CC780 00295D40  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802CC784 00295D44  38 03 00 01 */	addi r0, r3, 1
/* 802CC788 00295D48  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802CC78C 00295D4C  28 00 01 00 */	cmplwi r0, 0x100
/* 802CC790 00295D50  40 80 00 0C */	bge .L_802CC79C
/* 802CC794 00295D54  38 00 01 00 */	li r0, 0x100
/* 802CC798 00295D58  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802CC79C:
/* 802CC79C 00295D5C  3C 80 80 58 */	lis r4, gTRKEventQueue@ha
/* 802CC7A0 00295D60  80 64 B8 B0 */	lwz r3, gTRKEventQueue@l(r4)
/* 802CC7A4 00295D64  38 03 00 01 */	addi r0, r3, 1
/* 802CC7A8 00295D68  90 04 B8 B0 */	stw r0, gTRKEventQueue@l(r4)
.L_802CC7AC:
/* 802CC7AC 00295D6C  7F E3 FB 78 */	mr r3, r31
/* 802CC7B0 00295D70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CC7B4 00295D74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CC7B8 00295D78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802CC7BC 00295D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CC7C0 00295D80  7C 08 03 A6 */	mtlr r0
/* 802CC7C4 00295D84  38 21 00 20 */	addi r1, r1, 0x20
/* 802CC7C8 00295D88  4E 80 00 20 */	blr 
.endfn TRKPostEvent

.fn TRKConstructEvent, global
/* 802CC7CC 00295D8C  38 A0 00 00 */	li r5, 0
/* 802CC7D0 00295D90  38 00 FF FF */	li r0, -1
/* 802CC7D4 00295D94  90 83 00 00 */	stw r4, 0(r3)
/* 802CC7D8 00295D98  90 A3 00 04 */	stw r5, 4(r3)
/* 802CC7DC 00295D9C  90 03 00 08 */	stw r0, 8(r3)
/* 802CC7E0 00295DA0  4E 80 00 20 */	blr 
.endfn TRKConstructEvent

.fn TRKDestructEvent, global
/* 802CC7E4 00295DA4  80 63 00 08 */	lwz r3, 8(r3)
/* 802CC7E8 00295DA8  48 00 0D 7C */	b TRKReleaseBuffer
.endfn TRKDestructEvent

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053FE68
lbl_8053FE68:
	.asciz "MetroTRK - Event Queue full\n"
	.balign 4

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

gTRKEventQueue:
	.skip 0x28