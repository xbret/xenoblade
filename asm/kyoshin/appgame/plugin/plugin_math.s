.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn random, local
/* 8004AF8C 0001454C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004AF90 00014550  7C 08 02 A6 */	mflr r0
/* 8004AF94 00014554  38 80 00 01 */	li r4, 1
/* 8004AF98 00014558  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004AF9C 0001455C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004AFA0 00014560  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004AFA4 00014564  7C 7E 1B 78 */	mr r30, r3
/* 8004AFA8 00014568  48 45 5C D1 */	bl vmArgPtrGet
/* 8004AFAC 0001456C  7C 64 1B 78 */	mr r4, r3
/* 8004AFB0 00014570  38 60 00 02 */	li r3, 2
/* 8004AFB4 00014574  48 45 5E 19 */	bl vmArgIntGet
/* 8004AFB8 00014578  7C 7F 1B 78 */	mr r31, r3
/* 8004AFBC 0001457C  7F C3 F3 78 */	mr r3, r30
/* 8004AFC0 00014580  38 80 00 02 */	li r4, 2
/* 8004AFC4 00014584  48 45 5C B5 */	bl vmArgPtrGet
/* 8004AFC8 00014588  7C 64 1B 78 */	mr r4, r3
/* 8004AFCC 0001458C  38 60 00 03 */	li r3, 3
/* 8004AFD0 00014590  48 45 5D FD */	bl vmArgIntGet
/* 8004AFD4 00014594  7C 64 1B 78 */	mr r4, r3
/* 8004AFD8 00014598  7F E3 FB 78 */	mr r3, r31
/* 8004AFDC 0001459C  48 3E AF 6D */	bl mtRand__2mlFii
/* 8004AFE0 000145A0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004AFE4 000145A4  38 00 00 03 */	li r0, 3
/* 8004AFE8 000145A8  7F C3 F3 78 */	mr r3, r30
/* 8004AFEC 000145AC  38 81 00 08 */	addi r4, r1, 8
/* 8004AFF0 000145B0  98 01 00 08 */	stb r0, 8(r1)
/* 8004AFF4 000145B4  48 45 5F A9 */	bl vmRetValSet
/* 8004AFF8 000145B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004AFFC 000145BC  38 60 00 01 */	li r3, 1
/* 8004B000 000145C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004B004 000145C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004B008 000145C8  7C 08 03 A6 */	mtlr r0
/* 8004B00C 000145CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8004B010 000145D0  4E 80 00 20 */	blr 
.endfn random

.fn pluginMathRegist, global
/* 8004B014 000145D4  3C 60 80 4F */	lis r3, lbl_804F6890@ha
/* 8004B018 000145D8  3C 80 80 53 */	lis r4, lbl_805299E8@ha
/* 8004B01C 000145DC  38 63 68 90 */	addi r3, r3, lbl_804F6890@l
/* 8004B020 000145E0  38 84 99 E8 */	addi r4, r4, lbl_805299E8@l
/* 8004B024 000145E4  48 45 5B 6C */	b vmPluginRegist
.endfn pluginMathRegist

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804F6890, global
	.asciz "math"
	.balign 4
.endobj lbl_804F6890

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_805299E8, global
	.4byte lbl_80668720
	.4byte random
	.4byte 0
	.4byte 0
.endobj lbl_805299E8

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_80668720, global
	.asciz "random"
	.balign 4
.endobj lbl_80668720


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80007390", local
.hidden "@etb_80007390"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007390"


.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800221B4", local
.hidden "@eti_800221B4"
	.4byte random
	.4byte 0x00000088
	.4byte "@etb_80007390"
.endobj "@eti_800221B4"
