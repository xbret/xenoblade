.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CLibCri, global
/* 80459864 00422E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459868 00422E28  7C 08 02 A6 */	mflr r0
/* 8045986C 00422E2C  38 C0 00 02 */	li r6, 2
/* 80459870 00422E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459874 00422E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459878 00422E38  7C 7F 1B 78 */	mr r31, r3
/* 8045987C 00422E3C  4B FD DD 41 */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 80459880 00422E40  38 7F 01 C4 */	addi r3, r31, 0x1c4
/* 80459884 00422E44  4B FE F6 BD */	bl __ct__CDeviceVICb
/* 80459888 00422E48  3C 80 80 57 */	lis r4, __vt__7CLibCri@ha
/* 8045988C 00422E4C  2C 1F 00 00 */	cmpwi r31, 0
/* 80459890 00422E50  38 84 06 A0 */	addi r4, r4, __vt__7CLibCri@l
/* 80459894 00422E54  90 9F 00 00 */	stw r4, 0(r31)
/* 80459898 00422E58  38 64 00 A0 */	addi r3, r4, 0xa0
/* 8045989C 00422E5C  38 00 00 0F */	li r0, 0xf
/* 804598A0 00422E60  38 84 00 B8 */	addi r4, r4, 0xb8
/* 804598A4 00422E64  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 804598A8 00422E68  7F E3 FB 78 */	mr r3, r31
/* 804598AC 00422E6C  90 9F 01 C8 */	stw r4, 0x1c8(r31)
/* 804598B0 00422E70  93 ED BE 30 */	stw r31, lbl_80667FB0@sda21(r13)
/* 804598B4 00422E74  90 1F 00 50 */	stw r0, 0x50(r31)
/* 804598B8 00422E78  41 82 00 08 */	beq .L_804598C0
/* 804598BC 00422E7C  38 7F 01 C8 */	addi r3, r31, 0x1c8
.L_804598C0:
/* 804598C0 00422E80  48 09 48 D5 */	bl func_804EE194
/* 804598C4 00422E84  7F E3 FB 78 */	mr r3, r31
/* 804598C8 00422E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804598CC 00422E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804598D0 00422E90  7C 08 03 A6 */	mtlr r0
/* 804598D4 00422E94  38 21 00 10 */	addi r1, r1, 0x10
/* 804598D8 00422E98  4E 80 00 20 */	blr
.endfn __ct__CLibCri

.fn __dt__7CLibCriFv, global
/* 804598DC 00422E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804598E0 00422EA0  7C 08 02 A6 */	mflr r0
/* 804598E4 00422EA4  2C 03 00 00 */	cmpwi r3, 0
/* 804598E8 00422EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804598EC 00422EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804598F0 00422EB0  7C 9F 23 78 */	mr r31, r4
/* 804598F4 00422EB4  93 C1 00 08 */	stw r30, 8(r1)
/* 804598F8 00422EB8  7C 7E 1B 78 */	mr r30, r3
/* 804598FC 00422EBC  41 82 00 64 */	beq .L_80459960
/* 80459900 00422EC0  3C A0 80 57 */	lis r5, __vt__7CLibCri@ha
/* 80459904 00422EC4  7F C6 F3 78 */	mr r6, r30
/* 80459908 00422EC8  38 A5 06 A0 */	addi r5, r5, __vt__7CLibCri@l
/* 8045990C 00422ECC  90 A3 00 00 */	stw r5, 0(r3)
/* 80459910 00422ED0  38 85 00 A0 */	addi r4, r5, 0xa0
/* 80459914 00422ED4  38 05 00 B8 */	addi r0, r5, 0xb8
/* 80459918 00422ED8  90 83 01 C4 */	stw r4, 0x1c4(r3)
/* 8045991C 00422EDC  90 03 01 C8 */	stw r0, 0x1c8(r3)
/* 80459920 00422EE0  41 82 00 08 */	beq .L_80459928
/* 80459924 00422EE4  38 C3 01 C8 */	addi r6, r3, 0x1c8
.L_80459928:
/* 80459928 00422EE8  7C C3 33 78 */	mr r3, r6
/* 8045992C 00422EEC  48 09 48 85 */	bl func_804EE1B0
/* 80459930 00422EF0  38 00 00 00 */	li r0, 0
/* 80459934 00422EF4  90 0D BE 30 */	stw r0, lbl_80667FB0@sda21(r13)
/* 80459938 00422EF8  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 8045993C 00422EFC  38 80 00 00 */	li r4, 0
/* 80459940 00422F00  4B FE F6 3D */	bl __dt__11CDeviceVICbFv
/* 80459944 00422F04  7F C3 F3 78 */	mr r3, r30
/* 80459948 00422F08  38 80 00 00 */	li r4, 0
/* 8045994C 00422F0C  4B FD E1 7D */	bl __dt__11CWorkThreadFv
/* 80459950 00422F10  2C 1F 00 00 */	cmpwi r31, 0
/* 80459954 00422F14  40 81 00 0C */	ble .L_80459960
/* 80459958 00422F18  7F C3 F3 78 */	mr r3, r30
/* 8045995C 00422F1C  4B FD B2 D1 */	bl __dl__FPv
.L_80459960:
/* 80459960 00422F20  7F C3 F3 78 */	mr r3, r30
/* 80459964 00422F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459968 00422F28  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045996C 00422F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459970 00422F30  7C 08 03 A6 */	mtlr r0
/* 80459974 00422F34  38 21 00 10 */	addi r1, r1, 0x10
/* 80459978 00422F38  4E 80 00 20 */	blr 
.endfn __dt__7CLibCriFv

