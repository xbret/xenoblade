.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFTRN_Init, global
/* 803CE3F0 003979B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE3F4 003979B4  7C 08 02 A6 */	mflr r0
/* 803CE3F8 003979B8  38 C0 00 00 */	li r6, 0
/* 803CE3FC 003979BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE400 003979C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CE404 003979C4  7C 9F 23 78 */	mr r31, r4
/* 803CE408 003979C8  93 C1 00 08 */	stw r30, 8(r1)
/* 803CE40C 003979CC  3B C0 00 00 */	li r30, 0
/* 803CE410 003979D0  80 A4 00 00 */	lwz r5, 0(r4)
/* 803CE414 003979D4  80 04 00 04 */	lwz r0, 4(r4)
/* 803CE418 003979D8  90 A3 00 00 */	stw r5, 0(r3)
/* 803CE41C 003979DC  90 03 00 04 */	stw r0, 4(r3)
/* 803CE420 003979E0  80 A4 00 08 */	lwz r5, 8(r4)
/* 803CE424 003979E4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803CE428 003979E8  90 A3 00 08 */	stw r5, 8(r3)
/* 803CE42C 003979EC  90 03 00 0C */	stw r0, 0xc(r3)
/* 803CE430 003979F0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 803CE434 003979F4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803CE438 003979F8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 803CE43C 003979FC  90 03 00 14 */	stw r0, 0x14(r3)
/* 803CE440 00397A00  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 803CE444 00397A04  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 803CE448 00397A08  90 A3 00 18 */	stw r5, 0x18(r3)
/* 803CE44C 00397A0C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 803CE450 00397A10  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 803CE454 00397A14  80 04 00 24 */	lwz r0, 0x24(r4)
/* 803CE458 00397A18  90 A3 00 20 */	stw r5, 0x20(r3)
/* 803CE45C 00397A1C  90 03 00 24 */	stw r0, 0x24(r3)
/* 803CE460 00397A20  80 A4 00 28 */	lwz r5, 0x28(r4)
/* 803CE464 00397A24  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 803CE468 00397A28  90 A3 00 28 */	stw r5, 0x28(r3)
/* 803CE46C 00397A2C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803CE470 00397A30  80 A4 00 30 */	lwz r5, 0x30(r4)
/* 803CE474 00397A34  80 04 00 34 */	lwz r0, 0x34(r4)
/* 803CE478 00397A38  90 A3 00 30 */	stw r5, 0x30(r3)
/* 803CE47C 00397A3C  90 03 00 34 */	stw r0, 0x34(r3)
/* 803CE480 00397A40  80 04 00 38 */	lwz r0, 0x38(r4)
/* 803CE484 00397A44  90 03 00 38 */	stw r0, 0x38(r3)
.L_803CE488:
/* 803CE488 00397A48  80 7F 00 00 */	lwz r3, 0(r31)
/* 803CE48C 00397A4C  2C 03 00 00 */	cmpwi r3, 0
/* 803CE490 00397A50  41 82 00 3C */	beq .L_803CE4CC
/* 803CE494 00397A54  81 83 00 00 */	lwz r12, 0(r3)
/* 803CE498 00397A58  38 60 00 00 */	li r3, 0
/* 803CE49C 00397A5C  38 80 00 00 */	li r4, 0
/* 803CE4A0 00397A60  38 A0 00 00 */	li r5, 0
/* 803CE4A4 00397A64  38 C0 00 00 */	li r6, 0
/* 803CE4A8 00397A68  7D 89 03 A6 */	mtctr r12
/* 803CE4AC 00397A6C  4E 80 04 21 */	bctrl 
/* 803CE4B0 00397A70  2C 03 00 00 */	cmpwi r3, 0
/* 803CE4B4 00397A74  7C 66 1B 78 */	mr r6, r3
/* 803CE4B8 00397A78  40 82 00 14 */	bne .L_803CE4CC
/* 803CE4BC 00397A7C  3B DE 00 01 */	addi r30, r30, 1
/* 803CE4C0 00397A80  3B FF 00 04 */	addi r31, r31, 4
/* 803CE4C4 00397A84  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803CE4C8 00397A88  41 80 FF C0 */	blt .L_803CE488
.L_803CE4CC:
/* 803CE4CC 00397A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CE4D0 00397A90  7C C3 33 78 */	mr r3, r6
/* 803CE4D4 00397A94  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CE4D8 00397A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE4DC 00397A9C  7C 08 03 A6 */	mtlr r0
/* 803CE4E0 00397AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE4E4 00397AA4  4E 80 00 20 */	blr 
.endfn SFTRN_Init

