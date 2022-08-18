.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global rfcomm_l2cap_if_init
rfcomm_l2cap_if_init:
/* 802FE450 002C7A10  3C 60 80 30 */	lis r3, RFCOMM_ConnectInd@ha
/* 802FE454 002C7A14  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 802FE458 002C7A18  38 63 E4 CC */	addi r3, r3, RFCOMM_ConnectInd@l
/* 802FE45C 002C7A1C  3D 60 80 30 */	lis r11, RFCOMM_ConnectCnf@ha
/* 802FE460 002C7A20  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 802FE464 002C7A24  3D 40 80 30 */	lis r10, RFCOMM_ConfigInd@ha
/* 802FE468 002C7A28  3D 20 80 30 */	lis r9, RFCOMM_ConfigCnf@ha
/* 802FE46C 002C7A2C  3D 00 80 30 */	lis r8, RFCOMM_DisconnectInd@ha
/* 802FE470 002C7A30  3C E0 80 30 */	lis r7, RFCOMM_QoSViolationInd@ha
/* 802FE474 002C7A34  3C C0 80 30 */	lis r6, RFCOMM_BufDataInd@ha
/* 802FE478 002C7A38  3C A0 80 30 */	lis r5, RFCOMM_CongestionStatusInd@ha
/* 802FE47C 002C7A3C  94 64 00 14 */	stwu r3, 0x14(r4)
/* 802FE480 002C7A40  38 00 00 00 */	li r0, 0
/* 802FE484 002C7A44  39 6B E5 58 */	addi r11, r11, RFCOMM_ConnectCnf@l
/* 802FE488 002C7A48  39 4A E6 5C */	addi r10, r10, RFCOMM_ConfigInd@l
/* 802FE48C 002C7A4C  39 29 E7 64 */	addi r9, r9, RFCOMM_ConfigCnf@l
/* 802FE490 002C7A50  39 08 E8 70 */	addi r8, r8, RFCOMM_DisconnectInd@l
/* 802FE494 002C7A54  38 E7 E8 6C */	addi r7, r7, RFCOMM_QoSViolationInd@l
/* 802FE498 002C7A58  38 C6 E9 94 */	addi r6, r6, RFCOMM_BufDataInd@l
/* 802FE49C 002C7A5C  38 A5 EC 34 */	addi r5, r5, RFCOMM_CongestionStatusInd@l
/* 802FE4A0 002C7A60  91 64 00 04 */	stw r11, 4(r4)
/* 802FE4A4 002C7A64  38 60 00 03 */	li r3, 3
/* 802FE4A8 002C7A68  90 04 00 08 */	stw r0, 8(r4)
/* 802FE4AC 002C7A6C  91 44 00 0C */	stw r10, 0xc(r4)
/* 802FE4B0 002C7A70  91 24 00 10 */	stw r9, 0x10(r4)
/* 802FE4B4 002C7A74  91 04 00 14 */	stw r8, 0x14(r4)
/* 802FE4B8 002C7A78  90 04 00 18 */	stw r0, 0x18(r4)
/* 802FE4BC 002C7A7C  90 E4 00 1C */	stw r7, 0x1c(r4)
/* 802FE4C0 002C7A80  90 C4 00 20 */	stw r6, 0x20(r4)
/* 802FE4C4 002C7A84  90 A4 00 24 */	stw r5, 0x24(r4)
/* 802FE4C8 002C7A88  4B FF 84 3C */	b L2CA_Register

RFCOMM_ConnectInd:
/* 802FE4CC 002C7A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE4D0 002C7A90  7C 08 02 A6 */	mflr r0
/* 802FE4D4 002C7A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE4D8 002C7A98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FE4DC 002C7A9C  7C 9F 23 78 */	mr r31, r4
/* 802FE4E0 002C7AA0  38 80 00 00 */	li r4, 0
/* 802FE4E4 002C7AA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FE4E8 002C7AA8  7C 7E 1B 78 */	mr r30, r3
/* 802FE4EC 002C7AAC  98 C1 00 08 */	stb r6, 8(r1)
/* 802FE4F0 002C7AB0  48 00 42 71 */	bl rfc_alloc_multiplexer_channel
/* 802FE4F4 002C7AB4  38 1F FF C0 */	addi r0, r31, -64
/* 802FE4F8 002C7AB8  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 802FE4FC 002C7ABC  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 802FE500 002C7AC0  2C 03 00 00 */	cmpwi r3, 0
/* 802FE504 002C7AC4  54 00 10 3A */	slwi r0, r0, 2
/* 802FE508 002C7AC8  7C 84 02 14 */	add r4, r4, r0
/* 802FE50C 002C7ACC  90 64 00 3C */	stw r3, 0x3c(r4)
/* 802FE510 002C7AD0  40 82 00 20 */	bne lbl_802FE530
/* 802FE514 002C7AD4  88 81 00 08 */	lbz r4, 8(r1)
/* 802FE518 002C7AD8  7F C3 F3 78 */	mr r3, r30
/* 802FE51C 002C7ADC  7F E5 FB 78 */	mr r5, r31
/* 802FE520 002C7AE0  38 C0 00 04 */	li r6, 4
/* 802FE524 002C7AE4  38 E0 00 00 */	li r7, 0
/* 802FE528 002C7AE8  4B FF 88 3D */	bl L2CA_ConnectRsp
/* 802FE52C 002C7AEC  48 00 00 14 */	b lbl_802FE540
lbl_802FE530:
/* 802FE530 002C7AF0  B3 E3 00 68 */	sth r31, 0x68(r3)
/* 802FE534 002C7AF4  38 A1 00 08 */	addi r5, r1, 8
/* 802FE538 002C7AF8  38 80 00 0A */	li r4, 0xa
/* 802FE53C 002C7AFC  48 00 08 49 */	bl rfc_mx_sm_execute
lbl_802FE540:
/* 802FE540 002C7B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FE544 002C7B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FE548 002C7B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FE54C 002C7B0C  7C 08 03 A6 */	mtlr r0
/* 802FE550 002C7B10  38 21 00 20 */	addi r1, r1, 0x20
/* 802FE554 002C7B14  4E 80 00 20 */	blr