.fn func_8045997C, global
/* 8045997C 00422F3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80459980 00422F40  7C 08 02 A6 */	mflr r0
/* 80459984 00422F44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80459988 00422F48  3C 04 00 01 */	addis r0, r4, 1
/* 8045998C 00422F4C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80459990 00422F50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80459994 00422F54  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80459998 00422F58  7C BE 2B 78 */	mr r30, r5
/* 8045999C 00422F5C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 804599A0 00422F60  7C 9D 23 78 */	mr r29, r4
/* 804599A4 00422F64  93 81 00 20 */	stw r28, 0x20(r1)
/* 804599A8 00422F68  7C 7C 1B 78 */	mr r28, r3
/* 804599AC 00422F6C  40 82 00 0C */	bne .L_804599B8
/* 804599B0 00422F70  4B FD A9 F1 */	bl Heap_getRegionIndex2
/* 804599B4 00422F74  7C 7D 1B 78 */	mr r29, r3
.L_804599B8:
/* 804599B8 00422F78  7F 83 E3 78 */	mr r3, r28
/* 804599BC 00422F7C  4B FD B6 55 */	bl getFileExtensionFromPath__2mlFPCc
/* 804599C0 00422F80  2C 03 00 00 */	cmpwi r3, 0
/* 804599C4 00422F84  7C 7F 1B 78 */	mr r31, r3
/* 804599C8 00422F88  40 82 00 0C */	bne .L_804599D4
/* 804599CC 00422F8C  38 60 FF FF */	li r3, -1
/* 804599D0 00422F90  48 00 00 88 */	b .L_80459A58
.L_804599D4:
/* 804599D4 00422F94  48 08 46 3D */	bl func_804DE010
/* 804599D8 00422F98  2C 03 00 00 */	cmpwi r3, 0
/* 804599DC 00422F9C  41 82 00 60 */	beq .L_80459A3C
/* 804599E0 00422FA0  7F E3 FB 78 */	mr r3, r31
/* 804599E4 00422FA4  7F 84 E3 78 */	mr r4, r28
/* 804599E8 00422FA8  38 A1 00 14 */	addi r5, r1, 0x14
/* 804599EC 00422FAC  38 C1 00 10 */	addi r6, r1, 0x10
/* 804599F0 00422FB0  38 E1 00 0C */	addi r7, r1, 0xc
/* 804599F4 00422FB4  39 01 00 08 */	addi r8, r1, 8
/* 804599F8 00422FB8  48 08 43 5D */	bl func_804DDD54
/* 804599FC 00422FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80459A00 00422FC0  41 82 00 3C */	beq .L_80459A3C
/* 80459A04 00422FC4  3C 80 80 52 */	lis r4, lbl_805268F8@ha
/* 80459A08 00422FC8  7F 83 E3 78 */	mr r3, r28
/* 80459A0C 00422FCC  38 84 68 F8 */	addi r4, r4, lbl_805268F8@l
/* 80459A10 00422FD0  4B E6 8F B1 */	bl strstr
/* 80459A14 00422FD4  7C 03 00 D0 */	neg r0, r3
/* 80459A18 00422FD8  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 80459A1C 00422FDC  7C 00 1B 78 */	or r0, r0, r3
/* 80459A20 00422FE0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80459A24 00422FE4  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 80459A28 00422FE8  7F A4 EB 78 */	mr r4, r29
/* 80459A2C 00422FEC  7F C5 F3 78 */	mr r5, r30
/* 80459A30 00422FF0  54 08 0F FE */	srwi r8, r0, 0x1f
/* 80459A34 00422FF4  48 00 1B 79 */	bl func_8045B5AC
/* 80459A38 00422FF8  48 00 00 20 */	b .L_80459A58
.L_80459A3C:
/* 80459A3C 00422FFC  7F 83 E3 78 */	mr r3, r28
/* 80459A40 00423000  7F A4 EB 78 */	mr r4, r29
/* 80459A44 00423004  7F C5 F3 78 */	mr r5, r30
/* 80459A48 00423008  38 C0 FF FF */	li r6, -1
/* 80459A4C 0042300C  38 E0 FF FF */	li r7, -1
/* 80459A50 00423010  39 00 00 00 */	li r8, 0
/* 80459A54 00423014  48 00 1B 59 */	bl func_8045B5AC
.L_80459A58:
/* 80459A58 00423018  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80459A5C 0042301C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80459A60 00423020  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80459A64 00423024  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80459A68 00423028  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80459A6C 0042302C  7C 08 03 A6 */	mtlr r0
/* 80459A70 00423030  38 21 00 30 */	addi r1, r1, 0x30
/* 80459A74 00423034  4E 80 00 20 */	blr 
.endfn func_8045997C

