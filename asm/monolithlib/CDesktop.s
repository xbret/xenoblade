.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CDesktop, global
/* 804559CC 0041EF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804559D0 0041EF90  7C 08 02 A6 */	mflr r0
/* 804559D4 0041EF94  38 C0 00 80 */	li r6, 0x80
/* 804559D8 0041EF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804559DC 0041EF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804559E0 0041EFA0  7C 7F 1B 78 */	mr r31, r3
/* 804559E4 0041EFA4  4B FE 32 4D */	bl __ct__CProc
/* 804559E8 0041EFA8  3C 80 80 57 */	lis r4, __vt__CDesktop@ha
/* 804559EC 0041EFAC  38 60 00 00 */	li r3, 0
/* 804559F0 0041EFB0  38 84 04 10 */	addi r4, r4, __vt__CDesktop@l
/* 804559F4 0041EFB4  90 7F 01 FC */	stw r3, 0x1fc(r31)
/* 804559F8 0041EFB8  C0 22 C8 98 */	lfs f1, float_8066CC18@sda21(r2)
/* 804559FC 0041EFBC  38 00 00 18 */	li r0, 0x18
/* 80455A00 0041EFC0  90 9F 00 00 */	stw r4, 0(r31)
/* 80455A04 0041EFC4  38 7F 01 EC */	addi r3, r31, 0x1ec
/* 80455A08 0041EFC8  C0 02 C8 9C */	lfs f0, float_8066CC1C@sda21(r2)
/* 80455A0C 0041EFCC  93 ED BE 04 */	stw r31, lbl_80667F84@sda21(r13)
/* 80455A10 0041EFD0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80455A14 0041EFD4  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 80455A18 0041EFD8  D0 3F 01 F0 */	stfs f1, 0x1f0(r31)
/* 80455A1C 0041EFDC  D0 3F 01 F4 */	stfs f1, 0x1f4(r31)
/* 80455A20 0041EFE0  D0 1F 01 F8 */	stfs f0, 0x1f8(r31)
/* 80455A24 0041EFE4  4B FE 6F 6D */	bl func_8043C990
/* 80455A28 0041EFE8  7F E3 FB 78 */	mr r3, r31
/* 80455A2C 0041EFEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455A30 0041EFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455A34 0041EFF4  7C 08 03 A6 */	mtlr r0
/* 80455A38 0041EFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80455A3C 0041EFFC  4E 80 00 20 */	blr 
.endfn __ct__CDesktop

.fn __dt__CDesktop, global
/* 80455A40 0041F000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455A44 0041F004  7C 08 02 A6 */	mflr r0
/* 80455A48 0041F008  2C 03 00 00 */	cmpwi r3, 0
/* 80455A4C 0041F00C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455A50 0041F010  BF C1 00 08 */	stmw r30, 8(r1)
/* 80455A54 0041F014  7C 7E 1B 78 */	mr r30, r3
/* 80455A58 0041F018  7C 9F 23 78 */	mr r31, r4
/* 80455A5C 0041F01C  41 82 00 24 */	beq .L_80455A80
/* 80455A60 0041F020  38 00 00 00 */	li r0, 0
/* 80455A64 0041F024  90 0D BE 04 */	stw r0, lbl_80667F84@sda21(r13)
/* 80455A68 0041F028  38 80 00 00 */	li r4, 0
/* 80455A6C 0041F02C  4B FE 34 5D */	bl __dt__CProc
/* 80455A70 0041F030  2C 1F 00 00 */	cmpwi r31, 0
/* 80455A74 0041F034  40 81 00 0C */	ble .L_80455A80
/* 80455A78 0041F038  7F C3 F3 78 */	mr r3, r30
/* 80455A7C 0041F03C  4B FD F1 B1 */	bl __dl__FPv
.L_80455A80:
/* 80455A80 0041F040  7F C3 F3 78 */	mr r3, r30
/* 80455A84 0041F044  BB C1 00 08 */	lmw r30, 8(r1)
/* 80455A88 0041F048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455A8C 0041F04C  7C 08 03 A6 */	mtlr r0
/* 80455A90 0041F050  38 21 00 10 */	addi r1, r1, 0x10
/* 80455A94 0041F054  4E 80 00 20 */	blr 
.endfn __dt__CDesktop

.fn func_80455A98, global
/* 80455A98 0041F058  80 6D BE 04 */	lwz r3, lbl_80667F84@sda21(r13)
/* 80455A9C 0041F05C  4E 80 00 20 */	blr 
.endfn func_80455A98

.fn func_80455AA0, global
/* 80455AA0 0041F060  80 6D BE 04 */	lwz r3, lbl_80667F84@sda21(r13)
/* 80455AA4 0041F064  2C 03 00 00 */	cmpwi r3, 0
/* 80455AA8 0041F068  40 82 00 0C */	bne .L_80455AB4
/* 80455AAC 0041F06C  38 60 00 00 */	li r3, 0
/* 80455AB0 0041F070  4E 80 00 20 */	blr
.L_80455AB4:
/* 80455AB4 0041F074  80 63 01 FC */	lwz r3, 0x1fc(r3)
/* 80455AB8 0041F078  4E 80 00 20 */	blr 
.endfn func_80455AA0

.fn func_80455ABC, global
/* 80455ABC 0041F07C  80 0D BE 04 */	lwz r0, lbl_80667F84@sda21(r13)
/* 80455AC0 0041F080  2C 00 00 00 */	cmpwi r0, 0
/* 80455AC4 0041F084  40 82 00 0C */	bne .L_80455AD0
/* 80455AC8 0041F088  38 60 00 00 */	li r3, 0
/* 80455ACC 0041F08C  4E 80 00 20 */	blr
.L_80455AD0:
/* 80455AD0 0041F090  80 6D BE 10 */	lwz r3, lbl_80667F90@sda21(r13)
/* 80455AD4 0041F094  4E 80 00 20 */	blr 
.endfn func_80455ABC

