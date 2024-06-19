.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CDeviceSC, global
/* 80447B50 00411110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447B54 00411114  7C 08 02 A6 */	mflr r0
/* 80447B58 00411118  38 C0 00 08 */	li r6, 8
/* 80447B5C 0041111C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447B60 00411120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80447B64 00411124  7C 7F 1B 78 */	mr r31, r3
/* 80447B68 00411128  4B FE FA 55 */	bl __ct__CWorkThread
/* 80447B6C 0041112C  3C 60 80 57 */	lis r3, __vt__9CDeviceSC@ha
/* 80447B70 00411130  38 80 00 00 */	li r4, 0
/* 80447B74 00411134  38 63 F5 B0 */	addi r3, r3, __vt__9CDeviceSC@l
/* 80447B78 00411138  38 00 00 01 */	li r0, 1
/* 80447B7C 0041113C  90 9F 01 C4 */	stw r4, 0x1c4(r31)
/* 80447B80 00411140  90 7F 00 00 */	stw r3, 0(r31)
/* 80447B84 00411144  98 9F 01 C8 */	stb r4, 0x1c8(r31)
/* 80447B88 00411148  98 9F 01 C9 */	stb r4, 0x1c9(r31)
/* 80447B8C 0041114C  98 9F 01 CA */	stb r4, 0x1ca(r31)
/* 80447B90 00411150  98 9F 01 CB */	stb r4, 0x1cb(r31)
/* 80447B94 00411154  98 1F 01 CC */	stb r0, 0x1cc(r31)
/* 80447B98 00411158  98 9F 01 CD */	stb r4, 0x1cd(r31)
/* 80447B9C 0041115C  93 ED BD A0 */	stw r31, lbl_80667F20@sda21(r13)
/* 80447BA0 00411160  4B F1 79 91 */	bl SCInit
/* 80447BA4 00411164  7F E3 FB 78 */	mr r3, r31
/* 80447BA8 00411168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80447BAC 0041116C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80447BB0 00411170  7C 08 03 A6 */	mtlr r0
/* 80447BB4 00411174  38 21 00 10 */	addi r1, r1, 0x10
/* 80447BB8 00411178  4E 80 00 20 */	blr 
.endfn __ct__CDeviceSC

.fn __dt__9CDeviceSCFv, global
/* 80447BBC 0041117C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447BC0 00411180  7C 08 02 A6 */	mflr r0
/* 80447BC4 00411184  2C 03 00 00 */	cmpwi r3, 0
/* 80447BC8 00411188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447BCC 0041118C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80447BD0 00411190  7C 9F 23 78 */	mr r31, r4
/* 80447BD4 00411194  93 C1 00 08 */	stw r30, 8(r1)
/* 80447BD8 00411198  7C 7E 1B 78 */	mr r30, r3
/* 80447BDC 0041119C  41 82 00 28 */	beq .L_80447C04
/* 80447BE0 004111A0  38 00 00 00 */	li r0, 0
/* 80447BE4 004111A4  90 0D BD A0 */	stw r0, lbl_80667F20@sda21(r13)
/* 80447BE8 004111A8  41 82 00 0C */	beq .L_80447BF4
/* 80447BEC 004111AC  38 80 00 00 */	li r4, 0
/* 80447BF0 004111B0  4B FE FE D9 */	bl __dt__11CWorkThreadFv
.L_80447BF4:
/* 80447BF4 004111B4  2C 1F 00 00 */	cmpwi r31, 0
/* 80447BF8 004111B8  40 81 00 0C */	ble .L_80447C04
/* 80447BFC 004111BC  7F C3 F3 78 */	mr r3, r30
/* 80447C00 004111C0  4B FE D0 2D */	bl __dl__FPv
.L_80447C04:
/* 80447C04 004111C4  7F C3 F3 78 */	mr r3, r30
/* 80447C08 004111C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80447C0C 004111CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80447C10 004111D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80447C14 004111D4  7C 08 03 A6 */	mtlr r0
/* 80447C18 004111D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80447C1C 004111DC  4E 80 00 20 */	blr 
.endfn __dt__9CDeviceSCFv

