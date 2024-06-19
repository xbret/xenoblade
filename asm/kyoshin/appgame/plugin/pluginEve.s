.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn getFlag, local
/* 800468E0 0000FEA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800468E4 0000FEA4  7C 08 02 A6 */	mflr r0
/* 800468E8 0000FEA8  38 80 00 01 */	li r4, 1
/* 800468EC 0000FEAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800468F0 0000FEB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800468F4 0000FEB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800468F8 0000FEB8  7C 7E 1B 78 */	mr r30, r3
/* 800468FC 0000FEBC  48 45 A3 7D */	bl vmArgPtrGet
/* 80046900 0000FEC0  7C 64 1B 78 */	mr r4, r3
/* 80046904 0000FEC4  38 60 00 02 */	li r3, 2
/* 80046908 0000FEC8  48 45 A4 C5 */	bl vmArgIntGet
/* 8004690C 0000FECC  7C 7F 1B 78 */	mr r31, r3
/* 80046910 0000FED0  7F C3 F3 78 */	mr r3, r30
/* 80046914 0000FED4  38 80 00 02 */	li r4, 2
/* 80046918 0000FED8  48 45 A3 61 */	bl vmArgPtrGet
/* 8004691C 0000FEDC  7C 64 1B 78 */	mr r4, r3
/* 80046920 0000FEE0  38 60 00 03 */	li r3, 3
/* 80046924 0000FEE4  48 45 A4 A9 */	bl vmArgIntGet
/* 80046928 0000FEE8  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8004692C 0000FEEC  57 E4 84 3E */	srwi r4, r31, 0x10
/* 80046930 0000FEF0  7C 03 00 00 */	cmpw r3, r0
/* 80046934 0000FEF4  40 80 00 1C */	bge .L_80046950
/* 80046938 0000FEF8  38 00 00 03 */	li r0, 3
/* 8004693C 0000FEFC  98 01 00 08 */	stb r0, 8(r1)
/* 80046940 0000FF00  7C 64 1A 14 */	add r3, r4, r3
/* 80046944 0000FF04  48 05 66 49 */	bl func_8009CF8C
/* 80046948 0000FF08  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004694C 0000FF0C  48 00 00 24 */	b .L_80046970
.L_80046950:
/* 80046950 0000FF10  38 60 00 03 */	li r3, 3
/* 80046954 0000FF14  38 00 00 00 */	li r0, 0
/* 80046958 0000FF18  98 61 00 08 */	stb r3, 8(r1)
/* 8004695C 0000FF1C  7F C3 F3 78 */	mr r3, r30
/* 80046960 0000FF20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80046964 0000FF24  48 45 A6 A1 */	bl func_804A1004
/* 80046968 0000FF28  38 60 00 00 */	li r3, 0
/* 8004696C 0000FF2C  48 00 00 14 */	b .L_80046980
.L_80046970:
/* 80046970 0000FF30  7F C3 F3 78 */	mr r3, r30
/* 80046974 0000FF34  38 81 00 08 */	addi r4, r1, 8
/* 80046978 0000FF38  48 45 A6 25 */	bl vmRetValSet
/* 8004697C 0000FF3C  38 60 00 01 */	li r3, 1
.L_80046980:
/* 80046980 0000FF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046984 0000FF44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80046988 0000FF48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004698C 0000FF4C  7C 08 03 A6 */	mtlr r0
/* 80046990 0000FF50  38 21 00 20 */	addi r1, r1, 0x20
/* 80046994 0000FF54  4E 80 00 20 */	blr 
.endfn getFlag