.fn func_80455AD8, global
/* 80455AD8 0041F098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455ADC 0041F09C  7C 08 02 A6 */	mflr r0
/* 80455AE0 0041F0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455AE4 0041F0A4  48 00 82 F1 */	bl func_8045DDD4
/* 80455AE8 0041F0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455AEC 0041F0AC  7C 08 03 A6 */	mtlr r0
/* 80455AF0 0041F0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80455AF4 0041F0B4  4E 80 00 20 */	blr 
.endfn func_80455AD8

.fn func_80455AF8, global
/* 80455AF8 0041F0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455AFC 0041F0BC  7C 08 02 A6 */	mflr r0
/* 80455B00 0041F0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455B04 0041F0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80455B08 0041F0C8  4B FE CE 75 */	bl func_8044297C
/* 80455B0C 0041F0CC  2C 03 00 00 */	cmpwi r3, 0
/* 80455B10 0041F0D0  7C 7F 1B 78 */	mr r31, r3
/* 80455B14 0041F0D4  41 82 00 0C */	beq .L_80455B20
/* 80455B18 0041F0D8  4B FE A0 39 */	bl func_8043FB50
/* 80455B1C 0041F0DC  7C 1F 18 40 */	cmplw r31, r3
.L_80455B20:
/* 80455B20 0041F0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455B24 0041F0E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455B28 0041F0E8  7C 08 03 A6 */	mtlr r0
/* 80455B2C 0041F0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80455B30 0041F0F0  4E 80 00 20 */	blr 
.endfn func_80455AF8

.fn func_80455B34, global
/* 80455B34 0041F0F4  48 00 85 98 */	b func_8045E0CC
.endfn func_80455B34

