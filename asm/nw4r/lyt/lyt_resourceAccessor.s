.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4r::lyt::ResourceAccessor::~ResourceAccessor()
.fn __dt__Q34nw4r3lyt16ResourceAccessorFv, global
/* 80409C48 003D3208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80409C4C 003D320C  7C 08 02 A6 */	mflr r0
/* 80409C50 003D3210  2C 03 00 00 */	cmpwi r3, 0x0
/* 80409C54 003D3214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80409C58 003D3218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80409C5C 003D321C  7C 7F 1B 78 */	mr r31, r3
/* 80409C60 003D3220  41 82 00 10 */	beq .L_80409C70
/* 80409C64 003D3224  2C 04 00 00 */	cmpwi r4, 0x0
/* 80409C68 003D3228  40 81 00 08 */	ble .L_80409C70
/* 80409C6C 003D322C  48 02 AF C1 */	bl __dl__FPv
.L_80409C70:
/* 80409C70 003D3230  7F E3 FB 78 */	mr r3, r31
/* 80409C74 003D3234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80409C78 003D3238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80409C7C 003D323C  7C 08 03 A6 */	mtlr r0
/* 80409C80 003D3240  38 21 00 10 */	addi r1, r1, 0x10
/* 80409C84 003D3244  4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3lyt16ResourceAccessorFv

# nw4r::lyt::ResourceAccessor::ResourceAccessor()
.fn __ct__Q34nw4r3lyt16ResourceAccessorFv, global
/* 80409C88 003D3248  3C 80 80 57 */	lis r4, lbl_8056D580@ha
/* 80409C8C 003D324C  38 84 D5 80 */	addi r4, r4, lbl_8056D580@l
/* 80409C90 003D3250  90 83 00 00 */	stw r4, 0x0(r3)
/* 80409C94 003D3254  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt16ResourceAccessorFv

# nw4r::lyt::ResourceAccessor::GetFont(const char*)
.fn GetFont__Q34nw4r3lyt16ResourceAccessorFPCc, global
/* 80409C98 003D3258  38 60 00 00 */	li r3, 0x0
/* 80409C9C 003D325C  4E 80 00 20 */	blr
.endfn GetFont__Q34nw4r3lyt16ResourceAccessorFPCc

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_8056D580
lbl_8056D580:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3lyt16ResourceAccessorFv
	.4byte 0x00000000
	.4byte GetFont__Q34nw4r3lyt16ResourceAccessorFPCc
	.4byte 0x00000000