.fn setFlag, local
/* 80046998 0000FF58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004699C 0000FF5C  7C 08 02 A6 */	mflr r0
/* 800469A0 0000FF60  38 80 00 01 */	li r4, 1
/* 800469A4 0000FF64  90 01 00 24 */	stw r0, 0x24(r1)
/* 800469A8 0000FF68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800469AC 0000FF6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800469B0 0000FF70  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800469B4 0000FF74  93 81 00 10 */	stw r28, 0x10(r1)
/* 800469B8 0000FF78  7C 7C 1B 78 */	mr r28, r3
/* 800469BC 0000FF7C  48 45 A2 BD */	bl vmArgPtrGet
/* 800469C0 0000FF80  7C 64 1B 78 */	mr r4, r3
/* 800469C4 0000FF84  38 60 00 02 */	li r3, 2
/* 800469C8 0000FF88  48 45 A4 05 */	bl vmArgIntGet
/* 800469CC 0000FF8C  7C 7F 1B 78 */	mr r31, r3
/* 800469D0 0000FF90  7F 83 E3 78 */	mr r3, r28
/* 800469D4 0000FF94  38 80 00 02 */	li r4, 2
/* 800469D8 0000FF98  48 45 A2 A1 */	bl vmArgPtrGet
/* 800469DC 0000FF9C  7C 64 1B 78 */	mr r4, r3
/* 800469E0 0000FFA0  38 60 00 03 */	li r3, 3
/* 800469E4 0000FFA4  48 45 A3 E9 */	bl vmArgIntGet
/* 800469E8 0000FFA8  7C 7E 1B 78 */	mr r30, r3
/* 800469EC 0000FFAC  7F 83 E3 78 */	mr r3, r28
/* 800469F0 0000FFB0  38 80 00 03 */	li r4, 3
/* 800469F4 0000FFB4  48 45 A2 85 */	bl vmArgPtrGet
/* 800469F8 0000FFB8  7C 64 1B 78 */	mr r4, r3
/* 800469FC 0000FFBC  38 60 00 04 */	li r3, 4
/* 80046A00 0000FFC0  48 45 A3 CD */	bl vmArgIntGet
/* 80046A04 0000FFC4  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80046A08 0000FFC8  7C 7D 1B 78 */	mr r29, r3
/* 80046A0C 0000FFCC  7C 1E 00 00 */	cmpw r30, r0
/* 80046A10 0000FFD0  38 C0 00 01 */	li r6, 1
/* 80046A14 0000FFD4  57 E0 84 3E */	srwi r0, r31, 0x10
/* 80046A18 0000FFD8  40 80 00 BC */	bge .L_80046AD4
/* 80046A1C 0000FFDC  7C A0 F2 14 */	add r5, r0, r30
/* 80046A20 0000FFE0  2C 05 00 20 */	cmpwi r5, 0x20
/* 80046A24 0000FFE4  41 80 00 50 */	blt .L_80046A74
/* 80046A28 0000FFE8  2C 05 02 20 */	cmpwi r5, 0x220
/* 80046A2C 0000FFEC  40 80 00 1C */	bge .L_80046A48
/* 80046A30 0000FFF0  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 80046A34 0000FFF4  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 80046A38 0000FFF8  7C 03 00 00 */	cmpw r3, r0
/* 80046A3C 0000FFFC  40 81 00 38 */	ble .L_80046A74
/* 80046A40 00010000  38 C0 00 00 */	li r6, 0
/* 80046A44 00010004  48 00 00 30 */	b .L_80046A74
.L_80046A48:
/* 80046A48 00010008  2C 05 0A 20 */	cmpwi r5, 0xa20
/* 80046A4C 0001000C  40 80 00 14 */	bge .L_80046A60
/* 80046A50 00010010  2C 03 00 FF */	cmpwi r3, 0xff
/* 80046A54 00010014  40 81 00 20 */	ble .L_80046A74
/* 80046A58 00010018  38 C0 00 00 */	li r6, 0
/* 80046A5C 0001001C  48 00 00 18 */	b .L_80046A74
.L_80046A60:
/* 80046A60 00010020  2C 05 36 D0 */	cmpwi r5, 0x36d0
/* 80046A64 00010024  40 80 00 10 */	bge .L_80046A74
/* 80046A68 00010028  2C 03 00 01 */	cmpwi r3, 1
/* 80046A6C 0001002C  40 81 00 08 */	ble .L_80046A74
/* 80046A70 00010030  38 C0 00 00 */	li r6, 0
.L_80046A74:
/* 80046A74 00010034  2C 06 00 00 */	cmpwi r6, 0
/* 80046A78 00010038  41 82 00 4C */	beq .L_80046AC4
/* 80046A7C 0001003C  7C A3 2B 78 */	mr r3, r5
/* 80046A80 00010040  7F A4 EB 78 */	mr r4, r29
/* 80046A84 00010044  48 05 65 95 */	bl func_8009D018
/* 80046A88 00010048  3C 1F FD E0 */	addis r0, r31, 0xfde0
/* 80046A8C 0001004C  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 80046A90 00010050  40 82 00 20 */	bne .L_80046AB0
/* 80046A94 00010054  38 1D FF 02 */	addi r0, r29, -254
/* 80046A98 00010058  28 00 00 01 */	cmplwi r0, 1
/* 80046A9C 0001005C  41 81 00 14 */	bgt .L_80046AB0
/* 80046AA0 00010060  7F C4 F3 78 */	mr r4, r30
/* 80046AA4 00010064  38 60 00 04 */	li r3, 4
/* 80046AA8 00010068  38 A0 00 00 */	li r5, 0
/* 80046AAC 0001006C  48 0F A3 55 */	bl func_80140E00
.L_80046AB0:
/* 80046AB0 00010070  3C 1F F5 E0 */	addis r0, r31, 0xf5e0
/* 80046AB4 00010074  28 00 01 2C */	cmplwi r0, 0x12c
/* 80046AB8 00010078  40 82 00 2C */	bne .L_80046AE4
/* 80046ABC 0001007C  48 24 AF 49 */	bl func_80291A04
/* 80046AC0 00010080  48 00 00 24 */	b .L_80046AE4
.L_80046AC4:
/* 80046AC4 00010084  7F 83 E3 78 */	mr r3, r28
/* 80046AC8 00010088  48 45 A5 3D */	bl func_804A1004
/* 80046ACC 0001008C  38 60 00 00 */	li r3, 0
/* 80046AD0 00010090  48 00 00 18 */	b .L_80046AE8
.L_80046AD4:
/* 80046AD4 00010094  7F 83 E3 78 */	mr r3, r28
/* 80046AD8 00010098  48 45 A5 2D */	bl func_804A1004
/* 80046ADC 0001009C  38 60 00 00 */	li r3, 0
/* 80046AE0 000100A0  48 00 00 08 */	b .L_80046AE8
.L_80046AE4:
/* 80046AE4 000100A4  38 60 00 00 */	li r3, 0
.L_80046AE8:
/* 80046AE8 000100A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046AEC 000100AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80046AF0 000100B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80046AF4 000100B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80046AF8 000100B8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80046AFC 000100BC  7C 08 03 A6 */	mtlr r0
/* 80046B00 000100C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80046B04 000100C4  4E 80 00 20 */	blr 
.endfn setFlag

.fn getAwardFlagF16, local
/* 80046B08 000100C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046B0C 000100CC  7C 08 02 A6 */	mflr r0
/* 80046B10 000100D0  38 80 00 01 */	li r4, 1
/* 80046B14 000100D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046B18 000100D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80046B1C 000100DC  7C 7F 1B 78 */	mr r31, r3
/* 80046B20 000100E0  48 45 A1 59 */	bl vmArgPtrGet
/* 80046B24 000100E4  7C 64 1B 78 */	mr r4, r3
/* 80046B28 000100E8  38 60 00 02 */	li r3, 2
/* 80046B2C 000100EC  48 45 A2 A1 */	bl vmArgIntGet
/* 80046B30 000100F0  48 03 BB 65 */	bl func_80082694
/* 80046B34 000100F4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80046B38 000100F8  38 00 00 03 */	li r0, 3
/* 80046B3C 000100FC  7F E3 FB 78 */	mr r3, r31
/* 80046B40 00010100  38 81 00 08 */	addi r4, r1, 8
/* 80046B44 00010104  98 01 00 08 */	stb r0, 8(r1)
/* 80046B48 00010108  48 45 A4 55 */	bl vmRetValSet
/* 80046B4C 0001010C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80046B50 00010110  38 60 00 01 */	li r3, 1
/* 80046B54 00010114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046B58 00010118  7C 08 03 A6 */	mtlr r0
/* 80046B5C 0001011C  38 21 00 20 */	addi r1, r1, 0x20
/* 80046B60 00010120  4E 80 00 20 */	blr 
.endfn getAwardFlagF16