.fn func_80455B38, global
/* 80455B38 0041F0F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80455B3C 0041F0FC  7C 08 02 A6 */	mflr r0
/* 80455B40 0041F100  90 01 00 64 */	stw r0, 0x64(r1)
/* 80455B44 0041F104  39 61 00 60 */	addi r11, r1, 0x60
/* 80455B48 0041F108  4B E6 46 11 */	bl _savegpr_28
/* 80455B4C 0041F10C  7C 7F 1B 78 */	mr r31, r3
/* 80455B50 0041F110  4B FF 89 BD */	bl func_8044E50C
/* 80455B54 0041F114  2C 03 00 00 */	cmpwi r3, 0
/* 80455B58 0041F118  41 82 02 80 */	beq .L_80455DD8
/* 80455B5C 0041F11C  4B FF 89 B9 */	bl func_8044E514
/* 80455B60 0041F120  2C 03 00 00 */	cmpwi r3, 0
/* 80455B64 0041F124  41 82 02 74 */	beq .L_80455DD8
/* 80455B68 0041F128  C0 22 C8 A0 */	lfs f1, float_8066CC20@sda21(r2)
/* 80455B6C 0041F12C  38 61 00 18 */	addi r3, r1, 0x18
/* 80455B70 0041F130  83 8D BD FC */	lwz r28, lbl_80667F7C@sda21(r13)
/* 80455B74 0041F134  FC 40 08 90 */	fmr f2, f1
/* 80455B78 0041F138  C0 82 C8 9C */	lfs f4, float_8066CC1C@sda21(r2)
/* 80455B7C 0041F13C  FC 60 08 90 */	fmr f3, f1
/* 80455B80 0041F140  4B BE AC 49 */	bl func_800407C8
/* 80455B84 0041F144  7C 64 1B 78 */	mr r4, r3
/* 80455B88 0041F148  7F 83 E3 78 */	mr r3, r28
/* 80455B8C 0041F14C  38 A0 00 01 */	li r5, 1
/* 80455B90 0041F150  4B FF 49 E9 */	bl func_8044A578
/* 80455B94 0041F154  7F E3 FB 78 */	mr r3, r31
/* 80455B98 0041F158  4B FF 8B D9 */	bl func_8044E770
/* 80455B9C 0041F15C  4B FE C6 49 */	bl func_804421E4
/* 80455BA0 0041F160  7C 65 1B 78 */	mr r5, r3
/* 80455BA4 0041F164  7F E3 FB 78 */	mr r3, r31
/* 80455BA8 0041F168  38 9F 00 04 */	addi r4, r31, 4
/* 80455BAC 0041F16C  38 C0 00 80 */	li r6, 0x80
/* 80455BB0 0041F170  4B FE 37 45 */	bl func_804392F4
/* 80455BB4 0041F174  C0 22 C8 A0 */	lfs f1, float_8066CC20@sda21(r2)
/* 80455BB8 0041F178  90 7F 01 FC */	stw r3, 0x1fc(r31)
/* 80455BBC 0041F17C  38 61 00 08 */	addi r3, r1, 8
/* 80455BC0 0041F180  FC 40 08 90 */	fmr f2, f1
/* 80455BC4 0041F184  C0 82 C8 9C */	lfs f4, float_8066CC1C@sda21(r2)
/* 80455BC8 0041F188  FC 60 08 90 */	fmr f3, f1
/* 80455BCC 0041F18C  4B BE AB FD */	bl func_800407C8
/* 80455BD0 0041F190  80 DF 01 FC */	lwz r6, 0x1fc(r31)
/* 80455BD4 0041F194  38 00 00 03 */	li r0, 3
/* 80455BD8 0041F198  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80455BDC 0041F19C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80455BE0 0041F1A0  80 81 00 08 */	lwz r4, 8(r1)
/* 80455BE4 0041F1A4  90 86 04 44 */	stw r4, 0x444(r6)
/* 80455BE8 0041F1A8  90 66 04 48 */	stw r3, 0x448(r6)
/* 80455BEC 0041F1AC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80455BF0 0041F1B0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80455BF4 0041F1B4  90 86 04 4C */	stw r4, 0x44c(r6)
/* 80455BF8 0041F1B8  90 66 04 50 */	stw r3, 0x450(r6)
/* 80455BFC 0041F1BC  81 1F 01 FC */	lwz r8, 0x1fc(r31)
/* 80455C00 0041F1C0  80 C8 03 F0 */	lwz r6, 0x3f0(r8)
/* 80455C04 0041F1C4  80 68 03 F4 */	lwz r3, 0x3f4(r8)
/* 80455C08 0041F1C8  80 88 03 F8 */	lwz r4, 0x3f8(r8)
/* 80455C0C 0041F1CC  7C C6 1A 14 */	add r6, r6, r3
/* 80455C10 0041F1D0  80 E8 03 EC */	lwz r7, 0x3ec(r8)
/* 80455C14 0041F1D4  7C 66 23 D6 */	divw r3, r6, r4
/* 80455C18 0041F1D8  7C 63 21 D6 */	mullw r3, r3, r4
/* 80455C1C 0041F1DC  7C 63 30 50 */	subf r3, r3, r6
/* 80455C20 0041F1E0  1C 63 00 24 */	mulli r3, r3, 0x24
/* 80455C24 0041F1E4  7C E7 1A 14 */	add r7, r7, r3
/* 80455C28 0041F1E8  7C E6 3B 78 */	mr r6, r7
/* 80455C2C 0041F1EC  90 07 00 00 */	stw r0, 0(r7)
/* 80455C30 0041F1F0  7C 09 03 A6 */	mtctr r0
.L_80455C34:
/* 80455C34 0041F1F4  80 65 00 04 */	lwz r3, 4(r5)
/* 80455C38 0041F1F8  84 05 00 08 */	lwzu r0, 8(r5)
/* 80455C3C 0041F1FC  90 66 00 04 */	stw r3, 4(r6)
/* 80455C40 0041F200  94 06 00 08 */	stwu r0, 8(r6)
/* 80455C44 0041F204  42 00 FF F0 */	bdnz .L_80455C34
/* 80455C48 0041F208  80 05 00 04 */	lwz r0, 4(r5)
/* 80455C4C 0041F20C  38 60 00 00 */	li r3, 0
/* 80455C50 0041F210  90 06 00 04 */	stw r0, 4(r6)
/* 80455C54 0041F214  38 00 00 13 */	li r0, 0x13
/* 80455C58 0041F218  A0 85 00 08 */	lhz r4, 8(r5)
/* 80455C5C 0041F21C  B0 86 00 08 */	sth r4, 8(r6)
/* 80455C60 0041F220  88 85 00 0A */	lbz r4, 0xa(r5)
/* 80455C64 0041F224  98 86 00 0A */	stb r4, 0xa(r6)
/* 80455C68 0041F228  98 67 00 23 */	stb r3, 0x23(r7)
/* 80455C6C 0041F22C  80 68 03 F4 */	lwz r3, 0x3f4(r8)
/* 80455C70 0041F230  38 63 00 01 */	addi r3, r3, 1
/* 80455C74 0041F234  90 68 03 F4 */	stw r3, 0x3f4(r8)
/* 80455C78 0041F238  38 63 FF FF */	addi r3, r3, -1
/* 80455C7C 0041F23C  90 68 03 FC */	stw r3, 0x3fc(r8)
/* 80455C80 0041F240  80 7F 01 FC */	lwz r3, 0x1fc(r31)
/* 80455C84 0041F244  90 03 04 60 */	stw r0, 0x460(r3)
/* 80455C88 0041F248  83 8D 9F 08 */	lwz r28, lbl_80666088@sda21(r13)
/* 80455C8C 0041F24C  83 DF 01 FC */	lwz r30, 0x1fc(r31)
/* 80455C90 0041F250  7F 83 E3 78 */	mr r3, r28
/* 80455C94 0041F254  4B E6 39 25 */	bl strlen
/* 80455C98 0041F258  90 7E 04 40 */	stw r3, 0x440(r30)
/* 80455C9C 0041F25C  7F 84 E3 78 */	mr r4, r28
/* 80455CA0 0041F260  38 7E 04 00 */	addi r3, r30, 0x400
/* 80455CA4 0041F264  4B E6 CA 15 */	bl strcpy
/* 80455CA8 0041F268  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80455CAC 0041F26C  2C 00 00 00 */	cmpwi r0, 0
/* 80455CB0 0041F270  40 82 00 1C */	bne .L_80455CCC
/* 80455CB4 0041F274  7F 83 E3 78 */	mr r3, r28
/* 80455CB8 0041F278  4B E6 39 01 */	bl strlen
/* 80455CBC 0041F27C  90 7E 00 44 */	stw r3, 0x44(r30)
/* 80455CC0 0041F280  7F 84 E3 78 */	mr r4, r28
/* 80455CC4 0041F284  38 7E 00 04 */	addi r3, r30, 4
/* 80455CC8 0041F288  4B E6 C9 F1 */	bl strcpy
.L_80455CCC:
/* 80455CCC 0041F28C  4B FE 3A E1 */	bl func_804397AC
/* 80455CD0 0041F290  3F C0 80 52 */	lis r30, lbl_8052685C@ha
/* 80455CD4 0041F294  7C 7D 1B 78 */	mr r29, r3
/* 80455CD8 0041F298  3B DE 68 5C */	addi r30, r30, lbl_8052685C@l
/* 80455CDC 0041F29C  4B FE 18 D9 */	bl getMemBlockIndex
/* 80455CE0 0041F2A0  7C 64 1B 78 */	mr r4, r3
/* 80455CE4 0041F2A4  38 60 01 F0 */	li r3, 0x1f0
/* 80455CE8 0041F2A8  4B FD ED 75 */	bl heap_allocate
/* 80455CEC 0041F2AC  2C 03 00 00 */	cmpwi r3, 0
/* 80455CF0 0041F2B0  7C 7C 1B 78 */	mr r28, r3
/* 80455CF4 0041F2B4  41 82 00 24 */	beq .L_80455D18
/* 80455CF8 0041F2B8  7F C4 F3 78 */	mr r4, r30
/* 80455CFC 0041F2BC  7F A5 EB 78 */	mr r5, r29
/* 80455D00 0041F2C0  38 C0 00 08 */	li r6, 8
/* 80455D04 0041F2C4  4B FE 2F 2D */	bl __ct__CProc
/* 80455D08 0041F2C8  3C 60 80 57 */	lis r3, __vt___unnamed_CDesktop_cpp_CDesktopBackGround@ha
/* 80455D0C 0041F2CC  38 63 03 50 */	addi r3, r3, __vt___unnamed_CDesktop_cpp_CDesktopBackGround@l
/* 80455D10 0041F2D0  90 7C 00 00 */	stw r3, 0(r28)
/* 80455D14 0041F2D4  93 8D BE 0C */	stw r28, lbl_80667F8C@sda21(r13)
.L_80455D18:
/* 80455D18 0041F2D8  7F 83 E3 78 */	mr r3, r28
/* 80455D1C 0041F2DC  7F A4 EB 78 */	mr r4, r29
/* 80455D20 0041F2E0  38 A0 00 00 */	li r5, 0
/* 80455D24 0041F2E4  4B FE 2E B5 */	bl func_80438BD8
/* 80455D28 0041F2E8  4B FF FD 79 */	bl func_80455AA0
/* 80455D2C 0041F2EC  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 80455D30 0041F2F0  90 1C 01 E4 */	stw r0, 0x1e4(r28)
/* 80455D34 0041F2F4  4B FE 3A 79 */	bl func_804397AC
/* 80455D38 0041F2F8  3C 80 80 52 */	lis r4, lbl_8052685C@ha
/* 80455D3C 0041F2FC  7C 7D 1B 78 */	mr r29, r3
/* 80455D40 0041F300  38 84 68 5C */	addi r4, r4, lbl_8052685C@l
/* 80455D44 0041F304  3B 84 00 13 */	addi r28, r4, 0x13
/* 80455D48 0041F308  4B FE 18 6D */	bl getMemBlockIndex
/* 80455D4C 0041F30C  7C 64 1B 78 */	mr r4, r3
/* 80455D50 0041F310  38 60 01 F0 */	li r3, 0x1f0
/* 80455D54 0041F314  4B FD ED 09 */	bl heap_allocate
/* 80455D58 0041F318  2C 03 00 00 */	cmpwi r3, 0
/* 80455D5C 0041F31C  7C 7E 1B 78 */	mr r30, r3
/* 80455D60 0041F320  41 82 00 24 */	beq .L_80455D84
/* 80455D64 0041F324  7F 84 E3 78 */	mr r4, r28
/* 80455D68 0041F328  7F A5 EB 78 */	mr r5, r29
/* 80455D6C 0041F32C  38 C0 00 40 */	li r6, 0x40
/* 80455D70 0041F330  4B FE 2E C1 */	bl __ct__CProc
/* 80455D74 0041F334  3C 60 80 57 */	lis r3, __vt___unnamed_CDesktop_cpp_CDesktopException@ha
/* 80455D78 0041F338  38 63 02 90 */	addi r3, r3, __vt___unnamed_CDesktop_cpp_CDesktopException@l
/* 80455D7C 0041F33C  90 7E 00 00 */	stw r3, 0(r30)
/* 80455D80 0041F340  93 CD BE 10 */	stw r30, lbl_80667F90@sda21(r13)
.L_80455D84:
/* 80455D84 0041F344  7F C3 F3 78 */	mr r3, r30
/* 80455D88 0041F348  7F A4 EB 78 */	mr r4, r29
/* 80455D8C 0041F34C  38 A0 00 00 */	li r5, 0
/* 80455D90 0041F350  4B FE 2E 49 */	bl func_80438BD8
/* 80455D94 0041F354  4B FF FD 0D */	bl func_80455AA0
/* 80455D98 0041F358  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 80455D9C 0041F35C  90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 80455DA0 0041F360  88 0D BE 08 */	lbz r0, lbl_80667F88@sda21(r13)
/* 80455DA4 0041F364  2C 00 00 00 */	cmpwi r0, 0
/* 80455DA8 0041F368  41 82 00 14 */	beq .L_80455DBC
/* 80455DAC 0041F36C  80 6D BE 00 */	lwz r3, CDesktop_startFunctionStruct@sda21(r13)
/* 80455DB0 0041F370  81 83 00 04 */	lwz r12, 4(r3)
/* 80455DB4 0041F374  7D 89 03 A6 */	mtctr r12
/* 80455DB8 0041F378  4E 80 04 21 */	bctrl  #call GameMain indirectly
.L_80455DBC:
/* 80455DBC 0041F37C  38 60 00 00 */	li r3, 0
/* 80455DC0 0041F380  4B FF 25 E1 */	bl func_804483A0
/* 80455DC4 0041F384  38 60 00 00 */	li r3, 0
/* 80455DC8 0041F388  4B FF 24 E9 */	bl func_804482B0
/* 80455DCC 0041F38C  7F E3 FB 78 */	mr r3, r31
/* 80455DD0 0041F390  4B FE 38 D1 */	bl func_804396A0
/* 80455DD4 0041F394  48 00 00 08 */	b .L_80455DDC
.L_80455DD8:
/* 80455DD8 0041F398  38 60 00 00 */	li r3, 0
.L_80455DDC:
/* 80455DDC 0041F39C  39 61 00 60 */	addi r11, r1, 0x60
/* 80455DE0 0041F3A0  4B E6 43 C5 */	bl _restgpr_28
/* 80455DE4 0041F3A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80455DE8 0041F3A8  7C 08 03 A6 */	mtlr r0
/* 80455DEC 0041F3AC  38 21 00 60 */	addi r1, r1, 0x60
/* 80455DF0 0041F3B0  4E 80 00 20 */	blr 
.endfn func_80455B38

