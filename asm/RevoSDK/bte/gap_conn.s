.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global gap_conn_init
gap_conn_init:
/* 802EFD64 002B9324  3D 40 80 2F */	lis r10, gap_connect_ind@ha
/* 802EFD68 002B9328  3D 20 80 5C */	lis r9, lbl_805C21C0@ha
/* 802EFD6C 002B932C  3D 00 80 2F */	lis r8, gap_connect_cfm@ha
/* 802EFD70 002B9330  3C E0 80 2F */	lis r7, gap_config_ind@ha
/* 802EFD74 002B9334  3C C0 80 2F */	lis r6, gap_config_cfm@ha
/* 802EFD78 002B9338  3C A0 80 2F */	lis r5, gap_disconnect_ind@ha
/* 802EFD7C 002B933C  3C 80 80 2F */	lis r4, gap_data_ind@ha
/* 802EFD80 002B9340  3C 60 80 2F */	lis r3, gap_congestion_ind@ha
/* 802EFD84 002B9344  39 4A FD D4 */	addi r10, r10, gap_connect_ind@l
/* 802EFD88 002B9348  39 29 21 C0 */	addi r9, r9, lbl_805C21C0@l
/* 802EFD8C 002B934C  38 00 00 00 */	li r0, 0
/* 802EFD90 002B9350  39 08 FF 60 */	addi r8, r8, gap_connect_cfm@l
/* 802EFD94 002B9354  38 E7 01 3C */	addi r7, r7, gap_config_ind@l
/* 802EFD98 002B9358  38 C6 02 78 */	addi r6, r6, gap_config_cfm@l
/* 802EFD9C 002B935C  38 A5 04 64 */	addi r5, r5, gap_disconnect_ind@l
/* 802EFDA0 002B9360  38 84 06 5C */	addi r4, r4, gap_data_ind@l
/* 802EFDA4 002B9364  38 63 07 6C */	addi r3, r3, gap_congestion_ind@l
/* 802EFDA8 002B9368  91 49 00 84 */	stw r10, 0x84(r9)
/* 802EFDAC 002B936C  91 09 00 88 */	stw r8, 0x88(r9)
/* 802EFDB0 002B9370  90 09 00 8C */	stw r0, 0x8c(r9)
/* 802EFDB4 002B9374  90 E9 00 90 */	stw r7, 0x90(r9)
/* 802EFDB8 002B9378  90 C9 00 94 */	stw r6, 0x94(r9)
/* 802EFDBC 002B937C  90 A9 00 98 */	stw r5, 0x98(r9)
/* 802EFDC0 002B9380  90 09 00 9C */	stw r0, 0x9c(r9)
/* 802EFDC4 002B9384  90 09 00 A0 */	stw r0, 0xa0(r9)
/* 802EFDC8 002B9388  90 89 00 A4 */	stw r4, 0xa4(r9)
/* 802EFDCC 002B938C  90 69 00 A8 */	stw r3, 0xa8(r9)
/* 802EFDD0 002B9390  4E 80 00 20 */	blr

.global gap_connect_ind
gap_connect_ind:
/* 802EFDD4 002B9394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EFDD8 002B9398  7C 08 02 A6 */	mflr r0
/* 802EFDDC 002B939C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EFDE0 002B93A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFDE4 002B93A4  4B FC A3 6D */	bl _savegpr_26
/* 802EFDE8 002B93A8  3C E0 80 5C */	lis r7, lbl_805C21C0@ha
/* 802EFDEC 002B93AC  7C 7A 1B 78 */	mr r26, r3
/* 802EFDF0 002B93B0  38 E7 21 C0 */	addi r7, r7, lbl_805C21C0@l
/* 802EFDF4 002B93B4  7C 9F 23 78 */	mr r31, r4
/* 802EFDF8 002B93B8  7C BB 2B 78 */	mr r27, r5
/* 802EFDFC 002B93BC  7C DC 33 78 */	mr r28, r6
/* 802EFE00 002B93C0  3B A7 00 AC */	addi r29, r7, 0xac
/* 802EFE04 002B93C4  3B C0 00 00 */	li r30, 0
lbl_802EFE08:
/* 802EFE08 002B93C8  88 1D 00 00 */	lbz r0, 0(r29)
/* 802EFE0C 002B93CC  28 00 00 01 */	cmplwi r0, 1
/* 802EFE10 002B93D0  40 82 00 34 */	bne lbl_802EFE44
/* 802EFE14 002B93D4  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 802EFE18 002B93D8  7C 00 D8 40 */	cmplw r0, r27
/* 802EFE1C 002B93DC  40 82 00 28 */	bne lbl_802EFE44
/* 802EFE20 002B93E0  88 1D 00 08 */	lbz r0, 8(r29)
/* 802EFE24 002B93E4  2C 00 00 00 */	cmpwi r0, 0
/* 802EFE28 002B93E8  41 82 00 2C */	beq lbl_802EFE54
/* 802EFE2C 002B93EC  7F 43 D3 78 */	mr r3, r26
/* 802EFE30 002B93F0  38 9D 00 09 */	addi r4, r29, 9
/* 802EFE34 002B93F4  38 A0 00 06 */	li r5, 6
/* 802EFE38 002B93F8  4B FC E9 F5 */	bl memcmp
/* 802EFE3C 002B93FC  2C 03 00 00 */	cmpwi r3, 0
/* 802EFE40 002B9400  41 82 00 14 */	beq lbl_802EFE54
lbl_802EFE44:
/* 802EFE44 002B9404  3B DE 00 01 */	addi r30, r30, 1
/* 802EFE48 002B9408  3B BD 00 60 */	addi r29, r29, 0x60
/* 802EFE4C 002B940C  28 1E 00 08 */	cmplwi r30, 8
/* 802EFE50 002B9410  41 80 FF B8 */	blt lbl_802EFE08
lbl_802EFE54:
/* 802EFE54 002B9414  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802EFE58 002B9418  28 00 00 08 */	cmplwi r0, 8
/* 802EFE5C 002B941C  40 82 00 80 */	bne lbl_802EFEDC
/* 802EFE60 002B9420  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802EFE64 002B9424  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802EFE68 002B9428  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802EFE6C 002B942C  28 00 00 02 */	cmplwi r0, 2
/* 802EFE70 002B9430  41 80 00 14 */	blt lbl_802EFE84
/* 802EFE74 002B9434  3C 60 00 0E */	lis r3, 0x000E0001@ha
/* 802EFE78 002B9438  38 8D 97 C0 */	addi r4, r13, lbl_80665940@sda21
/* 802EFE7C 002B943C  38 63 00 01 */	addi r3, r3, 0x000E0001@l
/* 802EFE80 002B9440  4B FE E1 21 */	bl LogMsg_0
lbl_802EFE84:
/* 802EFE84 002B9444  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802EFE88 002B9448  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802EFE8C 002B944C  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802EFE90 002B9450  28 00 00 02 */	cmplwi r0, 2
/* 802EFE94 002B9454  41 80 00 18 */	blt lbl_802EFEAC
/* 802EFE98 002B9458  3C 60 00 0E */	lis r3, 0x000E0001@ha
/* 802EFE9C 002B945C  3C 80 80 54 */	lis r4, lbl_805462D0@ha
/* 802EFEA0 002B9460  38 63 00 01 */	addi r3, r3, 0x000E0001@l
/* 802EFEA4 002B9464  38 84 62 D0 */	addi r4, r4, lbl_805462D0@l
/* 802EFEA8 002B9468  4B FE E0 F9 */	bl LogMsg_0
lbl_802EFEAC:
/* 802EFEAC 002B946C  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802EFEB0 002B9470  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802EFEB4 002B9474  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802EFEB8 002B9478  28 00 00 02 */	cmplwi r0, 2
/* 802EFEBC 002B947C  41 80 00 14 */	blt lbl_802EFED0
/* 802EFEC0 002B9480  3C 60 00 0E */	lis r3, 0x000E0001@ha
/* 802EFEC4 002B9484  38 8D 97 C0 */	addi r4, r13, lbl_80665940@sda21
/* 802EFEC8 002B9488  38 63 00 01 */	addi r3, r3, 0x000E0001@l
/* 802EFECC 002B948C  4B FE E0 D5 */	bl LogMsg_0
lbl_802EFED0:
/* 802EFED0 002B9490  7F E3 FB 78 */	mr r3, r31
/* 802EFED4 002B9494  48 00 71 A9 */	bl L2CA_DisconnectReq
/* 802EFED8 002B9498  48 00 00 70 */	b lbl_802EFF48
lbl_802EFEDC:
/* 802EFEDC 002B949C  38 00 00 03 */	li r0, 3
/* 802EFEE0 002B94A0  7F 44 D3 78 */	mr r4, r26
/* 802EFEE4 002B94A4  98 1D 00 00 */	stb r0, 0(r29)
/* 802EFEE8 002B94A8  38 7D 00 09 */	addi r3, r29, 9
/* 802EFEEC 002B94AC  38 A0 00 06 */	li r5, 6
/* 802EFEF0 002B94B0  4B D1 41 11 */	bl memcpy
/* 802EFEF4 002B94B4  B3 FD 00 06 */	sth r31, 6(r29)
/* 802EFEF8 002B94B8  7F 43 D3 78 */	mr r3, r26
/* 802EFEFC 002B94BC  7F 84 E3 78 */	mr r4, r28
/* 802EFF00 002B94C0  7F E5 FB 78 */	mr r5, r31
/* 802EFF04 002B94C4  38 C0 00 00 */	li r6, 0
/* 802EFF08 002B94C8  38 E0 00 00 */	li r7, 0
/* 802EFF0C 002B94CC  48 00 6E 59 */	bl L2CA_ConnectRsp
/* 802EFF10 002B94D0  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802EFF14 002B94D4  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802EFF18 002B94D8  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802EFF1C 002B94DC  28 00 00 04 */	cmplwi r0, 4
/* 802EFF20 002B94E0  41 80 00 1C */	blt lbl_802EFF3C
/* 802EFF24 002B94E4  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802EFF28 002B94E8  3C 80 80 54 */	lis r4, lbl_80546314@ha
/* 802EFF2C 002B94EC  A0 BD 00 06 */	lhz r5, 6(r29)
/* 802EFF30 002B94F0  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802EFF34 002B94F4  38 84 63 14 */	addi r4, r4, lbl_80546314@l
/* 802EFF38 002B94F8  4B FE E0 89 */	bl LogMsg_1
lbl_802EFF3C:
/* 802EFF3C 002B94FC  7F E3 FB 78 */	mr r3, r31
/* 802EFF40 002B9500  38 9D 00 24 */	addi r4, r29, 0x24
/* 802EFF44 002B9504  48 00 6F B1 */	bl L2CA_ConfigReq
lbl_802EFF48:
/* 802EFF48 002B9508  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFF4C 002B950C  4B FC A2 51 */	bl _restgpr_26
/* 802EFF50 002B9510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EFF54 002B9514  7C 08 03 A6 */	mtlr r0
/* 802EFF58 002B9518  38 21 00 20 */	addi r1, r1, 0x20
/* 802EFF5C 002B951C  4E 80 00 20 */	blr

