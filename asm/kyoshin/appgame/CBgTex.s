.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CBgTex, global
/* 801C3974 0018CF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C3978 0018CF38  7C 08 02 A6 */	mflr r0
/* 801C397C 0018CF3C  3C A0 80 53 */	lis r5, __vt__CBgTex@ha
/* 801C3980 0018CF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C3984 0018CF44  38 A5 75 80 */	addi r5, r5, __vt__CBgTex@l
/* 801C3988 0018CF48  BF C1 00 08 */	stmw r30, 8(r1)
/* 801C398C 0018CF4C  7C 7E 1B 78 */	mr r30, r3
/* 801C3990 0018CF50  7C 9F 23 78 */	mr r31, r4
/* 801C3994 0018CF54  90 A3 00 00 */	stw r5, 0(r3)
/* 801C3998 0018CF58  38 63 00 04 */	addi r3, r3, 4
/* 801C399C 0018CF5C  48 29 BB C9 */	bl __ct__8045F564
/* 801C39A0 0018CF60  38 00 00 00 */	li r0, 0
/* 801C39A4 0018CF64  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801C39A8 0018CF68  7F C3 F3 78 */	mr r3, r30
/* 801C39AC 0018CF6C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 801C39B0 0018CF70  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 801C39B4 0018CF74  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 801C39B8 0018CF78  9B FE 00 1E */	stb r31, 0x1e(r30)
/* 801C39BC 0018CF7C  BB C1 00 08 */	lmw r30, 8(r1)
/* 801C39C0 0018CF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C39C4 0018CF84  7C 08 03 A6 */	mtlr r0
/* 801C39C8 0018CF88  38 21 00 10 */	addi r1, r1, 0x10
/* 801C39CC 0018CF8C  4E 80 00 20 */	blr 
.endfn __ct__CBgTex

.fn __dt__CBgTex, global
/* 801C39D0 0018CF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C39D4 0018CF94  7C 08 02 A6 */	mflr r0
/* 801C39D8 0018CF98  2C 03 00 00 */	cmpwi r3, 0
/* 801C39DC 0018CF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C39E0 0018CFA0  BF C1 00 08 */	stmw r30, 8(r1)
/* 801C39E4 0018CFA4  7C 7E 1B 78 */	mr r30, r3
/* 801C39E8 0018CFA8  7C 9F 23 78 */	mr r31, r4
/* 801C39EC 0018CFAC  41 82 00 20 */	beq .L_801C3A0C
/* 801C39F0 0018CFB0  38 80 FF FF */	li r4, -1
/* 801C39F4 0018CFB4  38 63 00 04 */	addi r3, r3, 4
/* 801C39F8 0018CFB8  48 29 BB 89 */	bl __dt__8045F580
/* 801C39FC 0018CFBC  2C 1F 00 00 */	cmpwi r31, 0
/* 801C3A00 0018CFC0  40 81 00 0C */	ble .L_801C3A0C
/* 801C3A04 0018CFC4  7F C3 F3 78 */	mr r3, r30
/* 801C3A08 0018CFC8  48 27 12 25 */	bl __dl__FPv
.L_801C3A0C:
/* 801C3A0C 0018CFCC  7F C3 F3 78 */	mr r3, r30
/* 801C3A10 0018CFD0  BB C1 00 08 */	lmw r30, 8(r1)
/* 801C3A14 0018CFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C3A18 0018CFD8  7C 08 03 A6 */	mtlr r0
/* 801C3A1C 0018CFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C3A20 0018CFE0  4E 80 00 20 */	blr 
.endfn __dt__CBgTex