.global RFCOMM_ConnectCnf
RFCOMM_ConnectCnf:
/* 802FE558 002C7B18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE55C 002C7B1C  7C 08 02 A6 */	mflr r0
/* 802FE560 002C7B20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE564 002C7B24  38 03 FF C0 */	addi r0, r3, -64
/* 802FE568 002C7B28  2C 00 00 0A */	cmpwi r0, 0xa
/* 802FE56C 002C7B2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FE570 002C7B30  3F E0 80 55 */	lis r31, lbl_80548678@ha
/* 802FE574 002C7B34  3B FF 86 78 */	addi r31, r31, lbl_80548678@l
/* 802FE578 002C7B38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FE57C 002C7B3C  7C 7E 1B 78 */	mr r30, r3
/* 802FE580 002C7B40  B0 81 00 08 */	sth r4, 8(r1)
/* 802FE584 002C7B44  41 80 00 30 */	blt lbl_802FE5B4
/* 802FE588 002C7B48  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE58C 002C7B4C  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE590 002C7B50  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE594 002C7B54  28 00 00 01 */	cmplwi r0, 1
/* 802FE598 002C7B58  41 80 00 14 */	blt lbl_802FE5AC
/* 802FE59C 002C7B5C  7F C5 F3 78 */	mr r5, r30
/* 802FE5A0 002C7B60  38 9F 00 00 */	addi r4, r31, 0
/* 802FE5A4 002C7B64  3C 60 00 09 */	lis r3, 9
/* 802FE5A8 002C7B68  4B FD FA 19 */	bl LogMsg_1
lbl_802FE5AC:
/* 802FE5AC 002C7B6C  38 80 00 00 */	li r4, 0
/* 802FE5B0 002C7B70  48 00 00 50 */	b lbl_802FE600
lbl_802FE5B4:
/* 802FE5B4 002C7B74  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 802FE5B8 002C7B78  54 00 10 3A */	slwi r0, r0, 2
/* 802FE5BC 002C7B7C  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 802FE5C0 002C7B80  7C 85 02 14 */	add r4, r5, r0
/* 802FE5C4 002C7B84  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 802FE5C8 002C7B88  2C 04 00 00 */	cmpwi r4, 0
/* 802FE5CC 002C7B8C  41 82 00 34 */	beq lbl_802FE600
/* 802FE5D0 002C7B90  A0 C4 00 68 */	lhz r6, 0x68(r4)
/* 802FE5D4 002C7B94  7C 06 18 40 */	cmplw r6, r3
/* 802FE5D8 002C7B98  41 82 00 28 */	beq lbl_802FE600
/* 802FE5DC 002C7B9C  88 05 04 14 */	lbz r0, 0x414(r5)
/* 802FE5E0 002C7BA0  28 00 00 02 */	cmplwi r0, 2
/* 802FE5E4 002C7BA4  41 80 00 18 */	blt lbl_802FE5FC
/* 802FE5E8 002C7BA8  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FE5EC 002C7BAC  7F C5 F3 78 */	mr r5, r30
/* 802FE5F0 002C7BB0  38 9F 00 1C */	addi r4, r31, 0x1c
/* 802FE5F4 002C7BB4  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FE5F8 002C7BB8  4B FD F9 E9 */	bl LogMsg_2
lbl_802FE5FC:
/* 802FE5FC 002C7BBC  38 80 00 00 */	li r4, 0
lbl_802FE600:
/* 802FE600 002C7BC0  2C 04 00 00 */	cmpwi r4, 0
/* 802FE604 002C7BC4  40 82 00 2C */	bne lbl_802FE630
/* 802FE608 002C7BC8  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE60C 002C7BCC  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE610 002C7BD0  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE614 002C7BD4  28 00 00 01 */	cmplwi r0, 1
/* 802FE618 002C7BD8  41 80 00 2C */	blt lbl_802FE644
/* 802FE61C 002C7BDC  7F C5 F3 78 */	mr r5, r30
/* 802FE620 002C7BE0  38 9F 00 54 */	addi r4, r31, 0x54
/* 802FE624 002C7BE4  3C 60 00 09 */	lis r3, 9
/* 802FE628 002C7BE8  4B FD F9 99 */	bl LogMsg_1
/* 802FE62C 002C7BEC  48 00 00 18 */	b lbl_802FE644
lbl_802FE630:
/* 802FE630 002C7BF0  B3 C4 00 68 */	sth r30, 0x68(r4)
/* 802FE634 002C7BF4  7C 83 23 78 */	mr r3, r4
/* 802FE638 002C7BF8  38 A1 00 08 */	addi r5, r1, 8
/* 802FE63C 002C7BFC  38 80 00 09 */	li r4, 9
/* 802FE640 002C7C00  48 00 07 45 */	bl rfc_mx_sm_execute
lbl_802FE644:
/* 802FE644 002C7C04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FE648 002C7C08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FE64C 002C7C0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FE650 002C7C10  7C 08 03 A6 */	mtlr r0
/* 802FE654 002C7C14  38 21 00 20 */	addi r1, r1, 0x20
/* 802FE658 002C7C18  4E 80 00 20 */	blr

