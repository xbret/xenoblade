.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn sinit_8008A0C8, local
/* 8008A0C8 00053688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008A0CC 0005368C  7C 08 02 A6 */	mflr r0
/* 8008A0D0 00053690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008A0D4 00053694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008A0D8 00053698  3F E0 80 57 */	lis r31, lbl_80575008@ha
/* 8008A0DC 0005369C  38 7F 50 08 */	addi r3, r31, lbl_80575008@l
/* 8008A0E0 000536A0  48 42 84 99 */	bl func_804B2578
/* 8008A0E4 000536A4  3C 60 80 53 */	lis r3, __vt__cf_CtrlEneAiCall@ha
/* 8008A0E8 000536A8  38 63 AF E4 */	addi r3, r3, __vt__cf_CtrlEneAiCall@l
/* 8008A0EC 000536AC  90 7F 50 08 */	stw r3, lbl_80575008@l(r31)
/* 8008A0F0 000536B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008A0F4 000536B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008A0F8 000536B8  7C 08 03 A6 */	mtlr r0
/* 8008A0FC 000536BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8008A100 000536C0  4E 80 00 20 */	blr 
.endfn sinit_8008A0C8

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_8008A0C8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

#.balign 8

.obj cf_CtrlEneAiCall_typestr, global
	.asciz "cf::CtrlEneAiCall"
	.balign 4
.endobj cf_CtrlEneAiCall_typestr

.obj CColiProc_typestr, global
	.asciz "CColiProc"
	.balign 4
	.4byte 0
.endobj CColiProc_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

#.balign 8

.obj __vt__cf_CtrlEneAiCall, global
	.4byte __RTTI__cf_CtrlEneAiCall
	.4byte 0
	.4byte func_8008A0C4
.endobj __vt__cf_CtrlEneAiCall

.obj cf_CtrlEneAiCall_hierarchy, global
	.4byte __RTTI__CColiProc
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CtrlEneAiCall_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__cf_CtrlEneAiCall, global
	.4byte cf_CtrlEneAiCall_typestr
	.4byte cf_CtrlEneAiCall_hierarchy
.endobj __RTTI__cf_CtrlEneAiCall

.obj __RTTI__CColiProc, global
	.4byte CColiProc_typestr
	.4byte 0
.endobj __RTTI__CColiProc

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80008BB4", local
.hidden "@etb_80008BB4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80008BB4"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800241AC", local
.hidden "@eti_800241AC"
	.4byte sinit_8008A0C8
	.4byte 0x0000003C
	.4byte "@etb_80008BB4"
.endobj "@eti_800241AC"
