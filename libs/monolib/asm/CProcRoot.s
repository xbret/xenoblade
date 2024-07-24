.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__9CProcRootFv, global
/* 8043974C 00402D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80439750 00402D10  7C 08 02 A6 */	mflr r0
/* 80439754 00402D14  2C 03 00 00 */	cmpwi r3, 0
/* 80439758 00402D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043975C 00402D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80439760 00402D20  7C 9F 23 78 */	mr r31, r4
/* 80439764 00402D24  93 C1 00 08 */	stw r30, 8(r1)
/* 80439768 00402D28  7C 7E 1B 78 */	mr r30, r3
/* 8043976C 00402D2C  41 82 00 24 */	beq .L_80439790
/* 80439770 00402D30  38 00 00 00 */	li r0, 0
/* 80439774 00402D34  90 0D BD 00 */	stw r0, lbl_80667E80@sda21(r13)
/* 80439778 00402D38  38 80 00 00 */	li r4, 0
/* 8043977C 00402D3C  4B FF E3 4D */	bl __dt__11CWorkThreadFv
/* 80439780 00402D40  2C 1F 00 00 */	cmpwi r31, 0
/* 80439784 00402D44  40 81 00 0C */	ble .L_80439790
/* 80439788 00402D48  7F C3 F3 78 */	mr r3, r30
/* 8043978C 00402D4C  4B FF B4 A1 */	bl __dl__FPv
.L_80439790:
/* 80439790 00402D50  7F C3 F3 78 */	mr r3, r30
/* 80439794 00402D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80439798 00402D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043979C 00402D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804397A0 00402D60  7C 08 03 A6 */	mtlr r0
/* 804397A4 00402D64  38 21 00 10 */	addi r1, r1, 0x10
/* 804397A8 00402D68  4E 80 00 20 */	blr 
.endfn __dt__9CProcRootFv

.fn func_804397AC, global
/* 804397AC 00402D6C  80 6D BD 00 */	lwz r3, lbl_80667E80@sda21(r13)
/* 804397B0 00402D70  4E 80 00 20 */	blr 
.endfn func_804397AC

.fn CProcRoot_wkStartup, global
/* 804397B4 00402D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804397B8 00402D78  7C 08 02 A6 */	mflr r0
/* 804397BC 00402D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804397C0 00402D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804397C4 00402D84  93 C1 00 08 */	stw r30, 8(r1)
/* 804397C8 00402D88  7C 7E 1B 78 */	mr r30, r3
/* 804397CC 00402D8C  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 804397D0 00402D90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804397D4 00402D94  41 82 00 0C */	beq .L_804397E0
/* 804397D8 00402D98  4B FF F2 21 */	bl wkStartup__11CWorkThreadFv
/* 804397DC 00402D9C  48 00 00 64 */	b .L_80439840
.L_804397E0:
/* 804397E0 00402DA0  48 01 FC 19 */	bl func_804593F8
/* 804397E4 00402DA4  2C 03 00 00 */	cmpwi r3, 0
/* 804397E8 00402DA8  41 82 00 54 */	beq .L_8043983C
/* 804397EC 00402DAC  48 00 8A 01 */	bl func_804421EC
/* 804397F0 00402DB0  2C 03 00 00 */	cmpwi r3, 0
/* 804397F4 00402DB4  41 82 00 48 */	beq .L_8043983C
/* 804397F8 00402DB8  3F E0 80 52 */	lis r31, lbl_80525E2C@ha
/* 804397FC 00402DBC  3B FF 5E 2C */	addi r31, r31, lbl_80525E2C@l
/* 80439800 00402DC0  4B FF DD B5 */	bl getHeapIndex__3mtlFv
/* 80439804 00402DC4  7C 64 1B 78 */	mr r4, r3
/* 80439808 00402DC8  38 60 02 00 */	li r3, 0x200
/* 8043980C 00402DCC  4B FF B2 51 */	bl heap_malloc__3mtlFUli
/* 80439810 00402DD0  2C 03 00 00 */	cmpwi r3, 0
/* 80439814 00402DD4  41 82 00 10 */	beq .L_80439824
/* 80439818 00402DD8  7F E4 FB 78 */	mr r4, r31
/* 8043981C 00402DDC  7F C5 F3 78 */	mr r5, r30
/* 80439820 00402DE0  48 01 C1 AD */	bl __ct__8CDesktopFPCcP11CWorkThread
.L_80439824:
/* 80439824 00402DE4  7F C4 F3 78 */	mr r4, r30
/* 80439828 00402DE8  38 A0 00 00 */	li r5, 0
/* 8043982C 00402DEC  4B FF F3 AD */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80439830 00402DF0  7F C3 F3 78 */	mr r3, r30
/* 80439834 00402DF4  4B FF F1 C5 */	bl wkStartup__11CWorkThreadFv
/* 80439838 00402DF8  48 00 00 08 */	b .L_80439840
.L_8043983C:
/* 8043983C 00402DFC  38 60 00 00 */	li r3, 0
.L_80439840:
/* 80439840 00402E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80439844 00402E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80439848 00402E08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043984C 00402E0C  7C 08 03 A6 */	mtlr r0
/* 80439850 00402E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80439854 00402E14  4E 80 00 20 */	blr 
.endfn CProcRoot_wkStartup

