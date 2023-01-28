.include "macros.inc"
.file "RevoSDK/hbm/nw4hbm/lyt/lyt_resourceAccessor.o"

# 0x80332C90 - 0x80332CF0
.text
.balign 4

# nw4hbm::lyt::ResourceAccessor::~ResourceAccessor()
.fn __dt__Q36nw4hbm3lyt16ResourceAccessorFv, global
/* 80332C90 002FC250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332C94 002FC254  7C 08 02 A6 */	mflr r0
/* 80332C98 002FC258  2C 03 00 00 */	cmpwi r3, 0x0
/* 80332C9C 002FC25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332CA0 002FC260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332CA4 002FC264  7C 7F 1B 78 */	mr r31, r3
/* 80332CA8 002FC268  41 82 00 10 */	beq .L_80332CB8
/* 80332CAC 002FC26C  2C 04 00 00 */	cmpwi r4, 0x0
/* 80332CB0 002FC270  40 81 00 08 */	ble .L_80332CB8
/* 80332CB4 002FC274  48 10 1F 79 */	bl __dl__FPv
.L_80332CB8:
/* 80332CB8 002FC278  7F E3 FB 78 */	mr r3, r31
/* 80332CBC 002FC27C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332CC0 002FC280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332CC4 002FC284  7C 08 03 A6 */	mtlr r0
/* 80332CC8 002FC288  38 21 00 10 */	addi r1, r1, 0x10
/* 80332CCC 002FC28C  4E 80 00 20 */	blr
.endfn __dt__Q36nw4hbm3lyt16ResourceAccessorFv

# nw4hbm::lyt::ResourceAccessor::ResourceAccessor()
.fn __ct__Q36nw4hbm3lyt16ResourceAccessorFv, global
/* 80332CD0 002FC290  3C 80 80 55 */	lis r4, lbl_8054D9D8@ha
/* 80332CD4 002FC294  38 84 D9 D8 */	addi r4, r4, lbl_8054D9D8@l
/* 80332CD8 002FC298  90 83 00 00 */	stw r4, 0x0(r3)
/* 80332CDC 002FC29C  4E 80 00 20 */	blr
.endfn __ct__Q36nw4hbm3lyt16ResourceAccessorFv

# nw4hbm::lyt::ResourceAccessor::GetFont(const char*)
.fn GetFont__Q36nw4hbm3lyt16ResourceAccessorFPCc, global
/* 80332CE0 002FC2A0  38 60 00 00 */	li r3, 0x0
/* 80332CE4 002FC2A4  4E 80 00 20 */	blr
.endfn GetFont__Q36nw4hbm3lyt16ResourceAccessorFPCc
/* 80332CE8 002FC2A8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80332CEC 002FC2AC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x8054D9D8 - 0x8054D9F4
.data
.balign 8
.sym lbl_8054D9D8, global
	.4byte lbl_8054D6B0
	.4byte 0x00000000
	.4byte __dt__Q36nw4hbm3lyt16ResourceAccessorFv
	.4byte 0x00000000
	.4byte GetFont__Q36nw4hbm3lyt16ResourceAccessorFPCc
	.4byte 0x00000000
.sym lbl_8054D9F0, global
	.4byte 0x000A0000