.fn func_80455DF4, global
/* 80455DF4 0041F3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455DF8 0041F3B8  7C 08 02 A6 */	mflr r0
/* 80455DFC 0041F3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455E00 0041F3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80455E04 0041F3C4  7C 7F 1B 78 */	mr r31, r3
/* 80455E08 0041F3C8  4B FE 3C CD */	bl func_80439AD4
/* 80455E0C 0041F3CC  2C 03 00 00 */	cmpwi r3, 0
/* 80455E10 0041F3D0  40 82 00 38 */	bne .L_80455E48
/* 80455E14 0041F3D4  4B FE 39 99 */	bl func_804397AC
/* 80455E18 0041F3D8  3C 80 80 52 */	lis r4, lbl_8052685C@ha
/* 80455E1C 0041F3DC  38 84 68 5C */	addi r4, r4, lbl_8052685C@l
/* 80455E20 0041F3E0  4B FE 2C 35 */	bl func_80438A54
/* 80455E24 0041F3E4  2C 03 00 00 */	cmpwi r3, 0
/* 80455E28 0041F3E8  40 82 00 20 */	bne .L_80455E48
/* 80455E2C 0041F3EC  38 60 00 01 */	li r3, 1
/* 80455E30 0041F3F0  4B FF 25 71 */	bl func_804483A0
/* 80455E34 0041F3F4  7F E3 FB 78 */	mr r3, r31
/* 80455E38 0041F3F8  4B FF 89 49 */	bl func_8044E780
/* 80455E3C 0041F3FC  7F E3 FB 78 */	mr r3, r31
/* 80455E40 0041F400  4B FE 38 65 */	bl func_804396A4
/* 80455E44 0041F404  48 00 00 08 */	b .L_80455E4C
.L_80455E48:
/* 80455E48 0041F408  38 60 00 00 */	li r3, 0
.L_80455E4C:
/* 80455E4C 0041F40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455E50 0041F410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455E54 0041F414  7C 08 03 A6 */	mtlr r0
/* 80455E58 0041F418  38 21 00 10 */	addi r1, r1, 0x10
/* 80455E5C 0041F41C  4E 80 00 20 */	blr 
.endfn func_80455DF4