.fn func_80459A78, global
/* 80459A78 00423038  48 00 1E F8 */	b func_8045B970
.endfn func_80459A78

.fn func_80459A7C, global
/* 80459A7C 0042303C  48 00 20 34 */	b func_8045BAB0
.endfn func_80459A7C

.fn func_80459A80, global
/* 80459A80 00423040  48 00 21 20 */	b func_8045BBA0
.endfn func_80459A80

.fn func_80459A84, global
/* 80459A84 00423044  48 00 21 C8 */	b func_8045BC4C
.endfn func_80459A84

.fn func_80459A88, global
/* 80459A88 00423048  48 00 2F C4 */	b func_8045CA4C
.endfn func_80459A88

.fn func_80459A8C, global
/* 80459A8C 0042304C  48 00 2B F0 */	b func_8045C67C
.endfn func_80459A8C

.fn func_80459A90, global
/* 80459A90 00423050  48 00 2C 70 */	b func_8045C700
.endfn func_80459A90

.fn func_80459A94, global
/* 80459A94 00423054  48 00 2E 1C */	b func_8045C8B0
.endfn func_80459A94

.fn func_80459A98, global
/* 80459A98 00423058  48 00 23 B0 */	b func_8045BE48
.endfn func_80459A98

.fn func_80459A9C, global
/* 80459A9C 0042305C  48 00 32 60 */	b func_8045CCFC
.endfn func_80459A9C

.fn func_80459AA0, global
/* 80459AA0 00423060  48 00 35 3C */	b func_8045CFDC
.endfn func_80459AA0

.fn func_80459AA4, global
/* 80459AA4 00423064  48 00 35 98 */	b func_8045D03C
.endfn func_80459AA4

.fn func_80459AA8, global
/* 80459AA8 00423068  48 00 07 B8 */	b func_8045A260
.endfn func_80459AA8