.fn func_801C3A24, global
/* 801C3A24 0018CFE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C3A28 0018CFE8  7C 08 02 A6 */	mflr r0
/* 801C3A2C 0018CFEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C3A30 0018CFF0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 801C3A34 0018CFF4  7C 7F 1B 78 */	mr r31, r3
/* 801C3A38 0018CFF8  48 27 09 69 */	bl func_804343A0
/* 801C3A3C 0018CFFC  3F C0 80 50 */	lis r30, CBgTex_strpool@ha
/* 801C3A40 0018D000  7C 64 1B 78 */	mr r4, r3
/* 801C3A44 0018D004  38 7F 00 04 */	addi r3, r31, 4
/* 801C3A48 0018D008  38 A0 20 00 */	li r5, 0x2000
/* 801C3A4C 0018D00C  38 DE 0B 88 */	addi r6, r30, CBgTex_strpool@l
/* 801C3A50 0018D010  38 E0 00 01 */	li r7, 1
/* 801C3A54 0018D014  48 29 BC 2D */	bl func_8045F680
/* 801C3A58 0018D018  38 61 00 08 */	addi r3, r1, 8
/* 801C3A5C 0018D01C  38 9F 00 04 */	addi r4, r31, 4
/* 801C3A60 0018D020  48 29 BD F9 */	bl func_8045F858
/* 801C3A64 0018D024  38 60 00 00 */	li r3, 0
/* 801C3A68 0018D028  48 27 0F E5 */	bl func_80434A4C
/* 801C3A6C 0018D02C  80 0D A8 F4 */	lwz r0, lbl_80666A74@sda21(r13)
/* 801C3A70 0018D030  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801C3A74 0018D034  28 03 00 19 */	cmplwi r3, 0x19
/* 801C3A78 0018D038  40 82 00 1C */	bne .L_801C3A94
/* 801C3A7C 0018D03C  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3A80 0018D040  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3A84 0018D044  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3A88 0018D048  38 A5 00 0A */	addi r5, r5, 0xa
/* 801C3A8C 0018D04C  4B F7 33 F9 */	bl func_80136E84
/* 801C3A90 0018D050  48 00 00 EC */	b .L_801C3B7C
.L_801C3A94:
/* 801C3A94 0018D054  28 03 00 1A */	cmplwi r3, 0x1a
/* 801C3A98 0018D058  40 82 00 1C */	bne .L_801C3AB4
/* 801C3A9C 0018D05C  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3AA0 0018D060  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3AA4 0018D064  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3AA8 0018D068  38 A5 00 1E */	addi r5, r5, 0x1e
/* 801C3AAC 0018D06C  4B F7 33 D9 */	bl func_80136E84
/* 801C3AB0 0018D070  48 00 00 CC */	b .L_801C3B7C
.L_801C3AB4:
/* 801C3AB4 0018D074  4B F7 38 01 */	bl func_801372B4
/* 801C3AB8 0018D078  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C3ABC 0018D07C  2C 00 00 01 */	cmpwi r0, 1
/* 801C3AC0 0018D080  41 82 00 30 */	beq .L_801C3AF0
/* 801C3AC4 0018D084  2C 00 00 02 */	cmpwi r0, 2
/* 801C3AC8 0018D088  41 82 00 40 */	beq .L_801C3B08
/* 801C3ACC 0018D08C  2C 00 00 03 */	cmpwi r0, 3
/* 801C3AD0 0018D090  41 82 00 50 */	beq .L_801C3B20
/* 801C3AD4 0018D094  2C 00 00 04 */	cmpwi r0, 4
/* 801C3AD8 0018D098  41 82 00 60 */	beq .L_801C3B38
/* 801C3ADC 0018D09C  2C 00 00 05 */	cmpwi r0, 5
/* 801C3AE0 0018D0A0  41 82 00 70 */	beq .L_801C3B50
/* 801C3AE4 0018D0A4  2C 00 00 00 */	cmpwi r0, 0
/* 801C3AE8 0018D0A8  41 82 00 80 */	beq .L_801C3B68
/* 801C3AEC 0018D0AC  48 00 00 90 */	b .L_801C3B7C
.L_801C3AF0:
/* 801C3AF0 0018D0B0  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3AF4 0018D0B4  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3AF8 0018D0B8  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3AFC 0018D0BC  38 A5 00 32 */	addi r5, r5, 0x32
/* 801C3B00 0018D0C0  4B F7 33 85 */	bl func_80136E84
/* 801C3B04 0018D0C4  48 00 00 78 */	b .L_801C3B7C
.L_801C3B08:
/* 801C3B08 0018D0C8  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3B0C 0018D0CC  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3B10 0018D0D0  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3B14 0018D0D4  38 A5 00 46 */	addi r5, r5, 0x46
/* 801C3B18 0018D0D8  4B F7 33 6D */	bl func_80136E84
/* 801C3B1C 0018D0DC  48 00 00 60 */	b .L_801C3B7C
.L_801C3B20:
/* 801C3B20 0018D0E0  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3B24 0018D0E4  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3B28 0018D0E8  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3B2C 0018D0EC  38 A5 00 5A */	addi r5, r5, 0x5a
/* 801C3B30 0018D0F0  4B F7 33 55 */	bl func_80136E84
/* 801C3B34 0018D0F4  48 00 00 48 */	b .L_801C3B7C
.L_801C3B38:
/* 801C3B38 0018D0F8  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3B3C 0018D0FC  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3B40 0018D100  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3B44 0018D104  38 A5 00 6E */	addi r5, r5, 0x6e
/* 801C3B48 0018D108  4B F7 33 3D */	bl func_80136E84
/* 801C3B4C 0018D10C  48 00 00 30 */	b .L_801C3B7C
.L_801C3B50:
/* 801C3B50 0018D110  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3B54 0018D114  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3B58 0018D118  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3B5C 0018D11C  38 A5 00 82 */	addi r5, r5, 0x82
/* 801C3B60 0018D120  4B F7 33 25 */	bl func_80136E84
/* 801C3B64 0018D124  48 00 00 18 */	b .L_801C3B7C
.L_801C3B68:
/* 801C3B68 0018D128  38 BE 0B 88 */	addi r5, r30, CBgTex_strpool@l
/* 801C3B6C 0018D12C  80 8D AB D4 */	lwz r4, lbl_80666D54@sda21(r13)
/* 801C3B70 0018D130  38 7F 00 18 */	addi r3, r31, 0x18
/* 801C3B74 0018D134  38 A5 00 32 */	addi r5, r5, 0x32
/* 801C3B78 0018D138  4B F7 33 0D */	bl func_80136E84
.L_801C3B7C:
/* 801C3B7C 0018D13C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C3B80 0018D140  3F C0 80 50 */	lis r30, CBgTex_strpool@ha
/* 801C3B84 0018D144  3B DE 0B 88 */	addi r30, r30, CBgTex_strpool@l
/* 801C3B88 0018D148  38 A0 00 01 */	li r5, 1
/* 801C3B8C 0018D14C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801C3B90 0018D150  38 9E 00 96 */	addi r4, r30, 0x96
/* 801C3B94 0018D154  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3B98 0018D158  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C3B9C 0018D15C  7D 89 03 A6 */	mtctr r12
/* 801C3BA0 0018D160  4E 80 04 21 */	bctrl 
/* 801C3BA4 0018D164  88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 801C3BA8 0018D168  7C 00 00 34 */	cntlzw r0, r0
/* 801C3BAC 0018D16C  54 04 D9 7E */	srwi r4, r0, 5
/* 801C3BB0 0018D170  4B F6 06 C1 */	bl func_80124270
/* 801C3BB4 0018D174  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C3BB8 0018D178  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 801C3BBC 0018D17C  38 A0 00 01 */	li r5, 1
/* 801C3BC0 0018D180  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801C3BC4 0018D184  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3BC8 0018D188  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C3BCC 0018D18C  7D 89 03 A6 */	mtctr r12
/* 801C3BD0 0018D190  4E 80 04 21 */	bctrl 
/* 801C3BD4 0018D194  88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 801C3BD8 0018D198  7C 00 00 34 */	cntlzw r0, r0
/* 801C3BDC 0018D19C  54 04 D9 7E */	srwi r4, r0, 5
/* 801C3BE0 0018D1A0  4B F6 06 91 */	bl func_80124270
/* 801C3BE4 0018D1A4  7F E3 FB 78 */	mr r3, r31
/* 801C3BE8 0018D1A8  48 00 02 55 */	bl func_801C3E3C
/* 801C3BEC 0018D1AC  38 7F 00 04 */	addi r3, r31, 4
/* 801C3BF0 0018D1B0  48 29 BC 21 */	bl func_8045F810
/* 801C3BF4 0018D1B4  38 61 00 08 */	addi r3, r1, 8
/* 801C3BF8 0018D1B8  38 80 FF FF */	li r4, -1
/* 801C3BFC 0018D1BC  48 29 BC CD */	bl __dt__8045F8C8
/* 801C3C00 0018D1C0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 801C3C04 0018D1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C3C08 0018D1C8  7C 08 03 A6 */	mtlr r0
/* 801C3C0C 0018D1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 801C3C10 0018D1D0  4E 80 00 20 */	blr 
.endfn func_801C3A24

