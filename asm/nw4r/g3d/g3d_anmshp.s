.include "macros.inc"
.file "nw4r/g3d/g3d_anmshp.o"

# 0x803E5D0C - 0x803E5D28
.text
.balign 4

# nw4r::g3d::AnmObjShp::TestExistence(unsigned long) const
.fn TestExistence__Q34nw4r3g3d9AnmObjShpCFUl, global
/* 803E5D0C 003AF2CC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803E5D10 003AF2D0  54 80 08 3C */	slwi r0, r4, 1
/* 803E5D14 003AF2D4  7C 03 02 2E */	lhzx r0, r3, r0
/* 803E5D18 003AF2D8  54 00 04 22 */	rlwinm r0, r0, 0, 16, 17
/* 803E5D1C 003AF2DC  7C 00 00 34 */	cntlzw r0, r0
/* 803E5D20 003AF2E0  54 03 D9 7E */	srwi r3, r0, 5
/* 803E5D24 003AF2E4  4E 80 00 20 */	blr
.endfn TestExistence__Q34nw4r3g3d9AnmObjShpCFUl

# 0x80520F28 - 0x80520F38
.rodata
.balign 8
.sym lbl_80520F28, local
	.4byte 0x0000000A
	.4byte 0x416E6D4F
	.4byte 0x626A5368
	.4byte 0x70000000