.fn addAwardFlagF16, local
/* 80046B64 00010124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046B68 00010128  7C 08 02 A6 */	mflr r0
/* 80046B6C 0001012C  38 80 00 01 */	li r4, 1
/* 80046B70 00010130  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046B74 00010134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046B78 00010138  7C 7F 1B 78 */	mr r31, r3
/* 80046B7C 0001013C  93 C1 00 08 */	stw r30, 8(r1)
/* 80046B80 00010140  48 45 A0 F9 */	bl vmArgPtrGet
/* 80046B84 00010144  7C 64 1B 78 */	mr r4, r3
/* 80046B88 00010148  38 60 00 02 */	li r3, 2
/* 80046B8C 0001014C  48 45 A2 41 */	bl vmArgIntGet
/* 80046B90 00010150  7C 7E 1B 78 */	mr r30, r3
/* 80046B94 00010154  7F E3 FB 78 */	mr r3, r31
/* 80046B98 00010158  38 80 00 02 */	li r4, 2
/* 80046B9C 0001015C  48 45 A1 55 */	bl vmArgOmitChk
/* 80046BA0 00010160  2C 03 00 00 */	cmpwi r3, 0
/* 80046BA4 00010164  41 82 00 0C */	beq .L_80046BB0
/* 80046BA8 00010168  3B E0 00 01 */	li r31, 1
/* 80046BAC 0001016C  48 00 00 20 */	b .L_80046BCC
.L_80046BB0:
/* 80046BB0 00010170  7F E3 FB 78 */	mr r3, r31
/* 80046BB4 00010174  38 80 00 02 */	li r4, 2
/* 80046BB8 00010178  48 45 A0 C1 */	bl vmArgPtrGet
/* 80046BBC 0001017C  7C 64 1B 78 */	mr r4, r3
/* 80046BC0 00010180  38 60 00 03 */	li r3, 3
/* 80046BC4 00010184  48 45 A2 09 */	bl vmArgIntGet
/* 80046BC8 00010188  7C 7F 1B 78 */	mr r31, r3
.L_80046BCC:
/* 80046BCC 0001018C  7F C3 F3 78 */	mr r3, r30
/* 80046BD0 00010190  48 03 BA C5 */	bl func_80082694
/* 80046BD4 00010194  7C 9F 1A 14 */	add r4, r31, r3
/* 80046BD8 00010198  28 04 FF FF */	cmplwi r4, 0xffff
/* 80046BDC 0001019C  40 81 00 0C */	ble .L_80046BE8
/* 80046BE0 000101A0  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80046BE4 000101A4  38 83 FF FF */	addi r4, r3, 0x0000FFFF@l
.L_80046BE8:
/* 80046BE8 000101A8  7F C3 F3 78 */	mr r3, r30
/* 80046BEC 000101AC  48 03 BA B1 */	bl func_8008269C
/* 80046BF0 000101B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80046BF4 000101B4  38 60 00 00 */	li r3, 0
/* 80046BF8 000101B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80046BFC 000101BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80046C00 000101C0  7C 08 03 A6 */	mtlr r0
/* 80046C04 000101C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80046C08 000101C8  4E 80 00 20 */	blr 
.endfn addAwardFlagF16

.fn setAwardFlagF1, local
/* 80046C0C 000101CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046C10 000101D0  7C 08 02 A6 */	mflr r0
/* 80046C14 000101D4  38 80 00 01 */	li r4, 1
/* 80046C18 000101D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046C1C 000101DC  48 45 A0 5D */	bl vmArgPtrGet
/* 80046C20 000101E0  7C 64 1B 78 */	mr r4, r3
/* 80046C24 000101E4  38 60 00 02 */	li r3, 2
/* 80046C28 000101E8  48 45 A1 A5 */	bl vmArgIntGet
/* 80046C2C 000101EC  48 03 BA C5 */	bl func_800826F0
/* 80046C30 000101F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80046C34 000101F4  38 60 00 00 */	li r3, 0
/* 80046C38 000101F8  7C 08 03 A6 */	mtlr r0
/* 80046C3C 000101FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80046C40 00010200  4E 80 00 20 */	blr 
.endfn setAwardFlagF1

.fn realtimeEventStart, local
/* 80046C44 00010204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046C48 00010208  7C 08 02 A6 */	mflr r0
/* 80046C4C 0001020C  38 80 00 01 */	li r4, 1
/* 80046C50 00010210  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046C54 00010214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046C58 00010218  7C 7F 1B 78 */	mr r31, r3
/* 80046C5C 0001021C  48 45 A0 95 */	bl vmArgOmitChk
/* 80046C60 00010220  2C 03 00 00 */	cmpwi r3, 0
/* 80046C64 00010224  41 82 00 0C */	beq .L_80046C70
/* 80046C68 00010228  38 60 00 01 */	li r3, 1
/* 80046C6C 0001022C  48 00 00 1C */	b .L_80046C88
.L_80046C70:
/* 80046C70 00010230  7F E3 FB 78 */	mr r3, r31
/* 80046C74 00010234  38 80 00 01 */	li r4, 1
/* 80046C78 00010238  48 45 A0 01 */	bl vmArgPtrGet
/* 80046C7C 0001023C  7C 64 1B 78 */	mr r4, r3
/* 80046C80 00010240  38 60 00 02 */	li r3, 2
/* 80046C84 00010244  48 45 A0 FD */	bl vmArgBoolGet
.L_80046C88:
/* 80046C88 00010248  2C 03 00 00 */	cmpwi r3, 0
/* 80046C8C 0001024C  38 60 00 01 */	li r3, 1
/* 80046C90 00010250  41 82 00 1C */	beq .L_80046CAC
/* 80046C94 00010254  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 80046C98 00010258  74 00 AF A4 */	andis. r0, r0, 0xafa4
/* 80046C9C 0001025C  41 82 00 10 */	beq .L_80046CAC
/* 80046CA0 00010260  7F E3 FB 78 */	mr r3, r31
/* 80046CA4 00010264  48 45 A3 35 */	bl vmWaitModeSet
/* 80046CA8 00010268  38 60 00 00 */	li r3, 0
.L_80046CAC:
/* 80046CAC 0001026C  2C 03 00 00 */	cmpwi r3, 0
/* 80046CB0 00010270  41 82 00 10 */	beq .L_80046CC0
/* 80046CB4 00010274  48 03 F6 1D */	bl func_800862D0
/* 80046CB8 00010278  48 09 24 D1 */	bl getBattleManagerInstancePtr__Fv
/* 80046CBC 0001027C  48 0A D3 49 */	bl func_800F4004
.L_80046CC0:
/* 80046CC0 00010280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80046CC4 00010284  38 60 00 00 */	li r3, 0
/* 80046CC8 00010288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80046CCC 0001028C  7C 08 03 A6 */	mtlr r0
/* 80046CD0 00010290  38 21 00 10 */	addi r1, r1, 0x10
/* 80046CD4 00010294  4E 80 00 20 */	blr 
.endfn realtimeEventStart

.fn realtimeEventPlay, local
/* 80046CD8 00010298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046CDC 0001029C  7C 08 02 A6 */	mflr r0
/* 80046CE0 000102A0  38 80 00 01 */	li r4, 1
/* 80046CE4 000102A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046CE8 000102A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046CEC 000102AC  7C 7F 1B 78 */	mr r31, r3
/* 80046CF0 000102B0  48 45 9F 89 */	bl vmArgPtrGet
/* 80046CF4 000102B4  7C 64 1B 78 */	mr r4, r3
/* 80046CF8 000102B8  38 60 00 02 */	li r3, 2
/* 80046CFC 000102BC  48 45 A1 71 */	bl vmArgStringGet
/* 80046D00 000102C0  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80046D04 000102C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80046D08 000102C8  41 82 00 10 */	beq .L_80046D18
/* 80046D0C 000102CC  7F E3 FB 78 */	mr r3, r31
/* 80046D10 000102D0  48 45 A2 C9 */	bl vmWaitModeSet
/* 80046D14 000102D4  48 00 00 08 */	b .L_80046D1C
.L_80046D18:
/* 80046D18 000102D8  48 03 F6 DD */	bl func_800863F4
.L_80046D1C:
/* 80046D1C 000102DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80046D20 000102E0  38 60 00 00 */	li r3, 0
/* 80046D24 000102E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80046D28 000102E8  7C 08 03 A6 */	mtlr r0
/* 80046D2C 000102EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80046D30 000102F0  4E 80 00 20 */	blr 
.endfn realtimeEventPlay

