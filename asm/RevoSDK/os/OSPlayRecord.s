.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn PlayRecordAlarmCallback, global
/* 8035D730 00326CF0  38 60 00 00 */	li r3, 0
/* 8035D734 00326CF4  38 80 00 00 */	li r4, 0
/* 8035D738 00326CF8  48 00 00 08 */	b PlayRecordCallback
.endfn PlayRecordAlarmCallback

.balign 16, 0
.fn PlayRecordCallback, global
/* 8035D740 00326D00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035D744 00326D04  7C 08 02 A6 */	mflr r0
/* 8035D748 00326D08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035D74C 00326D0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035D750 00326D10  3F E0 80 5D */	lis r31, PlayRecord@ha
/* 8035D754 00326D14  3B FF 52 20 */	addi r31, r31, PlayRecord@l
/* 8035D758 00326D18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035D75C 00326D1C  3B C0 00 00 */	li r30, 0
/* 8035D760 00326D20  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035D764 00326D24  80 0D B9 90 */	lwz r0, PlayRecordTerminate@sda21(r13)
/* 8035D768 00326D28  90 6D B9 9C */	stw r3, PlayRecordLastError@sda21(r13)
/* 8035D76C 00326D2C  2C 00 00 00 */	cmpwi r0, 0
/* 8035D770 00326D30  41 82 00 10 */	beq .L_8035D780
/* 8035D774 00326D34  38 00 00 01 */	li r0, 1
/* 8035D778 00326D38  90 0D B9 94 */	stw r0, PlayRecordTerminated@sda21(r13)
/* 8035D77C 00326D3C  48 00 04 5C */	b .L_8035DBD8
.L_8035D780:
/* 8035D780 00326D40  80 0D B9 98 */	lwz r0, PlayRecordRetry@sda21(r13)
/* 8035D784 00326D44  2C 00 00 00 */	cmpwi r0, 0
/* 8035D788 00326D48  40 82 02 18 */	bne .L_8035D9A0
/* 8035D78C 00326D4C  80 0D 9A 20 */	lwz r0, PlayRecordState@sda21(r13)
/* 8035D790 00326D50  28 00 00 06 */	cmplwi r0, 6
/* 8035D794 00326D54  41 81 01 F8 */	bgt .L_8035D98C
/* 8035D798 00326D58  3C 80 80 56 */	lis r4, jumptable_8055ECEC@ha
/* 8035D79C 00326D5C  54 00 10 3A */	slwi r0, r0, 2
/* 8035D7A0 00326D60  38 84 EC EC */	addi r4, r4, jumptable_8055ECEC@l
/* 8035D7A4 00326D64  7C 84 00 2E */	lwzx r4, r4, r0
/* 8035D7A8 00326D68  7C 89 03 A6 */	mtctr r4
/* 8035D7AC 00326D6C  4E 80 04 20 */	bctr 
.L_8035D7B0:
/* 8035D7B0 00326D70  38 00 00 01 */	li r0, 1
/* 8035D7B4 00326D74  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D7B8 00326D78  48 00 01 E8 */	b .L_8035D9A0
.L_8035D7BC:
/* 8035D7BC 00326D7C  2C 03 FF F6 */	cmpwi r3, -10
/* 8035D7C0 00326D80  40 82 00 38 */	bne .L_8035D7F8
/* 8035D7C4 00326D84  38 00 00 01 */	li r0, 1
/* 8035D7C8 00326D88  90 0D B9 98 */	stw r0, PlayRecordRetry@sda21(r13)
/* 8035D7CC 00326D8C  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035D7D0 00326D90  4B FF 56 51 */	bl OSCreateAlarm
/* 8035D7D4 00326D94  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8035D7D8 00326D98  3C E0 80 36 */	lis r7, PlayRecordAlarmCallback@ha
/* 8035D7DC 00326D9C  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8035D7E0 00326DA0  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035D7E4 00326DA4  38 E7 D7 30 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 8035D7E8 00326DA8  38 A0 00 00 */	li r5, 0
/* 8035D7EC 00326DAC  54 06 F0 BE */	srwi r6, r0, 2
/* 8035D7F0 00326DB0  4B FF 58 91 */	bl OSSetAlarm
/* 8035D7F4 00326DB4  48 00 03 E4 */	b .L_8035DBD8
.L_8035D7F8:
/* 8035D7F8 00326DB8  2C 03 00 00 */	cmpwi r3, 0
/* 8035D7FC 00326DBC  40 82 00 28 */	bne .L_8035D824
/* 8035D800 00326DC0  80 0D B9 88 */	lwz r0, PlayRecordGet@sda21(r13)
/* 8035D804 00326DC4  2C 00 00 00 */	cmpwi r0, 0
/* 8035D808 00326DC8  40 82 00 10 */	bne .L_8035D818
/* 8035D80C 00326DCC  38 00 00 02 */	li r0, 2
/* 8035D810 00326DD0  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D814 00326DD4  48 00 01 8C */	b .L_8035D9A0
.L_8035D818:
/* 8035D818 00326DD8  38 00 00 04 */	li r0, 4
/* 8035D81C 00326DDC  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D820 00326DE0  48 00 01 80 */	b .L_8035D9A0
.L_8035D824:
/* 8035D824 00326DE4  38 60 00 01 */	li r3, 1
/* 8035D828 00326DE8  38 00 00 07 */	li r0, 7
/* 8035D82C 00326DEC  90 6D B9 8C */	stw r3, PlayRecordError@sda21(r13)
/* 8035D830 00326DF0  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D834 00326DF4  48 00 03 A4 */	b .L_8035DBD8
.L_8035D838:
/* 8035D838 00326DF8  28 03 00 80 */	cmplwi r3, 0x80
/* 8035D83C 00326DFC  40 82 00 2C */	bne .L_8035D868
/* 8035D840 00326E00  38 9F 00 00 */	addi r4, r31, 0
/* 8035D844 00326E04  38 A0 00 01 */	li r5, 1
/* 8035D848 00326E08  80 64 00 60 */	lwz r3, 0x60(r4)
/* 8035D84C 00326E0C  38 00 00 03 */	li r0, 3
/* 8035D850 00326E10  80 84 00 64 */	lwz r4, 0x64(r4)
/* 8035D854 00326E14  90 AD B9 88 */	stw r5, PlayRecordGet@sda21(r13)
/* 8035D858 00326E18  90 8D B9 A4 */	stw r4, PlayRecordLastCloseTime+0x4@sda21(r13)
/* 8035D85C 00326E1C  90 6D B9 A0 */	stw r3, PlayRecordLastCloseTime@sda21(r13)
/* 8035D860 00326E20  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D864 00326E24  48 00 01 3C */	b .L_8035D9A0
.L_8035D868:
/* 8035D868 00326E28  38 60 00 01 */	li r3, 1
/* 8035D86C 00326E2C  38 00 00 06 */	li r0, 6
/* 8035D870 00326E30  90 6D B9 8C */	stw r3, PlayRecordError@sda21(r13)
/* 8035D874 00326E34  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D878 00326E38  48 00 01 28 */	b .L_8035D9A0
.L_8035D87C:
/* 8035D87C 00326E3C  2C 03 00 00 */	cmpwi r3, 0
/* 8035D880 00326E40  40 82 00 10 */	bne .L_8035D890
/* 8035D884 00326E44  38 00 00 04 */	li r0, 4
/* 8035D888 00326E48  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D88C 00326E4C  48 00 01 14 */	b .L_8035D9A0
.L_8035D890:
/* 8035D890 00326E50  38 60 00 01 */	li r3, 1
/* 8035D894 00326E54  38 00 00 06 */	li r0, 6
/* 8035D898 00326E58  90 6D B9 8C */	stw r3, PlayRecordError@sda21(r13)
/* 8035D89C 00326E5C  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D8A0 00326E60  48 00 01 00 */	b .L_8035D9A0
.L_8035D8A4:
/* 8035D8A4 00326E64  38 00 00 05 */	li r0, 5
/* 8035D8A8 00326E68  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D8AC 00326E6C  48 00 00 F4 */	b .L_8035D9A0
.L_8035D8B0:
/* 8035D8B0 00326E70  28 03 00 80 */	cmplwi r3, 0x80
/* 8035D8B4 00326E74  40 82 00 70 */	bne .L_8035D924
/* 8035D8B8 00326E78  4B FF F0 A9 */	bl OSGetTime
/* 8035D8BC 00326E7C  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8035D8C0 00326E80  81 0D B9 A4 */	lwz r8, PlayRecordLastCloseTime+0x4@sda21(r13)
/* 8035D8C4 00326E84  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8035D8C8 00326E88  38 A0 01 2C */	li r5, 0x12c
/* 8035D8CC 00326E8C  81 2D B9 A0 */	lwz r9, PlayRecordLastCloseTime@sda21(r13)
/* 8035D8D0 00326E90  7D 08 20 10 */	subfc r8, r8, r4
/* 8035D8D4 00326E94  54 07 F0 BE */	srwi r7, r0, 2
/* 8035D8D8 00326E98  38 C0 00 00 */	li r6, 0
/* 8035D8DC 00326E9C  7C 69 19 10 */	subfe r3, r9, r3
/* 8035D8E0 00326EA0  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8035D8E4 00326EA4  7C 07 28 16 */	mulhwu r0, r7, r5
/* 8035D8E8 00326EA8  7C 66 29 D6 */	mullw r3, r6, r5
/* 8035D8EC 00326EAC  7C 00 1A 14 */	add r0, r0, r3
/* 8035D8F0 00326EB0  1C A7 01 2C */	mulli r5, r7, 0x12c
/* 8035D8F4 00326EB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8035D8F8 00326EB8  7C 68 28 10 */	subfc r3, r8, r5
/* 8035D8FC 00326EBC  7C 84 01 10 */	subfe r4, r4, r0
/* 8035D900 00326EC0  7C 80 01 10 */	subfe r4, r0, r0
/* 8035D904 00326EC4  7C 84 00 D1 */	neg. r4, r4
/* 8035D908 00326EC8  41 82 00 10 */	beq .L_8035D918
/* 8035D90C 00326ECC  38 00 00 06 */	li r0, 6
/* 8035D910 00326ED0  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D914 00326ED4  48 00 00 8C */	b .L_8035D9A0
.L_8035D918:
/* 8035D918 00326ED8  38 00 00 03 */	li r0, 3
/* 8035D91C 00326EDC  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D920 00326EE0  48 00 00 80 */	b .L_8035D9A0
.L_8035D924:
/* 8035D924 00326EE4  38 60 00 01 */	li r3, 1
/* 8035D928 00326EE8  38 00 00 06 */	li r0, 6
/* 8035D92C 00326EEC  90 6D B9 8C */	stw r3, PlayRecordError@sda21(r13)
/* 8035D930 00326EF0  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D934 00326EF4  48 00 00 6C */	b .L_8035D9A0
.L_8035D938:
/* 8035D938 00326EF8  80 0D B9 8C */	lwz r0, PlayRecordError@sda21(r13)
/* 8035D93C 00326EFC  2C 00 00 00 */	cmpwi r0, 0
/* 8035D940 00326F00  41 82 00 10 */	beq .L_8035D950
/* 8035D944 00326F04  38 00 00 07 */	li r0, 7
/* 8035D948 00326F08  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D94C 00326F0C  48 00 02 8C */	b .L_8035DBD8
.L_8035D950:
/* 8035D950 00326F10  2C 03 00 00 */	cmpwi r3, 0
/* 8035D954 00326F14  40 82 00 24 */	bne .L_8035D978
/* 8035D958 00326F18  38 9F 00 00 */	addi r4, r31, 0
/* 8035D95C 00326F1C  38 00 00 01 */	li r0, 1
/* 8035D960 00326F20  80 64 00 60 */	lwz r3, 0x60(r4)
/* 8035D964 00326F24  80 84 00 64 */	lwz r4, 0x64(r4)
/* 8035D968 00326F28  90 8D B9 A4 */	stw r4, PlayRecordLastCloseTime+0x4@sda21(r13)
/* 8035D96C 00326F2C  90 6D B9 A0 */	stw r3, PlayRecordLastCloseTime@sda21(r13)
/* 8035D970 00326F30  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035D974 00326F34  48 00 00 2C */	b .L_8035D9A0
.L_8035D978:
/* 8035D978 00326F38  38 60 00 07 */	li r3, 7
/* 8035D97C 00326F3C  38 00 00 01 */	li r0, 1
/* 8035D980 00326F40  90 6D 9A 20 */	stw r3, PlayRecordState@sda21(r13)
/* 8035D984 00326F44  90 0D B9 8C */	stw r0, PlayRecordError@sda21(r13)
/* 8035D988 00326F48  48 00 02 50 */	b .L_8035DBD8
.L_8035D98C:
/* 8035D98C 00326F4C  38 60 00 07 */	li r3, 7
/* 8035D990 00326F50  38 00 00 01 */	li r0, 1
/* 8035D994 00326F54  90 6D 9A 20 */	stw r3, PlayRecordState@sda21(r13)
/* 8035D998 00326F58  90 0D B9 8C */	stw r0, PlayRecordError@sda21(r13)
/* 8035D99C 00326F5C  48 00 02 3C */	b .L_8035DBD8
.L_8035D9A0:
/* 8035D9A0 00326F60  80 0D 9A 20 */	lwz r0, PlayRecordState@sda21(r13)
/* 8035D9A4 00326F64  3B A0 00 00 */	li r29, 0
/* 8035D9A8 00326F68  93 AD B9 98 */	stw r29, PlayRecordRetry@sda21(r13)
/* 8035D9AC 00326F6C  2C 00 00 04 */	cmpwi r0, 4
/* 8035D9B0 00326F70  41 82 00 A0 */	beq .L_8035DA50
/* 8035D9B4 00326F74  40 80 00 1C */	bge .L_8035D9D0
/* 8035D9B8 00326F78  2C 00 00 02 */	cmpwi r0, 2
/* 8035D9BC 00326F7C  41 82 00 4C */	beq .L_8035DA08
/* 8035D9C0 00326F80  40 80 00 6C */	bge .L_8035DA2C
/* 8035D9C4 00326F84  2C 00 00 01 */	cmpwi r0, 1
/* 8035D9C8 00326F88  40 80 00 18 */	bge .L_8035D9E0
/* 8035D9CC 00326F8C  48 00 01 34 */	b .L_8035DB00
.L_8035D9D0:
/* 8035D9D0 00326F90  2C 00 00 06 */	cmpwi r0, 6
/* 8035D9D4 00326F94  41 82 01 14 */	beq .L_8035DAE8
/* 8035D9D8 00326F98  40 80 01 28 */	bge .L_8035DB00
/* 8035D9DC 00326F9C  48 00 00 B0 */	b .L_8035DA8C
.L_8035D9E0:
/* 8035D9E0 00326FA0  3C 60 80 56 */	lis r3, lbl_8055ECC0@ha
/* 8035D9E4 00326FA4  3C C0 80 36 */	lis r6, PlayRecordCallback@ha
/* 8035D9E8 00326FA8  38 63 EC C0 */	addi r3, r3, lbl_8055ECC0@l
/* 8035D9EC 00326FAC  38 9F 00 B0 */	addi r4, r31, 0xb0
/* 8035D9F0 00326FB0  38 C6 D7 40 */	addi r6, r6, PlayRecordCallback@l
/* 8035D9F4 00326FB4  38 FF 01 3C */	addi r7, r31, 0x13c
/* 8035D9F8 00326FB8  38 A0 00 03 */	li r5, 3
/* 8035D9FC 00326FBC  4B FF 20 E5 */	bl NANDOpenAsync
/* 8035DA00 00326FC0  7C 7E 1B 78 */	mr r30, r3
/* 8035DA04 00326FC4  48 00 00 FC */	b .L_8035DB00
.L_8035DA08:
/* 8035DA08 00326FC8  3C C0 80 36 */	lis r6, PlayRecordCallback@ha
/* 8035DA0C 00326FCC  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8035DA10 00326FD0  38 9F 00 00 */	addi r4, r31, 0
/* 8035DA14 00326FD4  38 FF 01 3C */	addi r7, r31, 0x13c
/* 8035DA18 00326FD8  38 C6 D7 40 */	addi r6, r6, PlayRecordCallback@l
/* 8035DA1C 00326FDC  38 A0 00 80 */	li r5, 0x80
/* 8035DA20 00326FE0  4B FF 13 81 */	bl NANDReadAsync
/* 8035DA24 00326FE4  7C 7E 1B 78 */	mr r30, r3
/* 8035DA28 00326FE8  48 00 00 D8 */	b .L_8035DB00
.L_8035DA2C:
/* 8035DA2C 00326FEC  3C C0 80 36 */	lis r6, PlayRecordCallback@ha
/* 8035DA30 00326FF0  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8035DA34 00326FF4  38 C6 D7 40 */	addi r6, r6, PlayRecordCallback@l
/* 8035DA38 00326FF8  38 FF 01 3C */	addi r7, r31, 0x13c
/* 8035DA3C 00326FFC  38 80 00 00 */	li r4, 0
/* 8035DA40 00327000  38 A0 00 00 */	li r5, 0
/* 8035DA44 00327004  4B FF 14 CD */	bl NANDSeekAsync
/* 8035DA48 00327008  7C 7E 1B 78 */	mr r30, r3
/* 8035DA4C 0032700C  48 00 00 B4 */	b .L_8035DB00
.L_8035DA50:
/* 8035DA50 00327010  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035DA54 00327014  4B FF 53 CD */	bl OSCreateAlarm
/* 8035DA58 00327018  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8035DA5C 0032701C  38 00 00 3C */	li r0, 0x3c
/* 8035DA60 00327020  80 63 00 F8 */	lwz r3, 0x800000F8@l(r3)
/* 8035DA64 00327024  3C E0 80 36 */	lis r7, PlayRecordAlarmCallback@ha
/* 8035DA68 00327028  7C 9D 01 D6 */	mullw r4, r29, r0
/* 8035DA6C 0032702C  54 65 F0 BE */	srwi r5, r3, 2
/* 8035DA70 00327030  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035DA74 00327034  38 E7 D7 30 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 8035DA78 00327038  7C 05 00 16 */	mulhwu r0, r5, r0
/* 8035DA7C 0032703C  1C C5 00 3C */	mulli r6, r5, 0x3c
/* 8035DA80 00327040  7C A0 22 14 */	add r5, r0, r4
/* 8035DA84 00327044  4B FF 55 FD */	bl OSSetAlarm
/* 8035DA88 00327048  48 00 00 78 */	b .L_8035DB00
.L_8035DA8C:
/* 8035DA8C 0032704C  4B FF EE D5 */	bl OSGetTime
/* 8035DA90 00327050  38 BF 00 00 */	addi r5, r31, 0
/* 8035DA94 00327054  38 00 00 1F */	li r0, 0x1f
/* 8035DA98 00327058  90 85 00 64 */	stw r4, 0x64(r5)
/* 8035DA9C 0032705C  38 C5 00 04 */	addi r6, r5, 4
/* 8035DAA0 00327060  38 80 00 00 */	li r4, 0
/* 8035DAA4 00327064  90 65 00 60 */	stw r3, 0x60(r5)
/* 8035DAA8 00327068  7C 09 03 A6 */	mtctr r0
/* 8035DAAC 0032706C  60 00 00 00 */	nop 
.L_8035DAB0:
/* 8035DAB0 00327070  80 06 00 00 */	lwz r0, 0(r6)
/* 8035DAB4 00327074  38 C6 00 04 */	addi r6, r6, 4
/* 8035DAB8 00327078  7C 84 02 14 */	add r4, r4, r0
/* 8035DABC 0032707C  42 00 FF F4 */	bdnz .L_8035DAB0
/* 8035DAC0 00327080  3C C0 80 36 */	lis r6, PlayRecordCallback@ha
/* 8035DAC4 00327084  90 9F 00 00 */	stw r4, 0(r31)
/* 8035DAC8 00327088  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8035DACC 0032708C  38 9F 00 00 */	addi r4, r31, 0
/* 8035DAD0 00327090  38 C6 D7 40 */	addi r6, r6, PlayRecordCallback@l
/* 8035DAD4 00327094  38 FF 01 3C */	addi r7, r31, 0x13c
/* 8035DAD8 00327098  38 A0 00 80 */	li r5, 0x80
/* 8035DADC 0032709C  4B FF 13 B5 */	bl NANDWriteAsync
/* 8035DAE0 003270A0  7C 7E 1B 78 */	mr r30, r3
/* 8035DAE4 003270A4  48 00 00 1C */	b .L_8035DB00
.L_8035DAE8:
/* 8035DAE8 003270A8  3C 80 80 36 */	lis r4, PlayRecordCallback@ha
/* 8035DAEC 003270AC  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8035DAF0 003270B0  38 84 D7 40 */	addi r4, r4, PlayRecordCallback@l
/* 8035DAF4 003270B4  38 BF 01 3C */	addi r5, r31, 0x13c
/* 8035DAF8 003270B8  4B FF 21 D9 */	bl NANDCloseAsync
/* 8035DAFC 003270BC  7C 7E 1B 78 */	mr r30, r3
.L_8035DB00:
/* 8035DB00 003270C0  2C 1E 00 00 */	cmpwi r30, 0
/* 8035DB04 003270C4  41 82 00 D0 */	beq .L_8035DBD4
/* 8035DB08 003270C8  2C 1E FF FD */	cmpwi r30, -3
/* 8035DB0C 003270CC  40 82 00 38 */	bne .L_8035DB44
/* 8035DB10 003270D0  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035DB14 003270D4  4B FF 53 0D */	bl OSCreateAlarm
/* 8035DB18 003270D8  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8035DB1C 003270DC  3C E0 80 36 */	lis r7, PlayRecordAlarmCallback@ha
/* 8035DB20 003270E0  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8035DB24 003270E4  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035DB28 003270E8  38 E7 D7 30 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 8035DB2C 003270EC  38 A0 00 00 */	li r5, 0
/* 8035DB30 003270F0  54 06 F0 BE */	srwi r6, r0, 2
/* 8035DB34 003270F4  4B FF 55 4D */	bl OSSetAlarm
/* 8035DB38 003270F8  38 00 00 01 */	li r0, 1
/* 8035DB3C 003270FC  90 0D B9 98 */	stw r0, PlayRecordRetry@sda21(r13)
/* 8035DB40 00327100  48 00 00 94 */	b .L_8035DBD4
.L_8035DB44:
/* 8035DB44 00327104  80 0D 9A 20 */	lwz r0, PlayRecordState@sda21(r13)
/* 8035DB48 00327108  38 60 00 01 */	li r3, 1
/* 8035DB4C 0032710C  90 6D B9 8C */	stw r3, PlayRecordError@sda21(r13)
/* 8035DB50 00327110  2C 00 00 04 */	cmpwi r0, 4
/* 8035DB54 00327114  41 82 00 78 */	beq .L_8035DBCC
/* 8035DB58 00327118  40 80 00 10 */	bge .L_8035DB68
/* 8035DB5C 0032711C  2C 00 00 02 */	cmpwi r0, 2
/* 8035DB60 00327120  40 80 00 10 */	bge .L_8035DB70
/* 8035DB64 00327124  48 00 00 68 */	b .L_8035DBCC
.L_8035DB68:
/* 8035DB68 00327128  2C 00 00 06 */	cmpwi r0, 6
/* 8035DB6C 0032712C  40 80 00 60 */	bge .L_8035DBCC
.L_8035DB70:
/* 8035DB70 00327130  38 00 00 06 */	li r0, 6
/* 8035DB74 00327134  3C 80 80 36 */	lis r4, PlayRecordCallback@ha
/* 8035DB78 00327138  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035DB7C 0032713C  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8035DB80 00327140  38 84 D7 40 */	addi r4, r4, PlayRecordCallback@l
/* 8035DB84 00327144  38 BF 01 3C */	addi r5, r31, 0x13c
/* 8035DB88 00327148  4B FF 21 49 */	bl NANDCloseAsync
/* 8035DB8C 0032714C  2C 03 FF FD */	cmpwi r3, -3
/* 8035DB90 00327150  7C 7E 1B 78 */	mr r30, r3
/* 8035DB94 00327154  40 82 00 40 */	bne .L_8035DBD4
/* 8035DB98 00327158  38 00 00 01 */	li r0, 1
/* 8035DB9C 0032715C  90 0D B9 98 */	stw r0, PlayRecordRetry@sda21(r13)
/* 8035DBA0 00327160  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035DBA4 00327164  4B FF 52 7D */	bl OSCreateAlarm
/* 8035DBA8 00327168  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8035DBAC 0032716C  3C E0 80 36 */	lis r7, PlayRecordAlarmCallback@ha
/* 8035DBB0 00327170  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8035DBB4 00327174  38 7F 00 80 */	addi r3, r31, 0x80
/* 8035DBB8 00327178  38 E7 D7 30 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 8035DBBC 0032717C  38 A0 00 00 */	li r5, 0
/* 8035DBC0 00327180  54 06 F0 BE */	srwi r6, r0, 2
/* 8035DBC4 00327184  4B FF 54 BD */	bl OSSetAlarm
/* 8035DBC8 00327188  48 00 00 0C */	b .L_8035DBD4
.L_8035DBCC:
/* 8035DBCC 0032718C  38 00 00 07 */	li r0, 7
/* 8035DBD0 00327190  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
.L_8035DBD4:
/* 8035DBD4 00327194  93 CD B9 9C */	stw r30, PlayRecordLastError@sda21(r13)
.L_8035DBD8:
/* 8035DBD8 00327198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035DBDC 0032719C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035DBE0 003271A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035DBE4 003271A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035DBE8 003271A8  7C 08 03 A6 */	mtlr r0
/* 8035DBEC 003271AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8035DBF0 003271B0  4E 80 00 20 */	blr 
.endfn PlayRecordCallback