.global gap_connect_cfm
gap_connect_cfm:
/* 802EFF60 002B9520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EFF64 002B9524  7C 08 02 A6 */	mflr r0
/* 802EFF68 002B9528  3C A0 80 5C */	lis r5, lbl_805C21C0@ha
/* 802EFF6C 002B952C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EFF70 002B9530  38 00 00 02 */	li r0, 2
/* 802EFF74 002B9534  38 A5 21 C0 */	addi r5, r5, lbl_805C21C0@l
/* 802EFF78 002B9538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EFF7C 002B953C  3B E5 00 AC */	addi r31, r5, 0xac
/* 802EFF80 002B9540  38 A0 00 00 */	li r5, 0
/* 802EFF84 002B9544  93 C1 00 08 */	stw r30, 8(r1)
/* 802EFF88 002B9548  7C 09 03 A6 */	mtctr r0
lbl_802EFF8C:
/* 802EFF8C 002B954C  88 1F 00 00 */	lbz r0, 0(r31)
/* 802EFF90 002B9550  2C 00 00 00 */	cmpwi r0, 0
/* 802EFF94 002B9554  41 82 00 14 */	beq lbl_802EFFA8
/* 802EFF98 002B9558  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802EFF9C 002B955C  7C 00 18 40 */	cmplw r0, r3
/* 802EFFA0 002B9560  40 82 00 08 */	bne lbl_802EFFA8
/* 802EFFA4 002B9564  48 00 00 74 */	b lbl_802F0018
lbl_802EFFA8:
/* 802EFFA8 002B9568  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802EFFAC 002B956C  38 A5 00 01 */	addi r5, r5, 1
/* 802EFFB0 002B9570  2C 00 00 00 */	cmpwi r0, 0
/* 802EFFB4 002B9574  41 82 00 14 */	beq lbl_802EFFC8
/* 802EFFB8 002B9578  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802EFFBC 002B957C  7C 00 18 40 */	cmplw r0, r3
/* 802EFFC0 002B9580  40 82 00 08 */	bne lbl_802EFFC8
/* 802EFFC4 002B9584  48 00 00 54 */	b lbl_802F0018
lbl_802EFFC8:
/* 802EFFC8 002B9588  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802EFFCC 002B958C  38 A5 00 01 */	addi r5, r5, 1
/* 802EFFD0 002B9590  2C 00 00 00 */	cmpwi r0, 0
/* 802EFFD4 002B9594  41 82 00 14 */	beq lbl_802EFFE8
/* 802EFFD8 002B9598  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802EFFDC 002B959C  7C 00 18 40 */	cmplw r0, r3
/* 802EFFE0 002B95A0  40 82 00 08 */	bne lbl_802EFFE8
/* 802EFFE4 002B95A4  48 00 00 34 */	b lbl_802F0018
lbl_802EFFE8:
/* 802EFFE8 002B95A8  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802EFFEC 002B95AC  38 A5 00 01 */	addi r5, r5, 1
/* 802EFFF0 002B95B0  2C 00 00 00 */	cmpwi r0, 0
/* 802EFFF4 002B95B4  41 82 00 14 */	beq lbl_802F0008
/* 802EFFF8 002B95B8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802EFFFC 002B95BC  7C 00 18 40 */	cmplw r0, r3
/* 802F0000 002B95C0  40 82 00 08 */	bne lbl_802F0008
/* 802F0004 002B95C4  48 00 00 14 */	b lbl_802F0018
lbl_802F0008:
/* 802F0008 002B95C8  38 A5 00 01 */	addi r5, r5, 1
/* 802F000C 002B95CC  3B FF 00 60 */	addi r31, r31, 0x60
/* 802F0010 002B95D0  42 00 FF 7C */	bdnz lbl_802EFF8C
/* 802F0014 002B95D4  3B E0 00 00 */	li r31, 0
lbl_802F0018:
/* 802F0018 002B95D8  2C 1F 00 00 */	cmpwi r31, 0
/* 802F001C 002B95DC  41 82 01 08 */	beq lbl_802F0124
/* 802F0020 002B95E0  2C 04 00 00 */	cmpwi r4, 0
/* 802F0024 002B95E4  40 82 00 24 */	bne lbl_802F0048
/* 802F0028 002B95E8  88 1F 00 00 */	lbz r0, 0(r31)
/* 802F002C 002B95EC  28 00 00 02 */	cmplwi r0, 2
/* 802F0030 002B95F0  40 82 00 18 */	bne lbl_802F0048
/* 802F0034 002B95F4  38 00 00 03 */	li r0, 3
/* 802F0038 002B95F8  38 9F 00 24 */	addi r4, r31, 0x24
/* 802F003C 002B95FC  98 1F 00 00 */	stb r0, 0(r31)
/* 802F0040 002B9600  48 00 6E B5 */	bl L2CA_ConfigReq
/* 802F0044 002B9604  48 00 00 E0 */	b lbl_802F0124
lbl_802F0048:
/* 802F0048 002B9608  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 802F004C 002B960C  2C 0C 00 00 */	cmpwi r12, 0
/* 802F0050 002B9610  41 82 00 14 */	beq lbl_802F0064
/* 802F0054 002B9614  A0 7F 00 04 */	lhz r3, 4(r31)
/* 802F0058 002B9618  38 80 01 01 */	li r4, 0x101
/* 802F005C 002B961C  7D 89 03 A6 */	mtctr r12
/* 802F0060 002B9620  4E 80 04 21 */	bctrl 
lbl_802F0064:
/* 802F0064 002B9624  A3 DF 00 10 */	lhz r30, 0x10(r31)
/* 802F0068 002B9628  48 00 00 10 */	b lbl_802F0078
lbl_802F006C:
/* 802F006C 002B962C  38 7F 00 14 */	addi r3, r31, 0x14
/* 802F0070 002B9630  4B FE BB 21 */	bl GKI_dequeue
/* 802F0074 002B9634  4B FE B4 6D */	bl GKI_freebuf
lbl_802F0078:
/* 802F0078 002B9638  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802F007C 002B963C  2C 00 00 00 */	cmpwi r0, 0
/* 802F0080 002B9640  40 82 FF EC */	bne lbl_802F006C
/* 802F0084 002B9644  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802F0088 002B9648  38 80 00 00 */	li r4, 0
/* 802F008C 002B964C  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802F0090 002B9650  38 00 00 02 */	li r0, 2
/* 802F0094 002B9654  98 9F 00 00 */	stb r4, 0(r31)
/* 802F0098 002B9658  38 83 00 AC */	addi r4, r3, 0xac
/* 802F009C 002B965C  38 60 00 00 */	li r3, 0
/* 802F00A0 002B9660  7C 09 03 A6 */	mtctr r0
lbl_802F00A4:
/* 802F00A4 002B9664  88 04 00 00 */	lbz r0, 0(r4)
/* 802F00A8 002B9668  2C 00 00 00 */	cmpwi r0, 0
/* 802F00AC 002B966C  41 82 00 10 */	beq lbl_802F00BC
/* 802F00B0 002B9670  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 802F00B4 002B9674  7C 00 F0 40 */	cmplw r0, r30
/* 802F00B8 002B9678  41 82 00 6C */	beq lbl_802F0124
lbl_802F00BC:
/* 802F00BC 002B967C  88 04 00 60 */	lbz r0, 0x60(r4)
/* 802F00C0 002B9680  38 63 00 01 */	addi r3, r3, 1
/* 802F00C4 002B9684  2C 00 00 00 */	cmpwi r0, 0
/* 802F00C8 002B9688  41 82 00 10 */	beq lbl_802F00D8
/* 802F00CC 002B968C  A0 04 00 70 */	lhz r0, 0x70(r4)
/* 802F00D0 002B9690  7C 00 F0 40 */	cmplw r0, r30
/* 802F00D4 002B9694  41 82 00 50 */	beq lbl_802F0124
lbl_802F00D8:
/* 802F00D8 002B9698  88 04 00 C0 */	lbz r0, 0xc0(r4)
/* 802F00DC 002B969C  38 63 00 01 */	addi r3, r3, 1
/* 802F00E0 002B96A0  2C 00 00 00 */	cmpwi r0, 0
/* 802F00E4 002B96A4  41 82 00 10 */	beq lbl_802F00F4
/* 802F00E8 002B96A8  A0 04 00 D0 */	lhz r0, 0xd0(r4)
/* 802F00EC 002B96AC  7C 00 F0 40 */	cmplw r0, r30
/* 802F00F0 002B96B0  41 82 00 34 */	beq lbl_802F0124
lbl_802F00F4:
/* 802F00F4 002B96B4  88 04 01 20 */	lbz r0, 0x120(r4)
/* 802F00F8 002B96B8  38 63 00 01 */	addi r3, r3, 1
/* 802F00FC 002B96BC  2C 00 00 00 */	cmpwi r0, 0
/* 802F0100 002B96C0  41 82 00 10 */	beq lbl_802F0110
/* 802F0104 002B96C4  A0 04 01 30 */	lhz r0, 0x130(r4)
/* 802F0108 002B96C8  7C 00 F0 40 */	cmplw r0, r30
/* 802F010C 002B96CC  41 82 00 18 */	beq lbl_802F0124
lbl_802F0110:
/* 802F0110 002B96D0  38 63 00 01 */	addi r3, r3, 1
/* 802F0114 002B96D4  38 84 01 80 */	addi r4, r4, 0x180
/* 802F0118 002B96D8  42 00 FF 8C */	bdnz lbl_802F00A4
/* 802F011C 002B96DC  7F C3 F3 78 */	mr r3, r30
/* 802F0120 002B96E0  48 00 69 81 */	bl L2CA_Deregister
lbl_802F0124:
/* 802F0124 002B96E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0128 002B96E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F012C 002B96EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F0130 002B96F0  7C 08 03 A6 */	mtlr r0
/* 802F0134 002B96F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0138 002B96F8  4E 80 00 20 */	blr