.fn func_80455E60, global
/* 80455E60 0041F420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455E64 0041F424  7C 08 02 A6 */	mflr r0
/* 80455E68 0041F428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455E6C 0041F42C  BF C1 00 08 */	stmw r30, 8(r1)
/* 80455E70 0041F430  4B FE C4 35 */	bl func_804422A4
/* 80455E74 0041F434  2C 03 00 00 */	cmpwi r3, 0
/* 80455E78 0041F438  40 82 00 0C */	bne .L_80455E84
/* 80455E7C 0041F43C  38 60 00 00 */	li r3, 0
/* 80455E80 0041F440  48 00 00 7C */	b .L_80455EFC
.L_80455E84:
/* 80455E84 0041F444  4B FE D0 95 */	bl func_80442F18
/* 80455E88 0041F448  2C 03 00 00 */	cmpwi r3, 0
/* 80455E8C 0041F44C  7C 7F 1B 78 */	mr r31, r3
/* 80455E90 0041F450  40 82 00 0C */	bne .L_80455E9C
/* 80455E94 0041F454  38 60 00 00 */	li r3, 0
/* 80455E98 0041F458  48 00 00 64 */	b .L_80455EFC
.L_80455E9C:
/* 80455E9C 0041F45C  80 63 02 3C */	lwz r3, 0x23c(r3)
/* 80455EA0 0041F460  83 C3 00 00 */	lwz r30, 0(r3)
/* 80455EA4 0041F464  48 00 00 48 */	b .L_80455EEC
.L_80455EA8:
/* 80455EA8 0041F468  80 7E 00 08 */	lwz r3, 8(r30)
/* 80455EAC 0041F46C  4B FE 2C 51 */	bl func_80438AFC
/* 80455EB0 0041F470  2C 03 00 00 */	cmpwi r3, 0
/* 80455EB4 0041F474  40 82 00 0C */	bne .L_80455EC0
/* 80455EB8 0041F478  38 60 00 00 */	li r3, 0
/* 80455EBC 0041F47C  48 00 00 1C */	b .L_80455ED8
.L_80455EC0:
/* 80455EC0 0041F480  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80455EC4 0041F484  2C 00 00 17 */	cmpwi r0, 0x17
/* 80455EC8 0041F488  41 80 00 0C */	blt .L_80455ED4
/* 80455ECC 0041F48C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80455ED0 0041F490  41 80 00 08 */	blt .L_80455ED8
.L_80455ED4:
/* 80455ED4 0041F494  38 60 00 00 */	li r3, 0
.L_80455ED8:
/* 80455ED8 0041F498  4B FE 30 E9 */	bl func_80438FC0
/* 80455EDC 0041F49C  2C 03 00 00 */	cmpwi r3, 0
/* 80455EE0 0041F4A0  41 82 00 08 */	beq .L_80455EE8
/* 80455EE4 0041F4A4  48 00 00 18 */	b .L_80455EFC
.L_80455EE8:
/* 80455EE8 0041F4A8  83 DE 00 00 */	lwz r30, 0(r30)
.L_80455EEC:
/* 80455EEC 0041F4AC  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 80455EF0 0041F4B0  7C 1E 00 40 */	cmplw r30, r0
/* 80455EF4 0041F4B4  40 82 FF B4 */	bne .L_80455EA8
/* 80455EF8 0041F4B8  38 60 00 00 */	li r3, 0
.L_80455EFC:
/* 80455EFC 0041F4BC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80455F00 0041F4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455F04 0041F4C4  7C 08 03 A6 */	mtlr r0
/* 80455F08 0041F4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80455F0C 0041F4CC  4E 80 00 20 */	blr 
.endfn func_80455E60

.fn CDesktop_OnInit, global
/* 80455F10 0041F4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455F14 0041F4D4  7C 08 02 A6 */	mflr r0
/* 80455F18 0041F4D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455F1C 0041F4DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80455F20 0041F4E0  7C 9F 23 78 */	mr r31, r4
/* 80455F24 0041F4E4  80 04 00 00 */	lwz r0, 0(r4)
/* 80455F28 0041F4E8  2C 00 00 02 */	cmpwi r0, 2
/* 80455F2C 0041F4EC  40 82 00 28 */	bne .L_80455F54
/* 80455F30 0041F4F0  4B FF FF 31 */	bl func_80455E60
/* 80455F34 0041F4F4  2C 03 00 00 */	cmpwi r3, 0
/* 80455F38 0041F4F8  41 82 00 1C */	beq .L_80455F54
/* 80455F3C 0041F4FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80455F40 0041F500  7F E4 FB 78 */	mr r4, r31
/* 80455F44 0041F504  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80455F48 0041F508  7D 89 03 A6 */	mtctr r12
/* 80455F4C 0041F50C  4E 80 04 21 */	bctrl 
/* 80455F50 0041F510  48 00 00 08 */	b .L_80455F58
.L_80455F54:
/* 80455F54 0041F514  38 60 00 00 */	li r3, 0
.L_80455F58:
/* 80455F58 0041F518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455F5C 0041F51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455F60 0041F520  7C 08 03 A6 */	mtlr r0
/* 80455F64 0041F524  38 21 00 10 */	addi r1, r1, 0x10
/* 80455F68 0041F528  4E 80 00 20 */	blr 
.endfn CDesktop_OnInit

