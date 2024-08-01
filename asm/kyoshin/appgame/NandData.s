.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn sinit_802AEA88, local
/* 802AEA88 00278048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AEA8C 0027804C  7C 08 02 A6 */	mflr r0
/* 802AEA90 00278050  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AEA94 00278054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AEA98 00278058  3F E0 80 58 */	lis r31, nandBanner@ha
/* 802AEA9C 0027805C  3B FF AA 58 */	addi r31, r31, nandBanner@l
/* 802AEAA0 00278060  7F E3 FB 78 */	mr r3, r31
/* 802AEAA4 00278064  48 24 66 B5 */	bl __ct__CNBanner
/* 802AEAA8 00278068  80 8D 95 78 */	lwz r4, nandTitleText@sda21(r13)
/* 802AEAAC 0027806C  7F E3 FB 78 */	mr r3, r31
/* 802AEAB0 00278070  48 24 68 49 */	bl func_804F52F8
/* 802AEAB4 00278074  80 8D 95 7C */	lwz r4, nandDescriptionText@sda21(r13)
/* 802AEAB8 00278078  7F E3 FB 78 */	mr r3, r31
/* 802AEABC 0027807C  48 24 68 49 */	bl func_804F5304
/* 802AEAC0 00278080  80 8D 95 80 */	lwz r4, nandBannerFilename@sda21(r13)
/* 802AEAC4 00278084  7F E3 FB 78 */	mr r3, r31
/* 802AEAC8 00278088  48 24 68 49 */	bl func_804F5310
/* 802AEACC 0027808C  3C 80 80 54 */	lis r4, nandIconTextureFilenames@ha
/* 802AEAD0 00278090  3C A0 80 54 */	lis r5, nandIconTextureSomething@ha
/* 802AEAD4 00278094  7F E3 FB 78 */	mr r3, r31
/* 802AEAD8 00278098  38 84 DB 68 */	addi r4, r4, nandIconTextureFilenames@l
/* 802AEADC 0027809C  38 A5 DB 8C */	addi r5, r5, nandIconTextureSomething@l
/* 802AEAE0 002780A0  48 24 68 3D */	bl func_804F531C
/* 802AEAE4 002780A4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802AEAE8 002780A8  3C 80 80 2B */	lis r4, __dt__802AEB1C@ha
/* 802AEAEC 002780AC  3C A0 80 58 */	lis r5, lbl_8057AA48@ha
/* 802AEAF0 002780B0  7F E3 FB 78 */	mr r3, r31
/* 802AEAF4 002780B4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 802AEAF8 002780B8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802AEAFC 002780BC  38 84 EB 1C */	addi r4, r4, __dt__802AEB1C@l
/* 802AEB00 002780C0  38 A5 AA 48 */	addi r5, r5, lbl_8057AA48@l
/* 802AEB04 002780C4  48 00 AB 99 */	bl __register_global_object
/* 802AEB08 002780C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AEB0C 002780CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AEB10 002780D0  7C 08 03 A6 */	mtlr r0
/* 802AEB14 002780D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802AEB18 002780D8  4E 80 00 20 */	blr
.endfn sinit_802AEA88

.fn __dt__802AEB1C, global
/* 802AEB1C 002780DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AEB20 002780E0  7C 08 02 A6 */	mflr r0
/* 802AEB24 002780E4  2C 03 00 00 */	cmpwi r3, 0
/* 802AEB28 002780E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AEB2C 002780EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AEB30 002780F0  7C 9F 23 78 */	mr r31, r4
/* 802AEB34 002780F4  93 C1 00 08 */	stw r30, 8(r1)
/* 802AEB38 002780F8  7C 7E 1B 78 */	mr r30, r3
/* 802AEB3C 002780FC  41 82 00 1C */	beq .L_802AEB58
/* 802AEB40 00278100  38 80 FF FF */	li r4, -1
/* 802AEB44 00278104  48 24 66 E1 */	bl __dt__8CNBannerFv
/* 802AEB48 00278108  2C 1F 00 00 */	cmpwi r31, 0
/* 802AEB4C 0027810C  40 81 00 0C */	ble .L_802AEB58
/* 802AEB50 00278110  7F C3 F3 78 */	mr r3, r30
/* 802AEB54 00278114  48 18 60 D9 */	bl __dl__FPv
.L_802AEB58:
/* 802AEB58 00278118  7F C3 F3 78 */	mr r3, r30
/* 802AEB5C 0027811C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AEB60 00278120  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AEB64 00278124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AEB68 00278128  7C 08 03 A6 */	mtlr r0
/* 802AEB6C 0027812C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AEB70 00278130  4E 80 00 20 */	blr
.endfn __dt__802AEB1C

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_802AEA88

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