.balign 16, 0
.fn __OSStartPlayRecord, global
/* 8035DC00 003271C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035DC04 003271C4  7C 08 02 A6 */	mflr r0
/* 8035DC08 003271C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035DC0C 003271CC  4B FF 28 55 */	bl NANDInit
/* 8035DC10 003271D0  2C 03 00 00 */	cmpwi r3, 0
/* 8035DC14 003271D4  40 82 00 30 */	bne .L_8035DC44
/* 8035DC18 003271D8  38 00 00 00 */	li r0, 0
/* 8035DC1C 003271DC  90 0D B9 90 */	stw r0, PlayRecordTerminate@sda21(r13)
/* 8035DC20 003271E0  38 60 00 00 */	li r3, 0
/* 8035DC24 003271E4  38 80 00 00 */	li r4, 0
/* 8035DC28 003271E8  90 0D B9 88 */	stw r0, PlayRecordGet@sda21(r13)
/* 8035DC2C 003271EC  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035DC30 003271F0  90 0D B9 8C */	stw r0, PlayRecordError@sda21(r13)
/* 8035DC34 003271F4  90 0D B9 98 */	stw r0, PlayRecordRetry@sda21(r13)
/* 8035DC38 003271F8  90 0D B9 94 */	stw r0, PlayRecordTerminated@sda21(r13)
/* 8035DC3C 003271FC  90 0D B9 9C */	stw r0, PlayRecordLastError@sda21(r13)
/* 8035DC40 00327200  4B FF FB 01 */	bl PlayRecordCallback
.L_8035DC44:
/* 8035DC44 00327204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035DC48 00327208  7C 08 03 A6 */	mtlr r0
/* 8035DC4C 0032720C  38 21 00 10 */	addi r1, r1, 0x10
/* 8035DC50 00327210  4E 80 00 20 */	blr 
.endfn __OSStartPlayRecord