.fn func_80447C20, global
/* 80447C20 004111E0  80 6D BD A0 */	lwz r3, lbl_80667F20@sda21(r13)
/* 80447C24 004111E4  4E 80 00 20 */	blr 
.endfn func_80447C20

.fn func_80447C28, global
/* 80447C28 004111E8  80 6D BD A0 */	lwz r3, lbl_80667F20@sda21(r13)
/* 80447C2C 004111EC  88 63 01 C8 */	lbz r3, 0x1c8(r3)
/* 80447C30 004111F0  38 03 FF FF */	addi r0, r3, -1
/* 80447C34 004111F4  7C 00 00 34 */	cntlzw r0, r0
/* 80447C38 004111F8  54 03 D9 7E */	srwi r3, r0, 5
/* 80447C3C 004111FC  4E 80 00 20 */	blr 
.endfn func_80447C28

.fn func_80447C40, global
/* 80447C40 00411200  80 6D BD A0 */	lwz r3, lbl_80667F20@sda21(r13)
/* 80447C44 00411204  88 03 01 CC */	lbz r0, 0x1cc(r3)
/* 80447C48 00411208  7C 00 00 34 */	cntlzw r0, r0
/* 80447C4C 0041120C  54 03 D9 7E */	srwi r3, r0, 5
/* 80447C50 00411210  4E 80 00 20 */	blr 
.endfn func_80447C40

.fn func_80447C54, global
/* 80447C54 00411214  80 6D BD A0 */	lwz r3, lbl_80667F20@sda21(r13)
/* 80447C58 00411218  88 63 01 CA */	lbz r3, 0x1ca(r3)
/* 80447C5C 0041121C  4E 80 00 20 */	blr 
.endfn func_80447C54

.fn func_80447C60, global
/* 80447C60 00411220  80 CD BD A0 */	lwz r6, lbl_80667F20@sda21(r13)
/* 80447C64 00411224  80 06 00 7C */	lwz r0, 0x7c(r6)
/* 80447C68 00411228  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80447C6C 0041122C  41 82 00 0C */	beq .L_80447C78
/* 80447C70 00411230  38 00 00 01 */	li r0, 1
/* 80447C74 00411234  48 00 00 5C */	b .L_80447CD0
.L_80447C78:
/* 80447C78 00411238  80 06 01 AC */	lwz r0, 0x1ac(r6)
/* 80447C7C 0041123C  38 E0 00 00 */	li r7, 0
/* 80447C80 00411240  7C 09 03 A6 */	mtctr r0
/* 80447C84 00411244  28 00 00 00 */	cmplwi r0, 0
/* 80447C88 00411248  40 81 00 3C */	ble .L_80447CC4
.L_80447C8C:
/* 80447C8C 0041124C  80 06 01 A8 */	lwz r0, 0x1a8(r6)
/* 80447C90 00411250  80 66 01 B0 */	lwz r3, 0x1b0(r6)
/* 80447C94 00411254  7C 80 3A 14 */	add r4, r0, r7
/* 80447C98 00411258  80 A6 01 A4 */	lwz r5, 0x1a4(r6)
/* 80447C9C 0041125C  7C 04 1B 96 */	divwu r0, r4, r3
/* 80447CA0 00411260  7C 00 19 D6 */	mullw r0, r0, r3
/* 80447CA4 00411264  7C 00 20 50 */	subf r0, r0, r4
/* 80447CA8 00411268  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80447CAC 0041126C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80447CB0 00411270  28 00 00 02 */	cmplwi r0, 2
/* 80447CB4 00411274  40 82 00 08 */	bne .L_80447CBC
/* 80447CB8 00411278  48 00 00 10 */	b .L_80447CC8
.L_80447CBC:
/* 80447CBC 0041127C  38 E7 00 01 */	addi r7, r7, 1
/* 80447CC0 00411280  42 00 FF CC */	bdnz .L_80447C8C
.L_80447CC4:
/* 80447CC4 00411284  38 E0 FF FF */	li r7, -1
.L_80447CC8:
/* 80447CC8 00411288  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 80447CCC 0041128C  68 00 00 01 */	xori r0, r0, 1
.L_80447CD0:
/* 80447CD0 00411290  2C 00 00 00 */	cmpwi r0, 0
/* 80447CD4 00411294  38 60 00 00 */	li r3, 0
/* 80447CD8 00411298  4C 82 00 20 */	bnelr 
/* 80447CDC 0041129C  80 86 00 48 */	lwz r4, 0x48(r6)
/* 80447CE0 004112A0  38 00 00 01 */	li r0, 1
/* 80447CE4 004112A4  2C 04 00 02 */	cmpwi r4, 2
/* 80447CE8 004112A8  41 82 00 10 */	beq .L_80447CF8
/* 80447CEC 004112AC  2C 04 00 03 */	cmpwi r4, 3
/* 80447CF0 004112B0  41 82 00 08 */	beq .L_80447CF8
/* 80447CF4 004112B4  38 00 00 00 */	li r0, 0
.L_80447CF8:
/* 80447CF8 004112B8  2C 00 00 00 */	cmpwi r0, 0
/* 80447CFC 004112BC  4D 82 00 20 */	beqlr 
/* 80447D00 004112C0  38 60 00 01 */	li r3, 1
/* 80447D04 004112C4  4E 80 00 20 */	blr 
.endfn func_80447C60