.fn CProcRoot_wkShutdown, global
/* 80439858 00402E18  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8043985C 00402E1C  80 04 00 00 */	lwz r0, 0(r4)
/* 80439860 00402E20  7C 00 20 40 */	cmplw r0, r4
/* 80439864 00402E24  41 82 00 0C */	beq .L_80439870
/* 80439868 00402E28  38 60 00 00 */	li r3, 0
/* 8043986C 00402E2C  4E 80 00 20 */	blr
.L_80439870:
/* 80439870 00402E30  4B FF F1 B4 */	b wkShutdown__11CWorkThreadFv
/* 80439874 00402E34  4E 80 00 20 */	blr 
.endfn CProcRoot_wkShutdown


.fn __ct__80439878, global
/* 80439878 00402E38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043987C 00402E3C  7C 08 02 A6 */	mflr r0
/* 80439880 00402E40  3C 80 80 52 */	lis r4, lbl_80525E2C@ha
/* 80439884 00402E44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80439888 00402E48  38 84 5E 2C */	addi r4, r4, lbl_80525E2C@l
/* 8043988C 00402E4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80439890 00402E50  3B E4 00 09 */	addi r31, r4, 9
/* 80439894 00402E54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80439898 00402E58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8043989C 00402E5C  7C 7D 1B 78 */	mr r29, r3
/* 804398A0 00402E60  4B FF DD 15 */	bl getHeapIndex__3mtlFv
/* 804398A4 00402E64  7C 64 1B 78 */	mr r4, r3
/* 804398A8 00402E68  38 60 01 C8 */	li r3, 0x1c8
/* 804398AC 00402E6C  4B FF B1 B1 */	bl heap_malloc__3mtlFUli
/* 804398B0 00402E70  2C 03 00 00 */	cmpwi r3, 0
/* 804398B4 00402E74  7C 7E 1B 78 */	mr r30, r3
/* 804398B8 00402E78  41 82 00 2C */	beq .L_804398E4
/* 804398BC 00402E7C  7F E4 FB 78 */	mr r4, r31
/* 804398C0 00402E80  7F A5 EB 78 */	mr r5, r29
/* 804398C4 00402E84  38 C0 00 20 */	li r6, 0x20
/* 804398C8 00402E88  4B FF DC F5 */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 804398CC 00402E8C  3C 60 80 57 */	lis r3, __vt__9CProcRoot@ha
/* 804398D0 00402E90  38 00 00 15 */	li r0, 0x15
/* 804398D4 00402E94  38 63 EB 20 */	addi r3, r3, __vt__9CProcRoot@l
/* 804398D8 00402E98  90 7E 00 00 */	stw r3, 0(r30)
/* 804398DC 00402E9C  93 CD BD 00 */	stw r30, lbl_80667E80@sda21(r13)
/* 804398E0 00402EA0  90 1E 00 50 */	stw r0, 0x50(r30)
.L_804398E4:
/* 804398E4 00402EA4  7F C3 F3 78 */	mr r3, r30
/* 804398E8 00402EA8  7F A4 EB 78 */	mr r4, r29
/* 804398EC 00402EAC  38 A0 00 00 */	li r5, 0
/* 804398F0 00402EB0  4B FF F2 E9 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 804398F4 00402EB4  7F C3 F3 78 */	mr r3, r30
/* 804398F8 00402EB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804398FC 00402EBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80439900 00402EC0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80439904 00402EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439908 00402EC8  7C 08 03 A6 */	mtlr r0
/* 8043990C 00402ECC  38 21 00 20 */	addi r1, r1, 0x20
/* 80439910 00402ED0  4E 80 00 20 */	blr 
.endfn __ct__80439878

