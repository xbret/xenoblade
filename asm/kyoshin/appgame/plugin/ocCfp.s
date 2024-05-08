.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80045560, local
/* 80045560 0000EB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80045564 0000EB24  7C 08 02 A6 */	mflr r0
/* 80045568 0000EB28  38 80 00 09 */	li r4, 9
/* 8004556C 0000EB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80045570 0000EB30  38 00 00 00 */	li r0, 0
/* 80045574 0000EB34  98 81 00 08 */	stb r4, 8(r1)
/* 80045578 0000EB38  38 81 00 08 */	addi r4, r1, 8
/* 8004557C 0000EB3C  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 80045580 0000EB40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80045584 0000EB44  48 45 BA 19 */	bl vmRetValSet
/* 80045588 0000EB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004558C 0000EB4C  38 60 00 01 */	li r3, 1
/* 80045590 0000EB50  7C 08 03 A6 */	mtlr r0
/* 80045594 0000EB54  38 21 00 10 */	addi r1, r1, 0x10
/* 80045598 0000EB58  4E 80 00 20 */	blr 
.endfn func_80045560

.fn func_8004559C, local
/* 8004559C 0000EB5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800455A0 0000EB60  7C 08 02 A6 */	mflr r0
/* 800455A4 0000EB64  90 01 00 24 */	stw r0, 0x24(r1)
/* 800455A8 0000EB68  38 00 00 03 */	li r0, 3
/* 800455AC 0000EB6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800455B0 0000EB70  7C 7F 1B 78 */	mr r31, r3
/* 800455B4 0000EB74  98 01 00 08 */	stb r0, 8(r1)
/* 800455B8 0000EB78  48 04 17 E9 */	bl func_80086DA0
/* 800455BC 0000EB7C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 800455C0 0000EB80  90 01 00 0C */	stw r0, 0xc(r1)
/* 800455C4 0000EB84  7F E3 FB 78 */	mr r3, r31
/* 800455C8 0000EB88  38 81 00 08 */	addi r4, r1, 8
/* 800455CC 0000EB8C  48 45 B9 D1 */	bl vmRetValSet
/* 800455D0 0000EB90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800455D4 0000EB94  38 60 00 01 */	li r3, 1
/* 800455D8 0000EB98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800455DC 0000EB9C  7C 08 03 A6 */	mtlr r0
/* 800455E0 0000EBA0  38 21 00 20 */	addi r1, r1, 0x20
/* 800455E4 0000EBA4  4E 80 00 20 */	blr 
.endfn func_8004559C

.fn func_800455E8, local
/* 800455E8 0000EBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800455EC 0000EBAC  7C 08 02 A6 */	mflr r0
/* 800455F0 0000EBB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800455F4 0000EBB4  38 00 00 03 */	li r0, 3
/* 800455F8 0000EBB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800455FC 0000EBBC  7C 7F 1B 78 */	mr r31, r3
/* 80045600 0000EBC0  98 01 00 08 */	stb r0, 8(r1)
/* 80045604 0000EBC4  48 04 17 A1 */	bl func_80086DA4
/* 80045608 0000EBC8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8004560C 0000EBCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80045610 0000EBD0  7F E3 FB 78 */	mr r3, r31
/* 80045614 0000EBD4  38 81 00 08 */	addi r4, r1, 8
/* 80045618 0000EBD8  48 45 B9 85 */	bl vmRetValSet
/* 8004561C 0000EBDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80045620 0000EBE0  38 60 00 01 */	li r3, 1
/* 80045624 0000EBE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80045628 0000EBE8  7C 08 03 A6 */	mtlr r0
/* 8004562C 0000EBEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80045630 0000EBF0  4E 80 00 20 */	blr 
.endfn func_800455E8