.global gap_config_ind
gap_config_ind:
/* 802F013C 002B96FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0140 002B9700  7C 08 02 A6 */	mflr r0
/* 802F0144 002B9704  3C A0 80 5C */	lis r5, lbl_805C21C0@ha
/* 802F0148 002B9708  38 C0 00 00 */	li r6, 0
/* 802F014C 002B970C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0150 002B9710  38 00 00 02 */	li r0, 2
/* 802F0154 002B9714  38 A5 21 C0 */	addi r5, r5, lbl_805C21C0@l
/* 802F0158 002B9718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F015C 002B971C  3B E5 00 AC */	addi r31, r5, 0xac
/* 802F0160 002B9720  7C 09 03 A6 */	mtctr r0
lbl_802F0164:
/* 802F0164 002B9724  88 1F 00 00 */	lbz r0, 0(r31)
/* 802F0168 002B9728  2C 00 00 00 */	cmpwi r0, 0
/* 802F016C 002B972C  41 82 00 14 */	beq lbl_802F0180
/* 802F0170 002B9730  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F0174 002B9734  7C 00 18 40 */	cmplw r0, r3
/* 802F0178 002B9738  40 82 00 08 */	bne lbl_802F0180
/* 802F017C 002B973C  48 00 00 74 */	b lbl_802F01F0
lbl_802F0180:
/* 802F0180 002B9740  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F0184 002B9744  38 C6 00 01 */	addi r6, r6, 1
/* 802F0188 002B9748  2C 00 00 00 */	cmpwi r0, 0
/* 802F018C 002B974C  41 82 00 14 */	beq lbl_802F01A0
/* 802F0190 002B9750  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F0194 002B9754  7C 00 18 40 */	cmplw r0, r3
/* 802F0198 002B9758  40 82 00 08 */	bne lbl_802F01A0
/* 802F019C 002B975C  48 00 00 54 */	b lbl_802F01F0
lbl_802F01A0:
/* 802F01A0 002B9760  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F01A4 002B9764  38 C6 00 01 */	addi r6, r6, 1
/* 802F01A8 002B9768  2C 00 00 00 */	cmpwi r0, 0
/* 802F01AC 002B976C  41 82 00 14 */	beq lbl_802F01C0
/* 802F01B0 002B9770  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F01B4 002B9774  7C 00 18 40 */	cmplw r0, r3
/* 802F01B8 002B9778  40 82 00 08 */	bne lbl_802F01C0
/* 802F01BC 002B977C  48 00 00 34 */	b lbl_802F01F0
lbl_802F01C0:
/* 802F01C0 002B9780  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F01C4 002B9784  38 C6 00 01 */	addi r6, r6, 1
/* 802F01C8 002B9788  2C 00 00 00 */	cmpwi r0, 0
/* 802F01CC 002B978C  41 82 00 14 */	beq lbl_802F01E0
/* 802F01D0 002B9790  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F01D4 002B9794  7C 00 18 40 */	cmplw r0, r3
/* 802F01D8 002B9798  40 82 00 08 */	bne lbl_802F01E0
/* 802F01DC 002B979C  48 00 00 14 */	b lbl_802F01F0
lbl_802F01E0:
/* 802F01E0 002B97A0  38 C6 00 01 */	addi r6, r6, 1
/* 802F01E4 002B97A4  3B FF 00 60 */	addi r31, r31, 0x60
/* 802F01E8 002B97A8  42 00 FF 7C */	bdnz lbl_802F0164
/* 802F01EC 002B97AC  3B E0 00 00 */	li r31, 0
lbl_802F01F0:
/* 802F01F0 002B97B0  2C 1F 00 00 */	cmpwi r31, 0
/* 802F01F4 002B97B4  41 82 00 70 */	beq lbl_802F0264
/* 802F01F8 002B97B8  88 04 00 02 */	lbz r0, 2(r4)
/* 802F01FC 002B97BC  2C 00 00 00 */	cmpwi r0, 0
/* 802F0200 002B97C0  41 82 00 10 */	beq lbl_802F0210
/* 802F0204 002B97C4  A0 04 00 04 */	lhz r0, 4(r4)
/* 802F0208 002B97C8  28 00 06 9B */	cmplwi r0, 0x69b
/* 802F020C 002B97CC  40 81 00 10 */	ble lbl_802F021C
lbl_802F0210:
/* 802F0210 002B97D0  38 00 06 9B */	li r0, 0x69b
/* 802F0214 002B97D4  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 802F0218 002B97D8  48 00 00 08 */	b lbl_802F0220
lbl_802F021C:
/* 802F021C 002B97DC  B0 1F 00 12 */	sth r0, 0x12(r31)
lbl_802F0220:
/* 802F0220 002B97E0  38 00 00 00 */	li r0, 0
/* 802F0224 002B97E4  98 04 00 20 */	stb r0, 0x20(r4)
/* 802F0228 002B97E8  98 04 00 02 */	stb r0, 2(r4)
/* 802F022C 002B97EC  B0 04 00 00 */	sth r0, 0(r4)
/* 802F0230 002B97F0  48 00 6D 7D */	bl L2CA_ConfigRsp
/* 802F0234 002B97F4  88 1F 00 01 */	lbz r0, 1(r31)
/* 802F0238 002B97F8  60 03 00 02 */	ori r3, r0, 2
/* 802F023C 002B97FC  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 802F0240 002B9800  98 7F 00 01 */	stb r3, 1(r31)
/* 802F0244 002B9804  41 82 00 20 */	beq lbl_802F0264
/* 802F0248 002B9808  38 00 00 04 */	li r0, 4
/* 802F024C 002B980C  38 80 01 00 */	li r4, 0x100
/* 802F0250 002B9810  98 1F 00 00 */	stb r0, 0(r31)
/* 802F0254 002B9814  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 802F0258 002B9818  A0 7F 00 04 */	lhz r3, 4(r31)
/* 802F025C 002B981C  7D 89 03 A6 */	mtctr r12
/* 802F0260 002B9820  4E 80 04 21 */	bctrl 
lbl_802F0264:
/* 802F0264 002B9824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0268 002B9828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F026C 002B982C  7C 08 03 A6 */	mtlr r0
/* 802F0270 002B9830  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0274 002B9834  4E 80 00 20 */	blr