.fn func_80459AAC, global
/* 80459AAC 0042306C  48 00 09 E0 */	b func_8045A48C
.endfn func_80459AAC

.fn func_80459AB0, global
/* 80459AB0 00423070  7C 60 1B 78 */	mr r0, r3
/* 80459AB4 00423074  7C 83 23 78 */	mr r3, r4
/* 80459AB8 00423078  7C 04 03 78 */	mr r4, r0
/* 80459ABC 0042307C  48 00 18 54 */	b func_8045B310
.endfn func_80459AB0

.fn func_80459AC0, global
/* 80459AC0 00423080  48 00 0C 48 */	b func_8045A708
.endfn func_80459AC0

.fn func_80459AC4, global
/* 80459AC4 00423084  48 00 0D 34 */	b func_8045A7F8
.endfn func_80459AC4

.fn func_80459AC8, global
/* 80459AC8 00423088  48 00 0B 7C */	b func_8045A644
.endfn func_80459AC8

.fn func_80459ACC, global
/* 80459ACC 0042308C  48 00 0D FC */	b func_8045A8C8
.endfn func_80459ACC

.fn func_80459AD0, global
/* 80459AD0 00423090  48 00 17 10 */	b func_8045B1E0
.endfn func_80459AD0

.fn wkUpdate__7CLibCriFv, global
/* 80459AD4 00423094  4E 80 00 20 */	blr
.endfn wkUpdate__7CLibCriFv

.fn func_80459AD8__7CLibCriFv, global
/* 80459AD8 00423098  4B F4 0F 44 */	b ADXM_ExecMain
.endfn func_80459AD8__7CLibCriFv

.fn func_80459ADC, global
/* 80459ADC 0042309C  80 6D BE 30 */	lwz r3, lbl_80667FB0@sda21(r13)
/* 80459AE0 004230A0  4E 80 00 20 */	blr 
.endfn func_80459ADC

