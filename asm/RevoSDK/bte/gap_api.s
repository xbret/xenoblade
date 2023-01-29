.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn GAP_Init, global
/* 802EFD04 002B92C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EFD08 002B92C8  7C 08 02 A6 */	mflr r0
/* 802EFD0C 002B92CC  38 80 00 00 */	li r4, 0x0
/* 802EFD10 002B92D0  38 A0 03 AC */	li r5, 0x3ac
/* 802EFD14 002B92D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EFD18 002B92D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EFD1C 002B92DC  3F E0 80 5C */	lis r31, lbl_805C21C0@ha
/* 802EFD20 002B92E0  38 7F 21 C0 */	addi r3, r31, lbl_805C21C0@l
/* 802EFD24 002B92E4  4B D1 46 2D */	bl memset
/* 802EFD28 002B92E8  3C A0 80 2F */	lis r5, gap_btm_cback0@ha
/* 802EFD2C 002B92EC  3C 60 80 2F */	lis r3, gap_btm_cback1@ha
/* 802EFD30 002B92F0  38 A5 0A 78 */	addi r5, r5, gap_btm_cback0@l
/* 802EFD34 002B92F4  38 9F 21 C0 */	addi r4, r31, lbl_805C21C0@l
/* 802EFD38 002B92F8  38 63 0A 84 */	addi r3, r3, gap_btm_cback1@l
/* 802EFD3C 002B92FC  38 00 00 05 */	li r0, 0x5
/* 802EFD40 002B9300  90 A4 00 20 */	stw r5, 0x20(r4)
/* 802EFD44 002B9304  90 64 00 24 */	stw r3, 0x24(r4)
/* 802EFD48 002B9308  98 04 00 28 */	stb r0, 0x28(r4)
/* 802EFD4C 002B930C  48 00 00 19 */	bl gap_conn_init
/* 802EFD50 002B9310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EFD54 002B9314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EFD58 002B9318  7C 08 03 A6 */	mtlr r0
/* 802EFD5C 002B931C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EFD60 002B9320  4E 80 00 20 */	blr
.endfn GAP_Init