.fn CDeviceSC_WorkThreadEvent4, global
/* 80447D08 004112C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447D0C 004112CC  7C 08 02 A6 */	mflr r0
/* 80447D10 004112D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447D14 004112D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80447D18 004112D8  7C 7F 1B 78 */	mr r31, r3
/* 80447D1C 004112DC  4B F1 78 B5 */	bl SCCheckStatus
/* 80447D20 004112E0  2C 03 00 00 */	cmpwi r3, 0
/* 80447D24 004112E4  40 82 00 44 */	bne .L_80447D68
/* 80447D28 004112E8  48 00 61 B9 */	bl func_8044DEE0
/* 80447D2C 004112EC  2C 03 00 00 */	cmpwi r3, 0
/* 80447D30 004112F0  41 82 00 38 */	beq .L_80447D68
/* 80447D34 004112F4  4B F1 91 8D */	bl SCGetAspectRatio
/* 80447D38 004112F8  98 7F 01 C8 */	stb r3, 0x1c8(r31)
/* 80447D3C 004112FC  4B F1 92 65 */	bl SCGetEuRgb60Mode
/* 80447D40 00411300  98 7F 01 C9 */	stb r3, 0x1c9(r31)
/* 80447D44 00411304  4B F1 92 CD */	bl SCGetLanguage
/* 80447D48 00411308  98 7F 01 CA */	stb r3, 0x1ca(r31)
/* 80447D4C 0041130C  4B F1 93 35 */	bl SCGetProgressiveMode
/* 80447D50 00411310  98 7F 01 CB */	stb r3, 0x1cb(r31)
/* 80447D54 00411314  4B F1 93 ED */	bl SCGetSoundMode
/* 80447D58 00411318  98 7F 01 CC */	stb r3, 0x1cc(r31)
/* 80447D5C 0041131C  7F E3 FB 78 */	mr r3, r31
/* 80447D60 00411320  4B FF 0C 99 */	bl WorkThreadEvent4__11CWorkThreadFv
/* 80447D64 00411324  48 00 00 08 */	b .L_80447D6C
.L_80447D68:
/* 80447D68 00411328  38 60 00 00 */	li r3, 0
.L_80447D6C:
/* 80447D6C 0041132C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80447D70 00411330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80447D74 00411334  7C 08 03 A6 */	mtlr r0
/* 80447D78 00411338  38 21 00 10 */	addi r1, r1, 0x10
/* 80447D7C 0041133C  4E 80 00 20 */	blr 
.endfn CDeviceSC_WorkThreadEvent4