.fn func_80439914, global
/* 80439914 00402ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80439918 00402ED8  40 82 00 0C */	bne .L_80439924
/* 8043991C 00402EDC  38 60 00 00 */	li r3, 0
/* 80439920 00402EE0  4E 80 00 20 */	blr
.L_80439924:
/* 80439924 00402EE4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80439928 00402EE8  2C 00 00 38 */	cmpwi r0, 0x38
/* 8043992C 00402EEC  4D 82 00 20 */	beqlr 
/* 80439930 00402EF0  38 60 00 00 */	li r3, 0
/* 80439934 00402EF4  4E 80 00 20 */	blr 
.endfn func_80439914

.fn func_80439938, global
/* 80439938 00402EF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043993C 00402EFC  7C 08 02 A6 */	mflr r0
/* 80439940 00402F00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80439944 00402F04  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80439948 00402F08  7C 7D 1B 78 */	mr r29, r3
/* 8043994C 00402F0C  7C 9E 23 78 */	mr r30, r4
/* 80439950 00402F10  80 A3 00 60 */	lwz r5, 0x60(r3)
/* 80439954 00402F14  83 E5 00 00 */	lwz r31, 0(r5)
/* 80439958 00402F18  48 00 00 28 */	b .L_80439980
.L_8043995C:
/* 8043995C 00402F1C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80439960 00402F20  4B FF FF B5 */	bl func_80439914
/* 80439964 00402F24  7F C4 F3 78 */	mr r4, r30
/* 80439968 00402F28  48 00 04 7D */	bl func_80439DE4
/* 8043996C 00402F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80439970 00402F30  41 82 00 0C */	beq .L_8043997C
/* 80439974 00402F34  38 60 00 01 */	li r3, 1
/* 80439978 00402F38  48 00 00 18 */	b .L_80439990
.L_8043997C:
/* 8043997C 00402F3C  83 FF 00 00 */	lwz r31, 0(r31)
.L_80439980:
/* 80439980 00402F40  80 1D 00 60 */	lwz r0, 0x60(r29)
/* 80439984 00402F44  7C 1F 00 40 */	cmplw r31, r0
/* 80439988 00402F48  40 82 FF D4 */	bne .L_8043995C
/* 8043998C 00402F4C  38 60 00 00 */	li r3, 0
.L_80439990:
/* 80439990 00402F50  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80439994 00402F54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439998 00402F58  7C 08 03 A6 */	mtlr r0
/* 8043999C 00402F5C  38 21 00 20 */	addi r1, r1, 0x20
/* 804399A0 00402F60  4E 80 00 20 */	blr 
.endfn func_80439938