.fn CDesktop_WorkEvent3, global
/* 80455F6C 0041F52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455F70 0041F530  7C 08 02 A6 */	mflr r0
/* 80455F74 0041F534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455F78 0041F538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80455F7C 0041F53C  7C 9F 23 78 */	mr r31, r4
/* 80455F80 0041F540  80 04 00 00 */	lwz r0, 0(r4)
/* 80455F84 0041F544  2C 00 00 15 */	cmpwi r0, 0x15
/* 80455F88 0041F548  40 82 00 28 */	bne .L_80455FB0
/* 80455F8C 0041F54C  4B FF FE D5 */	bl func_80455E60
/* 80455F90 0041F550  2C 03 00 00 */	cmpwi r3, 0
/* 80455F94 0041F554  41 82 00 1C */	beq .L_80455FB0
/* 80455F98 0041F558  81 83 00 00 */	lwz r12, 0(r3)
/* 80455F9C 0041F55C  7F E4 FB 78 */	mr r4, r31
/* 80455FA0 0041F560  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80455FA4 0041F564  7D 89 03 A6 */	mtctr r12
/* 80455FA8 0041F568  4E 80 04 21 */	bctrl 
/* 80455FAC 0041F56C  48 00 00 08 */	b .L_80455FB4
.L_80455FB0:
/* 80455FB0 0041F570  38 60 00 00 */	li r3, 0
.L_80455FB4:
/* 80455FB4 0041F574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455FB8 0041F578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455FBC 0041F57C  7C 08 03 A6 */	mtlr r0
/* 80455FC0 0041F580  38 21 00 10 */	addi r1, r1, 0x10
/* 80455FC4 0041F584  4E 80 00 20 */	blr 
.endfn CDesktop_WorkEvent3

.fn CDesktop_SaveStartFunctionCallback, global
/* 80455FC8 0041F588  90 6D BE 00 */	stw r3, CDesktop_startFunctionStruct@sda21(r13)
/* 80455FCC 0041F58C  98 8D BE 08 */	stb r4, lbl_80667F88@sda21(r13)
/* 80455FD0 0041F590  4E 80 00 20 */	blr 
.endfn CDesktop_SaveStartFunctionCallback

.fn func_80455FD4, global
/* 80455FD4 0041F594  80 0D BE 04 */	lwz r0, lbl_80667F84@sda21(r13)
/* 80455FD8 0041F598  2C 00 00 00 */	cmpwi r0, 0
/* 80455FDC 0041F59C  4D 82 00 20 */	beqlr 
/* 80455FE0 0041F5A0  2C 03 00 00 */	cmpwi r3, 0
/* 80455FE4 0041F5A4  7C 03 03 78 */	mr r3, r0
/* 80455FE8 0041F5A8  38 80 00 0B */	li r4, 0xb
/* 80455FEC 0041F5AC  41 82 00 08 */	beq .L_80455FF4
/* 80455FF0 0041F5B0  38 80 00 0A */	li r4, 0xa
.L_80455FF4:
/* 80455FF4 0041F5B4  4B FE 1E FC */	b func_80437EF0
/* 80455FF8 0041F5B8  4E 80 00 20 */	blr 
.endfn func_80455FD4

.fn __dt___unnamed_CDesktop_cpp_CDesktopBackGround, global
/* 80455FFC 0041F5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80456000 0041F5C0  7C 08 02 A6 */	mflr r0
/* 80456004 0041F5C4  2C 03 00 00 */	cmpwi r3, 0
/* 80456008 0041F5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045600C 0041F5CC  BF C1 00 08 */	stmw r30, 8(r1)
/* 80456010 0041F5D0  7C 7E 1B 78 */	mr r30, r3
/* 80456014 0041F5D4  7C 9F 23 78 */	mr r31, r4
/* 80456018 0041F5D8  41 82 00 24 */	beq .L_8045603C
/* 8045601C 0041F5DC  38 00 00 00 */	li r0, 0
/* 80456020 0041F5E0  90 0D BE 0C */	stw r0, lbl_80667F8C@sda21(r13)
/* 80456024 0041F5E4  38 80 00 00 */	li r4, 0
/* 80456028 0041F5E8  4B FE 2E A1 */	bl __dt__CProc
/* 8045602C 0041F5EC  2C 1F 00 00 */	cmpwi r31, 0
/* 80456030 0041F5F0  40 81 00 0C */	ble .L_8045603C
/* 80456034 0041F5F4  7F C3 F3 78 */	mr r3, r30
/* 80456038 0041F5F8  4B FD EB F5 */	bl __dl__FPv
.L_8045603C:
/* 8045603C 0041F5FC  7F C3 F3 78 */	mr r3, r30
/* 80456040 0041F600  BB C1 00 08 */	lmw r30, 8(r1)
/* 80456044 0041F604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80456048 0041F608  7C 08 03 A6 */	mtlr r0
/* 8045604C 0041F60C  38 21 00 10 */	addi r1, r1, 0x10
/* 80456050 0041F610  4E 80 00 20 */	blr 
.endfn __dt___unnamed_CDesktop_cpp_CDesktopBackGround

