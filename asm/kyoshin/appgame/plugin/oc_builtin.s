.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn isExistProperty, global
/* 8003A1AC 0000376C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A1B0 00003770  7C 08 02 A6 */	mflr r0
/* 8003A1B4 00003774  38 80 00 01 */	li r4, 1
/* 8003A1B8 00003778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A1BC 0000377C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A1C0 00003780  7C BF 2B 78 */	mr r31, r5
/* 8003A1C4 00003784  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A1C8 00003788  7C 7E 1B 78 */	mr r30, r3
/* 8003A1CC 0000378C  48 46 6A AD */	bl vmArgPtrGet
/* 8003A1D0 00003790  7C 64 1B 78 */	mr r4, r3
/* 8003A1D4 00003794  38 60 00 02 */	li r3, 2
/* 8003A1D8 00003798  48 46 6C 95 */	bl vmArgStringGet
/* 8003A1DC 0000379C  7C 64 1B 78 */	mr r4, r3
/* 8003A1E0 000037A0  7F E3 FB 78 */	mr r3, r31
/* 8003A1E4 000037A4  48 46 76 BD */	bl vmPropertySearch
/* 8003A1E8 000037A8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A1EC 000037AC  7F C3 F3 78 */	mr r3, r30
/* 8003A1F0 000037B0  68 00 00 01 */	xori r0, r0, 1
/* 8003A1F4 000037B4  38 81 00 08 */	addi r4, r1, 8
/* 8003A1F8 000037B8  7C 00 00 34 */	cntlzw r0, r0
/* 8003A1FC 000037BC  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A200 000037C0  38 05 00 01 */	addi r0, r5, 1
/* 8003A204 000037C4  98 01 00 08 */	stb r0, 8(r1)
/* 8003A208 000037C8  48 46 6D 95 */	bl vmRetValSet
/* 8003A20C 000037CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A210 000037D0  38 60 00 01 */	li r3, 1
/* 8003A214 000037D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A218 000037D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A21C 000037DC  7C 08 03 A6 */	mtlr r0
/* 8003A220 000037E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A224 000037E4  4E 80 00 20 */	blr
.endfn isExistProperty


.fn isExistSelector, global
/* 8003A228 000037E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A22C 000037EC  7C 08 02 A6 */	mflr r0
/* 8003A230 000037F0  38 80 00 01 */	li r4, 1
/* 8003A234 000037F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A238 000037F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A23C 000037FC  7C BF 2B 78 */	mr r31, r5
/* 8003A240 00003800  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A244 00003804  7C 7E 1B 78 */	mr r30, r3
/* 8003A248 00003808  48 46 6A 31 */	bl vmArgPtrGet
/* 8003A24C 0000380C  7C 64 1B 78 */	mr r4, r3
/* 8003A250 00003810  38 60 00 02 */	li r3, 2
/* 8003A254 00003814  48 46 6C 19 */	bl vmArgStringGet
/* 8003A258 00003818  7C 64 1B 78 */	mr r4, r3
/* 8003A25C 0000381C  7F E3 FB 78 */	mr r3, r31
/* 8003A260 00003820  48 46 76 DD */	bl vmSelectorSearch
/* 8003A264 00003824  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A268 00003828  7F C3 F3 78 */	mr r3, r30
/* 8003A26C 0000382C  68 00 00 01 */	xori r0, r0, 1
/* 8003A270 00003830  38 81 00 08 */	addi r4, r1, 8
/* 8003A274 00003834  7C 00 00 34 */	cntlzw r0, r0
/* 8003A278 00003838  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A27C 0000383C  38 05 00 01 */	addi r0, r5, 1
/* 8003A280 00003840  98 01 00 08 */	stb r0, 8(r1)
/* 8003A284 00003844  48 46 6D 19 */	bl vmRetValSet
/* 8003A288 00003848  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A28C 0000384C  38 60 00 01 */	li r3, 1
/* 8003A290 00003850  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A294 00003854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A298 00003858  7C 08 03 A6 */	mtlr r0
/* 8003A29C 0000385C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A2A0 00003860  4E 80 00 20 */	blr
.endfn isExistSelector


.fn getOCName, global
/* 8003A2A4 00003864  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A2A8 00003868  7C 08 02 A6 */	mflr r0
/* 8003A2AC 0000386C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A2B0 00003870  38 00 00 05 */	li r0, 5
/* 8003A2B4 00003874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A2B8 00003878  7C BF 2B 78 */	mr r31, r5
/* 8003A2BC 0000387C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A2C0 00003880  7C 7E 1B 78 */	mr r30, r3
/* 8003A2C4 00003884  98 01 00 08 */	stb r0, 8(r1)
/* 8003A2C8 00003888  80 65 00 00 */	lwz r3, 0(r5)
/* 8003A2CC 0000388C  48 27 F2 ED */	bl strlen
/* 8003A2D0 00003890  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8003A2D4 00003894  7F C3 F3 78 */	mr r3, r30
/* 8003A2D8 00003898  38 81 00 08 */	addi r4, r1, 8
/* 8003A2DC 0000389C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8003A2E0 000038A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A2E4 000038A4  48 46 6C B9 */	bl vmRetValSet
/* 8003A2E8 000038A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A2EC 000038AC  38 60 00 01 */	li r3, 1
/* 8003A2F0 000038B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A2F4 000038B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A2F8 000038B8  7C 08 03 A6 */	mtlr r0
/* 8003A2FC 000038BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A300 000038C0  4E 80 00 20 */	blr 
.endfn getOCName

.fn ocBuiltinRegist, global
/* 8003A304 000038C4  3C 60 80 53 */	lis r3, lbl_805284B8@ha
/* 8003A308 000038C8  38 63 84 B8 */	addi r3, r3, lbl_805284B8@l
/* 8003A30C 000038CC  48 46 6D 0C */	b vmBuiltinOCRegist
.endfn ocBuiltinRegist


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj lbl_804F5D20, global
	.asciz "isExistProperty"
.endobj lbl_804F5D20

.obj lbl_804F5D30, global
	.asciz "isExistSelector"
.endobj lbl_804F5D30

.obj lbl_804F5D40, global
	.asciz "getOCName"
	.balign 4
	.4byte 0
.endobj lbl_804F5D40

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj lbl_80528488, global
	.4byte lbl_804F5D20
	.4byte isExistProperty
	.4byte 0
	.4byte lbl_804F5D30
	.4byte isExistSelector
	.4byte 0
	.4byte lbl_804F5D40
	.4byte getOCName
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_80528488


.obj lbl_805284B8, global
	.4byte lbl_80668428
	.4byte 0
	.4byte 0
	.4byte lbl_80528488
.endobj lbl_805284B8


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_80668428, global
	.asciz "builtin"
.endobj lbl_80668428


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800067FC", local
.hidden "@etb_800067FC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800067FC"

.obj "@etb_80006804", local
.hidden "@etb_80006804"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006804"

.obj "@etb_8000680C", local
.hidden "@etb_8000680C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000680C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4


.obj "@eti_80021158", local
.hidden "@eti_80021158"
	.4byte isExistProperty
	.4byte 0x0000007C
	.4byte "@etb_800067FC"
.endobj "@eti_80021158"

.obj "@eti_80021164", local
.hidden "@eti_80021164"
	.4byte isExistSelector
	.4byte 0x0000007C
	.4byte "@etb_80006804"
.endobj "@eti_80021164"

.obj "@eti_80021170", local
.hidden "@eti_80021170"
	.4byte getOCName
	.4byte 0x00000060
	.4byte "@etb_8000680C"
.endobj "@eti_80021170"