.fn realtimeEventEnd, local
/* 80046D34 000102F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046D38 000102F8  7C 08 02 A6 */	mflr r0
/* 80046D3C 000102FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046D40 00010300  48 03 F7 51 */	bl func_80086490
/* 80046D44 00010304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80046D48 00010308  38 60 00 00 */	li r3, 0
/* 80046D4C 0001030C  7C 08 03 A6 */	mtlr r0
/* 80046D50 00010310  38 21 00 10 */	addi r1, r1, 0x10
/* 80046D54 00010314  4E 80 00 20 */	blr 
.endfn realtimeEventEnd

.fn waitRealtimeEvent, local
/* 80046D58 00010318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046D5C 0001031C  7C 08 02 A6 */	mflr r0
/* 80046D60 00010320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046D64 00010324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046D68 00010328  7C 7F 1B 78 */	mr r31, r3
/* 80046D6C 0001032C  48 03 F8 7D */	bl func_800865E8
/* 80046D70 00010330  2C 03 00 00 */	cmpwi r3, 0
/* 80046D74 00010334  41 82 00 0C */	beq .L_80046D80
/* 80046D78 00010338  7F E3 FB 78 */	mr r3, r31
/* 80046D7C 0001033C  48 45 A2 5D */	bl vmWaitModeSet
.L_80046D80:
/* 80046D80 00010340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80046D84 00010344  38 60 00 00 */	li r3, 0
/* 80046D88 00010348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80046D8C 0001034C  7C 08 03 A6 */	mtlr r0
/* 80046D90 00010350  38 21 00 10 */	addi r1, r1, 0x10
/* 80046D94 00010354  4E 80 00 20 */	blr 
.endfn waitRealtimeEvent

.fn onTalk, local
/* 80046D98 00010358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046D9C 0001035C  7C 08 02 A6 */	mflr r0
/* 80046DA0 00010360  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046DA4 00010364  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80046DA8 00010368  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80046DAC 0001036C  7C 7E 1B 78 */	mr r30, r3
/* 80046DB0 00010370  38 60 00 00 */	li r3, 0
/* 80046DB4 00010374  48 03 BF A1 */	bl func_80082D54
/* 80046DB8 00010378  38 80 00 00 */	li r4, 0
/* 80046DBC 0001037C  38 AD 80 30 */	addi r5, r13, __RTTI__Q22cf13CfObjectActor@sda21
/* 80046DC0 00010380  38 CD 80 58 */	addi r6, r13, __RTTI__Q22cf12CfObjectMove@sda21
/* 80046DC4 00010384  38 E0 00 00 */	li r7, 0
/* 80046DC8 00010388  48 27 2F BD */	bl __dynamic_cast
/* 80046DCC 0001038C  81 83 3E 9C */	lwz r12, 0x3e9c(r3)
/* 80046DD0 00010390  7C 7F 1B 78 */	mr r31, r3
/* 80046DD4 00010394  38 80 00 01 */	li r4, 1
/* 80046DD8 00010398  38 A0 00 01 */	li r5, 1
/* 80046DDC 0001039C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80046DE0 000103A0  7D 89 03 A6 */	mtctr r12
/* 80046DE4 000103A4  38 63 3E 9C */	addi r3, r3, 0x3e9c
/* 80046DE8 000103A8  4E 80 04 21 */	bctrl 
/* 80046DEC 000103AC  2C 03 00 00 */	cmpwi r3, 0
/* 80046DF0 000103B0  40 82 00 28 */	bne .L_80046E18
/* 80046DF4 000103B4  81 9F 3E 9C */	lwz r12, 0x3e9c(r31)
/* 80046DF8 000103B8  38 7F 3E 9C */	addi r3, r31, 0x3e9c
/* 80046DFC 000103BC  38 80 00 02 */	li r4, 2
/* 80046E00 000103C0  38 A0 00 01 */	li r5, 1
/* 80046E04 000103C4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80046E08 000103C8  7D 89 03 A6 */	mtctr r12
/* 80046E0C 000103CC  4E 80 04 21 */	bctrl 
/* 80046E10 000103D0  2C 03 00 00 */	cmpwi r3, 0
/* 80046E14 000103D4  41 82 00 10 */	beq .L_80046E24
.L_80046E18:
/* 80046E18 000103D8  38 00 00 01 */	li r0, 1
/* 80046E1C 000103DC  98 01 00 08 */	stb r0, 8(r1)
/* 80046E20 000103E0  48 00 00 0C */	b .L_80046E2C
.L_80046E24:
/* 80046E24 000103E4  38 00 00 02 */	li r0, 2
/* 80046E28 000103E8  98 01 00 08 */	stb r0, 8(r1)
.L_80046E2C:
/* 80046E2C 000103EC  7F C3 F3 78 */	mr r3, r30
/* 80046E30 000103F0  38 81 00 08 */	addi r4, r1, 8
/* 80046E34 000103F4  48 45 A1 69 */	bl vmRetValSet
/* 80046E38 000103F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80046E3C 000103FC  38 60 00 01 */	li r3, 1
/* 80046E40 00010400  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80046E44 00010404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046E48 00010408  7C 08 03 A6 */	mtlr r0
/* 80046E4C 0001040C  38 21 00 20 */	addi r1, r1, 0x20
/* 80046E50 00010410  4E 80 00 20 */	blr 
.endfn onTalk

