.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_8049E380, global
/* 8049E380 00467940  C0 02 D0 10 */	lfs f0, float_8066D390@sda21(r2)
/* 8049E384 00467944  3C A0 80 57 */	lis r5, __vt__CScnFrame@ha
/* 8049E388 00467948  38 A5 24 B8 */	addi r5, r5, __vt__CScnFrame@l
/* 8049E38C 0046794C  38 00 00 00 */	li r0, 0
/* 8049E390 00467950  90 A3 00 00 */	stw r5, 0(r3)
/* 8049E394 00467954  90 83 00 04 */	stw r4, 4(r3)
/* 8049E398 00467958  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049E39C 0046795C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8049E3A0 00467960  98 03 00 10 */	stb r0, 0x10(r3)
/* 8049E3A4 00467964  4E 80 00 20 */	blr 
.endfn func_8049E380

.fn __dt__8049E3A8, global
/* 8049E3A8 00467968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E3AC 0046796C  7C 08 02 A6 */	mflr r0
/* 8049E3B0 00467970  2C 03 00 00 */	cmpwi r3, 0
/* 8049E3B4 00467974  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E3B8 00467978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049E3BC 0046797C  7C 7F 1B 78 */	mr r31, r3
/* 8049E3C0 00467980  41 82 00 10 */	beq .L_8049E3D0
/* 8049E3C4 00467984  2C 04 00 00 */	cmpwi r4, 0
/* 8049E3C8 00467988  40 81 00 08 */	ble .L_8049E3D0
/* 8049E3CC 0046798C  4B F9 68 61 */	bl __dl__FPv
.L_8049E3D0:
/* 8049E3D0 00467990  7F E3 FB 78 */	mr r3, r31
/* 8049E3D4 00467994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049E3D8 00467998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E3DC 0046799C  7C 08 03 A6 */	mtlr r0
/* 8049E3E0 004679A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E3E4 004679A4  4E 80 00 20 */	blr 
.endfn __dt__8049E3A8

.fn func_8049E3E8, global
/* 8049E3E8 004679A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049E3EC 004679AC  7C 08 02 A6 */	mflr r0
/* 8049E3F0 004679B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049E3F4 004679B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049E3F8 004679B8  7C 7F 1B 78 */	mr r31, r3
/* 8049E3FC 004679BC  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8049E400 004679C0  2C 00 00 00 */	cmpwi r0, 0
/* 8049E404 004679C4  41 82 00 38 */	beq .L_8049E43C
/* 8049E408 004679C8  4B FA A0 19 */	bl func_80448420
/* 8049E40C 004679CC  3C 00 43 30 */	lis r0, 0x4330
/* 8049E410 004679D0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049E414 004679D4  C8 62 D0 18 */	lfd f3, double_8066D398@sda21(r2)
/* 8049E418 004679D8  90 01 00 08 */	stw r0, 8(r1)
/* 8049E41C 004679DC  C0 22 D0 14 */	lfs f1, float_8066D394@sda21(r2)
/* 8049E420 004679E0  C8 41 00 08 */	lfd f2, 8(r1)
/* 8049E424 004679E4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8049E428 004679E8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8049E42C 004679EC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8049E430 004679F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049E434 004679F4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8049E438 004679F8  48 00 00 0C */	b .L_8049E444
.L_8049E43C:
/* 8049E43C 004679FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8049E440 00467A00  D0 03 00 08 */	stfs f0, 8(r3)
.L_8049E444:
/* 8049E444 00467A04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049E448 00467A08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049E44C 00467A0C  7C 08 03 A6 */	mtlr r0
/* 8049E450 00467A10  38 21 00 20 */	addi r1, r1, 0x20
/* 8049E454 00467A14  4E 80 00 20 */	blr 
.endfn func_8049E3E8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global CScnFrame_typestr
CScnFrame_typestr:
	.asciz "CScnFrame"
	.balign 4
	.4byte 0
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__CScnFrame
__vt__CScnFrame:
	.4byte __RTTI__CScnFrame
	.4byte 0
	.4byte __dt__8049E3A8
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CScnFrame
__RTTI__CScnFrame:
	.4byte CScnFrame_typestr
	.4byte 0


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0



.global float_8066D390
float_8066D390:
	.float 1.0


.global float_8066D394
float_8066D394:
	.float 0.5


.global double_8066D398
double_8066D398:
	.8byte 0x4330000000000000 #unsigned int to float constant

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001F6A8", local
.hidden "@etb_8001F6A8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001F6A8"

.obj "@etb_8001F6B0", local
.hidden "@etb_8001F6B0"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001F6B0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80037178", local
.hidden "@eti_80037178"
	.4byte __dt__8049E3A8
	.4byte 0x00000040
	.4byte "@etb_8001F6A8"
.endobj "@eti_80037178"

.obj "@eti_80037184", local
.hidden "@eti_80037184"
	.4byte func_8049E3E8
	.4byte 0x00000070
	.4byte "@etb_8001F6B0"
.endobj "@eti_80037184"