.fn WorkThreadEvent4__7CLibCriFv, global
/* 80459AE4 004230A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459AE8 004230A8  7C 08 02 A6 */	mflr r0
/* 80459AEC 004230AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459AF0 004230B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459AF4 004230B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80459AF8 004230B8  7C 7E 1B 78 */	mr r30, r3
/* 80459AFC 004230BC  4B FF 37 4D */	bl func_8044D248
/* 80459B00 004230C0  2C 03 00 00 */	cmpwi r3, 0
/* 80459B04 004230C4  41 82 00 D0 */	beq .L_80459BD4
/* 80459B08 004230C8  3C 60 80 46 */	lis r3, func_80459C70@ha
/* 80459B0C 004230CC  7F C4 F3 78 */	mr r4, r30
/* 80459B10 004230D0  38 63 9C 70 */	addi r3, r3, func_80459C70@l
/* 80459B14 004230D4  4B F4 12 E5 */	bl criware_8039ADF8
/* 80459B18 004230D8  38 60 00 00 */	li r3, 0
/* 80459B1C 004230DC  4B F4 17 7D */	bl ADXWII_SetupDvdFs
/* 80459B20 004230E0  38 60 00 02 */	li r3, 2
/* 80459B24 004230E4  38 80 00 00 */	li r4, 0
/* 80459B28 004230E8  4B F4 16 61 */	bl ADXM_SetupFramework
/* 80459B2C 004230EC  38 60 00 00 */	li r3, 0
/* 80459B30 004230F0  4B E7 76 D1 */	bl AIInit
/* 80459B34 004230F4  4B E7 85 1D */	bl AXInit
/* 80459B38 004230F8  4B EF 01 B9 */	bl MIXInit
/* 80459B3C 004230FC  3C 60 80 46 */	lis r3, func_80459830@ha
/* 80459B40 00423100  38 63 98 30 */	addi r3, r3, func_80459830@l
/* 80459B44 00423104  4B E7 A6 2D */	bl AXRegisterCallback
/* 80459B48 00423108  90 6D BE 34 */	stw r3, lbl_80667FB4@sda21(r13)
/* 80459B4C 0042310C  4B F2 5B A5 */	bl ADXT_Init
/* 80459B50 00423110  3C 60 80 52 */	lis r3, lbl_805268F8@ha
/* 80459B54 00423114  38 63 68 F8 */	addi r3, r3, lbl_805268F8@l
/* 80459B58 00423118  3B E3 00 05 */	addi r31, r3, 5
/* 80459B5C 0042311C  4B FD DA 59 */	bl getHeapIndex__3mtlFv
/* 80459B60 00423120  7C 64 1B 78 */	mr r4, r3
/* 80459B64 00423124  38 60 06 28 */	li r3, 0x628
/* 80459B68 00423128  4B FD AE F5 */	bl heap_malloc__3mtlFUli
/* 80459B6C 0042312C  2C 03 00 00 */	cmpwi r3, 0
/* 80459B70 00423130  41 82 00 10 */	beq .L_80459B80
/* 80459B74 00423134  7F E4 FB 78 */	mr r4, r31
/* 80459B78 00423138  7F C5 F3 78 */	mr r5, r30
/* 80459B7C 0042313C  48 00 01 1D */	bl __ct__CLibCriMoviePlay
.L_80459B80:
/* 80459B80 00423140  7F C4 F3 78 */	mr r4, r30
/* 80459B84 00423144  38 A0 00 00 */	li r5, 0
/* 80459B88 00423148  4B FD F0 51 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80459B8C 0042314C  3C 60 80 52 */	lis r3, lbl_805268F8@ha
/* 80459B90 00423150  38 63 68 F8 */	addi r3, r3, lbl_805268F8@l
/* 80459B94 00423154  3B E3 00 16 */	addi r31, r3, 0x16
/* 80459B98 00423158  4B FD DA 1D */	bl getHeapIndex__3mtlFv
/* 80459B9C 0042315C  7C 64 1B 78 */	mr r4, r3
/* 80459BA0 00423160  38 60 04 B8 */	li r3, 0x4b8
/* 80459BA4 00423164  4B FD AE B9 */	bl heap_malloc__3mtlFUli
/* 80459BA8 00423168  2C 03 00 00 */	cmpwi r3, 0
/* 80459BAC 0042316C  41 82 00 10 */	beq .L_80459BBC
/* 80459BB0 00423170  7F E4 FB 78 */	mr r4, r31
/* 80459BB4 00423174  7F C5 F3 78 */	mr r5, r30
/* 80459BB8 00423178  48 00 18 35 */	bl __ct__CLibCriStreamingPlay
.L_80459BBC:
/* 80459BBC 0042317C  7F C4 F3 78 */	mr r4, r30
/* 80459BC0 00423180  38 A0 00 00 */	li r5, 0
/* 80459BC4 00423184  4B FD F0 15 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80459BC8 00423188  7F C3 F3 78 */	mr r3, r30
/* 80459BCC 0042318C  4B FD EE 2D */	bl WorkThreadEvent4__11CWorkThreadFv
/* 80459BD0 00423190  48 00 00 08 */	b .L_80459BD8
.L_80459BD4:
/* 80459BD4 00423194  38 60 00 00 */	li r3, 0
.L_80459BD8:
/* 80459BD8 00423198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459BDC 0042319C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459BE0 004231A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80459BE4 004231A4  7C 08 03 A6 */	mtlr r0
/* 80459BE8 004231A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80459BEC 004231AC  4E 80 00 20 */	blr 
.endfn WorkThreadEvent4__7CLibCriFv