.fn SFTRN_InitHn, global
/* 803CE4E8 00397AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE4EC 00397AAC  7C 08 02 A6 */	mflr r0
/* 803CE4F0 00397AB0  38 C0 00 00 */	li r6, 0
/* 803CE4F4 00397AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE4F8 00397AB8  38 00 00 03 */	li r0, 3
/* 803CE4FC 00397ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CE500 00397AC0  7C 7F 1B 78 */	mr r31, r3
/* 803CE504 00397AC4  38 60 FF FF */	li r3, -1
/* 803CE508 00397AC8  81 05 00 00 */	lwz r8, 0(r5)
/* 803CE50C 00397ACC  38 A0 00 08 */	li r5, 8
/* 803CE510 00397AD0  7D 07 43 78 */	mr r7, r8
/* 803CE514 00397AD4  7C 09 03 A6 */	mtctr r0
.L_803CE518:
/* 803CE518 00397AD8  90 C4 00 08 */	stw r6, 8(r4)
/* 803CE51C 00397ADC  80 07 00 00 */	lwz r0, 0(r7)
/* 803CE520 00397AE0  90 C4 00 04 */	stw r6, 4(r4)
/* 803CE524 00397AE4  90 C4 00 00 */	stw r6, 0(r4)
/* 803CE528 00397AE8  90 04 00 0C */	stw r0, 0xc(r4)
/* 803CE52C 00397AEC  90 A4 00 10 */	stw r5, 0x10(r4)
/* 803CE530 00397AF0  90 A4 00 14 */	stw r5, 0x14(r4)
/* 803CE534 00397AF4  90 A4 00 18 */	stw r5, 0x18(r4)
/* 803CE538 00397AF8  90 A4 00 1C */	stw r5, 0x1c(r4)
/* 803CE53C 00397AFC  90 64 00 20 */	stw r3, 0x20(r4)
/* 803CE540 00397B00  90 C4 00 4C */	stw r6, 0x4c(r4)
/* 803CE544 00397B04  80 07 00 04 */	lwz r0, 4(r7)
/* 803CE548 00397B08  90 C4 00 48 */	stw r6, 0x48(r4)
/* 803CE54C 00397B0C  90 C4 00 44 */	stw r6, 0x44(r4)
/* 803CE550 00397B10  90 04 00 50 */	stw r0, 0x50(r4)
/* 803CE554 00397B14  90 A4 00 54 */	stw r5, 0x54(r4)
/* 803CE558 00397B18  90 A4 00 58 */	stw r5, 0x58(r4)
/* 803CE55C 00397B1C  90 A4 00 5C */	stw r5, 0x5c(r4)
/* 803CE560 00397B20  90 A4 00 60 */	stw r5, 0x60(r4)
/* 803CE564 00397B24  90 64 00 64 */	stw r3, 0x64(r4)
/* 803CE568 00397B28  90 C4 00 90 */	stw r6, 0x90(r4)
/* 803CE56C 00397B2C  80 07 00 08 */	lwz r0, 8(r7)
/* 803CE570 00397B30  38 E7 00 0C */	addi r7, r7, 0xc
/* 803CE574 00397B34  90 C4 00 8C */	stw r6, 0x8c(r4)
/* 803CE578 00397B38  90 C4 00 88 */	stw r6, 0x88(r4)
/* 803CE57C 00397B3C  90 04 00 94 */	stw r0, 0x94(r4)
/* 803CE580 00397B40  90 A4 00 98 */	stw r5, 0x98(r4)
/* 803CE584 00397B44  90 A4 00 9C */	stw r5, 0x9c(r4)
/* 803CE588 00397B48  90 A4 00 A0 */	stw r5, 0xa0(r4)
/* 803CE58C 00397B4C  90 A4 00 A4 */	stw r5, 0xa4(r4)
/* 803CE590 00397B50  90 64 00 A8 */	stw r3, 0xa8(r4)
/* 803CE594 00397B54  38 84 00 CC */	addi r4, r4, 0xcc
/* 803CE598 00397B58  42 00 FF 80 */	bdnz .L_803CE518
/* 803CE59C 00397B5C  7F E3 FB 78 */	mr r3, r31
/* 803CE5A0 00397B60  7D 04 43 78 */	mr r4, r8
/* 803CE5A4 00397B64  48 00 00 39 */	bl sftrn_BuildAll
/* 803CE5A8 00397B68  2C 03 00 00 */	cmpwi r3, 0
/* 803CE5AC 00397B6C  41 82 00 18 */	beq .L_803CE5C4
/* 803CE5B0 00397B70  3C 80 FF 00 */	lis r4, 0xFF000302@ha
/* 803CE5B4 00397B74  7F E3 FB 78 */	mr r3, r31
/* 803CE5B8 00397B78  38 84 03 02 */	addi r4, r4, 0xFF000302@l
/* 803CE5BC 00397B7C  4B FF 26 99 */	bl SFLIB_SetErr
/* 803CE5C0 00397B80  48 00 00 08 */	b .L_803CE5C8
.L_803CE5C4:
/* 803CE5C4 00397B84  38 60 00 00 */	li r3, 0
.L_803CE5C8:
/* 803CE5C8 00397B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE5CC 00397B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CE5D0 00397B90  7C 08 03 A6 */	mtlr r0
/* 803CE5D4 00397B94  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE5D8 00397B98  4E 80 00 20 */	blr 
.endfn SFTRN_InitHn