.fn func_801C3C14, global
/* 801C3C14 0018D1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C3C18 0018D1D8  7C 08 02 A6 */	mflr r0
/* 801C3C1C 0018D1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C3C20 0018D1E0  BF C1 00 08 */	stmw r30, 8(r1)
/* 801C3C24 0018D1E4  7C 7E 1B 78 */	mr r30, r3
/* 801C3C28 0018D1E8  80 0D AB D4 */	lwz r0, lbl_80666D54@sda21(r13)
/* 801C3C2C 0018D1EC  80 6D AB D0 */	lwz r3, lbl_80666D50@sda21(r13)
/* 801C3C30 0018D1F0  2C 00 00 00 */	cmpwi r0, 0
/* 801C3C34 0018D1F4  38 03 00 01 */	addi r0, r3, 1
/* 801C3C38 0018D1F8  90 0D AB D0 */	stw r0, lbl_80666D50@sda21(r13)
/* 801C3C3C 0018D1FC  41 82 00 0C */	beq .L_801C3C48
/* 801C3C40 0018D200  38 60 00 01 */	li r3, 1
/* 801C3C44 0018D204  48 00 00 FC */	b .L_801C3D40
.L_801C3C48:
/* 801C3C48 0018D208  80 0D A8 F4 */	lwz r0, lbl_80666A74@sda21(r13)
/* 801C3C4C 0018D20C  3B E0 00 00 */	li r31, 0
/* 801C3C50 0018D210  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801C3C54 0018D214  28 03 00 19 */	cmplwi r3, 0x19
/* 801C3C58 0018D218  40 82 00 14 */	bne .L_801C3C6C
/* 801C3C5C 0018D21C  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3C60 0018D220  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3C64 0018D224  3B E3 00 AA */	addi r31, r3, 0xaa
/* 801C3C68 0018D228  48 00 00 B4 */	b .L_801C3D1C
.L_801C3C6C:
/* 801C3C6C 0018D22C  28 03 00 1A */	cmplwi r3, 0x1a
/* 801C3C70 0018D230  40 82 00 14 */	bne .L_801C3C84
/* 801C3C74 0018D234  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3C78 0018D238  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3C7C 0018D23C  3B E3 00 BC */	addi r31, r3, 0xbc
/* 801C3C80 0018D240  48 00 00 9C */	b .L_801C3D1C
.L_801C3C84:
/* 801C3C84 0018D244  4B F7 36 31 */	bl func_801372B4
/* 801C3C88 0018D248  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C3C8C 0018D24C  2C 00 00 01 */	cmpwi r0, 1
/* 801C3C90 0018D250  41 82 00 30 */	beq .L_801C3CC0
/* 801C3C94 0018D254  2C 00 00 02 */	cmpwi r0, 2
/* 801C3C98 0018D258  41 82 00 38 */	beq .L_801C3CD0
/* 801C3C9C 0018D25C  2C 00 00 03 */	cmpwi r0, 3
/* 801C3CA0 0018D260  41 82 00 40 */	beq .L_801C3CE0
/* 801C3CA4 0018D264  2C 00 00 04 */	cmpwi r0, 4
/* 801C3CA8 0018D268  41 82 00 48 */	beq .L_801C3CF0
/* 801C3CAC 0018D26C  2C 00 00 05 */	cmpwi r0, 5
/* 801C3CB0 0018D270  41 82 00 50 */	beq .L_801C3D00
/* 801C3CB4 0018D274  2C 00 00 00 */	cmpwi r0, 0
/* 801C3CB8 0018D278  41 82 00 58 */	beq .L_801C3D10
/* 801C3CBC 0018D27C  48 00 00 60 */	b .L_801C3D1C
.L_801C3CC0:
/* 801C3CC0 0018D280  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3CC4 0018D284  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3CC8 0018D288  3B E3 00 CE */	addi r31, r3, 0xce
/* 801C3CCC 0018D28C  48 00 00 50 */	b .L_801C3D1C
.L_801C3CD0:
/* 801C3CD0 0018D290  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3CD4 0018D294  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3CD8 0018D298  3B E3 00 E0 */	addi r31, r3, 0xe0
/* 801C3CDC 0018D29C  48 00 00 40 */	b .L_801C3D1C
.L_801C3CE0:
/* 801C3CE0 0018D2A0  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3CE4 0018D2A4  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3CE8 0018D2A8  3B E3 00 F2 */	addi r31, r3, 0xf2
/* 801C3CEC 0018D2AC  48 00 00 30 */	b .L_801C3D1C
.L_801C3CF0:
/* 801C3CF0 0018D2B0  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3CF4 0018D2B4  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3CF8 0018D2B8  3B E3 01 04 */	addi r31, r3, 0x104
/* 801C3CFC 0018D2BC  48 00 00 20 */	b .L_801C3D1C
.L_801C3D00:
/* 801C3D00 0018D2C0  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3D04 0018D2C4  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3D08 0018D2C8  3B E3 01 16 */	addi r31, r3, 0x116
/* 801C3D0C 0018D2CC  48 00 00 10 */	b .L_801C3D1C
.L_801C3D10:
/* 801C3D10 0018D2D0  3C 60 80 50 */	lis r3, CBgTex_strpool@ha
/* 801C3D14 0018D2D4  38 63 0B 88 */	addi r3, r3, CBgTex_strpool@l
/* 801C3D18 0018D2D8  3B E3 00 CE */	addi r31, r3, 0xce
.L_801C3D1C:
/* 801C3D1C 0018D2DC  48 27 06 85 */	bl func_804343A0
/* 801C3D20 0018D2E0  7F E4 FB 78 */	mr r4, r31
/* 801C3D24 0018D2E4  7F C5 F3 78 */	mr r5, r30
/* 801C3D28 0018D2E8  38 C0 00 00 */	li r6, 0
/* 801C3D2C 0018D2EC  38 E0 00 00 */	li r7, 0
/* 801C3D30 0018D2F0  48 28 AA 65 */	bl func_8044E794
/* 801C3D34 0018D2F4  90 7E 00 14 */	stw r3, 0x14(r30)
/* 801C3D38 0018D2F8  48 28 B6 CD */	bl func_8044F404
/* 801C3D3C 0018D2FC  38 60 00 00 */	li r3, 0
.L_801C3D40:
/* 801C3D40 0018D300  BB C1 00 08 */	lmw r30, 8(r1)
/* 801C3D44 0018D304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C3D48 0018D308  7C 08 03 A6 */	mtlr r0
/* 801C3D4C 0018D30C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C3D50 0018D310  4E 80 00 20 */	blr 
.endfn func_801C3C14

