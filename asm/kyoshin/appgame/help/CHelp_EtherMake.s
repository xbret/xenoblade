.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B80A4, global
/* 802B80A4 00281664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B80A8 00281668  7C 08 02 A6 */	mflr r0
/* 802B80AC 0028166C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B80B0 00281670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B80B4 00281674  3B E0 00 00 */	li r31, 0
/* 802B80B8 00281678  4B F5 A3 C9 */	bl func_80212480
/* 802B80BC 0028167C  2C 03 00 00 */	cmpwi r3, 0
/* 802B80C0 00281680  41 82 00 14 */	beq .L_802B80D4
/* 802B80C4 00281684  4B F5 A3 CD */	bl func_80212490
/* 802B80C8 00281688  2C 03 00 00 */	cmpwi r3, 0
/* 802B80CC 0028168C  41 82 00 08 */	beq .L_802B80D4
/* 802B80D0 00281690  3B E0 00 01 */	li r31, 1
.L_802B80D4:
/* 802B80D4 00281694  7F E3 FB 78 */	mr r3, r31
/* 802B80D8 00281698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B80DC 0028169C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B80E0 002816A0  7C 08 03 A6 */	mtlr r0
/* 802B80E4 002816A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B80E8 002816A8  4E 80 00 20 */	blr 
.endfn func_802B80A4

.fn func_802B80EC, global
/* 802B80EC 002816AC  4B F5 A3 A4 */	b func_80212490
.endfn func_802B80EC

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BD98", local
.hidden "@etb_8001BD98"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD98"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8003392C", local
.hidden "@eti_8003392C"
	.4byte func_802B80A4
	.4byte 0x00000048
	.4byte "@etb_8001BD98"
.endobj "@eti_8003392C"