.fn onTalkEnd, local
/* 80046E54 00010414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046E58 00010418  7C 08 02 A6 */	mflr r0
/* 80046E5C 0001041C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046E60 00010420  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80046E64 00010424  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80046E68 00010428  7C 7E 1B 78 */	mr r30, r3
/* 80046E6C 0001042C  38 60 00 00 */	li r3, 0
/* 80046E70 00010430  48 03 BE E5 */	bl func_80082D54
/* 80046E74 00010434  38 80 00 00 */	li r4, 0
/* 80046E78 00010438  38 AD 80 30 */	addi r5, r13, __RTTI__Q22cf13CfObjectActor@sda21
/* 80046E7C 0001043C  38 CD 80 58 */	addi r6, r13, __RTTI__Q22cf12CfObjectMove@sda21
/* 80046E80 00010440  38 E0 00 00 */	li r7, 0
/* 80046E84 00010444  48 27 2F 01 */	bl __dynamic_cast
/* 80046E88 00010448  81 83 3E 9C */	lwz r12, 0x3e9c(r3)
/* 80046E8C 0001044C  7C 7F 1B 78 */	mr r31, r3
/* 80046E90 00010450  38 80 00 01 */	li r4, 1
/* 80046E94 00010454  38 A0 00 00 */	li r5, 0
/* 80046E98 00010458  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80046E9C 0001045C  7D 89 03 A6 */	mtctr r12
/* 80046EA0 00010460  38 63 3E 9C */	addi r3, r3, 0x3e9c
/* 80046EA4 00010464  4E 80 04 21 */	bctrl 
/* 80046EA8 00010468  2C 03 00 00 */	cmpwi r3, 0
/* 80046EAC 0001046C  40 82 00 28 */	bne .L_80046ED4
/* 80046EB0 00010470  81 9F 3E 9C */	lwz r12, 0x3e9c(r31)
/* 80046EB4 00010474  38 7F 3E 9C */	addi r3, r31, 0x3e9c
/* 80046EB8 00010478  38 80 00 02 */	li r4, 2
/* 80046EBC 0001047C  38 A0 00 00 */	li r5, 0
/* 80046EC0 00010480  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80046EC4 00010484  7D 89 03 A6 */	mtctr r12
/* 80046EC8 00010488  4E 80 04 21 */	bctrl 
/* 80046ECC 0001048C  2C 03 00 00 */	cmpwi r3, 0
/* 80046ED0 00010490  41 82 00 10 */	beq .L_80046EE0
.L_80046ED4:
/* 80046ED4 00010494  38 00 00 01 */	li r0, 1
/* 80046ED8 00010498  98 01 00 08 */	stb r0, 8(r1)
/* 80046EDC 0001049C  48 00 00 0C */	b .L_80046EE8
.L_80046EE0:
/* 80046EE0 000104A0  38 00 00 02 */	li r0, 2
/* 80046EE4 000104A4  98 01 00 08 */	stb r0, 8(r1)
.L_80046EE8:
/* 80046EE8 000104A8  7F C3 F3 78 */	mr r3, r30
/* 80046EEC 000104AC  38 81 00 08 */	addi r4, r1, 8
/* 80046EF0 000104B0  48 45 A0 AD */	bl vmRetValSet
/* 80046EF4 000104B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80046EF8 000104B8  38 60 00 01 */	li r3, 1
/* 80046EFC 000104BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80046F00 000104C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046F04 000104C4  7C 08 03 A6 */	mtlr r0
/* 80046F08 000104C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80046F0C 000104CC  4E 80 00 20 */	blr 
.endfn onTalkEnd

.fn fadeIn, local
/* 80046F10 000104D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046F14 000104D4  7C 08 02 A6 */	mflr r0
/* 80046F18 000104D8  38 80 00 01 */	li r4, 1
/* 80046F1C 000104DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046F20 000104E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80046F24 000104E4  7C 7F 1B 78 */	mr r31, r3
/* 80046F28 000104E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80046F2C 000104EC  48 45 9D 4D */	bl vmArgPtrGet
/* 80046F30 000104F0  7C 64 1B 78 */	mr r4, r3
/* 80046F34 000104F4  38 60 00 02 */	li r3, 2
/* 80046F38 000104F8  48 45 9E 95 */	bl vmArgIntGet
/* 80046F3C 000104FC  7C 7E 1B 78 */	mr r30, r3
/* 80046F40 00010500  7F E3 FB 78 */	mr r3, r31
/* 80046F44 00010504  38 80 00 02 */	li r4, 2
/* 80046F48 00010508  48 45 9D A9 */	bl vmArgOmitChk
/* 80046F4C 0001050C  2C 03 00 00 */	cmpwi r3, 0
/* 80046F50 00010510  41 82 00 0C */	beq .L_80046F5C
/* 80046F54 00010514  3B E0 00 00 */	li r31, 0
/* 80046F58 00010518  48 00 00 20 */	b .L_80046F78
.L_80046F5C:
/* 80046F5C 0001051C  7F E3 FB 78 */	mr r3, r31
/* 80046F60 00010520  38 80 00 02 */	li r4, 2
/* 80046F64 00010524  48 45 9D 15 */	bl vmArgPtrGet
/* 80046F68 00010528  7C 64 1B 78 */	mr r4, r3
/* 80046F6C 0001052C  38 60 00 03 */	li r3, 3
/* 80046F70 00010530  48 45 9E 5D */	bl vmArgIntGet
/* 80046F74 00010534  7C 7F 1B 78 */	mr r31, r3
.L_80046F78:
/* 80046F78 00010538  38 60 00 10 */	li r3, 0x10
/* 80046F7C 0001053C  48 03 8D 85 */	bl func_8007FD00
/* 80046F80 00010540  2C 1F 00 00 */	cmpwi r31, 0
/* 80046F84 00010544  40 82 00 20 */	bne .L_80046FA4
/* 80046F88 00010548  C0 22 83 10 */	lfs f1, float_80668690@sda21(r2)
/* 80046F8C 0001054C  C0 02 83 14 */	lfs f0, float_80668694@sda21(r2)
/* 80046F90 00010550  D0 21 00 08 */	stfs f1, 8(r1)
/* 80046F94 00010554  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80046F98 00010558  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80046F9C 0001055C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80046FA0 00010560  48 00 00 18 */	b .L_80046FB8
.L_80046FA4:
/* 80046FA4 00010564  C0 02 83 14 */	lfs f0, float_80668694@sda21(r2)
/* 80046FA8 00010568  D0 01 00 08 */	stfs f0, 8(r1)
/* 80046FAC 0001056C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80046FB0 00010570  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80046FB4 00010574  D0 01 00 14 */	stfs f0, 0x14(r1)
.L_80046FB8:
/* 80046FB8 00010578  38 81 00 08 */	addi r4, r1, 8
/* 80046FBC 0001057C  38 60 00 00 */	li r3, 0
/* 80046FC0 00010580  38 A0 00 01 */	li r5, 1
/* 80046FC4 00010584  48 03 E6 A9 */	bl func_8008566C
/* 80046FC8 00010588  C0 02 83 10 */	lfs f0, float_80668690@sda21(r2)
/* 80046FCC 0001058C  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 80046FD0 00010590  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80046FD4 00010594  38 81 00 08 */	addi r4, r1, 8
/* 80046FD8 00010598  38 A0 00 01 */	li r5, 1
/* 80046FDC 0001059C  48 03 E6 91 */	bl func_8008566C
/* 80046FE0 000105A0  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 80046FE4 000105A4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80046FE8 000105A8  40 82 00 10 */	bne .L_80046FF8
/* 80046FEC 000105AC  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80046FF0 000105B0  60 00 00 02 */	ori r0, r0, 2
/* 80046FF4 000105B4  90 0D A5 A8 */	stw r0, lbl_80666728@sda21(r13)
.L_80046FF8:
/* 80046FF8 000105B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80046FFC 000105BC  38 60 00 00 */	li r3, 0
/* 80047000 000105C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80047004 000105C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80047008 000105C8  7C 08 03 A6 */	mtlr r0
/* 8004700C 000105CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80047010 000105D0  4E 80 00 20 */	blr 
.endfn fadeIn