.global gap_config_cfm
gap_config_cfm:
/* 802F0278 002B9838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F027C 002B983C  7C 08 02 A6 */	mflr r0
/* 802F0280 002B9840  3C A0 80 5C */	lis r5, lbl_805C21C0@ha
/* 802F0284 002B9844  38 C0 00 00 */	li r6, 0
/* 802F0288 002B9848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F028C 002B984C  38 00 00 02 */	li r0, 2
/* 802F0290 002B9850  38 A5 21 C0 */	addi r5, r5, lbl_805C21C0@l
/* 802F0294 002B9854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0298 002B9858  3B E5 00 AC */	addi r31, r5, 0xac
/* 802F029C 002B985C  93 C1 00 08 */	stw r30, 8(r1)
/* 802F02A0 002B9860  7C 09 03 A6 */	mtctr r0
lbl_802F02A4:
/* 802F02A4 002B9864  88 1F 00 00 */	lbz r0, 0(r31)
/* 802F02A8 002B9868  2C 00 00 00 */	cmpwi r0, 0
/* 802F02AC 002B986C  41 82 00 14 */	beq lbl_802F02C0
/* 802F02B0 002B9870  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F02B4 002B9874  7C 00 18 40 */	cmplw r0, r3
/* 802F02B8 002B9878  40 82 00 08 */	bne lbl_802F02C0
/* 802F02BC 002B987C  48 00 00 74 */	b lbl_802F0330
lbl_802F02C0:
/* 802F02C0 002B9880  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F02C4 002B9884  38 C6 00 01 */	addi r6, r6, 1
/* 802F02C8 002B9888  2C 00 00 00 */	cmpwi r0, 0
/* 802F02CC 002B988C  41 82 00 14 */	beq lbl_802F02E0
/* 802F02D0 002B9890  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F02D4 002B9894  7C 00 18 40 */	cmplw r0, r3
/* 802F02D8 002B9898  40 82 00 08 */	bne lbl_802F02E0
/* 802F02DC 002B989C  48 00 00 54 */	b lbl_802F0330
lbl_802F02E0:
/* 802F02E0 002B98A0  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F02E4 002B98A4  38 C6 00 01 */	addi r6, r6, 1
/* 802F02E8 002B98A8  2C 00 00 00 */	cmpwi r0, 0
/* 802F02EC 002B98AC  41 82 00 14 */	beq lbl_802F0300
/* 802F02F0 002B98B0  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F02F4 002B98B4  7C 00 18 40 */	cmplw r0, r3
/* 802F02F8 002B98B8  40 82 00 08 */	bne lbl_802F0300
/* 802F02FC 002B98BC  48 00 00 34 */	b lbl_802F0330
lbl_802F0300:
/* 802F0300 002B98C0  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F0304 002B98C4  38 C6 00 01 */	addi r6, r6, 1
/* 802F0308 002B98C8  2C 00 00 00 */	cmpwi r0, 0
/* 802F030C 002B98CC  41 82 00 14 */	beq lbl_802F0320
/* 802F0310 002B98D0  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F0314 002B98D4  7C 00 18 40 */	cmplw r0, r3
/* 802F0318 002B98D8  40 82 00 08 */	bne lbl_802F0320
/* 802F031C 002B98DC  48 00 00 14 */	b lbl_802F0330
lbl_802F0320:
/* 802F0320 002B98E0  38 C6 00 01 */	addi r6, r6, 1
/* 802F0324 002B98E4  3B FF 00 60 */	addi r31, r31, 0x60
/* 802F0328 002B98E8  42 00 FF 7C */	bdnz lbl_802F02A4
/* 802F032C 002B98EC  3B E0 00 00 */	li r31, 0
lbl_802F0330:
/* 802F0330 002B98F0  2C 1F 00 00 */	cmpwi r31, 0
/* 802F0334 002B98F4  41 82 01 18 */	beq lbl_802F044C
/* 802F0338 002B98F8  A0 04 00 00 */	lhz r0, 0(r4)
/* 802F033C 002B98FC  2C 00 00 00 */	cmpwi r0, 0
/* 802F0340 002B9900  40 82 00 38 */	bne lbl_802F0378
/* 802F0344 002B9904  88 1F 00 01 */	lbz r0, 1(r31)
/* 802F0348 002B9908  60 03 00 04 */	ori r3, r0, 4
/* 802F034C 002B990C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 802F0350 002B9910  98 7F 00 01 */	stb r3, 1(r31)
/* 802F0354 002B9914  41 82 00 F8 */	beq lbl_802F044C
/* 802F0358 002B9918  38 00 00 04 */	li r0, 4
/* 802F035C 002B991C  38 80 01 00 */	li r4, 0x100
/* 802F0360 002B9920  98 1F 00 00 */	stb r0, 0(r31)
/* 802F0364 002B9924  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 802F0368 002B9928  A0 7F 00 04 */	lhz r3, 4(r31)
/* 802F036C 002B992C  7D 89 03 A6 */	mtctr r12
/* 802F0370 002B9930  4E 80 04 21 */	bctrl 
/* 802F0374 002B9934  48 00 00 D8 */	b lbl_802F044C
lbl_802F0378:
/* 802F0378 002B9938  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 802F037C 002B993C  38 80 01 01 */	li r4, 0x101
/* 802F0380 002B9940  A0 7F 00 04 */	lhz r3, 4(r31)
/* 802F0384 002B9944  7D 89 03 A6 */	mtctr r12
/* 802F0388 002B9948  4E 80 04 21 */	bctrl 
/* 802F038C 002B994C  A3 DF 00 10 */	lhz r30, 0x10(r31)
/* 802F0390 002B9950  48 00 00 10 */	b lbl_802F03A0
lbl_802F0394:
/* 802F0394 002B9954  38 7F 00 14 */	addi r3, r31, 0x14
/* 802F0398 002B9958  4B FE B7 F9 */	bl GKI_dequeue
/* 802F039C 002B995C  4B FE B1 45 */	bl GKI_freebuf
lbl_802F03A0:
/* 802F03A0 002B9960  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802F03A4 002B9964  2C 00 00 00 */	cmpwi r0, 0
/* 802F03A8 002B9968  40 82 FF EC */	bne lbl_802F0394
/* 802F03AC 002B996C  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802F03B0 002B9970  38 80 00 00 */	li r4, 0
/* 802F03B4 002B9974  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802F03B8 002B9978  38 00 00 02 */	li r0, 2
/* 802F03BC 002B997C  98 9F 00 00 */	stb r4, 0(r31)
/* 802F03C0 002B9980  38 83 00 AC */	addi r4, r3, 0xac
/* 802F03C4 002B9984  38 60 00 00 */	li r3, 0
/* 802F03C8 002B9988  7C 09 03 A6 */	mtctr r0
lbl_802F03CC:
/* 802F03CC 002B998C  88 04 00 00 */	lbz r0, 0(r4)
/* 802F03D0 002B9990  2C 00 00 00 */	cmpwi r0, 0
/* 802F03D4 002B9994  41 82 00 10 */	beq lbl_802F03E4
/* 802F03D8 002B9998  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 802F03DC 002B999C  7C 00 F0 40 */	cmplw r0, r30
/* 802F03E0 002B99A0  41 82 00 6C */	beq lbl_802F044C
lbl_802F03E4:
/* 802F03E4 002B99A4  88 04 00 60 */	lbz r0, 0x60(r4)
/* 802F03E8 002B99A8  38 63 00 01 */	addi r3, r3, 1
/* 802F03EC 002B99AC  2C 00 00 00 */	cmpwi r0, 0
/* 802F03F0 002B99B0  41 82 00 10 */	beq lbl_802F0400
/* 802F03F4 002B99B4  A0 04 00 70 */	lhz r0, 0x70(r4)
/* 802F03F8 002B99B8  7C 00 F0 40 */	cmplw r0, r30
/* 802F03FC 002B99BC  41 82 00 50 */	beq lbl_802F044C
lbl_802F0400:
/* 802F0400 002B99C0  88 04 00 C0 */	lbz r0, 0xc0(r4)
/* 802F0404 002B99C4  38 63 00 01 */	addi r3, r3, 1
/* 802F0408 002B99C8  2C 00 00 00 */	cmpwi r0, 0
/* 802F040C 002B99CC  41 82 00 10 */	beq lbl_802F041C
/* 802F0410 002B99D0  A0 04 00 D0 */	lhz r0, 0xd0(r4)
/* 802F0414 002B99D4  7C 00 F0 40 */	cmplw r0, r30
/* 802F0418 002B99D8  41 82 00 34 */	beq lbl_802F044C
lbl_802F041C:
/* 802F041C 002B99DC  88 04 01 20 */	lbz r0, 0x120(r4)
/* 802F0420 002B99E0  38 63 00 01 */	addi r3, r3, 1
/* 802F0424 002B99E4  2C 00 00 00 */	cmpwi r0, 0
/* 802F0428 002B99E8  41 82 00 10 */	beq lbl_802F0438
/* 802F042C 002B99EC  A0 04 01 30 */	lhz r0, 0x130(r4)
/* 802F0430 002B99F0  7C 00 F0 40 */	cmplw r0, r30
/* 802F0434 002B99F4  41 82 00 18 */	beq lbl_802F044C
lbl_802F0438:
/* 802F0438 002B99F8  38 63 00 01 */	addi r3, r3, 1
/* 802F043C 002B99FC  38 84 01 80 */	addi r4, r4, 0x180
/* 802F0440 002B9A00  42 00 FF 8C */	bdnz lbl_802F03CC
/* 802F0444 002B9A04  7F C3 F3 78 */	mr r3, r30
/* 802F0448 002B9A08  48 00 66 59 */	bl L2CA_Deregister
lbl_802F044C:
/* 802F044C 002B9A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0450 002B9A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F0454 002B9A14  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F0458 002B9A18  7C 08 03 A6 */	mtlr r0
/* 802F045C 002B9A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0460 002B9A20  4E 80 00 20 */	blr

