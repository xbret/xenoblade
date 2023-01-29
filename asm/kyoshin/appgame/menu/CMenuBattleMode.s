.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __ct__CMenuBattleMode, global
/* 801A0374 00169934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A0378 00169938  7C 08 02 A6 */	mflr r0
/* 801A037C 0016993C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A0380 00169940  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A0384 00169944  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A0388 00169948  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A038C 0016994C  7C 9D 23 78 */	mr r29, r4
/* 801A0390 00169950  93 81 00 10 */	stw r28, 0x10(r1)
/* 801A0394 00169954  7C 7C 1B 78 */	mr r28, r3
/* 801A0398 00169958  80 0D AA 88 */	lwz r0, lbl_80666C08@sda21(r13)
/* 801A039C 0016995C  2C 00 00 00 */	cmpwi r0, 0x0
/* 801A03A0 00169960  41 82 00 0C */	beq .L_801A03AC
/* 801A03A4 00169964  38 60 00 00 */	li r3, 0x0
/* 801A03A8 00169968  48 00 00 C4 */	b .L_801A046C
.L_801A03AC:
/* 801A03AC 0016996C  48 29 72 09 */	bl func_804375B4
/* 801A03B0 00169970  7C 64 1B 78 */	mr r4, r3
/* 801A03B4 00169974  38 60 00 84 */	li r3, 0x84
/* 801A03B8 00169978  48 29 46 A5 */	bl mm_malloc
/* 801A03BC 0016997C  2C 03 00 00 */	cmpwi r3, 0x0
/* 801A03C0 00169980  7C 7E 1B 78 */	mr r30, r3
/* 801A03C4 00169984  41 82 00 90 */	beq .L_801A0454
/* 801A03C8 00169988  48 2A 46 51 */	bl __ct__8CProcessFv
/* 801A03CC 0016998C  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 801A03D0 00169990  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 801A03D4 00169994  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 801A03D8 00169998  90 7E 00 10 */	stw r3, 0x10(r30)
/* 801A03DC 0016999C  39 08 CE 10 */	addi r8, r8, lbl_8050CE10@l
/* 801A03E0 001699A0  3C A0 80 53 */	lis r5, __vt__CMenuBattleMode@ha
/* 801A03E4 001699A4  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 801A03E8 001699A8  38 A5 65 88 */	addi r5, r5, __vt__CMenuBattleMode@l
/* 801A03EC 001699AC  80 08 00 00 */	lwz r0, 0x0(r8)
/* 801A03F0 001699B0  3B E0 00 00 */	li r31, 0x0
/* 801A03F4 001699B4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 801A03F8 001699B8  38 85 00 24 */	addi r4, r5, 0x24
/* 801A03FC 001699BC  38 05 00 AC */	addi r0, r5, 0xac
/* 801A0400 001699C0  38 7E 00 60 */	addi r3, r30, 0x60
/* 801A0404 001699C4  90 DE 00 40 */	stw r6, 0x40(r30)
/* 801A0408 001699C8  80 C8 00 08 */	lwz r6, 0x8(r8)
/* 801A040C 001699CC  90 DE 00 44 */	stw r6, 0x44(r30)
/* 801A0410 001699D0  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 801A0414 001699D4  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 801A0418 001699D8  90 FE 00 48 */	stw r7, 0x48(r30)
/* 801A041C 001699DC  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 801A0420 001699E0  80 C8 00 08 */	lwz r6, 0x8(r8)
/* 801A0424 001699E4  90 DE 00 50 */	stw r6, 0x50(r30)
/* 801A0428 001699E8  9B FE 00 54 */	stb r31, 0x54(r30)
/* 801A042C 001699EC  9B FE 00 55 */	stb r31, 0x55(r30)
/* 801A0430 001699F0  90 BE 00 10 */	stw r5, 0x10(r30)
/* 801A0434 001699F4  90 9E 00 58 */	stw r4, 0x58(r30)
/* 801A0438 001699F8  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 801A043C 001699FC  48 2B F1 29 */	bl func_8045F564
/* 801A0440 00169A00  93 BE 00 70 */	stw r29, 0x70(r30)
/* 801A0444 00169A04  93 FE 00 74 */	stw r31, 0x74(r30)
/* 801A0448 00169A08  93 FE 00 78 */	stw r31, 0x78(r30)
/* 801A044C 00169A0C  93 FE 00 7C */	stw r31, 0x7c(r30)
/* 801A0450 00169A10  9B FE 00 80 */	stb r31, 0x80(r30)
.L_801A0454:
/* 801A0454 00169A14  93 CD AA 88 */	stw r30, lbl_80666C08@sda21(r13)
/* 801A0458 00169A18  7F C3 F3 78 */	mr r3, r30
/* 801A045C 00169A1C  7F 84 E3 78 */	mr r4, r28
/* 801A0460 00169A20  38 A0 00 00 */	li r5, 0x0
/* 801A0464 00169A24  48 2A 48 11 */	bl func_80444C74
/* 801A0468 00169A28  80 6D AA 88 */	lwz r3, lbl_80666C08@sda21(r13)
.L_801A046C:
/* 801A046C 00169A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A0470 00169A30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A0474 00169A34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A0478 00169A38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A047C 00169A3C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801A0480 00169A40  7C 08 03 A6 */	mtlr r0
/* 801A0484 00169A44  38 21 00 20 */	addi r1, r1, 0x20
/* 801A0488 00169A48  4E 80 00 20 */	blr
.endfn __ct__CMenuBattleMode

