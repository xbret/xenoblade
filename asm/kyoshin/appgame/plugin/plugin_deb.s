.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn put, global
/* 8003A05C 0000361C  38 60 00 00 */	li r3, 0
/* 8003A060 00003620  4E 80 00 20 */	blr 
.endfn put

.fn performanceStart, global
/* 8003A064 00003624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A068 00003628  7C 08 02 A6 */	mflr r0
/* 8003A06C 0000362C  38 80 00 01 */	li r4, 1
/* 8003A070 00003630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A074 00003634  48 46 6C 05 */	bl vmArgPtrGet
/* 8003A078 00003638  7C 64 1B 78 */	mr r4, r3
/* 8003A07C 0000363C  38 60 00 02 */	li r3, 2
/* 8003A080 00003640  48 46 6D ED */	bl vmArgStringGet
/* 8003A084 00003644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A088 00003648  38 60 00 00 */	li r3, 0
/* 8003A08C 0000364C  7C 08 03 A6 */	mtlr r0
/* 8003A090 00003650  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A094 00003654  4E 80 00 20 */	blr 
.endfn performanceStart

.fn performanceEnd, global
/* 8003A098 00003658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A09C 0000365C  7C 08 02 A6 */	mflr r0
/* 8003A0A0 00003660  38 80 00 01 */	li r4, 1
/* 8003A0A4 00003664  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A0A8 00003668  48 46 6B D1 */	bl vmArgPtrGet
/* 8003A0AC 0000366C  7C 64 1B 78 */	mr r4, r3
/* 8003A0B0 00003670  38 60 00 02 */	li r3, 2
/* 8003A0B4 00003674  48 46 6D B9 */	bl vmArgStringGet
/* 8003A0B8 00003678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A0BC 0000367C  38 60 00 00 */	li r3, 0
/* 8003A0C0 00003680  7C 08 03 A6 */	mtlr r0
/* 8003A0C4 00003684  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A0C8 00003688  4E 80 00 20 */	blr 
.endfn performanceEnd

.fn pluginDebRegist, global
/* 8003A0CC 0000368C  3C 60 80 4F */	lis r3, lbl_804F5D14@ha
/* 8003A0D0 00003690  3C 80 80 53 */	lis r4, lbl_80528458@ha
/* 8003A0D4 00003694  38 63 5D 14 */	addi r3, r3, lbl_804F5D14@l
/* 8003A0D8 00003698  38 84 84 58 */	addi r4, r4, lbl_80528458@l
/* 8003A0DC 0000369C  48 46 6A B4 */	b vmPluginRegist
.endfn pluginDebRegist


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804F5CF0, global
	.asciz "performanceStart"
	.balign 4
.endobj lbl_804F5CF0

.obj lbl_804F5D04, global
	.asciz "performanceEnd"
	.balign 4
.endobj lbl_804F5D04


.obj lbl_804F5D14, global
	.asciz "deb"
.endobj lbl_804F5D14

.section .data, "wa"  # 0x805281E0 - 0x80573C60

#.balign 8

#padding?
.4byte 0
.4byte 0
.4byte 0
.4byte 0
.4byte 0

.obj lbl_80528458, global
	.4byte lbl_80668418
	.4byte put
	.4byte lbl_804F5CF0
	.4byte performanceStart
	.4byte lbl_804F5D04
	.4byte performanceEnd
	.4byte 0
	.4byte 0
.endobj lbl_80528458


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_80668418, global
	.asciz "put"
	.4byte 0
.endobj lbl_80668418


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800067E4", local
.hidden "@etb_800067E4"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067E4"

.obj "@etb_800067EC", local
.hidden "@etb_800067EC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067EC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80021134", local
.hidden "@eti_80021134"
	.4byte performanceStart
	.4byte 0x00000034
	.4byte "@etb_800067E4"
.endobj "@eti_80021134"

.obj "@eti_80021140", local
.hidden "@eti_80021140"
	.4byte performanceEnd
	.4byte 0x00000034
	.4byte "@etb_800067EC"
.endobj "@eti_80021140"