.fn sftrn_BuildAll, global
/* 803CE5DC 00397B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE5E0 00397BA0  7C 08 02 A6 */	mflr r0
/* 803CE5E4 00397BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE5E8 00397BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CE5EC 00397BAC  7C 7F 1B 78 */	mr r31, r3
/* 803CE5F0 00397BB0  93 C1 00 08 */	stw r30, 8(r1)
/* 803CE5F4 00397BB4  80 04 00 04 */	lwz r0, 4(r4)
/* 803CE5F8 00397BB8  2C 00 00 00 */	cmpwi r0, 0
/* 803CE5FC 00397BBC  41 82 00 18 */	beq .L_803CE614
/* 803CE600 00397BC0  38 00 00 00 */	li r0, 0
/* 803CE604 00397BC4  90 03 1F E4 */	stw r0, 0x1fe4(r3)
/* 803CE608 00397BC8  90 03 13 FC */	stw r0, 0x13fc(r3)
/* 803CE60C 00397BCC  48 00 01 9D */	bl sftrn_BuildSystem
/* 803CE610 00397BD0  48 00 01 7C */	b .L_803CE78C
.L_803CE614:
/* 803CE614 00397BD4  80 04 00 08 */	lwz r0, 8(r4)
/* 803CE618 00397BD8  2C 00 00 00 */	cmpwi r0, 0
/* 803CE61C 00397BDC  41 82 00 88 */	beq .L_803CE6A4
/* 803CE620 00397BE0  38 E0 00 01 */	li r7, 1
/* 803CE624 00397BE4  38 00 00 02 */	li r0, 2
/* 803CE628 00397BE8  38 A0 00 00 */	li r5, 0
/* 803CE62C 00397BEC  38 C0 00 03 */	li r6, 3
/* 803CE630 00397BF0  90 E3 1F E4 */	stw r7, 0x1fe4(r3)
/* 803CE634 00397BF4  90 A3 14 70 */	stw r5, 0x1470(r3)
/* 803CE638 00397BF8  90 03 14 74 */	stw r0, 0x1474(r3)
/* 803CE63C 00397BFC  90 E3 20 68 */	stw r7, 0x2068(r3)
/* 803CE640 00397C00  90 C3 20 6C */	stw r6, 0x206c(r3)
/* 803CE644 00397C04  90 03 15 58 */	stw r0, 0x1558(r3)
/* 803CE648 00397C08  80 04 00 10 */	lwz r0, 0x10(r4)
/* 803CE64C 00397C0C  2C 00 00 00 */	cmpwi r0, 0
/* 803CE650 00397C10  41 82 00 2C */	beq .L_803CE67C
/* 803CE654 00397C14  38 A0 00 04 */	li r5, 4
/* 803CE658 00397C18  38 80 00 05 */	li r4, 5
/* 803CE65C 00397C1C  38 00 00 06 */	li r0, 6
/* 803CE660 00397C20  90 A3 15 5C */	stw r5, 0x155c(r3)
/* 803CE664 00397C24  90 C3 20 F0 */	stw r6, 0x20f0(r3)
/* 803CE668 00397C28  90 83 20 F4 */	stw r4, 0x20f4(r3)
/* 803CE66C 00397C2C  90 A3 16 40 */	stw r5, 0x1640(r3)
/* 803CE670 00397C30  90 03 16 44 */	stw r0, 0x1644(r3)
/* 803CE674 00397C34  90 83 21 78 */	stw r4, 0x2178(r3)
/* 803CE678 00397C38  48 00 00 10 */	b .L_803CE688
.L_803CE67C:
/* 803CE67C 00397C3C  38 00 00 06 */	li r0, 6
/* 803CE680 00397C40  90 C3 21 78 */	stw r6, 0x2178(r3)
/* 803CE684 00397C44  90 03 15 5C */	stw r0, 0x155c(r3)
.L_803CE688:
/* 803CE688 00397C48  7F E3 FB 78 */	mr r3, r31
/* 803CE68C 00397C4C  38 80 00 06 */	li r4, 6
/* 803CE690 00397C50  38 A0 00 00 */	li r5, 0
/* 803CE694 00397C54  4B FF DE A1 */	bl SFSET_SetCond
/* 803CE698 00397C58  38 00 00 00 */	li r0, 0
/* 803CE69C 00397C5C  90 1F 0B BC */	stw r0, 0xbbc(r31)
/* 803CE6A0 00397C60  48 00 00 EC */	b .L_803CE78C
.L_803CE6A4:
/* 803CE6A4 00397C64  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803CE6A8 00397C68  2C 00 00 00 */	cmpwi r0, 0
/* 803CE6AC 00397C6C  41 82 00 88 */	beq .L_803CE734
/* 803CE6B0 00397C70  38 E0 00 02 */	li r7, 2
/* 803CE6B4 00397C74  38 00 00 03 */	li r0, 3
/* 803CE6B8 00397C78  38 A0 00 00 */	li r5, 0
/* 803CE6BC 00397C7C  38 C0 00 04 */	li r6, 4
/* 803CE6C0 00397C80  90 E3 1F E4 */	stw r7, 0x1fe4(r3)
/* 803CE6C4 00397C84  90 A3 14 E4 */	stw r5, 0x14e4(r3)
/* 803CE6C8 00397C88  90 03 14 E8 */	stw r0, 0x14e8(r3)
/* 803CE6CC 00397C8C  90 E3 20 AC */	stw r7, 0x20ac(r3)
/* 803CE6D0 00397C90  90 C3 20 B0 */	stw r6, 0x20b0(r3)
/* 803CE6D4 00397C94  90 03 15 CC */	stw r0, 0x15cc(r3)
/* 803CE6D8 00397C98  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803CE6DC 00397C9C  2C 00 00 00 */	cmpwi r0, 0
/* 803CE6E0 00397CA0  41 82 00 2C */	beq .L_803CE70C
/* 803CE6E4 00397CA4  38 A0 00 05 */	li r5, 5
/* 803CE6E8 00397CA8  38 80 00 06 */	li r4, 6
/* 803CE6EC 00397CAC  38 00 00 07 */	li r0, 7
/* 803CE6F0 00397CB0  90 A3 15 D0 */	stw r5, 0x15d0(r3)
/* 803CE6F4 00397CB4  90 C3 21 34 */	stw r6, 0x2134(r3)
/* 803CE6F8 00397CB8  90 83 21 38 */	stw r4, 0x2138(r3)
/* 803CE6FC 00397CBC  90 A3 16 B4 */	stw r5, 0x16b4(r3)
/* 803CE700 00397CC0  90 03 16 B8 */	stw r0, 0x16b8(r3)
/* 803CE704 00397CC4  90 83 21 BC */	stw r4, 0x21bc(r3)
/* 803CE708 00397CC8  48 00 00 10 */	b .L_803CE718
.L_803CE70C:
/* 803CE70C 00397CCC  38 00 00 07 */	li r0, 7
/* 803CE710 00397CD0  90 C3 21 BC */	stw r6, 0x21bc(r3)
/* 803CE714 00397CD4  90 03 15 D0 */	stw r0, 0x15d0(r3)
.L_803CE718:
/* 803CE718 00397CD8  7F E3 FB 78 */	mr r3, r31
/* 803CE71C 00397CDC  38 80 00 05 */	li r4, 5
/* 803CE720 00397CE0  38 A0 00 00 */	li r5, 0
/* 803CE724 00397CE4  4B FF DE 11 */	bl SFSET_SetCond
/* 803CE728 00397CE8  38 00 00 00 */	li r0, 0
/* 803CE72C 00397CEC  90 1F 0B B8 */	stw r0, 0xbb8(r31)
/* 803CE730 00397CF0  48 00 00 5C */	b .L_803CE78C
.L_803CE734:
/* 803CE734 00397CF4  80 04 00 20 */	lwz r0, 0x20(r4)
/* 803CE738 00397CF8  2C 00 00 00 */	cmpwi r0, 0
/* 803CE73C 00397CFC  41 82 00 48 */	beq .L_803CE784
/* 803CE740 00397D00  38 C0 00 07 */	li r6, 7
/* 803CE744 00397D04  3B C0 00 00 */	li r30, 0
/* 803CE748 00397D08  38 00 00 08 */	li r0, 8
/* 803CE74C 00397D0C  90 C3 1F E4 */	stw r6, 0x1fe4(r3)
/* 803CE750 00397D10  38 80 00 06 */	li r4, 6
/* 803CE754 00397D14  38 A0 00 00 */	li r5, 0
/* 803CE758 00397D18  93 C3 17 28 */	stw r30, 0x1728(r3)
/* 803CE75C 00397D1C  90 03 17 2C */	stw r0, 0x172c(r3)
/* 803CE760 00397D20  90 C3 22 00 */	stw r6, 0x2200(r3)
/* 803CE764 00397D24  4B FF DD D1 */	bl SFSET_SetCond
/* 803CE768 00397D28  7F E3 FB 78 */	mr r3, r31
/* 803CE76C 00397D2C  38 80 00 05 */	li r4, 5
/* 803CE770 00397D30  38 A0 00 00 */	li r5, 0
/* 803CE774 00397D34  4B FF DD C1 */	bl SFSET_SetCond
/* 803CE778 00397D38  93 DF 0B BC */	stw r30, 0xbbc(r31)
/* 803CE77C 00397D3C  93 DF 0B B8 */	stw r30, 0xbb8(r31)
/* 803CE780 00397D40  48 00 00 0C */	b .L_803CE78C
.L_803CE784:
/* 803CE784 00397D44  38 60 FF FF */	li r3, -1
/* 803CE788 00397D48  48 00 00 08 */	b .L_803CE790
.L_803CE78C:
/* 803CE78C 00397D4C  38 60 00 00 */	li r3, 0
.L_803CE790:
/* 803CE790 00397D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE794 00397D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CE798 00397D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CE79C 00397D5C  7C 08 03 A6 */	mtlr r0
/* 803CE7A0 00397D60  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE7A4 00397D64  4E 80 00 20 */	blr 
.endfn sftrn_BuildAll