.balign 16, 0
.fn __OSStopPlayRecord, global
/* 8035DC60 00327220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035DC64 00327224  7C 08 02 A6 */	mflr r0
/* 8035DC68 00327228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035DC6C 0032722C  39 61 00 20 */	addi r11, r1, 0x20
/* 8035DC70 00327230  4B F5 C4 E1 */	bl _savegpr_26
/* 8035DC74 00327234  3F A0 80 5D */	lis r29, PlayRecord@ha
/* 8035DC78 00327238  3B BD 52 20 */	addi r29, r29, PlayRecord@l
/* 8035DC7C 0032723C  4B FF AD 35 */	bl OSDisableInterrupts
/* 8035DC80 00327240  80 0D 9A 20 */	lwz r0, PlayRecordState@sda21(r13)
/* 8035DC84 00327244  38 80 00 01 */	li r4, 1
/* 8035DC88 00327248  90 8D B9 90 */	stw r4, PlayRecordTerminate@sda21(r13)
/* 8035DC8C 0032724C  7C 7A 1B 78 */	mr r26, r3
/* 8035DC90 00327250  2C 00 00 07 */	cmpwi r0, 7
/* 8035DC94 00327254  41 82 00 1C */	beq .L_8035DCB0
/* 8035DC98 00327258  2C 00 00 00 */	cmpwi r0, 0
/* 8035DC9C 0032725C  41 82 00 14 */	beq .L_8035DCB0
/* 8035DCA0 00327260  2C 00 00 09 */	cmpwi r0, 9
/* 8035DCA4 00327264  41 82 00 0C */	beq .L_8035DCB0
/* 8035DCA8 00327268  2C 00 00 08 */	cmpwi r0, 8
/* 8035DCAC 0032726C  40 82 00 10 */	bne .L_8035DCBC
.L_8035DCB0:
/* 8035DCB0 00327270  7F 43 D3 78 */	mr r3, r26
/* 8035DCB4 00327274  4B FF AD 3D */	bl OSRestoreInterrupts
/* 8035DCB8 00327278  48 00 01 74 */	b .L_8035DE2C
.L_8035DCBC:
/* 8035DCBC 0032727C  2C 00 00 04 */	cmpwi r0, 4
/* 8035DCC0 00327280  40 82 00 68 */	bne .L_8035DD28
/* 8035DCC4 00327284  38 7D 00 80 */	addi r3, r29, 0x80
/* 8035DCC8 00327288  4B FF 54 B9 */	bl OSCancelAlarm
/* 8035DCCC 0032728C  7F 43 D3 78 */	mr r3, r26
/* 8035DCD0 00327290  4B FF AD 21 */	bl OSRestoreInterrupts
/* 8035DCD4 00327294  4B FF EC 8D */	bl OSGetTime
/* 8035DCD8 00327298  38 BD 00 00 */	addi r5, r29, 0
/* 8035DCDC 0032729C  38 00 00 1F */	li r0, 0x1f
/* 8035DCE0 003272A0  90 85 00 64 */	stw r4, 0x64(r5)
/* 8035DCE4 003272A4  38 C5 00 04 */	addi r6, r5, 4
/* 8035DCE8 003272A8  38 80 00 00 */	li r4, 0
/* 8035DCEC 003272AC  90 65 00 60 */	stw r3, 0x60(r5)
/* 8035DCF0 003272B0  7C 09 03 A6 */	mtctr r0
/* 8035DCF4 003272B4  60 00 00 00 */	nop 
.L_8035DCF8:
/* 8035DCF8 003272B8  80 06 00 00 */	lwz r0, 0(r6)
/* 8035DCFC 003272BC  38 C6 00 04 */	addi r6, r6, 4
/* 8035DD00 003272C0  7C 84 02 14 */	add r4, r4, r0
/* 8035DD04 003272C4  42 00 FF F4 */	bdnz .L_8035DCF8
/* 8035DD08 003272C8  90 9D 00 00 */	stw r4, 0(r29)
/* 8035DD0C 003272CC  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8035DD10 003272D0  38 9D 00 00 */	addi r4, r29, 0
/* 8035DD14 003272D4  38 A0 00 80 */	li r5, 0x80
/* 8035DD18 003272D8  4B FF 11 09 */	bl NANDWrite
/* 8035DD1C 003272DC  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8035DD20 003272E0  4B FF 1F 41 */	bl NANDClose
/* 8035DD24 003272E4  48 00 01 08 */	b .L_8035DE2C
.L_8035DD28:
/* 8035DD28 003272E8  80 0D B9 98 */	lwz r0, PlayRecordRetry@sda21(r13)
/* 8035DD2C 003272EC  2C 00 00 00 */	cmpwi r0, 0
/* 8035DD30 003272F0  41 82 00 18 */	beq .L_8035DD48
/* 8035DD34 003272F4  38 7D 00 80 */	addi r3, r29, 0x80
/* 8035DD38 003272F8  4B FF 54 49 */	bl OSCancelAlarm
/* 8035DD3C 003272FC  7F 43 D3 78 */	mr r3, r26
/* 8035DD40 00327300  4B FF AC B1 */	bl OSRestoreInterrupts
/* 8035DD44 00327304  48 00 00 78 */	b .L_8035DDBC
.L_8035DD48:
/* 8035DD48 00327308  4B FF AC A9 */	bl OSRestoreInterrupts
/* 8035DD4C 0032730C  4B FF EC 15 */	bl OSGetTime
/* 8035DD50 00327310  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 8035DD54 00327314  38 00 00 00 */	li r0, 0
/* 8035DD58 00327318  7C 9E 23 78 */	mr r30, r4
/* 8035DD5C 0032731C  7C 7F 1B 78 */	mr r31, r3
/* 8035DD60 00327320  3B 45 4D D3 */	addi r26, r5, 0x10624DD3@l
/* 8035DD64 00327324  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8035DD68 00327328  3F 60 80 00 */	lis r27, 0x8000
.L_8035DD6C:
/* 8035DD6C 0032732C  80 0D B9 94 */	lwz r0, PlayRecordTerminated@sda21(r13)
/* 8035DD70 00327330  2C 00 00 00 */	cmpwi r0, 0
/* 8035DD74 00327334  40 82 00 48 */	bne .L_8035DDBC
/* 8035DD78 00327338  4B FF EB E9 */	bl OSGetTime
/* 8035DD7C 0032733C  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8035DD80 00327340  7C 9E 20 10 */	subfc r4, r30, r4
/* 8035DD84 00327344  7C 7F 19 10 */	subfe r3, r31, r3
/* 8035DD88 00327348  54 00 F0 BE */	srwi r0, r0, 2
/* 8035DD8C 0032734C  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 8035DD90 00327350  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8035DD94 00327354  54 00 D1 BE */	srwi r0, r0, 6
/* 8035DD98 00327358  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 8035DD9C 0032735C  7C 04 00 10 */	subfc r0, r4, r0
/* 8035DDA0 00327360  7C 63 E1 10 */	subfe r3, r3, r28
/* 8035DDA4 00327364  7C 7C E1 10 */	subfe r3, r28, r28
/* 8035DDA8 00327368  7C 63 00 D1 */	neg. r3, r3
/* 8035DDAC 0032736C  41 82 FF C0 */	beq .L_8035DD6C
/* 8035DDB0 00327370  38 00 00 08 */	li r0, 8
/* 8035DDB4 00327374  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
/* 8035DDB8 00327378  48 00 00 7C */	b .L_8035DE34
.L_8035DDBC:
/* 8035DDBC 0032737C  80 0D 9A 20 */	lwz r0, PlayRecordState@sda21(r13)
/* 8035DDC0 00327380  2C 00 00 04 */	cmpwi r0, 4
/* 8035DDC4 00327384  41 82 00 68 */	beq .L_8035DE2C
/* 8035DDC8 00327388  40 80 00 14 */	bge .L_8035DDDC
/* 8035DDCC 0032738C  2C 00 00 01 */	cmpwi r0, 1
/* 8035DDD0 00327390  41 82 00 24 */	beq .L_8035DDF4
/* 8035DDD4 00327394  40 80 00 14 */	bge .L_8035DDE8
/* 8035DDD8 00327398  48 00 00 54 */	b .L_8035DE2C
.L_8035DDDC:
/* 8035DDDC 0032739C  2C 00 00 06 */	cmpwi r0, 6
/* 8035DDE0 003273A0  41 82 00 38 */	beq .L_8035DE18
/* 8035DDE4 003273A4  40 80 00 48 */	bge .L_8035DE2C
.L_8035DDE8:
/* 8035DDE8 003273A8  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8035DDEC 003273AC  4B FF 1E 75 */	bl NANDClose
/* 8035DDF0 003273B0  48 00 00 3C */	b .L_8035DE2C
.L_8035DDF4:
/* 8035DDF4 003273B4  80 0D B9 9C */	lwz r0, PlayRecordLastError@sda21(r13)
/* 8035DDF8 003273B8  2C 00 00 00 */	cmpwi r0, 0
/* 8035DDFC 003273BC  40 82 00 30 */	bne .L_8035DE2C
/* 8035DE00 003273C0  80 0D B9 98 */	lwz r0, PlayRecordRetry@sda21(r13)
/* 8035DE04 003273C4  2C 00 00 00 */	cmpwi r0, 0
/* 8035DE08 003273C8  40 82 00 24 */	bne .L_8035DE2C
/* 8035DE0C 003273CC  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8035DE10 003273D0  4B FF 1E 51 */	bl NANDClose
/* 8035DE14 003273D4  48 00 00 18 */	b .L_8035DE2C
.L_8035DE18:
/* 8035DE18 003273D8  80 0D B9 98 */	lwz r0, PlayRecordRetry@sda21(r13)
/* 8035DE1C 003273DC  2C 00 00 00 */	cmpwi r0, 0
/* 8035DE20 003273E0  41 82 00 0C */	beq .L_8035DE2C
/* 8035DE24 003273E4  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8035DE28 003273E8  4B FF 1E 39 */	bl NANDClose
.L_8035DE2C:
/* 8035DE2C 003273EC  38 00 00 09 */	li r0, 9
/* 8035DE30 003273F0  90 0D 9A 20 */	stw r0, PlayRecordState@sda21(r13)
.L_8035DE34:
/* 8035DE34 003273F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8035DE38 003273F8  4B F5 C3 65 */	bl _restgpr_26
/* 8035DE3C 003273FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035DE40 00327400  7C 08 03 A6 */	mtlr r0
/* 8035DE44 00327404  38 21 00 20 */	addi r1, r1, 0x20
/* 8035DE48 00327408  4E 80 00 20 */	blr 
.endfn __OSStopPlayRecord

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8055ECC0, global
	.asciz "/title/00000001/00000002/data/play_rec.dat"
	.balign 4