.global gap_disconnect_ind
gap_disconnect_ind:
/* 802F0464 002B9A24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0468 002B9A28  7C 08 02 A6 */	mflr r0
/* 802F046C 002B9A2C  3C A0 80 5C */	lis r5, lbl_805C21C0@ha
/* 802F0470 002B9A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0474 002B9A34  38 A5 21 C0 */	addi r5, r5, lbl_805C21C0@l
/* 802F0478 002B9A38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F047C 002B9A3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F0480 002B9A40  7C 9E 23 78 */	mr r30, r4
/* 802F0484 002B9A44  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F0488 002B9A48  7C 7D 1B 78 */	mr r29, r3
/* 802F048C 002B9A4C  88 05 00 28 */	lbz r0, 0x28(r5)
/* 802F0490 002B9A50  28 00 00 04 */	cmplwi r0, 4
/* 802F0494 002B9A54  41 80 00 1C */	blt lbl_802F04B0
/* 802F0498 002B9A58  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F049C 002B9A5C  3C 80 80 54 */	lis r4, lbl_80546340@ha
/* 802F04A0 002B9A60  7F A5 EB 78 */	mr r5, r29
/* 802F04A4 002B9A64  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F04A8 002B9A68  38 84 63 40 */	addi r4, r4, lbl_80546340@l
/* 802F04AC 002B9A6C  4B FE DB 15 */	bl LogMsg_1
lbl_802F04B0:
/* 802F04B0 002B9A70  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802F04B4 002B9A74  38 00 00 02 */	li r0, 2
/* 802F04B8 002B9A78  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802F04BC 002B9A7C  38 80 00 00 */	li r4, 0
/* 802F04C0 002B9A80  3B E3 00 AC */	addi r31, r3, 0xac
/* 802F04C4 002B9A84  7C 09 03 A6 */	mtctr r0
lbl_802F04C8:
/* 802F04C8 002B9A88  88 1F 00 00 */	lbz r0, 0(r31)
/* 802F04CC 002B9A8C  2C 00 00 00 */	cmpwi r0, 0
/* 802F04D0 002B9A90  41 82 00 14 */	beq lbl_802F04E4
/* 802F04D4 002B9A94  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F04D8 002B9A98  7C 00 E8 40 */	cmplw r0, r29
/* 802F04DC 002B9A9C  40 82 00 08 */	bne lbl_802F04E4
/* 802F04E0 002B9AA0  48 00 00 74 */	b lbl_802F0554
lbl_802F04E4:
/* 802F04E4 002B9AA4  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F04E8 002B9AA8  38 84 00 01 */	addi r4, r4, 1
/* 802F04EC 002B9AAC  2C 00 00 00 */	cmpwi r0, 0
/* 802F04F0 002B9AB0  41 82 00 14 */	beq lbl_802F0504
/* 802F04F4 002B9AB4  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F04F8 002B9AB8  7C 00 E8 40 */	cmplw r0, r29
/* 802F04FC 002B9ABC  40 82 00 08 */	bne lbl_802F0504
/* 802F0500 002B9AC0  48 00 00 54 */	b lbl_802F0554
lbl_802F0504:
/* 802F0504 002B9AC4  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F0508 002B9AC8  38 84 00 01 */	addi r4, r4, 1
/* 802F050C 002B9ACC  2C 00 00 00 */	cmpwi r0, 0
/* 802F0510 002B9AD0  41 82 00 14 */	beq lbl_802F0524
/* 802F0514 002B9AD4  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F0518 002B9AD8  7C 00 E8 40 */	cmplw r0, r29
/* 802F051C 002B9ADC  40 82 00 08 */	bne lbl_802F0524
/* 802F0520 002B9AE0  48 00 00 34 */	b lbl_802F0554
lbl_802F0524:
/* 802F0524 002B9AE4  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F0528 002B9AE8  38 84 00 01 */	addi r4, r4, 1
/* 802F052C 002B9AEC  2C 00 00 00 */	cmpwi r0, 0
/* 802F0530 002B9AF0  41 82 00 14 */	beq lbl_802F0544
/* 802F0534 002B9AF4  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F0538 002B9AF8  7C 00 E8 40 */	cmplw r0, r29
/* 802F053C 002B9AFC  40 82 00 08 */	bne lbl_802F0544
/* 802F0540 002B9B00  48 00 00 14 */	b lbl_802F0554
lbl_802F0544:
/* 802F0544 002B9B04  38 84 00 01 */	addi r4, r4, 1
/* 802F0548 002B9B08  3B FF 00 60 */	addi r31, r31, 0x60
/* 802F054C 002B9B0C  42 00 FF 7C */	bdnz lbl_802F04C8
/* 802F0550 002B9B10  3B E0 00 00 */	li r31, 0
lbl_802F0554:
/* 802F0554 002B9B14  2C 1F 00 00 */	cmpwi r31, 0
/* 802F0558 002B9B18  41 82 00 E8 */	beq lbl_802F0640
/* 802F055C 002B9B1C  2C 1E 00 00 */	cmpwi r30, 0
/* 802F0560 002B9B20  41 82 00 0C */	beq lbl_802F056C
/* 802F0564 002B9B24  7F A3 EB 78 */	mr r3, r29
/* 802F0568 002B9B28  48 00 6B B9 */	bl L2CA_DisconnectRsp
lbl_802F056C:
/* 802F056C 002B9B2C  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 802F0570 002B9B30  38 80 01 01 */	li r4, 0x101
/* 802F0574 002B9B34  A0 7F 00 04 */	lhz r3, 4(r31)
/* 802F0578 002B9B38  7D 89 03 A6 */	mtctr r12
/* 802F057C 002B9B3C  4E 80 04 21 */	bctrl 
/* 802F0580 002B9B40  A3 DF 00 10 */	lhz r30, 0x10(r31)
/* 802F0584 002B9B44  48 00 00 10 */	b lbl_802F0594
lbl_802F0588:
/* 802F0588 002B9B48  38 7F 00 14 */	addi r3, r31, 0x14
/* 802F058C 002B9B4C  4B FE B6 05 */	bl GKI_dequeue
/* 802F0590 002B9B50  4B FE AF 51 */	bl GKI_freebuf
lbl_802F0594:
/* 802F0594 002B9B54  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802F0598 002B9B58  2C 00 00 00 */	cmpwi r0, 0
/* 802F059C 002B9B5C  40 82 FF EC */	bne lbl_802F0588
/* 802F05A0 002B9B60  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802F05A4 002B9B64  38 80 00 00 */	li r4, 0
/* 802F05A8 002B9B68  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802F05AC 002B9B6C  38 00 00 02 */	li r0, 2
/* 802F05B0 002B9B70  98 9F 00 00 */	stb r4, 0(r31)
/* 802F05B4 002B9B74  38 83 00 AC */	addi r4, r3, 0xac
/* 802F05B8 002B9B78  38 60 00 00 */	li r3, 0
/* 802F05BC 002B9B7C  7C 09 03 A6 */	mtctr r0
lbl_802F05C0:
/* 802F05C0 002B9B80  88 04 00 00 */	lbz r0, 0(r4)
/* 802F05C4 002B9B84  2C 00 00 00 */	cmpwi r0, 0
/* 802F05C8 002B9B88  41 82 00 10 */	beq lbl_802F05D8
/* 802F05CC 002B9B8C  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 802F05D0 002B9B90  7C 00 F0 40 */	cmplw r0, r30
/* 802F05D4 002B9B94  41 82 00 6C */	beq lbl_802F0640
lbl_802F05D8:
/* 802F05D8 002B9B98  88 04 00 60 */	lbz r0, 0x60(r4)
/* 802F05DC 002B9B9C  38 63 00 01 */	addi r3, r3, 1
/* 802F05E0 002B9BA0  2C 00 00 00 */	cmpwi r0, 0
/* 802F05E4 002B9BA4  41 82 00 10 */	beq lbl_802F05F4
/* 802F05E8 002B9BA8  A0 04 00 70 */	lhz r0, 0x70(r4)
/* 802F05EC 002B9BAC  7C 00 F0 40 */	cmplw r0, r30
/* 802F05F0 002B9BB0  41 82 00 50 */	beq lbl_802F0640
lbl_802F05F4:
/* 802F05F4 002B9BB4  88 04 00 C0 */	lbz r0, 0xc0(r4)
/* 802F05F8 002B9BB8  38 63 00 01 */	addi r3, r3, 1
/* 802F05FC 002B9BBC  2C 00 00 00 */	cmpwi r0, 0
/* 802F0600 002B9BC0  41 82 00 10 */	beq lbl_802F0610
/* 802F0604 002B9BC4  A0 04 00 D0 */	lhz r0, 0xd0(r4)
/* 802F0608 002B9BC8  7C 00 F0 40 */	cmplw r0, r30
/* 802F060C 002B9BCC  41 82 00 34 */	beq lbl_802F0640
lbl_802F0610:
/* 802F0610 002B9BD0  88 04 01 20 */	lbz r0, 0x120(r4)
/* 802F0614 002B9BD4  38 63 00 01 */	addi r3, r3, 1
/* 802F0618 002B9BD8  2C 00 00 00 */	cmpwi r0, 0
/* 802F061C 002B9BDC  41 82 00 10 */	beq lbl_802F062C
/* 802F0620 002B9BE0  A0 04 01 30 */	lhz r0, 0x130(r4)
/* 802F0624 002B9BE4  7C 00 F0 40 */	cmplw r0, r30
/* 802F0628 002B9BE8  41 82 00 18 */	beq lbl_802F0640
lbl_802F062C:
/* 802F062C 002B9BEC  38 63 00 01 */	addi r3, r3, 1
/* 802F0630 002B9BF0  38 84 01 80 */	addi r4, r4, 0x180
/* 802F0634 002B9BF4  42 00 FF 8C */	bdnz lbl_802F05C0
/* 802F0638 002B9BF8  7F C3 F3 78 */	mr r3, r30
/* 802F063C 002B9BFC  48 00 64 65 */	bl L2CA_Deregister
lbl_802F0640:
/* 802F0640 002B9C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0644 002B9C04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F0648 002B9C08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F064C 002B9C0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F0650 002B9C10  7C 08 03 A6 */	mtlr r0
/* 802F0654 002B9C14  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0658 002B9C18  4E 80 00 20 */	blr