#Xenoblade
#"ゼノブレイド"
.obj lbl_8050C370, global
	.4byte 0x835B836D
	.4byte 0x8375838C
	.4byte 0x83438368
	.byte 0
	.byte 0x00,0x00,0x00
.endobj lbl_8050C370

#The Bionis and Mechonis's Monados cut the future open
#"巨神と機神　モナドが未来を斬り開く"
.obj lbl_8050C380, global
	.4byte 0x8B90905F
	.4byte 0x82C68B40
	.4byte 0x905F8140
	.4byte 0x83828369
	.4byte 0x836882AA
	.4byte 0x96A29788
	.4byte 0x82F08E61
	.4byte 0x82E88A4A
	.2byte 0x82AD
	.byte 0x00
	.byte 0x00
.endobj lbl_8050C380

.obj lbl_8050C3A4, global
	.asciz "bannerTexture.tpl"
	.balign 4
.endobj lbl_8050C3A4

.obj lbl_8050C3B8, global
	.asciz "iconTexture[0].tpl"
	.balign 4
.endobj lbl_8050C3B8

.obj lbl_8050C3CC, global
	.asciz "iconTexture[1].tpl"
	.balign 4
.endobj lbl_8050C3CC

.obj lbl_8050C3E0, global
	.asciz "iconTexture[2].tpl"
	.balign 4
.endobj lbl_8050C3E0

.obj lbl_8050C3F4, global
	.asciz "iconTexture[3].tpl"
	.balign 4
.endobj lbl_8050C3F4

.obj lbl_8050C408, global
	.asciz "iconTexture[4].tpl"
	.balign 4
.endobj lbl_8050C408

.obj lbl_8050C41C, global
	.asciz "iconTexture[5].tpl"
	.balign 4
.endobj lbl_8050C41C

.obj lbl_8050C430, global
	.asciz "iconTexture[6].tpl"
	.balign 4
.endobj lbl_8050C430

.obj lbl_8050C444, global
	.asciz "iconTexture[7].tpl"
	.balign 4
.endobj lbl_8050C444


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj nandIconTextureFilenames, local
	.4byte lbl_8050C3B8
	.4byte lbl_8050C3CC
	.4byte lbl_8050C3E0
	.4byte lbl_8050C3F4
	.4byte lbl_8050C408
	.4byte lbl_8050C41C
	.4byte lbl_8050C430
	.4byte lbl_8050C444
	.4byte 0
.endobj nandIconTextureFilenames


.obj nandIconTextureSomething, local
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
.endobj nandIconTextureSomething



.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8


.obj nandTitleText, local
	.4byte lbl_8050C370
.endobj nandTitleText


.obj nandDescriptionText, local
	.4byte lbl_8050C380
.endobj nandDescriptionText


.obj nandBannerFilename, local
	.4byte lbl_8050C3A4
	.4byte 0
.endobj nandBannerFilename


.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj lbl_8057AA48, global
	.skip 0x10
.endobj lbl_8057AA48

.obj nandBanner, global
	.skip 0x328
.endobj nandBanner

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001B54C", local
.hidden "@etb_8001B54C"
	.4byte 0x08080000
	.4byte 0x0000002C
	.4byte 0x000C0010
	.4byte 0x00000000
	.4byte 0x8780001F
	.4byte 0x00000000
	.4byte __dt__8CNBannerFv
.endobj "@etb_8001B54C"

.obj "@etb_8001B568", local
.hidden "@etb_8001B568"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001B568"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800331F4", local
.hidden "@eti_800331F4"
	.4byte sinit_802AEA88
	.4byte 0x00000094
	.4byte "@etb_8001B54C"
.endobj "@eti_800331F4"

.obj "@eti_80033200", local
.hidden "@eti_80033200"
	.4byte __dt__802AEB1C
	.4byte 0x00000058
	.4byte "@etb_8001B568"
.endobj "@eti_80033200"