.fn fadeOut, local
/* 80047014 000105D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80047018 000105D8  7C 08 02 A6 */	mflr r0
/* 8004701C 000105DC  38 80 00 01 */	li r4, 1
/* 80047020 000105E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80047024 000105E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80047028 000105E8  7C 7F 1B 78 */	mr r31, r3
/* 8004702C 000105EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80047030 000105F0  48 45 9C 49 */	bl vmArgPtrGet
/* 80047034 000105F4  7C 64 1B 78 */	mr r4, r3
/* 80047038 000105F8  38 60 00 02 */	li r3, 2
/* 8004703C 000105FC  48 45 9D 91 */	bl vmArgIntGet
/* 80047040 00010600  7C 7E 1B 78 */	mr r30, r3
/* 80047044 00010604  7F E3 FB 78 */	mr r3, r31
/* 80047048 00010608  38 80 00 02 */	li r4, 2
/* 8004704C 0001060C  48 45 9C A5 */	bl vmArgOmitChk
/* 80047050 00010610  2C 03 00 00 */	cmpwi r3, 0
/* 80047054 00010614  41 82 00 0C */	beq .L_80047060
/* 80047058 00010618  3B E0 00 00 */	li r31, 0
/* 8004705C 0001061C  48 00 00 20 */	b .L_8004707C
.L_80047060:
/* 80047060 00010620  7F E3 FB 78 */	mr r3, r31
/* 80047064 00010624  38 80 00 02 */	li r4, 2
/* 80047068 00010628  48 45 9C 11 */	bl vmArgPtrGet
/* 8004706C 0001062C  7C 64 1B 78 */	mr r4, r3
/* 80047070 00010630  38 60 00 03 */	li r3, 3
/* 80047074 00010634  48 45 9D 59 */	bl vmArgIntGet
/* 80047078 00010638  7C 7F 1B 78 */	mr r31, r3
.L_8004707C:
/* 8004707C 0001063C  38 60 00 10 */	li r3, 0x10
/* 80047080 00010640  48 03 8C 81 */	bl func_8007FD00
/* 80047084 00010644  38 60 00 19 */	li r3, 0x19
/* 80047088 00010648  48 03 8D 05 */	bl func_8007FD8C
/* 8004708C 0001064C  2C 1F 00 00 */	cmpwi r31, 0
/* 80047090 00010650  7C 7F 1B 78 */	mr r31, r3
/* 80047094 00010654  40 82 00 20 */	bne .L_800470B4
/* 80047098 00010658  C0 22 83 10 */	lfs f1, float_80668690@sda21(r2)
/* 8004709C 0001065C  C0 02 83 14 */	lfs f0, float_80668694@sda21(r2)
/* 800470A0 00010660  D0 21 00 08 */	stfs f1, 8(r1)
/* 800470A4 00010664  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800470A8 00010668  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800470AC 0001066C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800470B0 00010670  48 00 00 18 */	b .L_800470C8
.L_800470B4:
/* 800470B4 00010674  C0 02 83 14 */	lfs f0, float_80668694@sda21(r2)
/* 800470B8 00010678  D0 01 00 08 */	stfs f0, 8(r1)
/* 800470BC 0001067C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800470C0 00010680  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800470C4 00010684  D0 01 00 14 */	stfs f0, 0x14(r1)
.L_800470C8:
/* 800470C8 00010688  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 800470CC 0001068C  38 81 00 08 */	addi r4, r1, 8
/* 800470D0 00010690  38 A0 00 01 */	li r5, 1
/* 800470D4 00010694  48 03 E5 99 */	bl func_8008566C
/* 800470D8 00010698  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 800470DC 0001069C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800470E0 000106A0  41 82 00 0C */	beq .L_800470EC
/* 800470E4 000106A4  2C 1F 00 00 */	cmpwi r31, 0
/* 800470E8 000106A8  41 82 00 10 */	beq .L_800470F8
.L_800470EC:
/* 800470EC 000106AC  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 800470F0 000106B0  60 00 00 02 */	ori r0, r0, 2
/* 800470F4 000106B4  90 0D A5 A8 */	stw r0, lbl_80666728@sda21(r13)
.L_800470F8:
/* 800470F8 000106B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800470FC 000106BC  38 60 00 00 */	li r3, 0
/* 80047100 000106C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80047104 000106C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80047108 000106C8  7C 08 03 A6 */	mtlr r0
/* 8004710C 000106CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80047110 000106D0  4E 80 00 20 */	blr 
.endfn fadeOut

.fn fadeWait, local
/* 80047114 000106D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047118 000106D8  7C 08 02 A6 */	mflr r0
/* 8004711C 000106DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047120 000106E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80047124 000106E4  7C 7F 1B 78 */	mr r31, r3
/* 80047128 000106E8  48 03 E7 11 */	bl func_80085838
/* 8004712C 000106EC  2C 03 00 00 */	cmpwi r3, 0
/* 80047130 000106F0  40 82 00 0C */	bne .L_8004713C
/* 80047134 000106F4  7F E3 FB 78 */	mr r3, r31
/* 80047138 000106F8  48 45 9E A1 */	bl vmWaitModeSet
.L_8004713C:
/* 8004713C 000106FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80047140 00010700  38 60 00 00 */	li r3, 0
/* 80047144 00010704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047148 00010708  7C 08 03 A6 */	mtlr r0
/* 8004714C 0001070C  38 21 00 10 */	addi r1, r1, 0x10
/* 80047150 00010710  4E 80 00 20 */	blr 
.endfn fadeWait

.fn checkEvent, local
/* 80047154 00010714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047158 00010718  7C 08 02 A6 */	mflr r0
/* 8004715C 0001071C  38 80 00 01 */	li r4, 1
/* 80047160 00010720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047164 00010724  48 45 9B 15 */	bl vmArgPtrGet
/* 80047168 00010728  7C 64 1B 78 */	mr r4, r3
/* 8004716C 0001072C  38 60 00 02 */	li r3, 2
/* 80047170 00010730  48 45 9C 11 */	bl vmArgBoolGet
/* 80047174 00010734  7C 03 00 D0 */	neg r0, r3
/* 80047178 00010738  7C 00 1B 78 */	or r0, r0, r3
/* 8004717C 0001073C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80047180 00010740  48 03 E7 F9 */	bl func_80085978
/* 80047184 00010744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047188 00010748  38 60 00 00 */	li r3, 0
/* 8004718C 0001074C  7C 08 03 A6 */	mtlr r0
/* 80047190 00010750  38 21 00 10 */	addi r1, r1, 0x10
/* 80047194 00010754  4E 80 00 20 */	blr 
.endfn checkEvent