.global gap_data_ind
gap_data_ind:
/* 802F065C 002B9C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0660 002B9C20  7C 08 02 A6 */	mflr r0
/* 802F0664 002B9C24  3C A0 80 5C */	lis r5, lbl_805C21C0@ha
/* 802F0668 002B9C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F066C 002B9C2C  38 00 00 02 */	li r0, 2
/* 802F0670 002B9C30  38 A5 21 C0 */	addi r5, r5, lbl_805C21C0@l
/* 802F0674 002B9C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0678 002B9C38  3B E5 00 AC */	addi r31, r5, 0xac
/* 802F067C 002B9C3C  38 A0 00 00 */	li r5, 0
/* 802F0680 002B9C40  7C 09 03 A6 */	mtctr r0
lbl_802F0684:
/* 802F0684 002B9C44  88 1F 00 00 */	lbz r0, 0(r31)
/* 802F0688 002B9C48  2C 00 00 00 */	cmpwi r0, 0
/* 802F068C 002B9C4C  41 82 00 14 */	beq lbl_802F06A0
/* 802F0690 002B9C50  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F0694 002B9C54  7C 00 18 40 */	cmplw r0, r3
/* 802F0698 002B9C58  40 82 00 08 */	bne lbl_802F06A0
/* 802F069C 002B9C5C  48 00 00 74 */	b lbl_802F0710
lbl_802F06A0:
/* 802F06A0 002B9C60  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F06A4 002B9C64  38 A5 00 01 */	addi r5, r5, 1
/* 802F06A8 002B9C68  2C 00 00 00 */	cmpwi r0, 0
/* 802F06AC 002B9C6C  41 82 00 14 */	beq lbl_802F06C0
/* 802F06B0 002B9C70  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F06B4 002B9C74  7C 00 18 40 */	cmplw r0, r3
/* 802F06B8 002B9C78  40 82 00 08 */	bne lbl_802F06C0
/* 802F06BC 002B9C7C  48 00 00 54 */	b lbl_802F0710
lbl_802F06C0:
/* 802F06C0 002B9C80  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F06C4 002B9C84  38 A5 00 01 */	addi r5, r5, 1
/* 802F06C8 002B9C88  2C 00 00 00 */	cmpwi r0, 0
/* 802F06CC 002B9C8C  41 82 00 14 */	beq lbl_802F06E0
/* 802F06D0 002B9C90  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F06D4 002B9C94  7C 00 18 40 */	cmplw r0, r3
/* 802F06D8 002B9C98  40 82 00 08 */	bne lbl_802F06E0
/* 802F06DC 002B9C9C  48 00 00 34 */	b lbl_802F0710
lbl_802F06E0:
/* 802F06E0 002B9CA0  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 802F06E4 002B9CA4  38 A5 00 01 */	addi r5, r5, 1
/* 802F06E8 002B9CA8  2C 00 00 00 */	cmpwi r0, 0
/* 802F06EC 002B9CAC  41 82 00 14 */	beq lbl_802F0700
/* 802F06F0 002B9CB0  A0 1F 00 06 */	lhz r0, 6(r31)
/* 802F06F4 002B9CB4  7C 00 18 40 */	cmplw r0, r3
/* 802F06F8 002B9CB8  40 82 00 08 */	bne lbl_802F0700
/* 802F06FC 002B9CBC  48 00 00 14 */	b lbl_802F0710
lbl_802F0700:
/* 802F0700 002B9CC0  38 A5 00 01 */	addi r5, r5, 1
/* 802F0704 002B9CC4  3B FF 00 60 */	addi r31, r31, 0x60
/* 802F0708 002B9CC8  42 00 FF 7C */	bdnz lbl_802F0684
/* 802F070C 002B9CCC  3B E0 00 00 */	li r31, 0
lbl_802F0710:
/* 802F0710 002B9CD0  2C 1F 00 00 */	cmpwi r31, 0
/* 802F0714 002B9CD4  40 82 00 10 */	bne lbl_802F0724
/* 802F0718 002B9CD8  7C 83 23 78 */	mr r3, r4
/* 802F071C 002B9CDC  4B FE AD C5 */	bl GKI_freebuf
/* 802F0720 002B9CE0  48 00 00 38 */	b lbl_802F0758
lbl_802F0724:
/* 802F0724 002B9CE4  88 1F 00 00 */	lbz r0, 0(r31)
/* 802F0728 002B9CE8  28 00 00 04 */	cmplwi r0, 4
/* 802F072C 002B9CEC  40 82 00 24 */	bne lbl_802F0750
/* 802F0730 002B9CF0  38 7F 00 14 */	addi r3, r31, 0x14
/* 802F0734 002B9CF4  4B FE B1 DD */	bl GKI_enqueue
/* 802F0738 002B9CF8  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 802F073C 002B9CFC  38 80 01 02 */	li r4, 0x102
/* 802F0740 002B9D00  A0 7F 00 04 */	lhz r3, 4(r31)
/* 802F0744 002B9D04  7D 89 03 A6 */	mtctr r12
/* 802F0748 002B9D08  4E 80 04 21 */	bctrl 
/* 802F074C 002B9D0C  48 00 00 0C */	b lbl_802F0758
lbl_802F0750:
/* 802F0750 002B9D10  7C 83 23 78 */	mr r3, r4
/* 802F0754 002B9D14  4B FE AD 8D */	bl GKI_freebuf
lbl_802F0758:
/* 802F0758 002B9D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F075C 002B9D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F0760 002B9D20  7C 08 03 A6 */	mtlr r0
/* 802F0764 002B9D24  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0768 002B9D28  4E 80 00 20 */	blr