.global RFCOMM_ConfigInd
RFCOMM_ConfigInd:
/* 802FE65C 002C7C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE660 002C7C20  7C 08 02 A6 */	mflr r0
/* 802FE664 002C7C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE668 002C7C28  38 03 FF C0 */	addi r0, r3, -64
/* 802FE66C 002C7C2C  2C 00 00 0A */	cmpwi r0, 0xa
/* 802FE670 002C7C30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FE674 002C7C34  3F E0 80 55 */	lis r31, lbl_80548678@ha
/* 802FE678 002C7C38  3B FF 86 78 */	addi r31, r31, lbl_80548678@l
/* 802FE67C 002C7C3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FE680 002C7C40  7C 9E 23 78 */	mr r30, r4
/* 802FE684 002C7C44  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FE688 002C7C48  7C 7D 1B 78 */	mr r29, r3
/* 802FE68C 002C7C4C  41 80 00 30 */	blt lbl_802FE6BC
/* 802FE690 002C7C50  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE694 002C7C54  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE698 002C7C58  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE69C 002C7C5C  28 00 00 01 */	cmplwi r0, 1
/* 802FE6A0 002C7C60  41 80 00 14 */	blt lbl_802FE6B4
/* 802FE6A4 002C7C64  7F A5 EB 78 */	mr r5, r29
/* 802FE6A8 002C7C68  38 9F 00 00 */	addi r4, r31, 0
/* 802FE6AC 002C7C6C  3C 60 00 09 */	lis r3, 9
/* 802FE6B0 002C7C70  4B FD F9 11 */	bl LogMsg_1
lbl_802FE6B4:
/* 802FE6B4 002C7C74  38 80 00 00 */	li r4, 0
/* 802FE6B8 002C7C78  48 00 00 50 */	b lbl_802FE708
lbl_802FE6BC:
/* 802FE6BC 002C7C7C  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 802FE6C0 002C7C80  54 00 10 3A */	slwi r0, r0, 2
/* 802FE6C4 002C7C84  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 802FE6C8 002C7C88  7C 85 02 14 */	add r4, r5, r0
/* 802FE6CC 002C7C8C  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 802FE6D0 002C7C90  2C 04 00 00 */	cmpwi r4, 0
/* 802FE6D4 002C7C94  41 82 00 34 */	beq lbl_802FE708
/* 802FE6D8 002C7C98  A0 C4 00 68 */	lhz r6, 0x68(r4)
/* 802FE6DC 002C7C9C  7C 06 18 40 */	cmplw r6, r3
/* 802FE6E0 002C7CA0  41 82 00 28 */	beq lbl_802FE708
/* 802FE6E4 002C7CA4  88 05 04 14 */	lbz r0, 0x414(r5)
/* 802FE6E8 002C7CA8  28 00 00 02 */	cmplwi r0, 2
/* 802FE6EC 002C7CAC  41 80 00 18 */	blt lbl_802FE704
/* 802FE6F0 002C7CB0  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FE6F4 002C7CB4  7F A5 EB 78 */	mr r5, r29
/* 802FE6F8 002C7CB8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 802FE6FC 002C7CBC  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FE700 002C7CC0  4B FD F8 E1 */	bl LogMsg_2
lbl_802FE704:
/* 802FE704 002C7CC4  38 80 00 00 */	li r4, 0
lbl_802FE708:
/* 802FE708 002C7CC8  2C 04 00 00 */	cmpwi r4, 0
/* 802FE70C 002C7CCC  40 82 00 2C */	bne lbl_802FE738
/* 802FE710 002C7CD0  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE714 002C7CD4  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE718 002C7CD8  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE71C 002C7CDC  28 00 00 01 */	cmplwi r0, 1
/* 802FE720 002C7CE0  41 80 00 28 */	blt lbl_802FE748
/* 802FE724 002C7CE4  7F A5 EB 78 */	mr r5, r29
/* 802FE728 002C7CE8  38 9F 00 70 */	addi r4, r31, 0x70
/* 802FE72C 002C7CEC  3C 60 00 09 */	lis r3, 9
/* 802FE730 002C7CF0  4B FD F8 91 */	bl LogMsg_1
/* 802FE734 002C7CF4  48 00 00 14 */	b lbl_802FE748
lbl_802FE738:
/* 802FE738 002C7CF8  7C 83 23 78 */	mr r3, r4
/* 802FE73C 002C7CFC  7F C5 F3 78 */	mr r5, r30
/* 802FE740 002C7D00  38 80 00 0C */	li r4, 0xc
/* 802FE744 002C7D04  48 00 06 41 */	bl rfc_mx_sm_execute
lbl_802FE748:
/* 802FE748 002C7D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FE74C 002C7D0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FE750 002C7D10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FE754 002C7D14  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FE758 002C7D18  7C 08 03 A6 */	mtlr r0
/* 802FE75C 002C7D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FE760 002C7D20  4E 80 00 20 */	blr