.fn __dt___unnamed_CDesktop_cpp_CDesktopException, global
/* 80456054 0041F614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80456058 0041F618  7C 08 02 A6 */	mflr r0
/* 8045605C 0041F61C  2C 03 00 00 */	cmpwi r3, 0
/* 80456060 0041F620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80456064 0041F624  BF C1 00 08 */	stmw r30, 8(r1)
/* 80456068 0041F628  7C 7E 1B 78 */	mr r30, r3
/* 8045606C 0041F62C  7C 9F 23 78 */	mr r31, r4
/* 80456070 0041F630  41 82 00 24 */	beq .L_80456094
/* 80456074 0041F634  38 00 00 00 */	li r0, 0
/* 80456078 0041F638  90 0D BE 10 */	stw r0, lbl_80667F90@sda21(r13)
/* 8045607C 0041F63C  38 80 00 00 */	li r4, 0
/* 80456080 0041F640  4B FE 2E 49 */	bl __dt__CProc
/* 80456084 0041F644  2C 1F 00 00 */	cmpwi r31, 0
/* 80456088 0041F648  40 81 00 0C */	ble .L_80456094
/* 8045608C 0041F64C  7F C3 F3 78 */	mr r3, r30
/* 80456090 0041F650  4B FD EB 9D */	bl __dl__FPv
.L_80456094:
/* 80456094 0041F654  7F C3 F3 78 */	mr r3, r30
/* 80456098 0041F658  BB C1 00 08 */	lmw r30, 8(r1)
/* 8045609C 0041F65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804560A0 0041F660  7C 08 03 A6 */	mtlr r0
/* 804560A4 0041F664  38 21 00 10 */	addi r1, r1, 0x10
/* 804560A8 0041F668  4E 80 00 20 */	blr 
.endfn __dt___unnamed_CDesktop_cpp_CDesktopException

.fn func_804560AC, global
/* 804560AC 0041F66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804560B0 0041F670  7C 08 02 A6 */	mflr r0
/* 804560B4 0041F674  90 01 00 14 */	stw r0, 0x14(r1)
/* 804560B8 0041F678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804560BC 0041F67C  7C 7F 1B 78 */	mr r31, r3
/* 804560C0 0041F680  4B FE 3A 15 */	bl func_80439AD4
/* 804560C4 0041F684  2C 03 00 00 */	cmpwi r3, 0
/* 804560C8 0041F688  41 82 00 0C */	beq .L_804560D4
/* 804560CC 0041F68C  38 60 00 00 */	li r3, 0
/* 804560D0 0041F690  48 00 00 0C */	b .L_804560DC
.L_804560D4:
/* 804560D4 0041F694  7F E3 FB 78 */	mr r3, r31
/* 804560D8 0041F698  4B FE 35 CD */	bl func_804396A4
.L_804560DC:
/* 804560DC 0041F69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804560E0 0041F6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804560E4 0041F6A4  7C 08 03 A6 */	mtlr r0
/* 804560E8 0041F6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804560EC 0041F6AC  4E 80 00 20 */	blr 
.endfn func_804560AC

.fn func_804560F0, global
/* 804560F0 0041F6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804560F4 0041F6B4  7C 08 02 A6 */	mflr r0
/* 804560F8 0041F6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804560FC 0041F6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80456100 0041F6C0  7C 7F 1B 78 */	mr r31, r3
/* 80456104 0041F6C4  4B FE 39 D1 */	bl func_80439AD4
/* 80456108 0041F6C8  2C 03 00 00 */	cmpwi r3, 0
/* 8045610C 0041F6CC  41 82 00 0C */	beq .L_80456118
/* 80456110 0041F6D0  38 60 00 00 */	li r3, 0
/* 80456114 0041F6D4  48 00 00 0C */	b .L_80456120
.L_80456118:
/* 80456118 0041F6D8  7F E3 FB 78 */	mr r3, r31
/* 8045611C 0041F6DC  4B FE 35 89 */	bl func_804396A4
.L_80456120:
/* 80456120 0041F6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80456124 0041F6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80456128 0041F6E8  7C 08 03 A6 */	mtlr r0
/* 8045612C 0041F6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80456130 0041F6F0  4E 80 00 20 */	blr 
.endfn func_804560F0



.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj _unnamed_CDesktop_cpp_CDesktopException_typestr, global
	.asciz "@unnamed@CDesktop_cpp@::CDesktopException"
	.balign 4
.endobj _unnamed_CDesktop_cpp_CDesktopException_typestr

.obj _unnamed_CDesktop_cpp_CDesktopBackGround_typestr, global
	.asciz "@unnamed@CDesktop_cpp@::CDesktopBackGround"
	.balign 4
.endobj _unnamed_CDesktop_cpp_CDesktopBackGround_typestr

.obj CDesktop_typestr, global
	.asciz "CDesktop"
	.balign 4
.endobj CDesktop_typestr


.obj lbl_8052685C, global
	.asciz "CDesktopBackGround"
	.asciz "CDesktopException"
	.balign 4
	.4byte 0
.endobj lbl_8052685C

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt___unnamed_CDesktop_cpp_CDesktopException, global
	.4byte __RTTI___unnamed_CDesktop_cpp_CDesktopException
	.4byte 0
	.4byte __dt___unnamed_CDesktop_cpp_CDesktopException
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnInit
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
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804396A0
	.4byte func_804560AC
	.4byte func_80039E30
.endobj __vt___unnamed_CDesktop_cpp_CDesktopException

.obj _unnamed_CDesktop_cpp_CDesktopException_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte __RTTI__CProc
	.4byte 0
	.4byte 0
	.4byte 0
.endobj _unnamed_CDesktop_cpp_CDesktopException_hierarchy


.obj __vt___unnamed_CDesktop_cpp_CDesktopBackGround, global
	.4byte __RTTI___unnamed_CDesktop_cpp_CDesktopBackGround
	.4byte 0
	.4byte __dt___unnamed_CDesktop_cpp_CDesktopBackGround
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnInit
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
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804396A0
	.4byte func_804560F0
	.4byte func_80039E30
.endobj __vt___unnamed_CDesktop_cpp_CDesktopBackGround

.obj _unnamed_CDesktop_cpp_CDesktopBackGround_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte __RTTI__CProc
	.4byte 0
	.4byte 0
	.4byte 0
.endobj _unnamed_CDesktop_cpp_CDesktopBackGround_hierarchy


.obj __vt__CDesktop, global
	.4byte __RTTI__CDesktop
	.4byte 0
	.4byte __dt__CDesktop
	.4byte IWorkEvent_WorkEvent1
	.4byte CDesktop_OnInit
	.4byte CDesktop_WorkEvent3
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
	.4byte func_80455AD8
	.4byte func_80455AF8
	.4byte func_80455B34
	.4byte func_80455B38
	.4byte func_80455DF4
	.4byte func_80039E30
.endobj __vt__CDesktop

.obj CDesktop_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte __RTTI__CProc
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CDesktop_hierarchy



