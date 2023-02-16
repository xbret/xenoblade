.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B7E7C, global
/* 802B7E7C 0028143C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7E80 00281440  7C 08 02 A6 */	mflr r0
/* 802B7E84 00281444  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7E88 00281448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7E8C 0028144C  7C 7F 1B 78 */	mr r31, r3
/* 802B7E90 00281450  4B E6 CC E9 */	bl func_80124B78
/* 802B7E94 00281454  81 9F 00 08 */	lwz r12, 8(r31)
/* 802B7E98 00281458  7C 60 00 34 */	cntlzw r0, r3
/* 802B7E9C 0028145C  7F E3 FB 78 */	mr r3, r31
/* 802B7EA0 00281460  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B7EA4 00281464  54 04 D9 7E */	srwi r4, r0, 5
/* 802B7EA8 00281468  7D 89 03 A6 */	mtctr r12
/* 802B7EAC 0028146C  4E 80 04 21 */	bctrl 
/* 802B7EB0 00281470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7EB4 00281474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7EB8 00281478  7C 08 03 A6 */	mtlr r0
/* 802B7EBC 0028147C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7EC0 00281480  4E 80 00 20 */	blr 
.endfn func_802B7E7C

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BD78", local
.hidden "@etb_8001BD78"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD78"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800338FC", local
.hidden "@eti_800338FC"
	.4byte func_802B7E7C
	.4byte 0x00000048
	.4byte "@etb_8001BD78"
.endobj "@eti_800338FC"