.fn func_804399A4, global
/* 804399A4 00402F64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804399A8 00402F68  7C 08 02 A6 */	mflr r0
/* 804399AC 00402F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804399B0 00402F70  BF 41 00 08 */	stmw r26, 8(r1)
/* 804399B4 00402F74  7C DD 33 78 */	mr r29, r6
/* 804399B8 00402F78  7C 7A 1B 78 */	mr r26, r3
/* 804399BC 00402F7C  7C 9B 23 78 */	mr r27, r4
/* 804399C0 00402F80  7C BC 2B 78 */	mr r28, r5
/* 804399C4 00402F84  7C FE 3B 78 */	mr r30, r7
/* 804399C8 00402F88  7D 1F 43 78 */	mr r31, r8
/* 804399CC 00402F8C  7F A3 EB 78 */	mr r3, r29
/* 804399D0 00402F90  48 00 01 E1 */	bl func_80439BB0
/* 804399D4 00402F94  2C 03 00 00 */	cmpwi r3, 0
/* 804399D8 00402F98  41 82 00 0C */	beq .L_804399E4
/* 804399DC 00402F9C  38 60 00 01 */	li r3, 1
/* 804399E0 00402FA0  48 00 00 3C */	b .L_80439A1C
.L_804399E4:
/* 804399E4 00402FA4  7F 43 D3 78 */	mr r3, r26
/* 804399E8 00402FA8  7F 64 DB 78 */	mr r4, r27
/* 804399EC 00402FAC  7F 85 E3 78 */	mr r5, r28
/* 804399F0 00402FB0  7F A6 EB 78 */	mr r6, r29
/* 804399F4 00402FB4  7F C7 F3 78 */	mr r7, r30
/* 804399F8 00402FB8  7F E8 FB 78 */	mr r8, r31
/* 804399FC 00402FBC  48 00 05 05 */	bl func_80439F00
/* 80439A00 00402FC0  7F 63 DB 78 */	mr r3, r27
/* 80439A04 00402FC4  4B E7 FB B5 */	bl strlen
/* 80439A08 00402FC8  90 7A 02 C8 */	stw r3, 0x2c8(r26)
/* 80439A0C 00402FCC  7F 64 DB 78 */	mr r4, r27
/* 80439A10 00402FD0  38 7A 01 C8 */	addi r3, r26, 0x1c8
/* 80439A14 00402FD4  4B E8 8C A5 */	bl strcpy
/* 80439A18 00402FD8  38 60 00 01 */	li r3, 1
.L_80439A1C:
/* 80439A1C 00402FDC  BB 41 00 08 */	lmw r26, 8(r1)
/* 80439A20 00402FE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439A24 00402FE4  7C 08 03 A6 */	mtlr r0
/* 80439A28 00402FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80439A2C 00402FEC  4E 80 00 20 */	blr 
.endfn func_804399A4