.fn func_80045634, local
/* 80045634 0000EBF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80045638 0000EBF8  7C 08 02 A6 */	mflr r0
/* 8004563C 0000EBFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80045640 0000EC00  38 00 00 03 */	li r0, 3
/* 80045644 0000EC04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80045648 0000EC08  7C 7F 1B 78 */	mr r31, r3
/* 8004564C 0000EC0C  98 01 00 08 */	stb r0, 8(r1)
/* 80045650 0000EC10  48 04 17 51 */	bl func_80086DA0
/* 80045654 0000EC14  3C 80 55 55 */	lis r4, 0x55555556@ha
/* 80045658 0000EC18  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8004565C 0000EC1C  38 84 55 56 */	addi r4, r4, 0x55555556@l
/* 80045660 0000EC20  7F E3 FB 78 */	mr r3, r31
/* 80045664 0000EC24  7C A4 00 96 */	mulhw r5, r4, r0
/* 80045668 0000EC28  38 81 00 08 */	addi r4, r1, 8
/* 8004566C 0000EC2C  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 80045670 0000EC30  7C 05 02 14 */	add r0, r5, r0
/* 80045674 0000EC34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80045678 0000EC38  48 45 B9 25 */	bl vmRetValSet
/* 8004567C 0000EC3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80045680 0000EC40  38 60 00 01 */	li r3, 1
/* 80045684 0000EC44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80045688 0000EC48  7C 08 03 A6 */	mtlr r0
/* 8004568C 0000EC4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80045690 0000EC50  4E 80 00 20 */	blr 
.endfn func_80045634

.fn func_80045694, local
/* 80045694 0000EC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80045698 0000EC58  7C 08 02 A6 */	mflr r0
/* 8004569C 0000EC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800456A0 0000EC60  48 45 BB 55 */	bl vmOCPropertyGet
/* 800456A4 0000EC64  80 03 00 04 */	lwz r0, 4(r3)
/* 800456A8 0000EC68  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 800456AC 0000EC6C  48 04 16 E5 */	bl func_80086D90
/* 800456B0 0000EC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800456B4 0000EC74  38 60 00 00 */	li r3, 0
/* 800456B8 0000EC78  7C 08 03 A6 */	mtlr r0
/* 800456BC 0000EC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800456C0 0000EC80  4E 80 00 20 */	blr 
.endfn func_80045694

.fn func_800456C4, local
/* 800456C4 0000EC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800456C8 0000EC88  7C 08 02 A6 */	mflr r0
/* 800456CC 0000EC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800456D0 0000EC90  48 45 BB 25 */	bl vmOCPropertyGet
/* 800456D4 0000EC94  80 03 00 04 */	lwz r0, 4(r3)
/* 800456D8 0000EC98  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 800456DC 0000EC9C  48 04 16 B9 */	bl func_80086D94
/* 800456E0 0000ECA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800456E4 0000ECA4  38 60 00 00 */	li r3, 0
/* 800456E8 0000ECA8  7C 08 03 A6 */	mtlr r0
/* 800456EC 0000ECAC  38 21 00 10 */	addi r1, r1, 0x10
/* 800456F0 0000ECB0  4E 80 00 20 */	blr 
.endfn func_800456C4

#SB script plugin functions