.fn func_801C3D54, global
/* 801C3D54 0018D314  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 801C3D58 0018D318  2C 00 00 00 */	cmpwi r0, 0
/* 801C3D5C 0018D31C  4D 82 00 20 */	beqlr 
/* 801C3D60 0018D320  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C3D64 0018D324  38 80 00 00 */	li r4, 0
/* 801C3D68 0018D328  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3D6C 0018D32C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801C3D70 0018D330  7D 89 03 A6 */	mtctr r12
/* 801C3D74 0018D334  4E 80 04 20 */	bctr 
/* 801C3D78 0018D338  4E 80 00 20 */	blr 
.endfn func_801C3D54

.fn func_801C3D7C, global
/* 801C3D7C 0018D33C  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 801C3D80 0018D340  2C 00 00 00 */	cmpwi r0, 0
/* 801C3D84 0018D344  4D 82 00 20 */	beqlr 
/* 801C3D88 0018D348  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C3D8C 0018D34C  38 A0 00 00 */	li r5, 0
/* 801C3D90 0018D350  38 C0 00 01 */	li r6, 1
/* 801C3D94 0018D354  4B F7 32 A4 */	b func_80137038
/* 801C3D98 0018D358  4E 80 00 20 */	blr 
.endfn func_801C3D7C