.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj lbl_80666088, global
	.4byte lbl_8066CC10
	.4byte 0
.endobj lbl_80666088

.obj __RTTI___unnamed_CDesktop_cpp_CDesktopException, global
	.4byte _unnamed_CDesktop_cpp_CDesktopException_typestr
	.4byte _unnamed_CDesktop_cpp_CDesktopException_hierarchy
.endobj __RTTI___unnamed_CDesktop_cpp_CDesktopException

.obj __RTTI___unnamed_CDesktop_cpp_CDesktopBackGround, global
	.4byte _unnamed_CDesktop_cpp_CDesktopBackGround_typestr
	.4byte _unnamed_CDesktop_cpp_CDesktopBackGround_hierarchy
.endobj __RTTI___unnamed_CDesktop_cpp_CDesktopBackGround

.obj __RTTI__CDesktop, global
	.4byte CDesktop_typestr
	.4byte CDesktop_hierarchy
.endobj __RTTI__CDesktop

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066CC10, global
	.asciz "Desktop"
.endobj lbl_8066CC10


.obj float_8066CC18, global
	.float 0.5
.endobj float_8066CC18


.obj float_8066CC1C, global
	.float 1.0
.endobj float_8066CC1C


.obj float_8066CC20, global
	.float 0
	.4byte 0
.endobj float_8066CC20


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

#.balign 8

.obj lbl_80667F7C, global
	.skip 0x4
.endobj lbl_80667F7C

.obj CDesktop_startFunctionStruct, global
	.skip 0x4
.endobj CDesktop_startFunctionStruct

.obj lbl_80667F84, global
	.skip 0x4
.endobj lbl_80667F84

.obj lbl_80667F88, global
	.skip 0x4
.endobj lbl_80667F88

.obj lbl_80667F8C, global
	.skip 0x4
.endobj lbl_80667F8C

.obj lbl_80667F90, global
	.skip 0x8
.endobj lbl_80667F90

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D2E4", local
.hidden "@etb_8001D2E4"
	.4byte 0x080A0000
	.4byte 0x0000005C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__CProc
.endobj "@etb_8001D2E4"

.obj "@etb_8001D300", local
.hidden "@etb_8001D300"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D300"

.obj "@etb_8001D308", local
.hidden "@etb_8001D308"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001D308"

.obj "@etb_8001D310", local
.hidden "@etb_8001D310"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D310"

.obj "@etb_8001D318", local
.hidden "@etb_8001D318"
	.4byte 0x200A0000
	.4byte 0x00000000
.endobj "@etb_8001D318"

.obj "@etb_8001D320", local
.hidden "@etb_8001D320"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D320"

.obj "@etb_8001D328", local
.hidden "@etb_8001D328"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D328"

.obj "@etb_8001D330", local
.hidden "@etb_8001D330"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D330"

.obj "@etb_8001D338", local
.hidden "@etb_8001D338"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D338"

.obj "@etb_8001D340", local
.hidden "@etb_8001D340"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D340"

.obj "@etb_8001D348", local
.hidden "@etb_8001D348"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D348"

.obj "@etb_8001D350", local
.hidden "@etb_8001D350"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D350"

.obj "@etb_8001D358", local
.hidden "@etb_8001D358"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D358"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034F1C", local
.hidden "@eti_80034F1C"
	.4byte __ct__CDesktop
	.4byte 0x00000074
	.4byte "@etb_8001D2E4"
.endobj "@eti_80034F1C"

.obj "@eti_80034F28", local
.hidden "@eti_80034F28"
	.4byte __dt__CDesktop
	.4byte 0x00000058
	.4byte "@etb_8001D300"
.endobj "@eti_80034F28"

.obj "@eti_80034F34", local
.hidden "@eti_80034F34"
	.4byte func_80455AD8
	.4byte 0x00000020
	.4byte "@etb_8001D308"
.endobj "@eti_80034F34"

.obj "@eti_80034F40", local
.hidden "@eti_80034F40"
	.4byte func_80455AF8
	.4byte 0x0000003C
	.4byte "@etb_8001D310"
.endobj "@eti_80034F40"

.obj "@eti_80034F4C", local
.hidden "@eti_80034F4C"
	.4byte func_80455B38
	.4byte 0x000002BC
	.4byte "@etb_8001D318"
.endobj "@eti_80034F4C"

.obj "@eti_80034F58", local
.hidden "@eti_80034F58"
	.4byte func_80455DF4
	.4byte 0x0000006C
	.4byte "@etb_8001D320"
.endobj "@eti_80034F58"

.obj "@eti_80034F64", local
.hidden "@eti_80034F64"
	.4byte func_80455E60
	.4byte 0x000000B0
	.4byte "@etb_8001D328"
.endobj "@eti_80034F64"

.obj "@eti_80034F70", local
.hidden "@eti_80034F70"
	.4byte CDesktop_OnInit
	.4byte 0x0000005C
	.4byte "@etb_8001D330"
.endobj "@eti_80034F70"

.obj "@eti_80034F7C", local
.hidden "@eti_80034F7C"
	.4byte CDesktop_WorkEvent3
	.4byte 0x0000005C
	.4byte "@etb_8001D338"
.endobj "@eti_80034F7C"

.obj "@eti_80034F88", local
.hidden "@eti_80034F88"
	.4byte __dt___unnamed_CDesktop_cpp_CDesktopBackGround
	.4byte 0x00000058
	.4byte "@etb_8001D340"
.endobj "@eti_80034F88"

.obj "@eti_80034F94", local
.hidden "@eti_80034F94"
	.4byte __dt___unnamed_CDesktop_cpp_CDesktopException
	.4byte 0x00000058
	.4byte "@etb_8001D348"
.endobj "@eti_80034F94"

.obj "@eti_80034FA0", local
.hidden "@eti_80034FA0"
	.4byte func_804560AC
	.4byte 0x00000044
	.4byte "@etb_8001D350"
.endobj "@eti_80034FA0"

.obj "@eti_80034FAC", local
.hidden "@eti_80034FAC"
	.4byte func_804560F0
	.4byte 0x00000044
	.4byte "@etb_8001D358"
.endobj "@eti_80034FAC"
