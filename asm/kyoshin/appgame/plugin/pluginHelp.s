.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802AEBC4, local
/* 802AEBC4 00278184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AEBC8 00278188  7C 08 02 A6 */	mflr r0
/* 802AEBCC 0027818C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AEBD0 00278190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AEBD4 00278194  7C 7F 1B 78 */	mr r31, r3
/* 802AEBD8 00278198  38 60 33 40 */	li r3, 0x3340
/* 802AEBDC 0027819C  4B DE E3 B1 */	bl func_8009CF8C
/* 802AEBE0 002781A0  2C 03 00 00 */	cmpwi r3, 0
/* 802AEBE4 002781A4  40 82 00 20 */	bne .L_802AEC04
/* 802AEBE8 002781A8  38 60 00 01 */	li r3, 1
/* 802AEBEC 002781AC  38 80 00 00 */	li r4, 0
/* 802AEBF0 002781B0  38 A0 00 00 */	li r5, 0
/* 802AEBF4 002781B4  4B E8 61 25 */	bl func_80134D18
/* 802AEBF8 002781B8  38 60 33 40 */	li r3, 0x3340
/* 802AEBFC 002781BC  38 80 00 01 */	li r4, 1
/* 802AEC00 002781C0  4B DE E4 19 */	bl func_8009D018
.L_802AEC04:
/* 802AEC04 002781C4  4B FE BA 55 */	bl func_8029A658
/* 802AEC08 002781C8  2C 03 00 00 */	cmpwi r3, 0
/* 802AEC0C 002781CC  41 82 00 0C */	beq .L_802AEC18
/* 802AEC10 002781D0  7F E3 FB 78 */	mr r3, r31
/* 802AEC14 002781D4  48 1F 23 C5 */	bl vmWaitModeSet
.L_802AEC18:
/* 802AEC18 002781D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AEC1C 002781DC  38 60 00 00 */	li r3, 0
/* 802AEC20 002781E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AEC24 002781E4  7C 08 03 A6 */	mtlr r0
/* 802AEC28 002781E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AEC2C 002781EC  4E 80 00 20 */	blr 
.endfn func_802AEBC4

.fn func_802AEC30, local
/* 802AEC30 002781F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AEC34 002781F4  7C 08 02 A6 */	mflr r0
/* 802AEC38 002781F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AEC3C 002781FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AEC40 00278200  7C 7F 1B 78 */	mr r31, r3
/* 802AEC44 00278204  38 60 33 7D */	li r3, 0x337d
/* 802AEC48 00278208  4B DE E3 45 */	bl func_8009CF8C
/* 802AEC4C 0027820C  2C 03 00 00 */	cmpwi r3, 0
/* 802AEC50 00278210  40 82 00 20 */	bne .L_802AEC70
/* 802AEC54 00278214  38 60 00 3E */	li r3, 0x3e
/* 802AEC58 00278218  38 80 00 00 */	li r4, 0
/* 802AEC5C 0027821C  38 A0 00 00 */	li r5, 0
/* 802AEC60 00278220  4B E8 60 B9 */	bl func_80134D18
/* 802AEC64 00278224  38 60 33 7D */	li r3, 0x337d
/* 802AEC68 00278228  38 80 00 01 */	li r4, 1
/* 802AEC6C 0027822C  4B DE E3 AD */	bl func_8009D018
.L_802AEC70:
/* 802AEC70 00278230  4B FE B9 E9 */	bl func_8029A658
/* 802AEC74 00278234  2C 03 00 00 */	cmpwi r3, 0
/* 802AEC78 00278238  41 82 00 0C */	beq .L_802AEC84
/* 802AEC7C 0027823C  7F E3 FB 78 */	mr r3, r31
/* 802AEC80 00278240  48 1F 23 59 */	bl vmWaitModeSet
.L_802AEC84:
/* 802AEC84 00278244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AEC88 00278248  38 60 00 00 */	li r3, 0
/* 802AEC8C 0027824C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AEC90 00278250  7C 08 03 A6 */	mtlr r0
/* 802AEC94 00278254  38 21 00 10 */	addi r1, r1, 0x10
/* 802AEC98 00278258  4E 80 00 20 */	blr 
.endfn func_802AEC30