.fn func_801C3D9C, global
/* 801C3D9C 0018D35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C3DA0 0018D360  7C 08 02 A6 */	mflr r0
/* 801C3DA4 0018D364  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C3DA8 0018D368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C3DAC 0018D36C  7C 7F 1B 78 */	mr r31, r3
/* 801C3DB0 0018D370  38 63 00 14 */	addi r3, r3, 0x14
/* 801C3DB4 0018D374  80 8D AB D0 */	lwz r4, lbl_80666D50@sda21(r13)
/* 801C3DB8 0018D378  38 04 FF FF */	addi r0, r4, -1
/* 801C3DBC 0018D37C  90 0D AB D0 */	stw r0, lbl_80666D50@sda21(r13)
/* 801C3DC0 0018D380  4B F7 53 21 */	bl func_801390E0
/* 801C3DC4 0018D384  38 00 00 00 */	li r0, 0
/* 801C3DC8 0018D388  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 801C3DCC 0018D38C  48 28 4C 79 */	bl func_80448A44
/* 801C3DD0 0018D390  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C3DD4 0018D394  2C 03 00 00 */	cmpwi r3, 0
/* 801C3DD8 0018D398  41 82 00 24 */	beq .L_801C3DFC
/* 801C3DDC 0018D39C  41 82 00 18 */	beq .L_801C3DF4
/* 801C3DE0 0018D3A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3DE4 0018D3A4  38 80 00 01 */	li r4, 1
/* 801C3DE8 0018D3A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C3DEC 0018D3AC  7D 89 03 A6 */	mtctr r12
/* 801C3DF0 0018D3B0  4E 80 04 21 */	bctrl 
.L_801C3DF4:
/* 801C3DF4 0018D3B4  38 00 00 00 */	li r0, 0
/* 801C3DF8 0018D3B8  90 1F 00 18 */	stw r0, 0x18(r31)
.L_801C3DFC:
/* 801C3DFC 0018D3BC  80 0D AB D0 */	lwz r0, lbl_80666D50@sda21(r13)
/* 801C3E00 0018D3C0  2C 00 00 00 */	cmpwi r0, 0
/* 801C3E04 0018D3C4  41 81 00 14 */	bgt .L_801C3E18
/* 801C3E08 0018D3C8  80 6D AB D4 */	lwz r3, lbl_80666D54@sda21(r13)
/* 801C3E0C 0018D3CC  4B F7 53 19 */	bl func_80139124
/* 801C3E10 0018D3D0  38 00 00 00 */	li r0, 0
/* 801C3E14 0018D3D4  90 0D AB D4 */	stw r0, lbl_80666D54@sda21(r13)
.L_801C3E18:
/* 801C3E18 0018D3D8  38 7F 00 04 */	addi r3, r31, 4
/* 801C3E1C 0018D3DC  48 29 B9 5D */	bl func_8045F778
/* 801C3E20 0018D3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C3E24 0018D3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C3E28 0018D3E8  7C 08 03 A6 */	mtlr r0
/* 801C3E2C 0018D3EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C3E30 0018D3F0  4E 80 00 20 */	blr 
.endfn func_801C3D9C