.fn clearEventSkip, local
/* 80047198 00010758  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8004719C 0001075C  38 60 00 00 */	li r3, 0
/* 800471A0 00010760  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 800471A4 00010764  90 0D A5 A8 */	stw r0, lbl_80666728@sda21(r13)
/* 800471A8 00010768  4E 80 00 20 */	blr 
.endfn clearEventSkip

.fn isEvent, local
/* 800471AC 0001076C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800471B0 00010770  7C 08 02 A6 */	mflr r0
/* 800471B4 00010774  90 01 00 14 */	stw r0, 0x14(r1)
/* 800471B8 00010778  38 81 00 08 */	addi r4, r1, 8
/* 800471BC 0001077C  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 800471C0 00010780  54 00 57 FE */	rlwinm r0, r0, 0xa, 0x1f, 0x1f
/* 800471C4 00010784  68 05 00 01 */	xori r5, r0, 1
/* 800471C8 00010788  38 05 00 01 */	addi r0, r5, 1
/* 800471CC 0001078C  98 01 00 08 */	stb r0, 8(r1)
/* 800471D0 00010790  48 45 9D CD */	bl vmRetValSet
/* 800471D4 00010794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800471D8 00010798  38 60 00 01 */	li r3, 1
/* 800471DC 0001079C  7C 08 03 A6 */	mtlr r0
/* 800471E0 000107A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800471E4 000107A4  4E 80 00 20 */	blr 
.endfn isEvent

.fn isTalkEvent, local
/* 800471E8 000107A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800471EC 000107AC  7C 08 02 A6 */	mflr r0
/* 800471F0 000107B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800471F4 000107B4  38 81 00 08 */	addi r4, r1, 8
/* 800471F8 000107B8  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 800471FC 000107BC  54 00 47 FE */	rlwinm r0, r0, 8, 0x1f, 0x1f
/* 80047200 000107C0  68 05 00 01 */	xori r5, r0, 1
/* 80047204 000107C4  38 05 00 01 */	addi r0, r5, 1
/* 80047208 000107C8  98 01 00 08 */	stb r0, 8(r1)
/* 8004720C 000107CC  48 45 9D 91 */	bl vmRetValSet
/* 80047210 000107D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047214 000107D4  38 60 00 01 */	li r3, 1
/* 80047218 000107D8  7C 08 03 A6 */	mtlr r0
/* 8004721C 000107DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80047220 000107E0  4E 80 00 20 */	blr 
.endfn isTalkEvent

.fn isVisionEvent, local
/* 80047224 000107E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047228 000107E8  7C 08 02 A6 */	mflr r0
/* 8004722C 000107EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047230 000107F0  38 81 00 08 */	addi r4, r1, 8
/* 80047234 000107F4  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 80047238 000107F8  54 00 37 FE */	rlwinm r0, r0, 6, 0x1f, 0x1f
/* 8004723C 000107FC  68 05 00 01 */	xori r5, r0, 1
/* 80047240 00010800  38 05 00 01 */	addi r0, r5, 1
/* 80047244 00010804  98 01 00 08 */	stb r0, 8(r1)
/* 80047248 00010808  48 45 9D 55 */	bl vmRetValSet
/* 8004724C 0001080C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047250 00010810  38 60 00 01 */	li r3, 1
/* 80047254 00010814  7C 08 03 A6 */	mtlr r0
/* 80047258 00010818  38 21 00 10 */	addi r1, r1, 0x10
/* 8004725C 0001081C  4E 80 00 20 */	blr 
.endfn isVisionEvent

.fn pluginEveRegist, global
/* 80047260 00010820  3C 60 80 4F */	lis r3, lbl_804F6550@ha
/* 80047264 00010824  3C 80 80 53 */	lis r4, lbl_80529740@ha
/* 80047268 00010828  38 63 65 50 */	addi r3, r3, lbl_804F6550@l
/* 8004726C 0001082C  38 84 97 40 */	addi r4, r4, lbl_80529740@l
/* 80047270 00010830  48 45 99 20 */	b vmPluginRegist
.endfn pluginEveRegist


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804F6480, global
	.asciz "getAwardFlagF16"
.endobj lbl_804F6480

.obj lbl_804F6490, global
	.asciz "addAwardFlagF16"
.endobj lbl_804F6490

.obj lbl_804F64A0, global
	.asciz "setAwardFlagF1"
	.balign 4
.endobj lbl_804F64A0

.obj lbl_804F64B0, global
	.asciz "realtimeEventStart"
	.balign 4
.endobj lbl_804F64B0

.obj lbl_804F64C4, global
	.asciz "realtimeEventPlay"
	.balign 4
.endobj lbl_804F64C4

.obj lbl_804F64D8, global
	.asciz "realtimeEventEnd"
	.balign 4
.endobj lbl_804F64D8

.obj lbl_804F64EC, global
	.asciz "waitRealtimeEvent"
	.balign 4
.endobj lbl_804F64EC

.obj lbl_804F6500, global
	.asciz "checkEvent"
	.balign 4
.endobj lbl_804F6500

.obj lbl_804F650C, global
	.asciz "clearEventSkip"
	.balign 4
.endobj lbl_804F650C

.obj lbl_804F651C, global
	.asciz "isTalkEvent"
.endobj lbl_804F651C

.obj lbl_804F6528, global
	.asciz "isVisionEvent"
	.balign 4
.endobj lbl_804F6528

.obj lbl_804F6538, global
	.asciz "onTalkEnd"
	.balign 4
.endobj lbl_804F6538

.obj lbl_804F6544, global
	.asciz "fadeWait"
	.balign 4
.endobj lbl_804F6544

.obj lbl_804F6550, global
	.asciz "eve"
	.4byte 0
