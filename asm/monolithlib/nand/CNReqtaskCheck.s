.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_804DB348, global
/* 804DB348 004A4908  38 00 00 00 */	li r0, 0
/* 804DB34C 004A490C  90 83 00 00 */	stw r4, 0(r3)
/* 804DB350 004A4910  90 A3 00 04 */	stw r5, 4(r3)
/* 804DB354 004A4914  90 C3 00 08 */	stw r6, 8(r3)
/* 804DB358 004A4918  98 03 00 0C */	stb r0, 0xc(r3)
/* 804DB35C 004A491C  38 6D C1 58 */	addi r3, r13, lbl_806682D8@sda21
/* 804DB360 004A4920  4E 80 00 20 */	blr 
.endfn func_804DB348

.fn func_804DB364, global
/* 804DB364 004A4924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB368 004A4928  7C 08 02 A6 */	mflr r0
/* 804DB36C 004A492C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB370 004A4930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB374 004A4934  7C 9F 23 78 */	mr r31, r4
/* 804DB378 004A4938  88 0D C1 28 */	lbz r0, lbl_806682A8@sda21(r13)
/* 804DB37C 004A493C  2C 00 00 00 */	cmpwi r0, 0
/* 804DB380 004A4940  41 82 00 0C */	beq .L_804DB38C
/* 804DB384 004A4944  38 60 00 00 */	li r3, 0
/* 804DB388 004A4948  48 00 00 84 */	b .L_804DB40C
.L_804DB38C:
/* 804DB38C 004A494C  88 64 00 0C */	lbz r3, 0xc(r4)
/* 804DB390 004A4950  7C 60 07 75 */	extsb. r0, r3
/* 804DB394 004A4954  40 81 00 18 */	ble .L_804DB3AC
/* 804DB398 004A4958  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804DB39C 004A495C  2C 00 00 00 */	cmpwi r0, 0
/* 804DB3A0 004A4960  40 80 00 0C */	bge .L_804DB3AC
/* 804DB3A4 004A4964  38 60 00 02 */	li r3, 2
/* 804DB3A8 004A4968  48 00 00 64 */	b .L_804DB40C
.L_804DB3AC:
/* 804DB3AC 004A496C  7C 60 07 75 */	extsb. r0, r3
/* 804DB3B0 004A4970  41 82 00 18 */	beq .L_804DB3C8
/* 804DB3B4 004A4974  2C 00 00 01 */	cmpwi r0, 1
/* 804DB3B8 004A4978  41 82 00 3C */	beq .L_804DB3F4
/* 804DB3BC 004A497C  2C 00 00 02 */	cmpwi r0, 2
/* 804DB3C0 004A4980  41 82 00 40 */	beq .L_804DB400
/* 804DB3C4 004A4984  48 00 00 44 */	b .L_804DB408
.L_804DB3C8:
/* 804DB3C8 004A4988  80 64 00 00 */	lwz r3, 0(r4)
/* 804DB3CC 004A498C  80 84 00 04 */	lwz r4, 4(r4)
/* 804DB3D0 004A4990  80 BF 00 08 */	lwz r5, 8(r31)
/* 804DB3D4 004A4994  4B FF F1 0D */	bl func_804DA4E0
/* 804DB3D8 004A4998  2C 03 00 00 */	cmpwi r3, 0
/* 804DB3DC 004A499C  41 82 00 0C */	beq .L_804DB3E8
/* 804DB3E0 004A49A0  38 60 00 02 */	li r3, 2
/* 804DB3E4 004A49A4  48 00 00 28 */	b .L_804DB40C
.L_804DB3E8:
/* 804DB3E8 004A49A8  38 00 00 01 */	li r0, 1
/* 804DB3EC 004A49AC  98 1F 00 0C */	stb r0, 0xc(r31)
/* 804DB3F0 004A49B0  48 00 00 18 */	b .L_804DB408
.L_804DB3F4:
/* 804DB3F4 004A49B4  38 00 00 02 */	li r0, 2
/* 804DB3F8 004A49B8  98 04 00 0C */	stb r0, 0xc(r4)
/* 804DB3FC 004A49BC  48 00 00 0C */	b .L_804DB408
.L_804DB400:
/* 804DB400 004A49C0  38 60 00 01 */	li r3, 1
/* 804DB404 004A49C4  48 00 00 08 */	b .L_804DB40C
.L_804DB408:
/* 804DB408 004A49C8  38 60 00 00 */	li r3, 0
.L_804DB40C:
/* 804DB40C 004A49CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB410 004A49D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB414 004A49D4  7C 08 03 A6 */	mtlr r0
/* 804DB418 004A49D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB41C 004A49DC  4E 80 00 20 */	blr
.endfn func_804DB364

.fn sinit_804DB420, local
/* 804DB420 004A49E0  38 6D C1 58 */	addi r3, r13, lbl_806682D8@sda21
/* 804DB424 004A49E4  48 00 00 04 */	b .L_804DB428
.L_804DB428:
/* 804DB428 004A49E8  3C 80 80 57 */	lis r4, __vt__CNReqtaskCheck@ha
/* 804DB42C 004A49EC  38 84 36 30 */	addi r4, r4, __vt__CNReqtaskCheck@l
/* 804DB430 004A49F0  90 83 00 00 */	stw r4, 0(r3)
/* 804DB434 004A49F4  4E 80 00 20 */	blr 
.endfn sinit_804DB420

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_804DB420


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global CNReqtaskCheck_typestr
CNReqtaskCheck_typestr:
	.asciz "CNReqtaskCheck"
	.balign 4
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__CNReqtaskCheck
__vt__CNReqtaskCheck:
	.4byte __RTTI__CNReqtaskCheck
	.4byte 0
	.4byte func_804DB364
	.4byte func_804DA4CC

.global CNReqtaskCheck_hierarchy
CNReqtaskCheck_hierarchy:
	.4byte __RTTI__CNReqtask
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CNReqtaskCheck
__RTTI__CNReqtaskCheck:
	.4byte CNReqtaskCheck_typestr
	.4byte CNReqtaskCheck_hierarchy


.section .sbss, "wa"  # 0x80666600 - 0x8066836F



.global lbl_806682D8
lbl_806682D8:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80020790", local
.hidden "@etb_80020790"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020790"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800387A4", local
.hidden "@eti_800387A4"
	.4byte func_804DB364
	.4byte 0x000000BC
	.4byte "@etb_80020790"
.endobj "@eti_800387A4"