.fn sftrn_BuildSystem, global
/* 803CE7A8 00397D68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE7AC 00397D6C  7C 08 02 A6 */	mflr r0
/* 803CE7B0 00397D70  38 A0 00 01 */	li r5, 1
/* 803CE7B4 00397D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE7B8 00397D78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CE7BC 00397D7C  7C 9F 23 78 */	mr r31, r4
/* 803CE7C0 00397D80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CE7C4 00397D84  7C 7E 1B 78 */	mr r30, r3
/* 803CE7C8 00397D88  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CE7CC 00397D8C  3B A0 00 00 */	li r29, 0
/* 803CE7D0 00397D90  90 A3 14 00 */	stw r5, 0x1400(r3)
/* 803CE7D4 00397D94  93 A3 20 24 */	stw r29, 0x2024(r3)
/* 803CE7D8 00397D98  80 04 00 08 */	lwz r0, 8(r4)
/* 803CE7DC 00397D9C  2C 00 00 00 */	cmpwi r0, 0
/* 803CE7E0 00397DA0  41 82 00 68 */	beq .L_803CE848
/* 803CE7E4 00397DA4  38 00 00 02 */	li r0, 2
/* 803CE7E8 00397DA8  38 C0 00 03 */	li r6, 3
/* 803CE7EC 00397DAC  90 A3 20 28 */	stw r5, 0x2028(r3)
/* 803CE7F0 00397DB0  90 A3 14 70 */	stw r5, 0x1470(r3)
/* 803CE7F4 00397DB4  90 03 14 74 */	stw r0, 0x1474(r3)
/* 803CE7F8 00397DB8  90 A3 20 68 */	stw r5, 0x2068(r3)
/* 803CE7FC 00397DBC  90 C3 20 6C */	stw r6, 0x206c(r3)
/* 803CE800 00397DC0  90 03 15 58 */	stw r0, 0x1558(r3)
/* 803CE804 00397DC4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 803CE808 00397DC8  2C 00 00 00 */	cmpwi r0, 0
/* 803CE80C 00397DCC  41 82 00 2C */	beq .L_803CE838
/* 803CE810 00397DD0  38 A0 00 04 */	li r5, 4
/* 803CE814 00397DD4  38 80 00 05 */	li r4, 5
/* 803CE818 00397DD8  38 00 00 06 */	li r0, 6
/* 803CE81C 00397DDC  90 A3 15 5C */	stw r5, 0x155c(r3)
/* 803CE820 00397DE0  90 C3 20 F0 */	stw r6, 0x20f0(r3)
/* 803CE824 00397DE4  90 83 20 F4 */	stw r4, 0x20f4(r3)
/* 803CE828 00397DE8  90 A3 16 40 */	stw r5, 0x1640(r3)
/* 803CE82C 00397DEC  90 03 16 44 */	stw r0, 0x1644(r3)
/* 803CE830 00397DF0  90 83 21 78 */	stw r4, 0x2178(r3)
/* 803CE834 00397DF4  48 00 00 24 */	b .L_803CE858
.L_803CE838:
/* 803CE838 00397DF8  38 00 00 06 */	li r0, 6
/* 803CE83C 00397DFC  90 C3 21 78 */	stw r6, 0x2178(r3)
/* 803CE840 00397E00  90 03 15 5C */	stw r0, 0x155c(r3)
/* 803CE844 00397E04  48 00 00 14 */	b .L_803CE858
.L_803CE848:
/* 803CE848 00397E08  38 80 00 05 */	li r4, 5
/* 803CE84C 00397E0C  38 A0 00 00 */	li r5, 0
/* 803CE850 00397E10  4B FF DC E5 */	bl SFSET_SetCond
/* 803CE854 00397E14  93 BE 0B B8 */	stw r29, 0xbb8(r30)
.L_803CE858:
/* 803CE858 00397E18  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803CE85C 00397E1C  2C 00 00 00 */	cmpwi r0, 0
/* 803CE860 00397E20  41 82 00 70 */	beq .L_803CE8D0
/* 803CE864 00397E24  38 80 00 02 */	li r4, 2
/* 803CE868 00397E28  38 00 00 03 */	li r0, 3
/* 803CE86C 00397E2C  38 60 00 01 */	li r3, 1
/* 803CE870 00397E30  38 A0 00 04 */	li r5, 4
/* 803CE874 00397E34  90 9E 20 2C */	stw r4, 0x202c(r30)
/* 803CE878 00397E38  90 7E 14 E4 */	stw r3, 0x14e4(r30)
/* 803CE87C 00397E3C  90 1E 14 E8 */	stw r0, 0x14e8(r30)
/* 803CE880 00397E40  90 9E 20 AC */	stw r4, 0x20ac(r30)
/* 803CE884 00397E44  90 BE 20 B0 */	stw r5, 0x20b0(r30)
/* 803CE888 00397E48  90 1E 15 CC */	stw r0, 0x15cc(r30)
/* 803CE88C 00397E4C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803CE890 00397E50  2C 00 00 00 */	cmpwi r0, 0
/* 803CE894 00397E54  41 82 00 2C */	beq .L_803CE8C0
/* 803CE898 00397E58  38 80 00 05 */	li r4, 5
/* 803CE89C 00397E5C  38 60 00 06 */	li r3, 6
/* 803CE8A0 00397E60  38 00 00 07 */	li r0, 7
/* 803CE8A4 00397E64  90 9E 15 D0 */	stw r4, 0x15d0(r30)
/* 803CE8A8 00397E68  90 BE 21 34 */	stw r5, 0x2134(r30)
/* 803CE8AC 00397E6C  90 7E 21 38 */	stw r3, 0x2138(r30)
/* 803CE8B0 00397E70  90 9E 16 B4 */	stw r4, 0x16b4(r30)
/* 803CE8B4 00397E74  90 1E 16 B8 */	stw r0, 0x16b8(r30)
/* 803CE8B8 00397E78  90 7E 21 BC */	stw r3, 0x21bc(r30)
/* 803CE8BC 00397E7C  48 00 00 2C */	b .L_803CE8E8
.L_803CE8C0:
/* 803CE8C0 00397E80  38 00 00 07 */	li r0, 7
/* 803CE8C4 00397E84  90 BE 21 BC */	stw r5, 0x21bc(r30)
/* 803CE8C8 00397E88  90 1E 15 D0 */	stw r0, 0x15d0(r30)
/* 803CE8CC 00397E8C  48 00 00 1C */	b .L_803CE8E8
.L_803CE8D0:
/* 803CE8D0 00397E90  7F C3 F3 78 */	mr r3, r30
/* 803CE8D4 00397E94  38 80 00 06 */	li r4, 6
/* 803CE8D8 00397E98  38 A0 00 00 */	li r5, 0
/* 803CE8DC 00397E9C  4B FF DC 59 */	bl SFSET_SetCond
/* 803CE8E0 00397EA0  38 00 00 00 */	li r0, 0
/* 803CE8E4 00397EA4  90 1E 0B BC */	stw r0, 0xbbc(r30)
.L_803CE8E8:
/* 803CE8E8 00397EA8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 803CE8EC 00397EAC  2C 00 00 00 */	cmpwi r0, 0
/* 803CE8F0 00397EB0  41 82 00 20 */	beq .L_803CE910
/* 803CE8F4 00397EB4  38 80 00 07 */	li r4, 7
/* 803CE8F8 00397EB8  38 60 00 01 */	li r3, 1
/* 803CE8FC 00397EBC  38 00 00 08 */	li r0, 8
/* 803CE900 00397EC0  90 9E 20 30 */	stw r4, 0x2030(r30)
/* 803CE904 00397EC4  90 7E 17 28 */	stw r3, 0x1728(r30)
/* 803CE908 00397EC8  90 1E 17 2C */	stw r0, 0x172c(r30)
/* 803CE90C 00397ECC  90 9E 22 00 */	stw r4, 0x2200(r30)
.L_803CE910:
/* 803CE910 00397ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE914 00397ED4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CE918 00397ED8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CE91C 00397EDC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CE920 00397EE0  7C 08 03 A6 */	mtlr r0
/* 803CE924 00397EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE928 00397EE8  4E 80 00 20 */	blr 
.endfn sftrn_BuildSystem