.global RFCOMM_ConfigCnf
RFCOMM_ConfigCnf:
/* 802FE764 002C7D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE768 002C7D28  7C 08 02 A6 */	mflr r0
/* 802FE76C 002C7D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE770 002C7D30  38 03 FF C0 */	addi r0, r3, -64
/* 802FE774 002C7D34  2C 00 00 0A */	cmpwi r0, 0xa
/* 802FE778 002C7D38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FE77C 002C7D3C  3F E0 80 55 */	lis r31, lbl_80548678@ha
/* 802FE780 002C7D40  3B FF 86 78 */	addi r31, r31, lbl_80548678@l
/* 802FE784 002C7D44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FE788 002C7D48  7C 9E 23 78 */	mr r30, r4
/* 802FE78C 002C7D4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FE790 002C7D50  7C 7D 1B 78 */	mr r29, r3
/* 802FE794 002C7D54  41 80 00 30 */	blt lbl_802FE7C4
/* 802FE798 002C7D58  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE79C 002C7D5C  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE7A0 002C7D60  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE7A4 002C7D64  28 00 00 01 */	cmplwi r0, 1
/* 802FE7A8 002C7D68  41 80 00 14 */	blt lbl_802FE7BC
/* 802FE7AC 002C7D6C  7F A5 EB 78 */	mr r5, r29
/* 802FE7B0 002C7D70  38 9F 00 00 */	addi r4, r31, 0
/* 802FE7B4 002C7D74  3C 60 00 09 */	lis r3, 9
/* 802FE7B8 002C7D78  4B FD F8 09 */	bl LogMsg_1
lbl_802FE7BC:
/* 802FE7BC 002C7D7C  38 80 00 00 */	li r4, 0
/* 802FE7C0 002C7D80  48 00 00 50 */	b lbl_802FE810
lbl_802FE7C4:
/* 802FE7C4 002C7D84  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 802FE7C8 002C7D88  54 00 10 3A */	slwi r0, r0, 2
/* 802FE7CC 002C7D8C  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 802FE7D0 002C7D90  7C 85 02 14 */	add r4, r5, r0
/* 802FE7D4 002C7D94  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 802FE7D8 002C7D98  2C 04 00 00 */	cmpwi r4, 0
/* 802FE7DC 002C7D9C  41 82 00 34 */	beq lbl_802FE810
/* 802FE7E0 002C7DA0  A0 C4 00 68 */	lhz r6, 0x68(r4)
/* 802FE7E4 002C7DA4  7C 06 18 40 */	cmplw r6, r3
/* 802FE7E8 002C7DA8  41 82 00 28 */	beq lbl_802FE810
/* 802FE7EC 002C7DAC  88 05 04 14 */	lbz r0, 0x414(r5)
/* 802FE7F0 002C7DB0  28 00 00 02 */	cmplwi r0, 2
/* 802FE7F4 002C7DB4  41 80 00 18 */	blt lbl_802FE80C
/* 802FE7F8 002C7DB8  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FE7FC 002C7DBC  7F A5 EB 78 */	mr r5, r29
/* 802FE800 002C7DC0  38 9F 00 1C */	addi r4, r31, 0x1c
/* 802FE804 002C7DC4  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FE808 002C7DC8  4B FD F7 D9 */	bl LogMsg_2
lbl_802FE80C:
/* 802FE80C 002C7DCC  38 80 00 00 */	li r4, 0
lbl_802FE810:
/* 802FE810 002C7DD0  2C 04 00 00 */	cmpwi r4, 0
/* 802FE814 002C7DD4  40 82 00 2C */	bne lbl_802FE840
/* 802FE818 002C7DD8  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE81C 002C7DDC  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE820 002C7DE0  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE824 002C7DE4  28 00 00 01 */	cmplwi r0, 1
/* 802FE828 002C7DE8  41 80 00 28 */	blt lbl_802FE850
/* 802FE82C 002C7DEC  7F A5 EB 78 */	mr r5, r29
/* 802FE830 002C7DF0  38 9F 00 8C */	addi r4, r31, 0x8c
/* 802FE834 002C7DF4  3C 60 00 09 */	lis r3, 9
/* 802FE838 002C7DF8  4B FD F7 89 */	bl LogMsg_1
/* 802FE83C 002C7DFC  48 00 00 14 */	b lbl_802FE850
lbl_802FE840:
/* 802FE840 002C7E00  7C 83 23 78 */	mr r3, r4
/* 802FE844 002C7E04  7F C5 F3 78 */	mr r5, r30
/* 802FE848 002C7E08  38 80 00 0B */	li r4, 0xb
/* 802FE84C 002C7E0C  48 00 05 39 */	bl rfc_mx_sm_execute
lbl_802FE850:
/* 802FE850 002C7E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FE854 002C7E14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FE858 002C7E18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FE85C 002C7E1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FE860 002C7E20  7C 08 03 A6 */	mtlr r0
/* 802FE864 002C7E24  38 21 00 20 */	addi r1, r1, 0x20
/* 802FE868 002C7E28  4E 80 00 20 */	blr

.global RFCOMM_QoSViolationInd
RFCOMM_QoSViolationInd:
/* 802FE86C 002C7E2C  4E 80 00 20 */	blr