.global gap_congestion_ind
gap_congestion_ind:
/* 802F076C 002B9D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0770 002B9D30  7C 08 02 A6 */	mflr r0
/* 802F0774 002B9D34  3C A0 80 5C */	lis r5, lbl_805C21C0@ha
/* 802F0778 002B9D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F077C 002B9D3C  38 A5 21 C0 */	addi r5, r5, lbl_805C21C0@l
/* 802F0780 002B9D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0784 002B9D44  7C 9F 23 78 */	mr r31, r4
/* 802F0788 002B9D48  93 C1 00 08 */	stw r30, 8(r1)
/* 802F078C 002B9D4C  7C 7E 1B 78 */	mr r30, r3
/* 802F0790 002B9D50  88 05 00 28 */	lbz r0, 0x28(r5)
/* 802F0794 002B9D54  28 00 00 04 */	cmplwi r0, 4
/* 802F0798 002B9D58  41 80 00 20 */	blt lbl_802F07B8
/* 802F079C 002B9D5C  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F07A0 002B9D60  3C 80 80 54 */	lis r4, lbl_80546368@ha
/* 802F07A4 002B9D64  7F E5 FB 78 */	mr r5, r31
/* 802F07A8 002B9D68  7F C6 F3 78 */	mr r6, r30
/* 802F07AC 002B9D6C  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F07B0 002B9D70  38 84 63 68 */	addi r4, r4, lbl_80546368@l
/* 802F07B4 002B9D74  4B FE D8 2D */	bl LogMsg_2
lbl_802F07B8:
/* 802F07B8 002B9D78  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802F07BC 002B9D7C  38 00 00 02 */	li r0, 2
/* 802F07C0 002B9D80  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802F07C4 002B9D84  38 80 00 00 */	li r4, 0
/* 802F07C8 002B9D88  38 63 00 AC */	addi r3, r3, 0xac
/* 802F07CC 002B9D8C  7C 09 03 A6 */	mtctr r0
lbl_802F07D0:
/* 802F07D0 002B9D90  88 03 00 00 */	lbz r0, 0(r3)
/* 802F07D4 002B9D94  2C 00 00 00 */	cmpwi r0, 0
/* 802F07D8 002B9D98  41 82 00 14 */	beq lbl_802F07EC
/* 802F07DC 002B9D9C  A0 03 00 06 */	lhz r0, 6(r3)
/* 802F07E0 002B9DA0  7C 00 F0 40 */	cmplw r0, r30
/* 802F07E4 002B9DA4  40 82 00 08 */	bne lbl_802F07EC
/* 802F07E8 002B9DA8  48 00 00 74 */	b lbl_802F085C
lbl_802F07EC:
/* 802F07EC 002B9DAC  8C 03 00 60 */	lbzu r0, 0x60(r3)
/* 802F07F0 002B9DB0  38 84 00 01 */	addi r4, r4, 1
/* 802F07F4 002B9DB4  2C 00 00 00 */	cmpwi r0, 0
/* 802F07F8 002B9DB8  41 82 00 14 */	beq lbl_802F080C
/* 802F07FC 002B9DBC  A0 03 00 06 */	lhz r0, 6(r3)
/* 802F0800 002B9DC0  7C 00 F0 40 */	cmplw r0, r30
/* 802F0804 002B9DC4  40 82 00 08 */	bne lbl_802F080C
/* 802F0808 002B9DC8  48 00 00 54 */	b lbl_802F085C
lbl_802F080C:
/* 802F080C 002B9DCC  8C 03 00 60 */	lbzu r0, 0x60(r3)
/* 802F0810 002B9DD0  38 84 00 01 */	addi r4, r4, 1
/* 802F0814 002B9DD4  2C 00 00 00 */	cmpwi r0, 0
/* 802F0818 002B9DD8  41 82 00 14 */	beq lbl_802F082C
/* 802F081C 002B9DDC  A0 03 00 06 */	lhz r0, 6(r3)
/* 802F0820 002B9DE0  7C 00 F0 40 */	cmplw r0, r30
/* 802F0824 002B9DE4  40 82 00 08 */	bne lbl_802F082C
/* 802F0828 002B9DE8  48 00 00 34 */	b lbl_802F085C
lbl_802F082C:
/* 802F082C 002B9DEC  8C 03 00 60 */	lbzu r0, 0x60(r3)
/* 802F0830 002B9DF0  38 84 00 01 */	addi r4, r4, 1
/* 802F0834 002B9DF4  2C 00 00 00 */	cmpwi r0, 0
/* 802F0838 002B9DF8  41 82 00 14 */	beq lbl_802F084C
/* 802F083C 002B9DFC  A0 03 00 06 */	lhz r0, 6(r3)
/* 802F0840 002B9E00  7C 00 F0 40 */	cmplw r0, r30
/* 802F0844 002B9E04  40 82 00 08 */	bne lbl_802F084C
/* 802F0848 002B9E08  48 00 00 14 */	b lbl_802F085C
lbl_802F084C:
/* 802F084C 002B9E0C  38 84 00 01 */	addi r4, r4, 1
/* 802F0850 002B9E10  38 63 00 60 */	addi r3, r3, 0x60
/* 802F0854 002B9E14  42 00 FF 7C */	bdnz lbl_802F07D0
/* 802F0858 002B9E18  38 60 00 00 */	li r3, 0
lbl_802F085C:
/* 802F085C 002B9E1C  2C 03 00 00 */	cmpwi r3, 0
/* 802F0860 002B9E20  41 82 00 28 */	beq lbl_802F0888
/* 802F0864 002B9E24  7C 1F 00 D0 */	neg r0, r31
/* 802F0868 002B9E28  81 83 00 20 */	lwz r12, 0x20(r3)
/* 802F086C 002B9E2C  7C 00 FB 78 */	or r0, r0, r31
/* 802F0870 002B9E30  A0 63 00 04 */	lhz r3, 4(r3)
/* 802F0874 002B9E34  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 802F0878 002B9E38  38 04 01 04 */	addi r0, r4, 0x104
/* 802F087C 002B9E3C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 802F0880 002B9E40  7D 89 03 A6 */	mtctr r12
/* 802F0884 002B9E44  4E 80 04 21 */	bctrl 
lbl_802F0888:
/* 802F0888 002B9E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F088C 002B9E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F0890 002B9E50  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F0894 002B9E54  7C 08 03 A6 */	mtlr r0
/* 802F0898 002B9E58  38 21 00 10 */	addi r1, r1, 0x10
/* 802F089C 002B9E5C  4E 80 00 20 */	blr
