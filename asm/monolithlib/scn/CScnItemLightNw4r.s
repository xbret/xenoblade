.include "macros.inc"
.file "monolithlib/scn/CScnItemLightNw4r.o"

# 0x8001E2B8 - 0x8001E2C0
.section extab, "a"
.balign 4

.obj "@etb_8001E2B8", local
.hidden "@etb_8001E2B8"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001E2B8"

# 0x80036218 - 0x80036224
.section extabindex, "a"
.balign 4

.obj "@eti_80036218", local
.hidden "@eti_80036218"
	.4byte fn_80482440
	.4byte 0x000000E8
	.4byte "@etb_8001E2B8"
.endobj "@eti_80036218"

# 0x80482440 - 0x80482528
.text
.balign 4

.fn fn_80482440, global
/* 80482440 0044BA00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80482444 0044BA04  7C 08 02 A6 */	mflr r0
/* 80482448 0044BA08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048244C 0044BA0C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80482450 0044BA10  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80482454 0044BA14  7C BE 2B 78 */	mr r30, r5
/* 80482458 0044BA18  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8048245C 0044BA1C  7C 9D 23 78 */	mr r29, r4
/* 80482460 0044BA20  38 80 00 03 */	li r4, 0x3
/* 80482464 0044BA24  93 81 00 30 */	stw r28, 0x30(r1)
/* 80482468 0044BA28  7C 7C 1B 78 */	mr r28, r3
/* 8048246C 0044BA2C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80482470 0044BA30  48 00 A1 49 */	bl fn_8048C5B8
/* 80482474 0044BA34  2C 03 00 00 */	cmpwi r3, 0x0
/* 80482478 0044BA38  40 82 00 0C */	bne .L_80482484
/* 8048247C 0044BA3C  38 60 00 00 */	li r3, 0x0
/* 80482480 0044BA40  48 00 00 88 */	b .L_80482508
.L_80482484:
/* 80482484 0044BA44  38 00 00 00 */	li r0, 0x0
/* 80482488 0044BA48  3C 80 80 52 */	lis r4, lbl_805277F4@ha
/* 8048248C 0044BA4C  98 01 00 08 */	stb r0, 0x8(r1)
/* 80482490 0044BA50  7F A5 EB 78 */	mr r5, r29
/* 80482494 0044BA54  38 61 00 08 */	addi r3, r1, 0x8
/* 80482498 0044BA58  38 84 77 F4 */	addi r4, r4, lbl_805277F4@l
/* 8048249C 0044BA5C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804824A0 0044BA60  4C C6 31 82 */	crclr 4*cr1+eq
/* 804824A4 0044BA64  4B BC 1B 15 */	bl fn_80043FB8
/* 804824A8 0044BA68  7F 83 E3 78 */	mr r3, r28
/* 804824AC 0044BA6C  48 01 3B 6D */	bl fn_80496018
/* 804824B0 0044BA70  7C 64 1B 78 */	mr r4, r3
/* 804824B4 0044BA74  38 60 12 24 */	li r3, 0x1224
/* 804824B8 0044BA78  4B FB 25 A5 */	bl mm_malloc
/* 804824BC 0044BA7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 804824C0 0044BA80  7C 7F 1B 78 */	mr r31, r3
/* 804824C4 0044BA84  41 82 00 30 */	beq .L_804824F4
/* 804824C8 0044BA88  7F 84 E3 78 */	mr r4, r28
/* 804824CC 0044BA8C  7F A6 EB 78 */	mr r6, r29
/* 804824D0 0044BA90  7F C7 F3 78 */	mr r7, r30
/* 804824D4 0044BA94  38 A1 00 08 */	addi r5, r1, 0x8
/* 804824D8 0044BA98  4B FF FD C9 */	bl fn_804822A0
/* 804824DC 0044BA9C  3C 60 80 57 */	lis r3, __vt__CScnItemLightNw4r@ha
/* 804824E0 0044BAA0  38 63 15 80 */	addi r3, r3, __vt__CScnItemLightNw4r@l
/* 804824E4 0044BAA4  90 7F 00 00 */	stw r3, 0x0(r31)
/* 804824E8 0044BAA8  80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 804824EC 0044BAAC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804824F0 0044BAB0  90 1F 12 20 */	stw r0, 0x1220(r31)
.L_804824F4:
/* 804824F4 0044BAB4  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 804824F8 0044BAB8  7F E4 FB 78 */	mr r4, r31
/* 804824FC 0044BABC  38 A0 00 00 */	li r5, 0x0
/* 80482500 0044BAC0  48 00 A1 31 */	bl fn_8048C630
/* 80482504 0044BAC4  7F E3 FB 78 */	mr r3, r31
.L_80482508:
/* 80482508 0044BAC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048250C 0044BACC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80482510 0044BAD0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80482514 0044BAD4  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80482518 0044BAD8  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8048251C 0044BADC  7C 08 03 A6 */	mtlr r0
/* 80482520 0044BAE0  38 21 00 40 */	addi r1, r1, 0x40
/* 80482524 0044BAE4  4E 80 00 20 */	blr
.endfn fn_80482440

# 0x805277E0 - 0x80527800
.rodata
.balign 8

.obj CScnItemLightNw4r_typestr, global
	.4byte 0x4353636E
	.4byte 0x4974656D
	.4byte 0x4C696768
	.4byte 0x744E7734
	.4byte 0x72000000
.sym lbl_805277F4, global
	.4byte 0x476C6F62
	.4byte 0x616C2825
	.4byte 0x64290000

# 0x80571580 - 0x805715B8
.data
.balign 8

.obj __vt__CScnItemLightNw4r, global
	.4byte __RTTI__CScnItemLightNw4r
	.4byte 0x00000000
	.4byte fn_804823A8
	.4byte fn_80482388
	.4byte fn_80482048
	.4byte fn_80482400
	.4byte fn_804823A0
	.4byte fn_80482040

.obj CScnItemLightNw4r_hierarchy, global
	.4byte __RTTI__CScnItem
	.4byte 0x00000000
	.4byte __RTTI__CScnItemLight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x806661E8 - 0x806661F0
.section .sdata, "wa"
.balign 8

.obj __RTTI__CScnItemLightNw4r, global
	.4byte CScnItemLightNw4r_typestr
	.4byte CScnItemLightNw4r_hierarchy