.global RFCOMM_DisconnectInd
RFCOMM_DisconnectInd:
/* 802FE870 002C7E30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE874 002C7E34  7C 08 02 A6 */	mflr r0
/* 802FE878 002C7E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE87C 002C7E3C  38 03 FF C0 */	addi r0, r3, -64
/* 802FE880 002C7E40  2C 00 00 0A */	cmpwi r0, 0xa
/* 802FE884 002C7E44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FE888 002C7E48  3F E0 80 55 */	lis r31, lbl_80548678@ha
/* 802FE88C 002C7E4C  3B FF 86 78 */	addi r31, r31, lbl_80548678@l
/* 802FE890 002C7E50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FE894 002C7E54  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FE898 002C7E58  7C 9D 23 78 */	mr r29, r4
/* 802FE89C 002C7E5C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802FE8A0 002C7E60  7C 7C 1B 78 */	mr r28, r3
/* 802FE8A4 002C7E64  41 80 00 30 */	blt lbl_802FE8D4
/* 802FE8A8 002C7E68  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE8AC 002C7E6C  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE8B0 002C7E70  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE8B4 002C7E74  28 00 00 01 */	cmplwi r0, 1
/* 802FE8B8 002C7E78  41 80 00 14 */	blt lbl_802FE8CC
/* 802FE8BC 002C7E7C  7F 85 E3 78 */	mr r5, r28
/* 802FE8C0 002C7E80  38 9F 00 00 */	addi r4, r31, 0
/* 802FE8C4 002C7E84  3C 60 00 09 */	lis r3, 9
/* 802FE8C8 002C7E88  4B FD F6 F9 */	bl LogMsg_1
lbl_802FE8CC:
/* 802FE8CC 002C7E8C  3B C0 00 00 */	li r30, 0
/* 802FE8D0 002C7E90  48 00 00 50 */	b lbl_802FE920
lbl_802FE8D4:
/* 802FE8D4 002C7E94  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 802FE8D8 002C7E98  54 00 10 3A */	slwi r0, r0, 2
/* 802FE8DC 002C7E9C  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 802FE8E0 002C7EA0  7C 85 02 14 */	add r4, r5, r0
/* 802FE8E4 002C7EA4  83 C4 00 3C */	lwz r30, 0x3c(r4)
/* 802FE8E8 002C7EA8  2C 1E 00 00 */	cmpwi r30, 0
/* 802FE8EC 002C7EAC  41 82 00 34 */	beq lbl_802FE920
/* 802FE8F0 002C7EB0  A0 DE 00 68 */	lhz r6, 0x68(r30)
/* 802FE8F4 002C7EB4  7C 06 18 40 */	cmplw r6, r3
/* 802FE8F8 002C7EB8  41 82 00 28 */	beq lbl_802FE920
/* 802FE8FC 002C7EBC  88 05 04 14 */	lbz r0, 0x414(r5)
/* 802FE900 002C7EC0  28 00 00 02 */	cmplwi r0, 2
/* 802FE904 002C7EC4  41 80 00 18 */	blt lbl_802FE91C
/* 802FE908 002C7EC8  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FE90C 002C7ECC  7F 85 E3 78 */	mr r5, r28
/* 802FE910 002C7ED0  38 9F 00 1C */	addi r4, r31, 0x1c
/* 802FE914 002C7ED4  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FE918 002C7ED8  4B FD F6 C9 */	bl LogMsg_2
lbl_802FE91C:
/* 802FE91C 002C7EDC  3B C0 00 00 */	li r30, 0
lbl_802FE920:
/* 802FE920 002C7EE0  2C 1D 00 00 */	cmpwi r29, 0
/* 802FE924 002C7EE4  41 82 00 0C */	beq lbl_802FE930
/* 802FE928 002C7EE8  7F 83 E3 78 */	mr r3, r28
/* 802FE92C 002C7EEC  4B FF 87 F5 */	bl L2CA_DisconnectRsp
lbl_802FE930:
/* 802FE930 002C7EF0  2C 1E 00 00 */	cmpwi r30, 0
/* 802FE934 002C7EF4  40 82 00 30 */	bne lbl_802FE964
/* 802FE938 002C7EF8  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE93C 002C7EFC  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE940 002C7F00  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE944 002C7F04  28 00 00 02 */	cmplwi r0, 2
/* 802FE948 002C7F08  41 80 00 2C */	blt lbl_802FE974
/* 802FE94C 002C7F0C  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FE950 002C7F10  7F 85 E3 78 */	mr r5, r28
/* 802FE954 002C7F14  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FE958 002C7F18  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 802FE95C 002C7F1C  4B FD F6 65 */	bl LogMsg_1
/* 802FE960 002C7F20  48 00 00 14 */	b lbl_802FE974
lbl_802FE964:
/* 802FE964 002C7F24  7F C3 F3 78 */	mr r3, r30
/* 802FE968 002C7F28  38 80 00 0E */	li r4, 0xe
/* 802FE96C 002C7F2C  38 A0 00 00 */	li r5, 0
/* 802FE970 002C7F30  48 00 04 15 */	bl rfc_mx_sm_execute
lbl_802FE974:
/* 802FE974 002C7F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FE978 002C7F38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FE97C 002C7F3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FE980 002C7F40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FE984 002C7F44  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802FE988 002C7F48  7C 08 03 A6 */	mtlr r0
/* 802FE98C 002C7F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FE990 002C7F50  4E 80 00 20 */	blr