.fn SFTRN_CallTrSetup, global
/* 803CE92C 00397EEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE930 00397EF0  7C 08 02 A6 */	mflr r0
/* 803CE934 00397EF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE938 00397EF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CE93C 00397EFC  54 9F 10 3A */	slwi r31, r4, 2
/* 803CE940 00397F00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CE944 00397F04  3B C0 00 00 */	li r30, 0
/* 803CE948 00397F08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CE94C 00397F0C  3B A3 1F D0 */	addi r29, r3, 0x1fd0
/* 803CE950 00397F10  93 81 00 10 */	stw r28, 0x10(r1)
/* 803CE954 00397F14  7C 7C 1B 78 */	mr r28, r3
/* 803CE958 00397F18  38 60 00 00 */	li r3, 0
.L_803CE95C:
/* 803CE95C 00397F1C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803CE960 00397F20  2C 00 00 00 */	cmpwi r0, 0
/* 803CE964 00397F24  41 82 00 28 */	beq .L_803CE98C
/* 803CE968 00397F28  7D 9F 00 2E */	lwzx r12, r31, r0
/* 803CE96C 00397F2C  7F 83 E3 78 */	mr r3, r28
/* 803CE970 00397F30  38 80 00 00 */	li r4, 0
/* 803CE974 00397F34  38 A0 00 00 */	li r5, 0
/* 803CE978 00397F38  38 C0 00 00 */	li r6, 0
/* 803CE97C 00397F3C  7D 89 03 A6 */	mtctr r12
/* 803CE980 00397F40  4E 80 04 21 */	bctrl 
/* 803CE984 00397F44  2C 03 00 00 */	cmpwi r3, 0
/* 803CE988 00397F48  40 82 00 14 */	bne .L_803CE99C
.L_803CE98C:
/* 803CE98C 00397F4C  3B DE 00 01 */	addi r30, r30, 1
/* 803CE990 00397F50  3B BD 00 44 */	addi r29, r29, 0x44
/* 803CE994 00397F54  2C 1E 00 09 */	cmpwi r30, 9
/* 803CE998 00397F58  41 80 FF C4 */	blt .L_803CE95C
.L_803CE99C:
/* 803CE99C 00397F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE9A0 00397F60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CE9A4 00397F64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CE9A8 00397F68  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CE9AC 00397F6C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803CE9B0 00397F70  7C 08 03 A6 */	mtlr r0
/* 803CE9B4 00397F74  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE9B8 00397F78  4E 80 00 20 */	blr 
.endfn SFTRN_CallTrSetup