.fn CDeviceSC_WorkThreadEvent5, global
/* 80447D80 00411340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447D84 00411344  7C 08 02 A6 */	mflr r0
/* 80447D88 00411348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447D8C 0041134C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80447D90 00411350  7C 7F 1B 78 */	mr r31, r3
/* 80447D94 00411354  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80447D98 00411358  80 04 00 00 */	lwz r0, 0(r4)
/* 80447D9C 0041135C  7C 00 20 40 */	cmplw r0, r4
/* 80447DA0 00411360  40 82 00 1C */	bne .L_80447DBC
/* 80447DA4 00411364  48 00 05 05 */	bl func_804482A8
/* 80447DA8 00411368  2C 03 00 00 */	cmpwi r3, 0
/* 80447DAC 0041136C  40 82 00 10 */	bne .L_80447DBC
/* 80447DB0 00411370  7F E3 FB 78 */	mr r3, r31
/* 80447DB4 00411374  4B FF 0C 71 */	bl WorkThreadEvent5__11CWorkThreadFv
/* 80447DB8 00411378  48 00 00 08 */	b .L_80447DC0
.L_80447DBC:
/* 80447DBC 0041137C  38 60 00 00 */	li r3, 0
.L_80447DC0:
/* 80447DC0 00411380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80447DC4 00411384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80447DC8 00411388  7C 08 03 A6 */	mtlr r0
/* 80447DCC 0041138C  38 21 00 10 */	addi r1, r1, 0x10
/* 80447DD0 00411390  4E 80 00 20 */	blr 
.endfn CDeviceSC_WorkThreadEvent5

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceSC_typestr, global
	.asciz "CDeviceSC"
	.balign 4
	.4byte 0
.endobj CDeviceSC_typestr


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__9CDeviceSC, global
	.4byte __RTTI__9CDeviceSC
	.4byte 0
	.4byte __dt__9CDeviceSCFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFP10CEventFile
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFPv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
	.4byte wkUpdate__11CWorkThreadFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte CDeviceSC_WorkThreadEvent4
	.4byte CDeviceSC_WorkThreadEvent5
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__9CDeviceSC

.obj CDeviceSC_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte __RTTI__11CDeviceBase
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CDeviceSC_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__9CDeviceSC, global
	.4byte CDeviceSC_typestr
	.4byte CDeviceSC_hierarchy
.endobj __RTTI__9CDeviceSC

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667F20, global
	.skip 0x8
.endobj lbl_80667F20

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001CA3C", local
.hidden "@etb_8001CA3C"
	.4byte 0x08080000
	.4byte 0x00000054
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__11CDeviceBaseFv
.endobj "@etb_8001CA3C"

.obj "@etb_8001CA58", local
.hidden "@etb_8001CA58"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CA58"

.obj "@etb_8001CA60", local
.hidden "@etb_8001CA60"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CA60"

.obj "@etb_8001CA68", local
.hidden "@etb_8001CA68"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CA68"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034670", local
.hidden "@eti_80034670"
	.4byte __ct__CDeviceSC
	.4byte 0x0000006C
	.4byte "@etb_8001CA3C"
.endobj "@eti_80034670"

.obj "@eti_8003467C", local
.hidden "@eti_8003467C"
	.4byte __dt__9CDeviceSCFv
	.4byte 0x00000064
	.4byte "@etb_8001CA58"
.endobj "@eti_8003467C"

.obj "@eti_80034688", local
.hidden "@eti_80034688"
	.4byte CDeviceSC_WorkThreadEvent4
	.4byte 0x00000078
	.4byte "@etb_8001CA60"
.endobj "@eti_80034688"

.obj "@eti_80034694", local
.hidden "@eti_80034694"
	.4byte CDeviceSC_WorkThreadEvent5
	.4byte 0x00000054
	.4byte "@etb_8001CA68"
.endobj "@eti_80034694"