.global RFCOMM_BufDataInd
RFCOMM_BufDataInd:
/* 802FE994 002C7F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE998 002C7F58  7C 08 02 A6 */	mflr r0
/* 802FE99C 002C7F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE9A0 002C7F60  39 61 00 20 */	addi r11, r1, 0x20
/* 802FE9A4 002C7F64  4B FB B7 B1 */	bl _savegpr_27
/* 802FE9A8 002C7F68  38 03 FF C0 */	addi r0, r3, -64
/* 802FE9AC 002C7F6C  3F A0 80 55 */	lis r29, lbl_80548678@ha
/* 802FE9B0 002C7F70  2C 00 00 0A */	cmpwi r0, 0xa
/* 802FE9B4 002C7F74  7C 7B 1B 78 */	mr r27, r3
/* 802FE9B8 002C7F78  7C 9F 23 78 */	mr r31, r4
/* 802FE9BC 002C7F7C  3B BD 86 78 */	addi r29, r29, lbl_80548678@l
/* 802FE9C0 002C7F80  41 80 00 30 */	blt lbl_802FE9F0
/* 802FE9C4 002C7F84  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE9C8 002C7F88  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE9CC 002C7F8C  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE9D0 002C7F90  28 00 00 01 */	cmplwi r0, 1
/* 802FE9D4 002C7F94  41 80 00 14 */	blt lbl_802FE9E8
/* 802FE9D8 002C7F98  7F 65 DB 78 */	mr r5, r27
/* 802FE9DC 002C7F9C  38 9D 00 00 */	addi r4, r29, 0
/* 802FE9E0 002C7FA0  3C 60 00 09 */	lis r3, 9
/* 802FE9E4 002C7FA4  4B FD F5 DD */	bl LogMsg_1
lbl_802FE9E8:
/* 802FE9E8 002C7FA8  3B 80 00 00 */	li r28, 0
/* 802FE9EC 002C7FAC  48 00 00 50 */	b lbl_802FEA3C
lbl_802FE9F0:
/* 802FE9F0 002C7FB0  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 802FE9F4 002C7FB4  54 00 10 3A */	slwi r0, r0, 2
/* 802FE9F8 002C7FB8  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 802FE9FC 002C7FBC  7C 85 02 14 */	add r4, r5, r0
/* 802FEA00 002C7FC0  83 84 00 3C */	lwz r28, 0x3c(r4)
/* 802FEA04 002C7FC4  2C 1C 00 00 */	cmpwi r28, 0
/* 802FEA08 002C7FC8  41 82 00 34 */	beq lbl_802FEA3C
/* 802FEA0C 002C7FCC  A0 DC 00 68 */	lhz r6, 0x68(r28)
/* 802FEA10 002C7FD0  7C 06 18 40 */	cmplw r6, r3
/* 802FEA14 002C7FD4  41 82 00 28 */	beq lbl_802FEA3C
/* 802FEA18 002C7FD8  88 05 04 14 */	lbz r0, 0x414(r5)
/* 802FEA1C 002C7FDC  28 00 00 02 */	cmplwi r0, 2
/* 802FEA20 002C7FE0  41 80 00 18 */	blt lbl_802FEA38
/* 802FEA24 002C7FE4  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FEA28 002C7FE8  7F 65 DB 78 */	mr r5, r27
/* 802FEA2C 002C7FEC  38 9D 00 1C */	addi r4, r29, 0x1c
/* 802FEA30 002C7FF0  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FEA34 002C7FF4  4B FD F5 AD */	bl LogMsg_2
lbl_802FEA38:
/* 802FEA38 002C7FF8  3B 80 00 00 */	li r28, 0
lbl_802FEA3C:
/* 802FEA3C 002C7FFC  2C 1C 00 00 */	cmpwi r28, 0
/* 802FEA40 002C8000  40 82 00 38 */	bne lbl_802FEA78
/* 802FEA44 002C8004  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FEA48 002C8008  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FEA4C 002C800C  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FEA50 002C8010  28 00 00 02 */	cmplwi r0, 2
/* 802FEA54 002C8014  41 80 00 18 */	blt lbl_802FEA6C
/* 802FEA58 002C8018  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FEA5C 002C801C  7F 65 DB 78 */	mr r5, r27
/* 802FEA60 002C8020  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FEA64 002C8024  38 9D 00 C8 */	addi r4, r29, 0xc8
/* 802FEA68 002C8028  4B FD F5 59 */	bl LogMsg_1
lbl_802FEA6C:
/* 802FEA6C 002C802C  7F E3 FB 78 */	mr r3, r31
/* 802FEA70 002C8030  4B FD CA 71 */	bl GKI_freebuf
/* 802FEA74 002C8034  48 00 01 A8 */	b lbl_802FEC1C
lbl_802FEA78:
/* 802FEA78 002C8038  3F C0 80 5C */	lis r30, lbl_805C32A8@ha
/* 802FEA7C 002C803C  7F 83 E3 78 */	mr r3, r28
/* 802FEA80 002C8040  7F E5 FB 78 */	mr r5, r31
/* 802FEA84 002C8044  38 9E 32 A8 */	addi r4, r30, lbl_805C32A8@l
/* 802FEA88 002C8048  48 00 30 BD */	bl rfc_parse_data
/* 802FEA8C 002C804C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 802FEA90 002C8050  7C 7D 1B 78 */	mr r29, r3
/* 802FEA94 002C8054  28 04 00 32 */	cmplwi r4, 0x32
/* 802FEA98 002C8058  40 82 00 10 */	bne lbl_802FEAA8
/* 802FEA9C 002C805C  7F E3 FB 78 */	mr r3, r31
/* 802FEAA0 002C8060  4B FD CA 41 */	bl GKI_freebuf
/* 802FEAA4 002C8064  48 00 01 78 */	b lbl_802FEC1C
lbl_802FEAA8:
/* 802FEAA8 002C8068  88 1E 32 A8 */	lbz r0, lbl_805C32A8@l(r30)
/* 802FEAAC 002C806C  2C 00 00 00 */	cmpwi r0, 0
/* 802FEAB0 002C8070  40 82 00 34 */	bne lbl_802FEAE4
/* 802FEAB4 002C8074  28 04 00 04 */	cmplwi r4, 4
/* 802FEAB8 002C8078  40 82 00 14 */	bne lbl_802FEACC
/* 802FEABC 002C807C  7F 83 E3 78 */	mr r3, r28
/* 802FEAC0 002C8080  7F E4 FB 78 */	mr r4, r31
/* 802FEAC4 002C8084  48 00 35 F5 */	bl rfc_process_mx_message
/* 802FEAC8 002C8088  48 00 01 54 */	b lbl_802FEC1C
lbl_802FEACC:
/* 802FEACC 002C808C  7F 83 E3 78 */	mr r3, r28
/* 802FEAD0 002C8090  38 A0 00 00 */	li r5, 0
/* 802FEAD4 002C8094  48 00 02 B1 */	bl rfc_mx_sm_execute
/* 802FEAD8 002C8098  7F E3 FB 78 */	mr r3, r31
/* 802FEADC 002C809C  4B FD CA 05 */	bl GKI_freebuf
/* 802FEAE0 002C80A0  48 00 01 3C */	b lbl_802FEC1C
lbl_802FEAE4:
/* 802FEAE4 002C80A4  7F 83 E3 78 */	mr r3, r28
/* 802FEAE8 002C80A8  7C 04 03 78 */	mr r4, r0
/* 802FEAEC 002C80AC  4B FF F5 E5 */	bl port_find_mcb_dlci_port
/* 802FEAF0 002C80B0  2C 03 00 00 */	cmpwi r3, 0
/* 802FEAF4 002C80B4  7C 7B 1B 78 */	mr r27, r3
/* 802FEAF8 002C80B8  41 82 00 10 */	beq lbl_802FEB08
/* 802FEAFC 002C80BC  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 802FEB00 002C80C0  2C 00 00 00 */	cmpwi r0, 0
/* 802FEB04 002C80C4  40 82 00 B4 */	bne lbl_802FEBB8
lbl_802FEB08:
/* 802FEB08 002C80C8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802FEB0C 002C80CC  41 82 00 64 */	beq lbl_802FEB70
/* 802FEB10 002C80D0  88 9C 00 6D */	lbz r4, 0x6d(r28)
/* 802FEB14 002C80D4  2C 04 00 00 */	cmpwi r4, 0
/* 802FEB18 002C80D8  41 82 00 18 */	beq lbl_802FEB30
/* 802FEB1C 002C80DC  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FEB20 002C80E0  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FEB24 002C80E4  88 03 00 02 */	lbz r0, 2(r3)
/* 802FEB28 002C80E8  2C 00 00 00 */	cmpwi r0, 0
/* 802FEB2C 002C80EC  41 82 00 20 */	beq lbl_802FEB4C
lbl_802FEB30:
/* 802FEB30 002C80F0  2C 04 00 00 */	cmpwi r4, 0
/* 802FEB34 002C80F4  40 82 00 30 */	bne lbl_802FEB64
/* 802FEB38 002C80F8  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FEB3C 002C80FC  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FEB40 002C8100  88 03 00 02 */	lbz r0, 2(r3)
/* 802FEB44 002C8104  2C 00 00 00 */	cmpwi r0, 0
/* 802FEB48 002C8108  41 82 00 1C */	beq lbl_802FEB64
lbl_802FEB4C:
/* 802FEB4C 002C810C  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 802FEB50 002C8110  7F 83 E3 78 */	mr r3, r28
/* 802FEB54 002C8114  38 A4 32 A8 */	addi r5, r4, lbl_805C32A8@l
/* 802FEB58 002C8118  88 84 32 A8 */	lbz r4, lbl_805C32A8@l(r4)
/* 802FEB5C 002C811C  88 A5 00 04 */	lbz r5, 4(r5)
/* 802FEB60 002C8120  48 00 26 95 */	bl rfc_send_dm
lbl_802FEB64:
/* 802FEB64 002C8124  7F E3 FB 78 */	mr r3, r31
/* 802FEB68 002C8128  4B FD C9 79 */	bl GKI_freebuf
/* 802FEB6C 002C812C  48 00 00 B0 */	b lbl_802FEC1C
lbl_802FEB70:
/* 802FEB70 002C8130  3F C0 80 5C */	lis r30, lbl_805C32A8@ha
/* 802FEB74 002C8134  88 7E 32 A8 */	lbz r3, lbl_805C32A8@l(r30)
/* 802FEB78 002C8138  4B FF F5 AD */	bl port_find_dlci_port
/* 802FEB7C 002C813C  2C 03 00 00 */	cmpwi r3, 0
/* 802FEB80 002C8140  7C 7B 1B 78 */	mr r27, r3
/* 802FEB84 002C8144  40 82 00 20 */	bne lbl_802FEBA4
/* 802FEB88 002C8148  88 9E 32 A8 */	lbz r4, lbl_805C32A8@l(r30)
/* 802FEB8C 002C814C  7F 83 E3 78 */	mr r3, r28
/* 802FEB90 002C8150  38 A0 00 01 */	li r5, 1
/* 802FEB94 002C8154  48 00 26 61 */	bl rfc_send_dm
/* 802FEB98 002C8158  7F E3 FB 78 */	mr r3, r31
/* 802FEB9C 002C815C  4B FD C9 45 */	bl GKI_freebuf
/* 802FEBA0 002C8160  48 00 00 7C */	b lbl_802FEC1C
lbl_802FEBA4:
/* 802FEBA4 002C8164  88 1E 32 A8 */	lbz r0, lbl_805C32A8@l(r30)
/* 802FEBA8 002C8168  88 A3 00 00 */	lbz r5, 0(r3)
/* 802FEBAC 002C816C  7C 9C 02 14 */	add r4, r28, r0
/* 802FEBB0 002C8170  98 A4 00 24 */	stb r5, 0x24(r4)
/* 802FEBB4 002C8174  93 83 00 6C */	stw r28, 0x6c(r3)
lbl_802FEBB8:
/* 802FEBB8 002C8178  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 802FEBBC 002C817C  28 04 00 04 */	cmplwi r4, 4
/* 802FEBC0 002C8180  40 82 00 48 */	bne lbl_802FEC08
/* 802FEBC4 002C8184  A0 1F 00 02 */	lhz r0, 2(r31)
/* 802FEBC8 002C8188  2C 00 00 00 */	cmpwi r0, 0
/* 802FEBCC 002C818C  41 82 00 14 */	beq lbl_802FEBE0
/* 802FEBD0 002C8190  7F 63 DB 78 */	mr r3, r27
/* 802FEBD4 002C8194  7F E5 FB 78 */	mr r5, r31
/* 802FEBD8 002C8198  48 00 0D F1 */	bl rfc_port_sm_execute
/* 802FEBDC 002C819C  48 00 00 0C */	b lbl_802FEBE8
lbl_802FEBE0:
/* 802FEBE0 002C81A0  7F E3 FB 78 */	mr r3, r31
/* 802FEBE4 002C81A4  4B FD C8 FD */	bl GKI_freebuf
lbl_802FEBE8:
/* 802FEBE8 002C81A8  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FEBEC 002C81AC  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FEBF0 002C81B0  88 83 00 05 */	lbz r4, 5(r3)
/* 802FEBF4 002C81B4  2C 04 00 00 */	cmpwi r4, 0
/* 802FEBF8 002C81B8  41 82 00 24 */	beq lbl_802FEC1C
/* 802FEBFC 002C81BC  7F 63 DB 78 */	mr r3, r27
/* 802FEC00 002C81C0  48 00 41 91 */	bl rfc_inc_credit
/* 802FEC04 002C81C4  48 00 00 18 */	b lbl_802FEC1C
lbl_802FEC08:
/* 802FEC08 002C81C8  7F 63 DB 78 */	mr r3, r27
/* 802FEC0C 002C81CC  38 A0 00 00 */	li r5, 0
/* 802FEC10 002C81D0  48 00 0D B9 */	bl rfc_port_sm_execute
/* 802FEC14 002C81D4  7F E3 FB 78 */	mr r3, r31
/* 802FEC18 002C81D8  4B FD C8 C9 */	bl GKI_freebuf
lbl_802FEC1C:
/* 802FEC1C 002C81DC  39 61 00 20 */	addi r11, r1, 0x20
/* 802FEC20 002C81E0  4B FB B5 81 */	bl _restgpr_27
/* 802FEC24 002C81E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FEC28 002C81E8  7C 08 03 A6 */	mtlr r0
/* 802FEC2C 002C81EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802FEC30 002C81F0  4E 80 00 20 */	blr