.fn SFTRN_CallTrtTrif, global
/* 803CE9BC 00397F7C  1C 04 00 44 */	mulli r0, r4, 0x44
/* 803CE9C0 00397F80  7C 83 02 14 */	add r4, r3, r0
/* 803CE9C4 00397F84  81 04 1F DC */	lwz r8, 0x1fdc(r4)
/* 803CE9C8 00397F88  2C 08 00 00 */	cmpwi r8, 0
/* 803CE9CC 00397F8C  40 82 00 0C */	bne .L_803CE9D8
/* 803CE9D0 00397F90  38 60 00 00 */	li r3, 0
/* 803CE9D4 00397F94  4E 80 00 20 */	blr
.L_803CE9D8:
/* 803CE9D8 00397F98  54 A0 10 3A */	slwi r0, r5, 2
/* 803CE9DC 00397F9C  7C C4 33 78 */	mr r4, r6
/* 803CE9E0 00397FA0  7D 88 00 2E */	lwzx r12, r8, r0
/* 803CE9E4 00397FA4  7C E5 3B 78 */	mr r5, r7
/* 803CE9E8 00397FA8  38 C0 00 00 */	li r6, 0
/* 803CE9EC 00397FAC  7D 89 03 A6 */	mtctr r12
/* 803CE9F0 00397FB0  4E 80 04 20 */	bctr 
/* 803CE9F4 00397FB4  4E 80 00 20 */	blr 
.endfn SFTRN_CallTrtTrif