.fn WorkThreadEvent5__7CLibCriFv, global
/* 80459BF0 004231B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459BF4 004231B4  7C 08 02 A6 */	mflr r0
/* 80459BF8 004231B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459BFC 004231BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459C00 004231C0  7C 7F 1B 78 */	mr r31, r3
/* 80459C04 004231C4  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80459C08 004231C8  80 04 00 00 */	lwz r0, 0(r4)
/* 80459C0C 004231CC  7C 00 20 40 */	cmplw r0, r4
/* 80459C10 004231D0  40 82 00 48 */	bne .L_80459C58
/* 80459C14 004231D4  4B FE A8 C1 */	bl func_804444D4
/* 80459C18 004231D8  2C 03 00 00 */	cmpwi r3, 0
/* 80459C1C 004231DC  40 82 00 3C */	bne .L_80459C58
/* 80459C20 004231E0  4B FF F7 D1 */	bl func_804593F0
/* 80459C24 004231E4  2C 03 00 00 */	cmpwi r3, 0
/* 80459C28 004231E8  40 82 00 30 */	bne .L_80459C58
/* 80459C2C 004231EC  4B F2 5B F5 */	bl ADXT_Finish
/* 80459C30 004231F0  4B F4 15 F9 */	bl ADXM_ShutdownFramework
/* 80459C34 004231F4  80 6D BE 34 */	lwz r3, lbl_80667FB4@sda21(r13)
/* 80459C38 004231F8  2C 03 00 00 */	cmpwi r3, 0
/* 80459C3C 004231FC  41 82 00 08 */	beq .L_80459C44
/* 80459C40 00423200  4B E7 A5 31 */	bl AXRegisterCallback
.L_80459C44:
/* 80459C44 00423204  4B EF 01 CD */	bl MIXQuit
/* 80459C48 00423208  4B E7 84 69 */	bl AXQuit
/* 80459C4C 0042320C  7F E3 FB 78 */	mr r3, r31
/* 80459C50 00423210  4B FD ED D5 */	bl WorkThreadEvent5__11CWorkThreadFv
/* 80459C54 00423214  48 00 00 08 */	b .L_80459C5C
.L_80459C58:
/* 80459C58 00423218  38 60 00 00 */	li r3, 0
.L_80459C5C:
/* 80459C5C 0042321C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459C60 00423220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459C64 00423224  7C 08 03 A6 */	mtlr r0
/* 80459C68 00423228  38 21 00 10 */	addi r1, r1, 0x10
/* 80459C6C 0042322C  4E 80 00 20 */	blr
.endfn WorkThreadEvent5__7CLibCriFv

.fn func_80459C70, global
/* 80459C70 00423230  4E 80 00 20 */	blr
.endfn func_80459C70

.fn func_80459C74__7CLibCriFv, global
/* 80459C74 00423234  48 00 1F 2C */	b func_8045BBA0
.endfn func_80459C74__7CLibCriFv

.fn func_80459C78__7CLibCriFv, global
/* 80459C78 00423238  38 63 FE 3C */	addi r3, r3, -452
/* 80459C7C 0042323C  4B FF FE 5C */	b func_80459AD8__7CLibCriFv
.endfn func_80459C78__7CLibCriFv

.fn func_80459C80__7CLibCriFv, global
/* 80459C80 00423240  38 63 FE 3C */	addi r3, r3, -452
/* 80459C84 00423244  4B FF FC 58 */	b __dt__7CLibCriFv
.endfn func_80459C80__7CLibCriFv

.fn func_80459C88__7CLibCriFv, global
/* 80459C88 00423248  38 63 FE 38 */	addi r3, r3, -456
/* 80459C8C 0042324C  4B FF FF E8 */	b func_80459C74__7CLibCriFv
.endfn func_80459C88__7CLibCriFv

.fn func_80459C90__7CLibCriFv, global
/* 80459C90 00423250  38 63 FE 38 */	addi r3, r3, -456
/* 80459C94 00423254  4B FF FC 48 */	b __dt__7CLibCriFv
.endfn func_80459C90__7CLibCriFv


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_805268F8, global
	.asciz ".ahx"
	.asciz "CLibCriMoviePlay"
	.asciz "CLibCriStreamingPlay"
	.balign 4
	.4byte 0
