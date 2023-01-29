.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802B85A4, global
/* 802B85A4 00281B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B85A8 00281B68  7C 08 02 A6 */	mflr r0
/* 802B85AC 00281B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B85B0 00281B70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B85B4 00281B74  7C 7F 1B 78 */	mr r31, r3
/* 802B85B8 00281B78  4B E2 0B D1 */	bl func_800D9188
/* 802B85BC 00281B7C  80 63 01 94 */	lwz r3, 0x194(r3)
/* 802B85C0 00281B80  3C 00 43 30 */	lis r0, 0x4330
/* 802B85C4 00281B84  90 01 00 08 */	stw r0, 0x8(r1)
/* 802B85C8 00281B88  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802B85CC 00281B8C  C8 22 B4 80 */	lfd f1, lbl_8066B800@sda21(r2)
/* 802B85D0 00281B90  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B85D4 00281B94  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 802B85D8 00281B98  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 802B85DC 00281B9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B85E0 00281BA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802B85E4 00281BA4  4C 40 13 82 */	cror eq, lt, eq
/* 802B85E8 00281BA8  7C 60 00 26 */	mfcr r3
/* 802B85EC 00281BAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B85F0 00281BB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B85F4 00281BB4  54 63 1F FE */	extrwi r3, r3, 1, 2
/* 802B85F8 00281BB8  7C 08 03 A6 */	mtlr r0
/* 802B85FC 00281BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8600 00281BC0  4E 80 00 20 */	blr
.endfn func_802B85A4

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_8066B800
lbl_8066B800:
	.4byte 0x43300000
	.4byte 0x80000000

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BE08", local
.hidden "@etb_8001BE08"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001BE08"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033998", local
.hidden "@eti_80033998"
	.4byte func_802B85A4
	.4byte 0x00000060
	.4byte "@etb_8001BE08"
.endobj "@eti_80033998"