.fn func_80439A30, global
/* 80439A30 00402FF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80439A34 00402FF4  7C 08 02 A6 */	mflr r0
/* 80439A38 00402FF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80439A3C 00402FFC  BF 41 00 08 */	stmw r26, 8(r1)
/* 80439A40 00403000  7C 7A 1B 78 */	mr r26, r3
/* 80439A44 00403004  7C 9B 23 78 */	mr r27, r4
/* 80439A48 00403008  7C BC 2B 78 */	mr r28, r5
/* 80439A4C 0040300C  7C DD 33 78 */	mr r29, r6
/* 80439A50 00403010  80 E3 00 60 */	lwz r7, 0x60(r3)
/* 80439A54 00403014  83 E7 00 00 */	lwz r31, 0(r7)
/* 80439A58 00403018  48 00 00 58 */	b .L_80439AB0
.L_80439A5C:
/* 80439A5C 0040301C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80439A60 00403020  4B FF FE B5 */	bl func_80439914
/* 80439A64 00403024  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 80439A68 00403028  7C 7E 1B 78 */	mr r30, r3
/* 80439A6C 0040302C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80439A70 00403030  40 82 00 3C */	bne .L_80439AAC
/* 80439A74 00403034  7F 64 DB 78 */	mr r4, r27
/* 80439A78 00403038  48 00 05 25 */	bl func_80439F9C
/* 80439A7C 0040303C  2C 03 00 00 */	cmpwi r3, 0
/* 80439A80 00403040  41 82 00 2C */	beq .L_80439AAC
/* 80439A84 00403044  2C 1C 00 00 */	cmpwi r28, 0
/* 80439A88 00403048  41 82 00 0C */	beq .L_80439A94
/* 80439A8C 0040304C  80 1E 04 D0 */	lwz r0, 0x4d0(r30)
/* 80439A90 00403050  90 1C 00 00 */	stw r0, 0(r28)
.L_80439A94:
/* 80439A94 00403054  2C 1D 00 00 */	cmpwi r29, 0
/* 80439A98 00403058  41 82 00 0C */	beq .L_80439AA4
/* 80439A9C 0040305C  80 1E 04 D4 */	lwz r0, 0x4d4(r30)
/* 80439AA0 00403060  90 1D 00 00 */	stw r0, 0(r29)
.L_80439AA4:
/* 80439AA4 00403064  38 60 00 01 */	li r3, 1
/* 80439AA8 00403068  48 00 00 18 */	b .L_80439AC0
.L_80439AAC:
/* 80439AAC 0040306C  83 FF 00 00 */	lwz r31, 0(r31)
.L_80439AB0:
/* 80439AB0 00403070  80 1A 00 60 */	lwz r0, 0x60(r26)
/* 80439AB4 00403074  7C 1F 00 40 */	cmplw r31, r0
/* 80439AB8 00403078  40 82 FF A4 */	bne .L_80439A5C
/* 80439ABC 0040307C  38 60 00 00 */	li r3, 0
.L_80439AC0:
/* 80439AC0 00403080  BB 41 00 08 */	lmw r26, 8(r1)
/* 80439AC4 00403084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439AC8 00403088  7C 08 03 A6 */	mtlr r0
/* 80439ACC 0040308C  38 21 00 20 */	addi r1, r1, 0x20
/* 80439AD0 00403090  4E 80 00 20 */	blr 
.endfn func_80439A30

.fn func_80439AD4, global
/* 80439AD4 00403094  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80439AD8 00403098  80 04 00 00 */	lwz r0, 0(r4)
/* 80439ADC 0040309C  7C 60 20 50 */	subf r3, r0, r4
/* 80439AE0 004030A0  7C 04 00 50 */	subf r0, r4, r0
/* 80439AE4 004030A4  7C 60 03 78 */	or r0, r3, r0
/* 80439AE8 004030A8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80439AEC 004030AC  4E 80 00 20 */	blr 
.endfn func_80439AD4

.fn func_80439AF0, global
/* 80439AF0 004030B0  3C 80 80 66 */	lis r4, lbl_8065A088@ha
/* 80439AF4 004030B4  A8 AD BD 08 */	lha r5, lbl_80667E88@sda21(r13)
/* 80439AF8 004030B8  38 84 A0 88 */	addi r4, r4, lbl_8065A088@l
/* 80439AFC 004030BC  38 E0 00 00 */	li r7, 0
/* 80439B00 004030C0  48 00 00 28 */	b .L_80439B28
.L_80439B04:
/* 80439B04 004030C4  7C E0 07 34 */	extsh r0, r7
/* 80439B08 004030C8  54 00 10 3A */	slwi r0, r0, 2
/* 80439B0C 004030CC  7C C4 00 2E */	lwzx r6, r4, r0
/* 80439B10 004030D0  80 06 01 C4 */	lwz r0, 0x1c4(r6)
/* 80439B14 004030D4  7C 03 00 40 */	cmplw r3, r0
/* 80439B18 004030D8  40 82 00 0C */	bne .L_80439B24
/* 80439B1C 004030DC  7C C3 33 78 */	mr r3, r6
/* 80439B20 004030E0  4E 80 00 20 */	blr
.L_80439B24:
/* 80439B24 004030E4  38 E7 00 01 */	addi r7, r7, 1
.L_80439B28:
/* 80439B28 004030E8  7C E0 07 34 */	extsh r0, r7
/* 80439B2C 004030EC  7C 00 28 00 */	cmpw r0, r5
/* 80439B30 004030F0  41 80 FF D4 */	blt .L_80439B04
/* 80439B34 004030F4  38 60 00 00 */	li r3, 0
/* 80439B38 004030F8  4E 80 00 20 */	blr 
.endfn func_80439AF0