.fn func_801C3E34, global
/* 801C3E34 0018D3F4  88 63 00 1D */	lbz r3, 0x1d(r3)
/* 801C3E38 0018D3F8  4E 80 00 20 */	blr 
.endfn func_801C3E34

.fn func_801C3E3C, global
/* 801C3E3C 0018D3FC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801C3E40 0018D400  2C 00 00 00 */	cmpwi r0, 0
/* 801C3E44 0018D404  4D 82 00 20 */	beqlr 
/* 801C3E48 0018D408  38 00 00 01 */	li r0, 1
/* 801C3E4C 0018D40C  98 03 00 1D */	stb r0, 0x1d(r3)
/* 801C3E50 0018D410  98 03 00 1C */	stb r0, 0x1c(r3)
/* 801C3E54 0018D414  4E 80 00 20 */	blr 
.endfn func_801C3E3C

.fn CBgTex_OnFileEvent, global
/* 801C3E58 0018D418  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C3E5C 0018D41C  7C 08 02 A6 */	mflr r0
/* 801C3E60 0018D420  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C3E64 0018D424  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 801C3E68 0018D428  7C 7D 1B 78 */	mr r29, r3
/* 801C3E6C 0018D42C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 801C3E70 0018D430  80 04 00 04 */	lwz r0, 4(r4)
/* 801C3E74 0018D434  7C 05 00 40 */	cmplw r5, r0
/* 801C3E78 0018D438  40 82 00 40 */	bne .L_801C3EB8
/* 801C3E7C 0018D43C  83 C5 00 04 */	lwz r30, 4(r5)
/* 801C3E80 0018D440  3B E0 00 00 */	li r31, 0
/* 801C3E84 0018D444  93 E5 00 04 */	stw r31, 4(r5)
/* 801C3E88 0018D448  48 29 B3 2D */	bl CLibLayout_getArcResourceAccessorInstance
/* 801C3E8C 0018D44C  3C A0 80 50 */	lis r5, CBgTex_strpool@ha
/* 801C3E90 0018D450  90 6D AB D4 */	stw r3, lbl_80666D54@sda21(r13)
/* 801C3E94 0018D454  38 A5 0B 88 */	addi r5, r5, CBgTex_strpool@l
/* 801C3E98 0018D458  7F C4 F3 78 */	mr r4, r30
/* 801C3E9C 0018D45C  38 A5 01 28 */	addi r5, r5, 0x128
/* 801C3EA0 0018D460  48 24 60 69 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 801C3EA4 0018D464  93 FD 00 14 */	stw r31, 0x14(r29)
/* 801C3EA8 0018D468  7F A3 EB 78 */	mr r3, r29
/* 801C3EAC 0018D46C  4B FF FB 79 */	bl func_801C3A24
/* 801C3EB0 0018D470  38 60 00 01 */	li r3, 1
/* 801C3EB4 0018D474  48 00 00 08 */	b .L_801C3EBC
.L_801C3EB8:
/* 801C3EB8 0018D478  38 60 00 00 */	li r3, 0
.L_801C3EBC:
/* 801C3EBC 0018D47C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 801C3EC0 0018D480  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C3EC4 0018D484  7C 08 03 A6 */	mtlr r0
/* 801C3EC8 0018D488  38 21 00 20 */	addi r1, r1, 0x20
/* 801C3ECC 0018D48C  4E 80 00 20 */	blr 
.endfn CBgTex_OnFileEvent

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CBgTex_strpool, global
	.asciz "CBgTexLyt"
	.asciz "mf00_reg_bg06.brlyt"
	.asciz "mf00_reg_bg07.brlyt"
	.asciz "mf00_reg_bg01.brlyt"
	.asciz "mf00_reg_bg02.brlyt"
	.asciz "mf00_reg_bg03.brlyt"
	.asciz "mf00_reg_bg04.brlyt"
	.asciz "mf00_reg_bg05.brlyt"
	.asciz "pic_ptm00"
	.asciz "pic_ptm01"
	.asciz "/menu/BgTex06.arc"
	.asciz "/menu/BgTex07.arc"
	.asciz "/menu/BgTex01.arc"
	.asciz "/menu/BgTex02.arc"
	.asciz "/menu/BgTex03.arc"
	.asciz "/menu/BgTex04.arc"
	.asciz "/menu/BgTex05.arc"
	.asciz "arc"
	.4byte 0