.fn SFTRN_SetPrepFlg, global
/* 803CE9F8 00397FB8  1C 04 00 44 */	mulli r0, r4, 0x44
/* 803CE9FC 00397FBC  7C 63 02 14 */	add r3, r3, r0
/* 803CEA00 00397FC0  90 A3 1F D0 */	stw r5, 0x1fd0(r3)
/* 803CEA04 00397FC4  4E 80 00 20 */	blr 
.endfn SFTRN_SetPrepFlg

.fn SFTRN_GetPrepFlg, global
/* 803CEA08 00397FC8  1C 04 00 44 */	mulli r0, r4, 0x44
/* 803CEA0C 00397FCC  7C 63 02 14 */	add r3, r3, r0
/* 803CEA10 00397FD0  80 63 1F D0 */	lwz r3, 0x1fd0(r3)
/* 803CEA14 00397FD4  4E 80 00 20 */	blr 
.endfn SFTRN_GetPrepFlg

.fn SFTRN_SetTermFlg, global
/* 803CEA18 00397FD8  1C 04 00 44 */	mulli r0, r4, 0x44
/* 803CEA1C 00397FDC  7C 63 02 14 */	add r3, r3, r0
/* 803CEA20 00397FE0  90 A3 1F D4 */	stw r5, 0x1fd4(r3)
/* 803CEA24 00397FE4  4E 80 00 20 */	blr 
.endfn SFTRN_SetTermFlg

.fn SFTRN_GetTermFlg, global
/* 803CEA28 00397FE8  1C 04 00 44 */	mulli r0, r4, 0x44
/* 803CEA2C 00397FEC  7C 63 02 14 */	add r3, r3, r0
/* 803CEA30 00397FF0  80 63 1F D4 */	lwz r3, 0x1fd4(r3)
/* 803CEA34 00397FF4  4E 80 00 20 */	blr 
.endfn SFTRN_GetTermFlg

.fn SFTRN_IsSetup, global
/* 803CEA38 00397FF8  1C 04 00 44 */	mulli r0, r4, 0x44
/* 803CEA3C 00397FFC  7C 63 02 14 */	add r3, r3, r0
/* 803CEA40 00398000  80 63 1F DC */	lwz r3, 0x1fdc(r3)
/* 803CEA44 00398004  7C 03 00 D0 */	neg r0, r3
/* 803CEA48 00398008  7C 00 1B 78 */	or r0, r0, r3
/* 803CEA4C 0039800C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803CEA50 00398010  4E 80 00 20 */	blr 
.endfn SFTRN_IsSetup