.fn func_80439B3C, global
/* 80439B3C 004030FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80439B40 00403100  7C 08 02 A6 */	mflr r0
/* 80439B44 00403104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80439B48 00403108  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80439B4C 0040310C  3F E0 80 66 */	lis r31, lbl_8065A088@ha
/* 80439B50 00403110  7C 7D 1B 78 */	mr r29, r3
/* 80439B54 00403114  3B C0 00 00 */	li r30, 0
/* 80439B58 00403118  3B FF A0 88 */	addi r31, r31, lbl_8065A088@l
/* 80439B5C 0040311C  48 00 00 2C */	b .L_80439B88
.L_80439B60:
/* 80439B60 00403120  7F C0 07 34 */	extsh r0, r30
/* 80439B64 00403124  7F A4 EB 78 */	mr r4, r29
/* 80439B68 00403128  54 00 10 3A */	slwi r0, r0, 2
/* 80439B6C 0040312C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80439B70 00403130  4B FF FD C9 */	bl func_80439938
/* 80439B74 00403134  2C 03 00 00 */	cmpwi r3, 0
/* 80439B78 00403138  41 82 00 0C */	beq .L_80439B84
/* 80439B7C 0040313C  38 60 00 01 */	li r3, 1
/* 80439B80 00403140  48 00 00 1C */	b .L_80439B9C
.L_80439B84:
/* 80439B84 00403144  3B DE 00 01 */	addi r30, r30, 1
.L_80439B88:
/* 80439B88 00403148  A8 0D BD 08 */	lha r0, lbl_80667E88@sda21(r13)
/* 80439B8C 0040314C  7F C3 07 34 */	extsh r3, r30
/* 80439B90 00403150  7C 03 00 00 */	cmpw r3, r0
/* 80439B94 00403154  41 80 FF CC */	blt .L_80439B60
/* 80439B98 00403158  38 60 00 00 */	li r3, 0
.L_80439B9C:
/* 80439B9C 0040315C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80439BA0 00403160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439BA4 00403164  7C 08 03 A6 */	mtlr r0
/* 80439BA8 00403168  38 21 00 20 */	addi r1, r1, 0x20
/* 80439BAC 0040316C  4E 80 00 20 */	blr 
.endfn func_80439B3C

.fn func_80439BB0, global
/* 80439BB0 00403170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80439BB4 00403174  7C 08 02 A6 */	mflr r0
/* 80439BB8 00403178  90 01 00 24 */	stw r0, 0x24(r1)
/* 80439BBC 0040317C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80439BC0 00403180  3F E0 80 66 */	lis r31, lbl_8065A088@ha
/* 80439BC4 00403184  7C 7D 1B 78 */	mr r29, r3
/* 80439BC8 00403188  3B C0 00 00 */	li r30, 0
/* 80439BCC 0040318C  3B FF A0 88 */	addi r31, r31, lbl_8065A088@l
/* 80439BD0 00403190  48 00 00 2C */	b .L_80439BFC
.L_80439BD4:
/* 80439BD4 00403194  7F C0 07 34 */	extsh r0, r30
/* 80439BD8 00403198  7F A4 EB 78 */	mr r4, r29
/* 80439BDC 0040319C  54 00 10 3A */	slwi r0, r0, 2
/* 80439BE0 004031A0  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80439BE4 004031A4  48 00 00 41 */	bl func_80439C24
/* 80439BE8 004031A8  2C 03 00 00 */	cmpwi r3, 0
/* 80439BEC 004031AC  41 82 00 0C */	beq .L_80439BF8
/* 80439BF0 004031B0  38 60 00 01 */	li r3, 1
/* 80439BF4 004031B4  48 00 00 1C */	b .L_80439C10
.L_80439BF8:
/* 80439BF8 004031B8  3B DE 00 01 */	addi r30, r30, 1
.L_80439BFC:
/* 80439BFC 004031BC  A8 0D BD 08 */	lha r0, lbl_80667E88@sda21(r13)
/* 80439C00 004031C0  7F C3 07 34 */	extsh r3, r30
/* 80439C04 004031C4  7C 03 00 00 */	cmpw r3, r0
/* 80439C08 004031C8  41 80 FF CC */	blt .L_80439BD4
/* 80439C0C 004031CC  38 60 00 00 */	li r3, 0
.L_80439C10:
/* 80439C10 004031D0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80439C14 004031D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439C18 004031D8  7C 08 03 A6 */	mtlr r0
/* 80439C1C 004031DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80439C20 004031E0  4E 80 00 20 */	blr 
.endfn func_80439BB0