.endobj CBgTex_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CBgTex, global
	.4byte __RTTI__CBgTex
	.4byte 0
	.4byte __dt__CBgTex
	.4byte IWorkEvent_WorkEvent1
	.4byte CBgTex_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
.endobj __vt__CBgTex

.obj CBgTex_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CBgTex_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CBgTex, global
	.4byte CBgTex_typestr
	.4byte CBgTex_hierarchy
.endobj __RTTI__CBgTex

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj CBgTex_typestr, global
	.asciz "CBgTex"
	.balign 4
.endobj CBgTex_typestr

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666D50, global
	.skip 0x4
.endobj lbl_80666D50

.obj lbl_80666D54, global
	.skip 0x4
.endobj lbl_80666D54

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800108B0", local
.hidden "@etb_800108B0"
	.4byte 0x10080000
	.4byte 0x0000002C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_800108B0"

.obj "@etb_800108CC", local
.hidden "@etb_800108CC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800108CC"

.obj "@etb_800108D4", local
.hidden "@etb_800108D4"
	.4byte 0x10080000
	.4byte 0x00000048
	.4byte 0x00110018
	.4byte 0x000000E0
	.4byte 0x003C0018
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_800108D4"

.obj "@etb_800108F4", local
.hidden "@etb_800108F4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800108F4"