.fn getTimeIdxMin, local
/* 800456F4 0000ECB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800456F8 0000ECB8  7C 08 02 A6 */	mflr r0
/* 800456FC 0000ECBC  38 80 00 01 */	li r4, 1
/* 80045700 0000ECC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80045704 0000ECC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80045708 0000ECC8  7C 7F 1B 78 */	mr r31, r3
/* 8004570C 0000ECCC  48 45 B5 6D */	bl vmArgPtrGet
/* 80045710 0000ECD0  7C 64 1B 78 */	mr r4, r3
/* 80045714 0000ECD4  38 60 00 02 */	li r3, 2
/* 80045718 0000ECD8  48 45 B6 B5 */	bl vmArgIntGet
/* 8004571C 0000ECDC  2C 03 00 07 */	cmpwi r3, 7
/* 80045720 0000ECE0  40 81 00 24 */	ble .L_80045744
/* 80045724 0000ECE4  38 60 00 03 */	li r3, 3
/* 80045728 0000ECE8  38 00 00 00 */	li r0, 0
/* 8004572C 0000ECEC  98 61 00 08 */	stb r3, 8(r1)
/* 80045730 0000ECF0  7F E3 FB 78 */	mr r3, r31
/* 80045734 0000ECF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80045738 0000ECF8  48 45 BA 7D */	bl func_804A11B4
/* 8004573C 0000ECFC  38 60 00 00 */	li r3, 0
/* 80045740 0000ED00  48 00 00 28 */	b .L_80045768
.L_80045744:
/* 80045744 0000ED04  54 60 10 3A */	slwi r0, r3, 2
/* 80045748 0000ED08  38 80 00 03 */	li r4, 3
/* 8004574C 0000ED0C  7C 03 00 50 */	subf r0, r3, r0
/* 80045750 0000ED10  98 81 00 08 */	stb r4, 8(r1)
/* 80045754 0000ED14  7F E3 FB 78 */	mr r3, r31
/* 80045758 0000ED18  38 81 00 08 */	addi r4, r1, 8
/* 8004575C 0000ED1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80045760 0000ED20  48 45 B8 3D */	bl vmRetValSet
/* 80045764 0000ED24  38 60 00 01 */	li r3, 1
.L_80045768:
/* 80045768 0000ED28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004576C 0000ED2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80045770 0000ED30  7C 08 03 A6 */	mtlr r0
/* 80045774 0000ED34  38 21 00 20 */	addi r1, r1, 0x20
/* 80045778 0000ED38  4E 80 00 20 */	blr 
.endfn getTimeIdxMin

.fn getTimeIdxMax, local
/* 8004577C 0000ED3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80045780 0000ED40  7C 08 02 A6 */	mflr r0
/* 80045784 0000ED44  38 80 00 01 */	li r4, 1
/* 80045788 0000ED48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004578C 0000ED4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80045790 0000ED50  7C 7F 1B 78 */	mr r31, r3
/* 80045794 0000ED54  48 45 B4 E5 */	bl vmArgPtrGet
/* 80045798 0000ED58  7C 64 1B 78 */	mr r4, r3
/* 8004579C 0000ED5C  38 60 00 02 */	li r3, 2
/* 800457A0 0000ED60  48 45 B6 2D */	bl vmArgIntGet
/* 800457A4 0000ED64  2C 03 00 07 */	cmpwi r3, 7
/* 800457A8 0000ED68  40 81 00 24 */	ble .L_800457CC
/* 800457AC 0000ED6C  38 60 00 03 */	li r3, 3
/* 800457B0 0000ED70  38 00 00 00 */	li r0, 0
/* 800457B4 0000ED74  98 61 00 08 */	stb r3, 8(r1)
/* 800457B8 0000ED78  7F E3 FB 78 */	mr r3, r31
/* 800457BC 0000ED7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800457C0 0000ED80  48 45 B9 F5 */	bl func_804A11B4
/* 800457C4 0000ED84  38 60 00 00 */	li r3, 0
/* 800457C8 0000ED88  48 00 00 2C */	b .L_800457F4
.L_800457CC:
/* 800457CC 0000ED8C  38 83 00 01 */	addi r4, r3, 1
/* 800457D0 0000ED90  38 00 00 03 */	li r0, 3
/* 800457D4 0000ED94  54 83 10 3A */	slwi r3, r4, 2
/* 800457D8 0000ED98  98 01 00 08 */	stb r0, 8(r1)
/* 800457DC 0000ED9C  7C 04 18 50 */	subf r0, r4, r3
/* 800457E0 0000EDA0  38 81 00 08 */	addi r4, r1, 8
/* 800457E4 0000EDA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800457E8 0000EDA8  7F E3 FB 78 */	mr r3, r31
/* 800457EC 0000EDAC  48 45 B7 B1 */	bl vmRetValSet
/* 800457F0 0000EDB0  38 60 00 01 */	li r3, 1
.L_800457F4:
/* 800457F4 0000EDB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800457F8 0000EDB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800457FC 0000EDBC  7C 08 03 A6 */	mtlr r0
/* 80045800 0000EDC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80045804 0000EDC4  4E 80 00 20 */	blr 
.endfn getTimeIdxMax