.fn func_80439C24, global
/* 80439C24 004031E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80439C28 004031E8  7C 08 02 A6 */	mflr r0
/* 80439C2C 004031EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80439C30 004031F0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80439C34 004031F4  7C 7D 1B 78 */	mr r29, r3
/* 80439C38 004031F8  7C 9E 23 78 */	mr r30, r4
/* 80439C3C 004031FC  38 63 00 5C */	addi r3, r3, 0x5c
/* 80439C40 00403200  4B FF EE B1 */	bl func_80438AF0
/* 80439C44 00403204  7C 7F 1B 78 */	mr r31, r3
/* 80439C48 00403208  48 00 00 48 */	b .L_80439C90
.L_80439C4C:
/* 80439C4C 0040320C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80439C50 00403210  4B FF FC C5 */	bl func_80439914
/* 80439C54 00403214  80 03 04 D0 */	lwz r0, 0x4d0(r3)
/* 80439C58 00403218  7C 00 F0 40 */	cmplw r0, r30
/* 80439C5C 0040321C  40 82 00 30 */	bne .L_80439C8C
/* 80439C60 00403220  2C 00 00 00 */	cmpwi r0, 0
/* 80439C64 00403224  38 80 00 00 */	li r4, 0
/* 80439C68 00403228  41 82 00 14 */	beq .L_80439C7C
/* 80439C6C 0040322C  80 03 04 D8 */	lwz r0, 0x4d8(r3)
/* 80439C70 00403230  2C 00 00 00 */	cmpwi r0, 0
/* 80439C74 00403234  40 82 00 08 */	bne .L_80439C7C
/* 80439C78 00403238  38 80 00 01 */	li r4, 1
.L_80439C7C:
/* 80439C7C 0040323C  2C 04 00 00 */	cmpwi r4, 0
/* 80439C80 00403240  40 82 00 0C */	bne .L_80439C8C
/* 80439C84 00403244  38 60 00 01 */	li r3, 1
/* 80439C88 00403248  48 00 00 18 */	b .L_80439CA0
.L_80439C8C:
/* 80439C8C 0040324C  83 FF 00 00 */	lwz r31, 0(r31)
.L_80439C90:
/* 80439C90 00403250  80 1D 00 60 */	lwz r0, 0x60(r29)
/* 80439C94 00403254  7C 1F 00 40 */	cmplw r31, r0
/* 80439C98 00403258  40 82 FF B4 */	bne .L_80439C4C
/* 80439C9C 0040325C  38 60 00 00 */	li r3, 0
.L_80439CA0:
/* 80439CA0 00403260  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80439CA4 00403264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439CA8 00403268  7C 08 03 A6 */	mtlr r0
/* 80439CAC 0040326C  38 21 00 20 */	addi r1, r1, 0x20
/* 80439CB0 00403270  4E 80 00 20 */	blr 
.endfn func_80439C24

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CProcRoot_typestr, global
	.asciz "CProcRoot"
	.balign 4