.fn func_801A048C, global
/* 801A048C 00169A4C  38 63 FF A8 */	addi r3, r3, -0x58
/* 801A0490 00169A50  4B FF F9 C0 */	b func_8019FE50
.endfn func_801A048C

.fn func_801A0494, global
/* 801A0494 00169A54  38 63 FF A4 */	addi r3, r3, -0x5c
/* 801A0498 00169A58  4B FF FE 28 */	b func_801A02C0
.endfn func_801A0494

.fn func_801A049C, global
/* 801A049C 00169A5C  38 63 FF A4 */	addi r3, r3, -0x5c
/* 801A04A0 00169A60  4B FF F9 B0 */	b func_8019FE50
.endfn func_801A049C

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8

.global CMenuBattleMode_typestr
CMenuBattleMode_typestr:
	.4byte 0x434D656E
	.4byte 0x75426174
	.4byte 0x746C654D
	.4byte 0x6F646500
.global lbl_804FF5A8
lbl_804FF5A8:
	.4byte 0x434D656E
	.4byte 0x75426174
	.4byte 0x746C654D
	.4byte 0x6F646500
	.4byte 0x6D663731
	.4byte 0x5F626174
	.4byte 0x746C6534
	.4byte 0x305F6D61
	.4byte 0x726B2E62
	.4byte 0x726C7974
	.4byte 0x006D6637
	.4byte 0x315F6261
	.4byte 0x74746C65
	.4byte 0x34305F6D
	.4byte 0x61726B5F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x006D6637
	.4byte 0x315F6261
	.4byte 0x74746C65
	.4byte 0x34305F6D
	.4byte 0x61726B5F
	.4byte 0x726F6F70
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.global __vt__CMenuBattleMode
__vt__CMenuBattleMode:
	.4byte __RTTI__CMenuBattleMode
	.4byte 0x00000000
	.4byte func_8019FE50
	.4byte CChildListNode_Reset
	.4byte func_8019FEC4
	.4byte func_8019FFF8
	.4byte func_801A0078
	.4byte func_80101FB8
	.4byte func_80043F20
	.4byte __RTTI__CMenuBattleMode
	.4byte 0xFFFFFFA8
	.4byte func_801A048C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte __RTTI__CMenuBattleMode
	.4byte 0xFFFFFFA4
	.4byte func_801A049C
	.4byte func_801A0494
	.4byte func_801A02C0

.global CMenuBattleMode_hierarchy
CMenuBattleMode_hierarchy:
	.4byte __RTTI__IScnRender
	.4byte 0x0000005C
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte __RTTI__CTTask_IUICf
	.4byte 0x00000000
	.4byte __RTTI__IUICf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

.global __RTTI__CMenuBattleMode
__RTTI__CMenuBattleMode:
	.4byte CMenuBattleMode_typestr
	.4byte CMenuBattleMode_hierarchy

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8
.global lbl_80666C08
lbl_80666C08:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000F600", local
.hidden "@etb_8000F600"
	.4byte 0x20080000
	.4byte 0x000000CC
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte func_8004031C
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte func_800FED0C
.endobj "@etb_8000F600"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002A4AC", local
.hidden "@eti_8002A4AC"
	.4byte __ct__CMenuBattleMode
	.4byte 0x00000118
	.4byte "@etb_8000F600"
.endobj "@eti_8002A4AC"