.fn ocCfpRegist, global
/* 80045808 0000EDC8  3C 60 80 53 */	lis r3, lbl_805295B0@ha
/* 8004580C 0000EDCC  38 63 95 B0 */	addi r3, r3, lbl_805295B0@l
/* 80045810 0000EDD0  48 45 B8 6C */	b vmOCRegist
.endfn ocCfpRegist

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804F6260, global
	.asciz "getTimeIdxMin"
	.balign 4
.endobj lbl_804F6260

.obj lbl_804F6270, global
	.asciz "getTimeIdxMax"
	.balign 4
.endobj lbl_804F6270


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj lbl_80529548, global
	.4byte lbl_80668630
	.4byte func_8004559C
	.4byte func_80045694
	.4byte 0
	.4byte lbl_80668638
	.4byte func_800455E8
	.4byte func_800456C4
	.4byte 0
	.4byte lbl_80668640
	.4byte func_80045634
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_80529548

.obj lbl_80529588, global
	.4byte lbl_804F6260
	.4byte getTimeIdxMin
	.4byte 0
	.4byte lbl_804F6270
	.4byte getTimeIdxMax
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_80529588


.obj lbl_805295B0, global
	.4byte lbl_80668648
	.4byte func_80045560
	.4byte lbl_80529548
	.4byte lbl_80529588
.endobj lbl_805295B0


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8


.obj lbl_80668630, global
	.asciz "hour"
	.balign 4
.endobj lbl_80668630

.obj lbl_80668638, global
	.asciz "min"
	.4byte 0
.endobj lbl_80668638

.obj lbl_80668640, global
	.asciz "timeIdx"
.endobj lbl_80668640

.obj lbl_80668648, global
	.asciz "cfp"
	.4byte 0
.endobj lbl_80668648



.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80006F98", local
.hidden "@etb_80006F98"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006F98"

.obj "@etb_80006FA0", local
.hidden "@etb_80006FA0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006FA0"

.obj "@etb_80006FA8", local
.hidden "@etb_80006FA8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006FA8"

.obj "@etb_80006FB0", local
.hidden "@etb_80006FB0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006FB0"

.obj "@etb_80006FB8", local
.hidden "@etb_80006FB8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006FB8"

.obj "@etb_80006FC0", local
.hidden "@etb_80006FC0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006FC0"

.obj "@etb_80006FC8", local
.hidden "@etb_80006FC8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006FC8"

.obj "@etb_80006FD0", local
.hidden "@etb_80006FD0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006FD0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80021BD8", local
.hidden "@eti_80021BD8"
	.4byte func_80045560
	.4byte 0x0000003C
	.4byte "@etb_80006F98"
.endobj "@eti_80021BD8"

.obj "@eti_80021BE4", local
.hidden "@eti_80021BE4"
	.4byte func_8004559C
	.4byte 0x0000004C
	.4byte "@etb_80006FA0"
.endobj "@eti_80021BE4"

.obj "@eti_80021BF0", local
.hidden "@eti_80021BF0"
	.4byte func_800455E8
	.4byte 0x0000004C
	.4byte "@etb_80006FA8"
.endobj "@eti_80021BF0"

.obj "@eti_80021BFC", local
.hidden "@eti_80021BFC"
	.4byte func_80045634
	.4byte 0x00000060
	.4byte "@etb_80006FB0"
.endobj "@eti_80021BFC"

.obj "@eti_80021C08", local
.hidden "@eti_80021C08"
	.4byte func_80045694
	.4byte 0x00000030
	.4byte "@etb_80006FB8"
.endobj "@eti_80021C08"

.obj "@eti_80021C14", local
.hidden "@eti_80021C14"
	.4byte func_800456C4
	.4byte 0x00000030
	.4byte "@etb_80006FC0"
.endobj "@eti_80021C14"

.obj "@eti_80021C20", local
.hidden "@eti_80021C20"
	.4byte getTimeIdxMin
	.4byte 0x00000088
	.4byte "@etb_80006FC8"
.endobj "@eti_80021C20"

.obj "@eti_80021C2C", local
.hidden "@eti_80021C2C"
	.4byte getTimeIdxMax
	.4byte 0x0000008C
	.4byte "@etb_80006FD0"
.endobj "@eti_80021C2C"