.endobj CProcRoot_typestr


.obj lbl_80525E2C, global
	.asciz "CDesktop"
	.asciz "CProcRoot"
	.balign 4
.endobj lbl_80525E2C


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__9CProcRoot, global
	.4byte __RTTI__9CProcRoot
	.4byte 0
	.4byte __dt__9CProcRootFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFP10CEventFile
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFPv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
	.4byte wkUpdate__11CWorkThreadFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte CProcRoot_wkStartup
	.4byte CProcRoot_wkShutdown
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__9CProcRoot

.obj CProcRoot_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CProcRoot_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__9CProcRoot, global
	.4byte CProcRoot_typestr
	.4byte CProcRoot_hierarchy
.endobj __RTTI__9CProcRoot

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.obj lbl_8065A088, global
	.skip 0x40
.endobj lbl_8065A088

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667E80, global
	.skip 0x8
.endobj lbl_80667E80

.obj lbl_80667E88, global
	.skip 0x8
.endobj lbl_80667E88

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C230", local
.hidden "@etb_8001C230"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C230"

.obj "@etb_8001C238", local
.hidden "@etb_8001C238"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C238"

.obj "@etb_8001C240", local
.hidden "@etb_8001C240"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C240"

.obj "@etb_8001C248", local
.hidden "@etb_8001C248"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C248"

.obj "@etb_8001C250", local
.hidden "@etb_8001C250"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001C250"

.obj "@etb_8001C258", local
.hidden "@etb_8001C258"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001C258"

.obj "@etb_8001C260", local
.hidden "@etb_8001C260"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C260"

.obj "@etb_8001C268", local
.hidden "@etb_8001C268"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C268"

.obj "@etb_8001C270", local
.hidden "@etb_8001C270"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C270"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033E84", local
.hidden "@eti_80033E84"
	.4byte __dt__9CProcRootFv
	.4byte 0x00000060
	.4byte "@etb_8001C230"
.endobj "@eti_80033E84"

.obj "@eti_80033E90", local
.hidden "@eti_80033E90"
	.4byte CProcRoot_wkStartup
	.4byte 0x000000A4
	.4byte "@etb_8001C238"
.endobj "@eti_80033E90"

.obj "@eti_80033E9C", local
.hidden "@eti_80033E9C"
	.4byte __ct__80439878
	.4byte 0x0000009C
	.4byte "@etb_8001C240"
.endobj "@eti_80033E9C"

.obj "@eti_80033EA8", local
.hidden "@eti_80033EA8"
	.4byte func_80439938
	.4byte 0x0000006C
	.4byte "@etb_8001C248"
.endobj "@eti_80033EA8"

.obj "@eti_80033EB4", local
.hidden "@eti_80033EB4"
	.4byte func_804399A4
	.4byte 0x0000008C
	.4byte "@etb_8001C250"
.endobj "@eti_80033EB4"

.obj "@eti_80033EC0", local
.hidden "@eti_80033EC0"
	.4byte func_80439A30
	.4byte 0x000000A4
	.4byte "@etb_8001C258"
.endobj "@eti_80033EC0"

.obj "@eti_80033ECC", local
.hidden "@eti_80033ECC"
	.4byte func_80439B3C
	.4byte 0x00000074
	.4byte "@etb_8001C260"
.endobj "@eti_80033ECC"

.obj "@eti_80033ED8", local
.hidden "@eti_80033ED8"
	.4byte func_80439BB0
	.4byte 0x00000074
	.4byte "@etb_8001C268"
.endobj "@eti_80033ED8"

.obj "@eti_80033EE4", local
.hidden "@eti_80033EE4"
	.4byte func_80439C24
	.4byte 0x00000090
	.4byte "@etb_8001C270"
.endobj "@eti_80033EE4"
