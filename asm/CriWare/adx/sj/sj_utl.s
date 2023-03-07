.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SJ_SplitChunk, global
/* 80396664 0035FC24  80 E3 00 00 */	lwz r7, 0(r3)
/* 80396668 0035FC28  80 03 00 04 */	lwz r0, 4(r3)
/* 8039666C 0035FC2C  90 E5 00 00 */	stw r7, 0(r5)
/* 80396670 0035FC30  90 05 00 04 */	stw r0, 4(r5)
/* 80396674 0035FC34  90 06 00 04 */	stw r0, 4(r6)
/* 80396678 0035FC38  80 05 00 04 */	lwz r0, 4(r5)
/* 8039667C 0035FC3C  7C 00 20 00 */	cmpw r0, r4
/* 80396680 0035FC40  40 81 00 08 */	ble .L_80396688
/* 80396684 0035FC44  90 85 00 04 */	stw r4, 4(r5)
.L_80396688:
/* 80396688 0035FC48  80 65 00 04 */	lwz r3, 4(r5)
/* 8039668C 0035FC4C  80 06 00 04 */	lwz r0, 4(r6)
/* 80396690 0035FC50  7C 03 00 51 */	subf. r0, r3, r0
/* 80396694 0035FC54  90 06 00 04 */	stw r0, 4(r6)
/* 80396698 0035FC58  40 82 00 10 */	bne .L_803966A8
/* 8039669C 0035FC5C  38 00 00 00 */	li r0, 0
/* 803966A0 0035FC60  90 06 00 00 */	stw r0, 0(r6)
/* 803966A4 0035FC64  4E 80 00 20 */	blr
.L_803966A8:
/* 803966A8 0035FC68  80 65 00 00 */	lwz r3, 0(r5)
/* 803966AC 0035FC6C  80 05 00 04 */	lwz r0, 4(r5)
/* 803966B0 0035FC70  7C 03 02 14 */	add r0, r3, r0
/* 803966B4 0035FC74  90 06 00 00 */	stw r0, 0(r6)
/* 803966B8 0035FC78  4E 80 00 20 */	blr 
.endfn SJ_SplitChunk

