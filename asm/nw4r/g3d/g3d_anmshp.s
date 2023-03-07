.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TestExistence__Q34nw4r3g3d9AnmObjShpCFUl, global
/* 803E5D0C 003AF2CC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803E5D10 003AF2D0  54 80 08 3C */	slwi r0, r4, 1
/* 803E5D14 003AF2D4  7C 03 02 2E */	lhzx r0, r3, r0
/* 803E5D18 003AF2D8  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 803E5D1C 003AF2DC  7C 00 00 34 */	cntlzw r0, r0
/* 803E5D20 003AF2E0  54 03 D9 7E */	srwi r3, r0, 5
/* 803E5D24 003AF2E4  4E 80 00 20 */	blr 
.endfn TestExistence__Q34nw4r3g3d9AnmObjShpCFUl

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj TYPE_NAME__Q34nw4r3g3d9AnmObjShp, global
	.4byte 0x0000000A
	.asciz "AnmObjShp"
	.balign 4
.endobj TYPE_NAME__Q34nw4r3g3d9AnmObjShp