.fn func_802AEC9C, local
/* 802AEC9C 0027825C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AECA0 00278260  7C 08 02 A6 */	mflr r0
/* 802AECA4 00278264  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AECA8 00278268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AECAC 0027826C  7C 7F 1B 78 */	mr r31, r3
/* 802AECB0 00278270  4B FE B9 A9 */	bl func_8029A658
/* 802AECB4 00278274  2C 03 00 00 */	cmpwi r3, 0
/* 802AECB8 00278278  41 82 00 14 */	beq .L_802AECCC
/* 802AECBC 0027827C  7F E3 FB 78 */	mr r3, r31
/* 802AECC0 00278280  48 1F 23 19 */	bl vmWaitModeSet
/* 802AECC4 00278284  38 60 00 00 */	li r3, 0
/* 802AECC8 00278288  48 00 00 1C */	b .L_802AECE4
.L_802AECCC:
/* 802AECCC 0027828C  38 60 FF FF */	li r3, -1
/* 802AECD0 00278290  38 80 00 01 */	li r4, 1
/* 802AECD4 00278294  4B DD 80 ED */	bl func_80086DC0
/* 802AECD8 00278298  38 60 00 00 */	li r3, 0
/* 802AECDC 0027829C  4B E8 FC 05 */	bl func_8013E8E0
/* 802AECE0 002782A0  38 60 00 00 */	li r3, 0
.L_802AECE4:
/* 802AECE4 002782A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AECE8 002782A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AECEC 002782AC  7C 08 03 A6 */	mtlr r0
/* 802AECF0 002782B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802AECF4 002782B4  4E 80 00 20 */	blr 
.endfn func_802AEC9C

.fn pluginHelpRegist, global
/* 802AECF8 002782B8  3C 60 80 51 */	lis r3, lbl_8050C8A4@ha
/* 802AECFC 002782BC  3C 80 80 54 */	lis r4, lbl_8053DBB0@ha
/* 802AED00 002782C0  38 63 C8 A4 */	addi r3, r3, lbl_8050C8A4@l
/* 802AED04 002782C4  38 84 DB B0 */	addi r4, r4, lbl_8053DBB0@l
/* 802AED08 002782C8  48 1F 1E 88 */	b vmPluginRegist
.endfn pluginHelpRegist

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8050C880, global
	.asciz "gameStart"
	.balign 4
.endobj lbl_8050C880

.obj lbl_8050C88C, global
	.asciz "itemVision"
	.balign 4
.endobj lbl_8050C88C

.obj lbl_8050C898, global
	.asciz "ptChange"
	.balign 4
.endobj lbl_8050C898


.obj lbl_8050C8A4, global
	.asciz "help"
	.balign 4
	.4byte 0
.endobj lbl_8050C8A4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053DBB0, global
	.4byte lbl_8050C880
	.4byte func_802AEBC4
	.4byte lbl_8050C88C
	.4byte func_802AEC30
	.4byte lbl_8050C898
	.4byte func_802AEC9C
	.4byte 0
	.4byte 0
.endobj lbl_8053DBB0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001B570", local
.hidden "@etb_8001B570"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B570"

.obj "@etb_8001B578", local
.hidden "@etb_8001B578"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B578"

.obj "@etb_8001B580", local
.hidden "@etb_8001B580"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B580"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8003320C", local
.hidden "@eti_8003320C"
	.4byte func_802AEBC4
	.4byte 0x0000006C
	.4byte "@etb_8001B570"
.endobj "@eti_8003320C"

.obj "@eti_80033218", local
.hidden "@eti_80033218"
	.4byte func_802AEC30
	.4byte 0x0000006C
	.4byte "@etb_8001B578"
.endobj "@eti_80033218"

.obj "@eti_80033224", local
.hidden "@eti_80033224"
	.4byte func_802AEC9C
	.4byte 0x0000005C
	.4byte "@etb_8001B580"
.endobj "@eti_80033224"