.fn SJ_SearchTag, global
/* 803966BC 0035FC7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803966C0 0035FC80  7C 08 02 A6 */	mflr r0
/* 803966C4 0035FC84  90 01 00 24 */	stw r0, 0x24(r1)
/* 803966C8 0035FC88  38 00 00 00 */	li r0, 0
/* 803966CC 0035FC8C  BF 41 00 08 */	stmw r26, 8(r1)
/* 803966D0 0035FC90  3F E0 80 57 */	lis r31, sj_val_to_hexstr_tbl@ha
/* 803966D4 0035FC94  7C 9A 23 78 */	mr r26, r4
/* 803966D8 0035FC98  7C BB 2B 78 */	mr r27, r5
/* 803966DC 0035FC9C  7C DC 33 78 */	mr r28, r6
/* 803966E0 0035FCA0  3B FF 93 68 */	addi r31, r31, sj_val_to_hexstr_tbl@l
/* 803966E4 0035FCA4  90 06 00 00 */	stw r0, 0(r6)
/* 803966E8 0035FCA8  90 06 00 04 */	stw r0, 4(r6)
/* 803966EC 0035FCAC  83 C3 00 00 */	lwz r30, 0(r3)
/* 803966F0 0035FCB0  80 03 00 04 */	lwz r0, 4(r3)
/* 803966F4 0035FCB4  7F BE 02 14 */	add r29, r30, r0
/* 803966F8 0035FCB8  48 00 01 A4 */	b .L_8039689C
.L_803966FC:
/* 803966FC 0035FCBC  7F C3 F3 78 */	mr r3, r30
/* 80396700 0035FCC0  7F 44 D3 78 */	mr r4, r26
/* 80396704 0035FCC4  38 A0 00 07 */	li r5, 7
/* 80396708 0035FCC8  4B F2 C2 49 */	bl strncmp
/* 8039670C 0035FCCC  2C 03 00 00 */	cmpwi r3, 0
/* 80396710 0035FCD0  40 82 00 BC */	bne .L_803967CC
/* 80396714 0035FCD4  38 1E 00 10 */	addi r0, r30, 0x10
/* 80396718 0035FCD8  3C 60 80 57 */	lis r3, sj_val_to_hexstr_tbl@ha
/* 8039671C 0035FCDC  90 1C 00 00 */	stw r0, 0(r28)
/* 80396720 0035FCE0  38 63 93 68 */	addi r3, r3, sj_val_to_hexstr_tbl@l
/* 80396724 0035FCE4  88 1E 00 08 */	lbz r0, 8(r30)
/* 80396728 0035FCE8  88 9E 00 09 */	lbz r4, 9(r30)
/* 8039672C 0035FCEC  7C 05 07 74 */	extsb r5, r0
/* 80396730 0035FCF0  88 1E 00 0A */	lbz r0, 0xa(r30)
/* 80396734 0035FCF4  54 A6 10 3A */	slwi r6, r5, 2
/* 80396738 0035FCF8  7C 84 07 74 */	extsb r4, r4
/* 8039673C 0035FCFC  54 85 10 3A */	slwi r5, r4, 2
/* 80396740 0035FD00  7C C3 30 2E */	lwzx r6, r3, r6
/* 80396744 0035FD04  7C 04 07 74 */	extsb r4, r0
/* 80396748 0035FD08  88 1E 00 0B */	lbz r0, 0xb(r30)
/* 8039674C 0035FD0C  54 87 10 3A */	slwi r7, r4, 2
/* 80396750 0035FD10  7C 83 28 2E */	lwzx r4, r3, r5
/* 80396754 0035FD14  54 C5 20 36 */	slwi r5, r6, 4
/* 80396758 0035FD18  7C 00 07 74 */	extsb r0, r0
/* 8039675C 0035FD1C  7D 05 22 14 */	add r8, r5, r4
/* 80396760 0035FD20  88 9E 00 0C */	lbz r4, 0xc(r30)
/* 80396764 0035FD24  54 06 10 3A */	slwi r6, r0, 2
/* 80396768 0035FD28  7C E3 38 2E */	lwzx r7, r3, r7
/* 8039676C 0035FD2C  55 08 20 36 */	slwi r8, r8, 4
/* 80396770 0035FD30  7C 85 07 74 */	extsb r5, r4
/* 80396774 0035FD34  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 80396778 0035FD38  7C E8 3A 14 */	add r7, r8, r7
/* 8039677C 0035FD3C  54 A5 10 3A */	slwi r5, r5, 2
/* 80396780 0035FD40  7C C3 30 2E */	lwzx r6, r3, r6
/* 80396784 0035FD44  7C 04 07 74 */	extsb r4, r0
/* 80396788 0035FD48  88 1E 00 0E */	lbz r0, 0xe(r30)
/* 8039678C 0035FD4C  54 E7 20 36 */	slwi r7, r7, 4
/* 80396790 0035FD50  7C A3 28 2E */	lwzx r5, r3, r5
/* 80396794 0035FD54  7C C7 32 14 */	add r6, r7, r6
/* 80396798 0035FD58  54 84 10 3A */	slwi r4, r4, 2
/* 8039679C 0035FD5C  7C 00 07 74 */	extsb r0, r0
/* 803967A0 0035FD60  7C 83 20 2E */	lwzx r4, r3, r4
/* 803967A4 0035FD64  54 C6 20 36 */	slwi r6, r6, 4
/* 803967A8 0035FD68  54 00 10 3A */	slwi r0, r0, 2
/* 803967AC 0035FD6C  7C A6 2A 14 */	add r5, r6, r5
/* 803967B0 0035FD70  7C 03 00 2E */	lwzx r0, r3, r0
/* 803967B4 0035FD74  54 A3 20 36 */	slwi r3, r5, 4
/* 803967B8 0035FD78  7C 63 22 14 */	add r3, r3, r4
/* 803967BC 0035FD7C  54 63 20 36 */	slwi r3, r3, 4
/* 803967C0 0035FD80  7C 03 02 14 */	add r0, r3, r0
/* 803967C4 0035FD84  90 1C 00 04 */	stw r0, 4(r28)
/* 803967C8 0035FD88  48 00 00 DC */	b .L_803968A4
.L_803967CC:
/* 803967CC 0035FD8C  2C 1B 00 00 */	cmpwi r27, 0
/* 803967D0 0035FD90  41 82 00 24 */	beq .L_803967F4
/* 803967D4 0035FD94  7F C3 F3 78 */	mr r3, r30
/* 803967D8 0035FD98  7F 64 DB 78 */	mr r4, r27
/* 803967DC 0035FD9C  38 A0 00 07 */	li r5, 7
/* 803967E0 0035FDA0  4B F2 C1 71 */	bl strncmp
/* 803967E4 0035FDA4  2C 03 00 00 */	cmpwi r3, 0
/* 803967E8 0035FDA8  40 82 00 0C */	bne .L_803967F4
/* 803967EC 0035FDAC  38 60 00 00 */	li r3, 0
/* 803967F0 0035FDB0  48 00 00 C8 */	b .L_803968B8
.L_803967F4:
/* 803967F4 0035FDB4  88 1E 00 08 */	lbz r0, 8(r30)
/* 803967F8 0035FDB8  88 7E 00 09 */	lbz r3, 9(r30)
/* 803967FC 0035FDBC  7C 04 07 74 */	extsb r4, r0
/* 80396800 0035FDC0  88 1E 00 0A */	lbz r0, 0xa(r30)
/* 80396804 0035FDC4  54 85 10 3A */	slwi r5, r4, 2
/* 80396808 0035FDC8  7C 63 07 74 */	extsb r3, r3
/* 8039680C 0035FDCC  54 64 10 3A */	slwi r4, r3, 2
/* 80396810 0035FDD0  7C BF 28 2E */	lwzx r5, r31, r5
/* 80396814 0035FDD4  7C 03 07 74 */	extsb r3, r0
/* 80396818 0035FDD8  88 1E 00 0B */	lbz r0, 0xb(r30)
/* 8039681C 0035FDDC  54 66 10 3A */	slwi r6, r3, 2
/* 80396820 0035FDE0  7C 7F 20 2E */	lwzx r3, r31, r4
/* 80396824 0035FDE4  54 A4 20 36 */	slwi r4, r5, 4
/* 80396828 0035FDE8  7C 00 07 74 */	extsb r0, r0
/* 8039682C 0035FDEC  7C E4 1A 14 */	add r7, r4, r3
/* 80396830 0035FDF0  88 7E 00 0C */	lbz r3, 0xc(r30)
/* 80396834 0035FDF4  54 05 10 3A */	slwi r5, r0, 2
/* 80396838 0035FDF8  7C DF 30 2E */	lwzx r6, r31, r6
/* 8039683C 0035FDFC  54 E7 20 36 */	slwi r7, r7, 4
/* 80396840 0035FE00  7C 64 07 74 */	extsb r4, r3
/* 80396844 0035FE04  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 80396848 0035FE08  7C C7 32 14 */	add r6, r7, r6
/* 8039684C 0035FE0C  54 84 10 3A */	slwi r4, r4, 2
/* 80396850 0035FE10  7C BF 28 2E */	lwzx r5, r31, r5
/* 80396854 0035FE14  7C 03 07 74 */	extsb r3, r0
/* 80396858 0035FE18  54 C6 20 36 */	slwi r6, r6, 4
/* 8039685C 0035FE1C  88 1E 00 0E */	lbz r0, 0xe(r30)
/* 80396860 0035FE20  7C A6 2A 14 */	add r5, r6, r5
/* 80396864 0035FE24  54 63 10 3A */	slwi r3, r3, 2
/* 80396868 0035FE28  7C 9F 20 2E */	lwzx r4, r31, r4
/* 8039686C 0035FE2C  54 A5 20 36 */	slwi r5, r5, 4
/* 80396870 0035FE30  7C 00 07 74 */	extsb r0, r0
/* 80396874 0035FE34  7C 85 22 14 */	add r4, r5, r4
/* 80396878 0035FE38  7C 7F 18 2E */	lwzx r3, r31, r3
/* 8039687C 0035FE3C  54 00 10 3A */	slwi r0, r0, 2
/* 80396880 0035FE40  54 84 20 36 */	slwi r4, r4, 4
/* 80396884 0035FE44  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80396888 0035FE48  7C 64 1A 14 */	add r3, r4, r3
/* 8039688C 0035FE4C  54 63 20 36 */	slwi r3, r3, 4
/* 80396890 0035FE50  7C 03 02 14 */	add r0, r3, r0
/* 80396894 0035FE54  7C 60 F2 14 */	add r3, r0, r30
/* 80396898 0035FE58  3B C3 00 10 */	addi r30, r3, 0x10
.L_8039689C:
/* 8039689C 0035FE5C  7C 1E E8 40 */	cmplw r30, r29
/* 803968A0 0035FE60  41 80 FE 5C */	blt .L_803966FC
.L_803968A4:
/* 803968A4 0035FE64  7C 1E E8 40 */	cmplw r30, r29
/* 803968A8 0035FE68  40 80 00 0C */	bge .L_803968B4
/* 803968AC 0035FE6C  7F C3 F3 78 */	mr r3, r30
/* 803968B0 0035FE70  48 00 00 08 */	b .L_803968B8
.L_803968B4:
/* 803968B4 0035FE74  38 60 00 00 */	li r3, 0
.L_803968B8:
/* 803968B8 0035FE78  BB 41 00 08 */	lmw r26, 8(r1)
/* 803968BC 0035FE7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803968C0 0035FE80  7C 08 03 A6 */	mtlr r0
/* 803968C4 0035FE84  38 21 00 20 */	addi r1, r1, 0x20
/* 803968C8 0035FE88  4E 80 00 20 */	blr 
.endfn SJ_SearchTag

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj sj_val_to_hexstr_tbl, global
	.4byte 0 #0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #a0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #b0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0 #c0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj sj_val_to_hexstr_tbl