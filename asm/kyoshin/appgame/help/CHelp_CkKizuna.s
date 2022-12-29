.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802B7DEC
func_802B7DEC:
/* 802B7DEC 002813AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7DF0 002813B0  7C 08 02 A6 */	mflr r0
/* 802B7DF4 002813B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7DF8 002813B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7DFC 002813BC  7C 7F 1B 78 */	mr r31, r3
/* 802B7E00 002813C0  4B F0 51 39 */	bl func_801BCF38
/* 802B7E04 002813C4  81 9F 00 08 */	lwz r12, 8(r31)
/* 802B7E08 002813C8  7C 60 00 34 */	cntlzw r0, r3
/* 802B7E0C 002813CC  7F E3 FB 78 */	mr r3, r31
/* 802B7E10 002813D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B7E14 002813D4  54 04 D9 7E */	srwi r4, r0, 5
/* 802B7E18 002813D8  7D 89 03 A6 */	mtctr r12
/* 802B7E1C 002813DC  4E 80 04 21 */	bctrl 
/* 802B7E20 002813E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7E24 002813E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7E28 002813E8  7C 08 03 A6 */	mtlr r0
/* 802B7E2C 002813EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7E30 002813F0  4E 80 00 20 */	blr 

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8001BD68
lbl_8001BD68:
	.4byte 0x08080000
	.4byte 0


.section extabindex_, "wa"  # 0x80021020 - 0x80039220

.4byte func_802B7DEC
	.4byte 0x00000048
	.4byte lbl_8001BD68