.endobj lbl_805268F8
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__7CLibCri, global
	.4byte __RTTI__7CLibCri
	.4byte 0
	.4byte __dt__7CLibCriFv
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
	.4byte wkUpdate__7CLibCriFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte WorkThreadEvent4__7CLibCriFv
	.4byte WorkThreadEvent5__7CLibCriFv
	.4byte WorkThreadEvent6__11CWorkThreadFv
	.4byte __RTTI__7CLibCri
	.4byte 0xFFFFFE3C
	.4byte func_80459C80__7CLibCriFv
	.4byte func_80459C78__7CLibCriFv
	.4byte func_8016662C__11CDeviceVICbFv
	.4byte func_80448A40__11CDeviceVICbFv
	.4byte __RTTI__7CLibCri
	.4byte 0xFFFFFE38
	.4byte func_80459C90__7CLibCriFv
	.4byte func_80459C88__7CLibCriFv
	.4byte func_80459AD8__7CLibCriFv
	.4byte func_80459C74__7CLibCriFv
.endobj __vt__7CLibCri

.obj CLibCri_hierarchy, global
	.4byte __RTTI__11CDeviceVICb
	.4byte 0x000001C4
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CLibCri_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__7CLibCri, global
	.4byte CLibCri_typestr
	.4byte CLibCri_hierarchy
.endobj __RTTI__7CLibCri


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj CLibCri_typestr, global
	.asciz "CLibCri"
.endobj CLibCri_typestr

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667FB0, global
	.skip 0x4
.endobj lbl_80667FB0

.obj lbl_80667FB4, global
	.skip 0x4
.endobj lbl_80667FB4

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D4A8", local
.hidden "@etb_8001D4A8"
	.4byte 0x08080000
	.4byte 0x00000024
	.4byte 0x00000030
	.4byte 0x00000060
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0680001F
	.4byte 0x000001C8
	.4byte __dt__80447FDC
	.4byte 0x0680001F
	.4byte 0x000001C4
	.4byte __dt__11CDeviceVICbFv
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__11CWorkThreadFv
.endobj "@etb_8001D4A8"

.obj "@etb_8001D4E4", local
.hidden "@etb_8001D4E4"
	.4byte 0x10080000
	.4byte 0x00000054
	.4byte 0x00000020
	.4byte 0x00000068
	.4byte 0x00000044
	.4byte 0x00000074
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x000001C8
	.4byte __dt__80447FDC
	.4byte 0x0680001E
	.4byte 0x000001C4
	.4byte __dt__11CDeviceVICbFv
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__11CWorkThreadFv
	.4byte 0x8680001E
	.4byte 0x000001C8
	.4byte __dt__80447FDC
	.4byte 0x0680001E
	.4byte 0x000001C8
	.4byte __dt__80447FDC
	.4byte 0x8680001E
	.4byte 0x000001C4
	.4byte __dt__11CDeviceVICbFv
.endobj "@etb_8001D4E4"

.obj "@etb_8001D54C", local
.hidden "@etb_8001D54C"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001D54C"

.obj "@etb_8001D554", local
.hidden "@etb_8001D554"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D554"

.obj "@etb_8001D55C", local
.hidden "@etb_8001D55C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D55C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80035114", local
.hidden "@eti_80035114"
	.4byte __ct__CLibCri
	.4byte 0x00000078
	.4byte "@etb_8001D4A8"
.endobj "@eti_80035114"

.obj "@eti_80035120", local
.hidden "@eti_80035120"
	.4byte __dt__7CLibCriFv
	.4byte 0x000000A0
	.4byte "@etb_8001D4E4"
.endobj "@eti_80035120"

.obj "@eti_8003512C", local
.hidden "@eti_8003512C"
	.4byte func_8045997C
	.4byte 0x000000FC
	.4byte "@etb_8001D54C"
.endobj "@eti_8003512C"

.obj "@eti_80035138", local
.hidden "@eti_80035138"
	.4byte WorkThreadEvent4__7CLibCriFv
	.4byte 0x0000010C
	.4byte "@etb_8001D554"
.endobj "@eti_80035138"

.obj "@eti_80035144", local
.hidden "@eti_80035144"
	.4byte WorkThreadEvent5__7CLibCriFv
	.4byte 0x00000080
	.4byte "@etb_8001D55C"
.endobj "@eti_80035144"
