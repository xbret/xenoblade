.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CChildListNode, global
/* 804466E0 0040FCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804466E4 0040FCA4  7C 08 02 A6 */	mflr r0
/* 804466E8 0040FCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804466EC 0040FCAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804466F0 0040FCB0  7C 7F 1B 78 */	mr r31, r3
/* 804466F4 0040FCB4  4B FF FE 85 */	bl __ct__15CDoubleListNodeFv
/* 804466F8 0040FCB8  3C 60 80 57 */	lis r3, __vt__CChildListNode@ha
/* 804466FC 0040FCBC  3C 80 80 57 */	lis r4, __vt__TChildListHeader_CChildListNode@ha
/* 80446700 0040FCC0  38 00 00 00 */	li r0, 0
/* 80446704 0040FCC4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80446708 0040FCC8  38 63 F4 18 */	addi r3, r3, __vt__CChildListNode@l
/* 8044670C 0040FCCC  38 84 F4 28 */	addi r4, r4, __vt__TChildListHeader_CChildListNode@l
/* 80446710 0040FCD0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80446714 0040FCD4  7F E3 FB 78 */	mr r3, r31
/* 80446718 0040FCD8  90 9F 00 34 */	stw r4, 0x34(r31)
/* 8044671C 0040FCDC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80446720 0040FCE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80446724 0040FCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446728 0040FCE8  7C 08 03 A6 */	mtlr r0
/* 8044672C 0040FCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80446730 0040FCF0  4E 80 00 20 */	blr 
.endfn __ct__CChildListNode

.fn CChildListNode_Reset, global
/* 80446734 0040FCF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446738 0040FCF8  7C 08 02 A6 */	mflr r0
/* 8044673C 0040FCFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446740 0040FD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80446744 0040FD04  7C 7F 1B 78 */	mr r31, r3
/* 80446748 0040FD08  4B FF FE 59 */	bl CDoubleListNode_Reset
/* 8044674C 0040FD0C  38 00 00 00 */	li r0, 0
/* 80446750 0040FD10  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80446754 0040FD14  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80446758 0040FD18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044675C 0040FD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446760 0040FD20  7C 08 03 A6 */	mtlr r0
/* 80446764 0040FD24  38 21 00 10 */	addi r1, r1, 0x10
/* 80446768 0040FD28  4E 80 00 20 */	blr
.endfn CChildListNode_Reset


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj TChildListHeader_CChildListNode_typestr, global
	.asciz "TChildListHeader<CChildListNode>"
	.balign 4
	.4byte 0
.endobj TChildListHeader_CChildListNode_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CChildListNode, global
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __dt__CChildListNode
	.4byte CChildListNode_Reset
.endobj __vt__CChildListNode


.obj __vt__TChildListHeader_CChildListNode, global
	.4byte __RTTI__TChildListHeader_CChildListNode
	.4byte 0
	.4byte __dt__TChildListHeader_CChildListNode
	.4byte 0
.endobj __vt__TChildListHeader_CChildListNode

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__TChildListHeader_CChildListNode, global
	.4byte TChildListHeader_CChildListNode_typestr
	.4byte 0
.endobj __RTTI__TChildListHeader_CChildListNode

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C9A4", local
.hidden "@etb_8001C9A4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C9A4"

.obj "@etb_8001C9AC", local
.hidden "@etb_8001C9AC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C9AC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8003458C", local
.hidden "@eti_8003458C"
	.4byte __ct__CChildListNode
	.4byte 0x00000054
	.4byte "@etb_8001C9A4"
.endobj "@eti_8003458C"

.obj "@eti_80034598", local
.hidden "@eti_80034598"
	.4byte CChildListNode_Reset
	.4byte 0x00000038
	.4byte "@etb_8001C9AC"
.endobj "@eti_80034598"
