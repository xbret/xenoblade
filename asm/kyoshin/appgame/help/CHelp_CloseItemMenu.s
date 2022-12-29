.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802B7E34
func_802B7E34:
/* 802B7E34 002813F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7E38 002813F8  7C 08 02 A6 */	mflr r0
/* 802B7E3C 002813FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7E40 00281400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7E44 00281404  7C 7F 1B 78 */	mr r31, r3
/* 802B7E48 00281408  4B EF C9 D5 */	bl func_801B481C
/* 802B7E4C 0028140C  81 9F 00 08 */	lwz r12, 8(r31)
/* 802B7E50 00281410  7C 60 00 34 */	cntlzw r0, r3
/* 802B7E54 00281414  7F E3 FB 78 */	mr r3, r31
/* 802B7E58 00281418  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B7E5C 0028141C  54 04 D9 7E */	srwi r4, r0, 5
/* 802B7E60 00281420  7D 89 03 A6 */	mtctr r12
/* 802B7E64 00281424  4E 80 04 21 */	bctrl 
/* 802B7E68 00281428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7E6C 0028142C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7E70 00281430  7C 08 03 A6 */	mtlr r0
/* 802B7E74 00281434  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7E78 00281438  4E 80 00 20 */	blr 

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8001BD70
lbl_8001BD70:
	.4byte 0x08080000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_802B7E34
	.4byte 0x00000048
	.4byte lbl_8001BD70