.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4hbm::lyt::DrawInfo::DrawInfo()
.fn __ct__Q36nw4hbm3lyt8DrawInfoFv, global
/* 8032D420 002F69E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032D424 002F69E4  7C 08 02 A6 */	mflr r0
/* 8032D428 002F69E8  3C A0 80 52 */	lis r5, lbl_80518A58@ha
/* 8032D42C 002F69EC  3C 80 80 52 */	lis r4, lbl_80518A5C@ha
/* 8032D430 002F69F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032D434 002F69F4  C0 25 8A 58 */	lfs f1, lbl_80518A58@l(r5)
/* 8032D438 002F69F8  3C A0 80 55 */	lis r5, lbl_8054D7A0@ha
/* 8032D43C 002F69FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032D440 002F6A00  38 A5 D7 A0 */	addi r5, r5, lbl_8054D7A0@l
/* 8032D444 002F6A04  C0 04 8A 5C */	lfs f0, lbl_80518A5C@l(r4)
/* 8032D448 002F6A08  7C 7F 1B 78 */	mr r31, r3
/* 8032D44C 002F6A0C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8032D450 002F6A10  38 80 00 00 */	li r4, 0x0
/* 8032D454 002F6A14  38 A0 00 01 */	li r5, 0x1
/* 8032D458 002F6A18  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8032D45C 002F6A1C  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 8032D460 002F6A20  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8032D464 002F6A24  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8032D468 002F6A28  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8032D46C 002F6A2C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8032D470 002F6A30  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 8032D474 002F6A34  38 63 00 50 */	addi r3, r3, 0x50
/* 8032D478 002F6A38  4B CD 6E D9 */	bl memset
/* 8032D47C 002F6A3C  38 7F 00 04 */	addi r3, r31, 0x4
/* 8032D480 002F6A40  48 01 FD 61 */	bl PSMTXIdentity
/* 8032D484 002F6A44  7F E3 FB 78 */	mr r3, r31
/* 8032D488 002F6A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032D48C 002F6A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032D490 002F6A50  7C 08 03 A6 */	mtlr r0
/* 8032D494 002F6A54  38 21 00 10 */	addi r1, r1, 0x10
/* 8032D498 002F6A58  4E 80 00 20 */	blr
.endfn __ct__Q36nw4hbm3lyt8DrawInfoFv
/* 8032D49C 002F6A5C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# nw4hbm::lyt::DrawInfo::~DrawInfo()
.fn __dt__Q36nw4hbm3lyt8DrawInfoFv, global
/* 8032D4A0 002F6A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032D4A4 002F6A64  7C 08 02 A6 */	mflr r0
/* 8032D4A8 002F6A68  2C 03 00 00 */	cmpwi r3, 0x0
/* 8032D4AC 002F6A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032D4B0 002F6A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032D4B4 002F6A74  7C 7F 1B 78 */	mr r31, r3
/* 8032D4B8 002F6A78  41 82 00 10 */	beq .L_8032D4C8
/* 8032D4BC 002F6A7C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8032D4C0 002F6A80  40 81 00 08 */	ble .L_8032D4C8
/* 8032D4C4 002F6A84  48 10 77 69 */	bl __dl__FPv
.L_8032D4C8:
/* 8032D4C8 002F6A88  7F E3 FB 78 */	mr r3, r31
/* 8032D4CC 002F6A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032D4D0 002F6A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032D4D4 002F6A94  7C 08 03 A6 */	mtlr r0
/* 8032D4D8 002F6A98  38 21 00 10 */	addi r1, r1, 0x10
/* 8032D4DC 002F6A9C  4E 80 00 20 */	blr
.endfn __dt__Q36nw4hbm3lyt8DrawInfoFv

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8
.global lbl_80518A58
lbl_80518A58:
	.4byte 0x00000000
.global lbl_80518A5C
lbl_80518A5C:
	.4byte 0x3F800000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_8054D7A0
lbl_8054D7A0:
	.4byte lbl_8054D7C8
	.4byte 0x00000000
	.4byte __dt__Q36nw4hbm3lyt8DrawInfoFv
.global lbl_8054D7AC
lbl_8054D7AC:
	.4byte 0x6E773468
	.4byte 0x626D3A3A
	.4byte 0x6C79743A
	.4byte 0x3A447261
	.4byte 0x77496E66
	.4byte 0x6F000000
	.4byte 0x00000000
.global lbl_8054D7C8
lbl_8054D7C8:
	.4byte lbl_8054D7AC
	.4byte 0x00000000