.endobj lbl_804F6550


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80529740, global
	.4byte lbl_80668698
	.4byte getFlag
	.4byte lbl_806686A0
	.4byte setFlag
	.4byte lbl_804F6480
	.4byte getAwardFlagF16
	.4byte lbl_804F6490
	.4byte addAwardFlagF16
	.4byte lbl_804F64A0
	.4byte setAwardFlagF1
	.4byte lbl_804F64B0
	.4byte realtimeEventStart
	.4byte lbl_804F64C4
	.4byte realtimeEventPlay
	.4byte lbl_804F64D8
	.4byte realtimeEventEnd
	.4byte lbl_804F64EC
	.4byte waitRealtimeEvent
	.4byte lbl_804F6500
	.4byte checkEvent
	.4byte lbl_804F650C
	.4byte clearEventSkip
	.4byte lbl_806686A8
	.4byte isEvent
	.4byte lbl_804F651C
	.4byte isTalkEvent
	.4byte lbl_804F6528
	.4byte isVisionEvent
	.4byte lbl_806686B0
	.4byte onTalk
	.4byte lbl_804F6538
	.4byte onTalkEnd
	.4byte lbl_806686B8
	.4byte fadeIn
	.4byte lbl_806686C0
	.4byte fadeOut
	.4byte lbl_804F6544
	.4byte fadeWait
	.4byte 0
	.4byte 0
.endobj lbl_80529740


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_80668690, global
	.float 0
.endobj float_80668690


.obj float_80668694, global
	.float 1.0
.endobj float_80668694

.obj lbl_80668698, global
	.asciz "getFlag"
.endobj lbl_80668698

.obj lbl_806686A0, global
	.asciz "setFlag"
.endobj lbl_806686A0

.obj lbl_806686A8, global
	.asciz "isEvent"
.endobj lbl_806686A8

.obj lbl_806686B0, global
	.asciz "onTalk"
	.balign 4
.endobj lbl_806686B0

.obj lbl_806686B8, global
	.asciz "fadeIn"
	.balign 4
.endobj lbl_806686B8

.obj lbl_806686C0, global
	.asciz "fadeOut"
.endobj lbl_806686C0



.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80007110", local
.hidden "@etb_80007110"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007110"

.obj "@etb_80007118", local
.hidden "@etb_80007118"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80007118"

.obj "@etb_80007120", local
.hidden "@etb_80007120"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007120"

.obj "@etb_80007128", local
.hidden "@etb_80007128"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007128"

.obj "@etb_80007130", local
.hidden "@etb_80007130"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007130"

.obj "@etb_80007138", local
.hidden "@etb_80007138"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007138"

.obj "@etb_80007140", local
.hidden "@etb_80007140"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007140"

.obj "@etb_80007148", local
.hidden "@etb_80007148"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007148"

.obj "@etb_80007150", local
.hidden "@etb_80007150"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007150"

.obj "@etb_80007158", local
.hidden "@etb_80007158"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007158"

.obj "@etb_80007160", local
.hidden "@etb_80007160"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007160"

.obj "@etb_80007168", local
.hidden "@etb_80007168"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80007168"

.obj "@etb_80007170", local
.hidden "@etb_80007170"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80007170"

.obj "@etb_80007178", local
.hidden "@etb_80007178"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007178"

.obj "@etb_80007180", local
.hidden "@etb_80007180"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007180"

.obj "@etb_80007188", local
.hidden "@etb_80007188"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007188"

.obj "@etb_80007190", local
.hidden "@etb_80007190"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007190"

.obj "@etb_80007198", local
.hidden "@etb_80007198"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007198"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80021DF4", local
.hidden "@eti_80021DF4"
	.4byte getFlag
	.4byte 0x000000B8
	.4byte "@etb_80007110"
.endobj "@eti_80021DF4"

.obj "@eti_80021E00", local
.hidden "@eti_80021E00"
	.4byte setFlag
	.4byte 0x00000170
	.4byte "@etb_80007118"
.endobj "@eti_80021E00"

.obj "@eti_80021E0C", local
.hidden "@eti_80021E0C"
	.4byte getAwardFlagF16
	.4byte 0x0000005C
	.4byte "@etb_80007120"
.endobj "@eti_80021E0C"

.obj "@eti_80021E18", local
.hidden "@eti_80021E18"
	.4byte addAwardFlagF16
	.4byte 0x000000A8
	.4byte "@etb_80007128"
.endobj "@eti_80021E18"

.obj "@eti_80021E24", local
.hidden "@eti_80021E24"
	.4byte setAwardFlagF1
	.4byte 0x00000038
	.4byte "@etb_80007130"
.endobj "@eti_80021E24"

.obj "@eti_80021E30", local
.hidden "@eti_80021E30"
	.4byte realtimeEventStart
	.4byte 0x00000094
	.4byte "@etb_80007138"
.endobj "@eti_80021E30"

.obj "@eti_80021E3C", local
.hidden "@eti_80021E3C"
	.4byte realtimeEventPlay
	.4byte 0x0000005C
	.4byte "@etb_80007140"
.endobj "@eti_80021E3C"

.obj "@eti_80021E48", local
.hidden "@eti_80021E48"
	.4byte realtimeEventEnd
	.4byte 0x00000024
	.4byte "@etb_80007148"
.endobj "@eti_80021E48"

.obj "@eti_80021E54", local
.hidden "@eti_80021E54"
	.4byte waitRealtimeEvent
	.4byte 0x00000040
	.4byte "@etb_80007150"
.endobj "@eti_80021E54"

.obj "@eti_80021E60", local
.hidden "@eti_80021E60"
	.4byte onTalk
	.4byte 0x000000BC
	.4byte "@etb_80007158"
.endobj "@eti_80021E60"

.obj "@eti_80021E6C", local
.hidden "@eti_80021E6C"
	.4byte onTalkEnd
	.4byte 0x000000BC
	.4byte "@etb_80007160"
.endobj "@eti_80021E6C"

.obj "@eti_80021E78", local
.hidden "@eti_80021E78"
	.4byte fadeIn
	.4byte 0x00000104
	.4byte "@etb_80007168"
.endobj "@eti_80021E78"

.obj "@eti_80021E84", local
.hidden "@eti_80021E84"
	.4byte fadeOut
	.4byte 0x00000100
	.4byte "@etb_80007170"
.endobj "@eti_80021E84"

.obj "@eti_80021E90", local
.hidden "@eti_80021E90"
	.4byte fadeWait
	.4byte 0x00000040
	.4byte "@etb_80007178"
.endobj "@eti_80021E90"

.obj "@eti_80021E9C", local
.hidden "@eti_80021E9C"
	.4byte checkEvent
	.4byte 0x00000044
	.4byte "@etb_80007180"
.endobj "@eti_80021E9C"

.obj "@eti_80021EA8", local
.hidden "@eti_80021EA8"
	.4byte isEvent
	.4byte 0x0000003C
	.4byte "@etb_80007188"
.endobj "@eti_80021EA8"

.obj "@eti_80021EB4", local
.hidden "@eti_80021EB4"
	.4byte isTalkEvent
	.4byte 0x0000003C
	.4byte "@etb_80007190"
.endobj "@eti_80021EB4"

.obj "@eti_80021EC0", local
.hidden "@eti_80021EC0"
	.4byte isVisionEvent
	.4byte 0x0000003C
	.4byte "@etb_80007198"
.endobj "@eti_80021EC0"