.endobj lbl_8055ECC0


.obj jumptable_8055ECEC, global
	.4byte .L_8035D7B0
	.4byte .L_8035D7BC
	.4byte .L_8035D838
	.4byte .L_8035D87C
	.4byte .L_8035D8A4
	.4byte .L_8035D8B0
	.4byte .L_8035D938
.endobj jumptable_8055ECEC

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj PlayRecordState, local
	.4byte 0x00000009
	.4byte 0
.endobj PlayRecordState

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj PlayRecord, local
	.skip 0x80
.endobj PlayRecord

.obj PlayRecordAlarm, local
	.skip 0x30
.endobj PlayRecordAlarm

.obj FileInfo, local
	.skip 0x8C
.endobj FileInfo

.obj Block, local
	.skip 0xBC
.endobj Block

.skip 0x8

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

#needed to align __start.c
.balign 8

.obj PlayRecordGet, local
	.skip 0x4
.endobj PlayRecordGet

.obj PlayRecordError, local
	.skip 0x4
.endobj PlayRecordError

.obj PlayRecordTerminate, local
	.skip 0x4
.endobj PlayRecordTerminate

.obj PlayRecordTerminated, local
	.skip 0x4
.endobj PlayRecordTerminated

.obj PlayRecordRetry, local
	.skip 0x4
.endobj PlayRecordRetry

.obj PlayRecordLastError, local
	.skip 0x4
.endobj PlayRecordLastError

.obj PlayRecordLastCloseTime, local
	.skip 0x8
.endobj PlayRecordLastCloseTime