.global RFCOMM_CongestionStatusInd
RFCOMM_CongestionStatusInd:
/* 802FEC34 002C81F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FEC38 002C81F8  7C 08 02 A6 */	mflr r0
/* 802FEC3C 002C81FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FEC40 002C8200  38 03 FF C0 */	addi r0, r3, -64
/* 802FEC44 002C8204  2C 00 00 0A */	cmpwi r0, 0xa
/* 802FEC48 002C8208  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FEC4C 002C820C  3F E0 80 55 */	lis r31, lbl_80548678@ha
/* 802FEC50 002C8210  3B FF 86 78 */	addi r31, r31, lbl_80548678@l
/* 802FEC54 002C8214  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FEC58 002C8218  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FEC5C 002C821C  7C 9D 23 78 */	mr r29, r4
/* 802FEC60 002C8220  93 81 00 10 */	stw r28, 0x10(r1)
/* 802FEC64 002C8224  7C 7C 1B 78 */	mr r28, r3
/* 802FEC68 002C8228  41 80 00 30 */	blt lbl_802FEC98
/* 802FEC6C 002C822C  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FEC70 002C8230  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FEC74 002C8234  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FEC78 002C8238  28 00 00 01 */	cmplwi r0, 1
/* 802FEC7C 002C823C  41 80 00 14 */	blt lbl_802FEC90
/* 802FEC80 002C8240  7F 85 E3 78 */	mr r5, r28
/* 802FEC84 002C8244  38 9F 00 00 */	addi r4, r31, 0
/* 802FEC88 002C8248  3C 60 00 09 */	lis r3, 9
/* 802FEC8C 002C824C  4B FD F3 35 */	bl LogMsg_1
lbl_802FEC90:
/* 802FEC90 002C8250  3B C0 00 00 */	li r30, 0
/* 802FEC94 002C8254  48 00 00 50 */	b lbl_802FECE4
lbl_802FEC98:
/* 802FEC98 002C8258  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 802FEC9C 002C825C  54 00 10 3A */	slwi r0, r0, 2
/* 802FECA0 002C8260  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 802FECA4 002C8264  7C 85 02 14 */	add r4, r5, r0
/* 802FECA8 002C8268  83 C4 00 3C */	lwz r30, 0x3c(r4)
/* 802FECAC 002C826C  2C 1E 00 00 */	cmpwi r30, 0
/* 802FECB0 002C8270  41 82 00 34 */	beq lbl_802FECE4
/* 802FECB4 002C8274  A0 DE 00 68 */	lhz r6, 0x68(r30)
/* 802FECB8 002C8278  7C 06 18 40 */	cmplw r6, r3
/* 802FECBC 002C827C  41 82 00 28 */	beq lbl_802FECE4
/* 802FECC0 002C8280  88 05 04 14 */	lbz r0, 0x414(r5)
/* 802FECC4 002C8284  28 00 00 02 */	cmplwi r0, 2
/* 802FECC8 002C8288  41 80 00 18 */	blt lbl_802FECE0
/* 802FECCC 002C828C  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FECD0 002C8290  7F 85 E3 78 */	mr r5, r28
/* 802FECD4 002C8294  38 9F 00 1C */	addi r4, r31, 0x1c
/* 802FECD8 002C8298  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FECDC 002C829C  4B FD F3 05 */	bl LogMsg_2
lbl_802FECE0:
/* 802FECE0 002C82A0  3B C0 00 00 */	li r30, 0
lbl_802FECE4:
/* 802FECE4 002C82A4  2C 1E 00 00 */	cmpwi r30, 0
/* 802FECE8 002C82A8  40 82 00 2C */	bne lbl_802FED14
/* 802FECEC 002C82AC  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FECF0 002C82B0  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FECF4 002C82B4  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FECF8 002C82B8  28 00 00 01 */	cmplwi r0, 1
/* 802FECFC 002C82BC  41 80 00 4C */	blt lbl_802FED48
/* 802FED00 002C82C0  7F 85 E3 78 */	mr r5, r28
/* 802FED04 002C82C4  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802FED08 002C82C8  3C 60 00 09 */	lis r3, 9
/* 802FED0C 002C82CC  4B FD F2 B5 */	bl LogMsg_1
/* 802FED10 002C82D0  48 00 00 38 */	b lbl_802FED48
lbl_802FED14:
/* 802FED14 002C82D4  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FED18 002C82D8  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FED1C 002C82DC  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FED20 002C82E0  28 00 00 04 */	cmplwi r0, 4
/* 802FED24 002C82E4  41 80 00 18 */	blt lbl_802FED3C
/* 802FED28 002C82E8  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 802FED2C 002C82EC  7F 85 E3 78 */	mr r5, r28
/* 802FED30 002C82F0  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 802FED34 002C82F4  38 9F 01 14 */	addi r4, r31, 0x114
/* 802FED38 002C82F8  4B FD F2 89 */	bl LogMsg_1
lbl_802FED3C:
/* 802FED3C 002C82FC  7F C3 F3 78 */	mr r3, r30
/* 802FED40 002C8300  7F A4 EB 78 */	mr r4, r29
/* 802FED44 002C8304  48 00 1C F9 */	bl rfc_process_l2cap_congestion
lbl_802FED48:
/* 802FED48 002C8308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FED4C 002C830C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FED50 002C8310  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FED54 002C8314  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FED58 002C8318  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802FED5C 002C831C  7C 08 03 A6 */	mtlr r0
/* 802FED60 002C8320  38 21 00 20 */	addi r1, r1, 0x20
/* 802FED64 002C8324  4E 80 00 20 */	blr 

.global rfc_save_lcid_mcb
rfc_save_lcid_mcb:
/* 802FED68 002C8328  38 04 FF C0 */	addi r0, r4, -64
/* 802FED6C 002C832C  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 802FED70 002C8330  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 802FED74 002C8334  54 00 10 3A */	slwi r0, r0, 2
/* 802FED78 002C8338  7C 84 02 14 */	add r4, r4, r0
/* 802FED7C 002C833C  90 64 00 3C */	stw r3, 0x3c(r4)
/* 802FED80 002C8340  4E 80 00 20 */	blr 