.obj "@etb_800108FC", local
.hidden "@etb_800108FC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800108FC"

.obj "@etb_80010904", local
.hidden "@etb_80010904"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80010904"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002B190", local
.hidden "@eti_8002B190"
	.4byte __ct__CBgTex
	.4byte 0x0000005C
	.4byte "@etb_800108B0"
.endobj "@eti_8002B190"

.obj "@eti_8002B19C", local
.hidden "@eti_8002B19C"
	.4byte __dt__CBgTex
	.4byte 0x00000054
	.4byte "@etb_800108CC"
.endobj "@eti_8002B19C"

.obj "@eti_8002B1A8", local
.hidden "@eti_8002B1A8"
	.4byte func_801C3A24
	.4byte 0x000001F0
	.4byte "@etb_800108D4"
.endobj "@eti_8002B1A8"

.obj "@eti_8002B1B4", local
.hidden "@eti_8002B1B4"
	.4byte func_801C3C14
	.4byte 0x00000140
	.4byte "@etb_800108F4"
.endobj "@eti_8002B1B4"

.obj "@eti_8002B1C0", local
.hidden "@eti_8002B1C0"
	.4byte func_801C3D9C
	.4byte 0x00000098
	.4byte "@etb_800108FC"
.endobj "@eti_8002B1C0"

.obj "@eti_8002B1CC", local
.hidden "@eti_8002B1CC"
	.4byte CBgTex_OnFileEvent
	.4byte 0x00000078
	.4byte "@etb_80010904"
.endobj "@eti_8002B1CC"
