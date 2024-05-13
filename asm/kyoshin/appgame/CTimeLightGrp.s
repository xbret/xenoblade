.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CTimeLightGrp, global
/* 80059EB8 00023478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80059EBC 0002347C  7C 08 02 A6 */	mflr r0
/* 80059EC0 00023480  3C A0 80 53 */	lis r5, __vt__13CTimeLightGrp@ha
/* 80059EC4 00023484  3C E0 80 53 */	lis r7, "__vt__34_reslist_base<P16CVirtualLightObj>"@ha
/* 80059EC8 00023488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80059ECC 0002348C  38 A5 9C 48 */	addi r5, r5, __vt__13CTimeLightGrp@l
/* 80059ED0 00023490  38 E7 9C 78 */	addi r7, r7, "__vt__34_reslist_base<P16CVirtualLightObj>"@l
/* 80059ED4 00023494  38 C3 00 10 */	addi r6, r3, 0x10
/* 80059ED8 00023498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80059EDC 0002349C  3B E0 00 00 */	li r31, 0
/* 80059EE0 000234A0  C0 02 85 48 */	lfs f0, float_806688C8@sda21(r2)
/* 80059EE4 000234A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80059EE8 000234A8  7C 7E 1B 78 */	mr r30, r3
/* 80059EEC 000234AC  90 A3 00 00 */	stw r5, 0(r3)
/* 80059EF0 000234B0  3C A0 80 53 */	lis r5, "__vt__28reslist<P16CVirtualLightObj>"@ha
/* 80059EF4 000234B4  38 A5 9C 60 */	addi r5, r5, "__vt__28reslist<P16CVirtualLightObj>"@l
/* 80059EF8 000234B8  90 83 00 04 */	stw r4, 4(r3)
/* 80059EFC 000234BC  90 E3 00 08 */	stw r7, 8(r3)
/* 80059F00 000234C0  93 E3 00 1C */	stw r31, 0x1c(r3)
/* 80059F04 000234C4  93 E3 00 20 */	stw r31, 0x20(r3)
/* 80059F08 000234C8  9B E3 00 24 */	stb r31, 0x24(r3)
/* 80059F0C 000234CC  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80059F10 000234D0  90 C6 00 00 */	stw r6, 0(r6)
/* 80059F14 000234D4  90 C6 00 04 */	stw r6, 4(r6)
/* 80059F18 000234D8  90 A3 00 08 */	stw r5, 8(r3)
/* 80059F1C 000234DC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80059F20 000234E0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80059F24 000234E4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80059F28 000234E8  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80059F2C 000234EC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80059F30 000234F0  7C 83 23 78 */	mr r3, r4
/* 80059F34 000234F4  48 43 C0 D1 */	bl func_80496004
/* 80059F38 000234F8  7C 64 1B 78 */	mr r4, r3
/* 80059F3C 000234FC  38 60 01 80 */	li r3, 0x180
/* 80059F40 00023500  48 3D AB 41 */	bl heap_malloc_1
/* 80059F44 00023504  38 00 00 02 */	li r0, 2
/* 80059F48 00023508  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80059F4C 0002350C  38 80 00 00 */	li r4, 0
/* 80059F50 00023510  7C 09 03 A6 */	mtctr r0
.L_80059F54:
/* 80059F54 00023514  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80059F58 00023518  7F E3 21 2E */	stwx r31, r3, r4
/* 80059F5C 0002351C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059F60 00023520  7C 60 22 14 */	add r3, r0, r4
/* 80059F64 00023524  93 E3 00 0C */	stw r31, 0xc(r3)
/* 80059F68 00023528  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059F6C 0002352C  7C 60 22 14 */	add r3, r0, r4
/* 80059F70 00023530  93 E3 00 18 */	stw r31, 0x18(r3)
/* 80059F74 00023534  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059F78 00023538  7C 60 22 14 */	add r3, r0, r4
/* 80059F7C 0002353C  93 E3 00 24 */	stw r31, 0x24(r3)
/* 80059F80 00023540  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059F84 00023544  7C 60 22 14 */	add r3, r0, r4
/* 80059F88 00023548  93 E3 00 30 */	stw r31, 0x30(r3)
/* 80059F8C 0002354C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059F90 00023550  7C 60 22 14 */	add r3, r0, r4
/* 80059F94 00023554  93 E3 00 3C */	stw r31, 0x3c(r3)
/* 80059F98 00023558  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059F9C 0002355C  7C 60 22 14 */	add r3, r0, r4
/* 80059FA0 00023560  93 E3 00 48 */	stw r31, 0x48(r3)
/* 80059FA4 00023564  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059FA8 00023568  7C 60 22 14 */	add r3, r0, r4
/* 80059FAC 0002356C  38 84 00 60 */	addi r4, r4, 0x60
/* 80059FB0 00023570  93 E3 00 54 */	stw r31, 0x54(r3)
/* 80059FB4 00023574  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80059FB8 00023578  7F E3 21 2E */	stwx r31, r3, r4
/* 80059FBC 0002357C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059FC0 00023580  7C 60 22 14 */	add r3, r0, r4
/* 80059FC4 00023584  93 E3 00 0C */	stw r31, 0xc(r3)
/* 80059FC8 00023588  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059FCC 0002358C  7C 60 22 14 */	add r3, r0, r4
/* 80059FD0 00023590  93 E3 00 18 */	stw r31, 0x18(r3)
/* 80059FD4 00023594  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059FD8 00023598  7C 60 22 14 */	add r3, r0, r4
/* 80059FDC 0002359C  93 E3 00 24 */	stw r31, 0x24(r3)
/* 80059FE0 000235A0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059FE4 000235A4  7C 60 22 14 */	add r3, r0, r4
/* 80059FE8 000235A8  93 E3 00 30 */	stw r31, 0x30(r3)
/* 80059FEC 000235AC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059FF0 000235B0  7C 60 22 14 */	add r3, r0, r4
/* 80059FF4 000235B4  93 E3 00 3C */	stw r31, 0x3c(r3)
/* 80059FF8 000235B8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80059FFC 000235BC  7C 60 22 14 */	add r3, r0, r4
/* 8005A000 000235C0  93 E3 00 48 */	stw r31, 0x48(r3)
/* 8005A004 000235C4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8005A008 000235C8  7C 60 22 14 */	add r3, r0, r4
/* 8005A00C 000235CC  38 84 00 60 */	addi r4, r4, 0x60
/* 8005A010 000235D0  93 E3 00 54 */	stw r31, 0x54(r3)
/* 8005A014 000235D4  42 00 FF 40 */	bdnz .L_80059F54
/* 8005A018 000235D8  38 00 00 20 */	li r0, 0x20
/* 8005A01C 000235DC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8005A020 000235E0  7F C3 F3 78 */	mr r3, r30
/* 8005A024 000235E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A028 000235E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005A02C 000235EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A030 000235F0  7C 08 03 A6 */	mtlr r0
/* 8005A034 000235F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A038 000235F8  4E 80 00 20 */	blr 
.endfn __ct__CTimeLightGrp

.fn __dt__8005A03C, global
/* 8005A03C 000235FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A040 00023600  7C 08 02 A6 */	mflr r0
/* 8005A044 00023604  2C 03 00 00 */	cmpwi r3, 0
/* 8005A048 00023608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A04C 0002360C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005A050 00023610  7C 7F 1B 78 */	mr r31, r3
/* 8005A054 00023614  41 82 00 10 */	beq .L_8005A064
/* 8005A058 00023618  2C 04 00 00 */	cmpwi r4, 0
/* 8005A05C 0002361C  40 81 00 08 */	ble .L_8005A064
/* 8005A060 00023620  48 3D AB CD */	bl __dl__FPv
.L_8005A064:
/* 8005A064 00023624  7F E3 FB 78 */	mr r3, r31
/* 8005A068 00023628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A06C 0002362C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A070 00023630  7C 08 03 A6 */	mtlr r0
/* 8005A074 00023634  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A078 00023638  4E 80 00 20 */	blr 
.endfn __dt__8005A03C

.fn __dt___reslist_base_CVirtualLightObj, global
/* 8005A07C 0002363C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A080 00023640  7C 08 02 A6 */	mflr r0
/* 8005A084 00023644  2C 03 00 00 */	cmpwi r3, 0
/* 8005A088 00023648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A08C 0002364C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005A090 00023650  7C 9F 23 78 */	mr r31, r4
/* 8005A094 00023654  93 C1 00 08 */	stw r30, 8(r1)
/* 8005A098 00023658  7C 7E 1B 78 */	mr r30, r3
/* 8005A09C 0002365C  41 82 00 78 */	beq .L_8005A114
/* 8005A0A0 00023660  3C A0 80 53 */	lis r5, "__vt__34_reslist_base<P16CVirtualLightObj>"@ha
/* 8005A0A4 00023664  80 83 00 04 */	lwz r4, 4(r3)
/* 8005A0A8 00023668  38 A5 9C 78 */	addi r5, r5, "__vt__34_reslist_base<P16CVirtualLightObj>"@l
/* 8005A0AC 0002366C  90 A3 00 00 */	stw r5, 0(r3)
/* 8005A0B0 00023670  38 00 00 00 */	li r0, 0
/* 8005A0B4 00023674  80 A4 00 00 */	lwz r5, 0(r4)
/* 8005A0B8 00023678  48 00 00 10 */	b .L_8005A0C8
.L_8005A0BC:
/* 8005A0BC 0002367C  7C A4 2B 78 */	mr r4, r5
/* 8005A0C0 00023680  80 A5 00 00 */	lwz r5, 0(r5)
/* 8005A0C4 00023684  90 04 00 00 */	stw r0, 0(r4)
.L_8005A0C8:
/* 8005A0C8 00023688  80 83 00 04 */	lwz r4, 4(r3)
/* 8005A0CC 0002368C  7C 05 20 40 */	cmplw r5, r4
/* 8005A0D0 00023690  40 82 FF EC */	bne .L_8005A0BC
/* 8005A0D4 00023694  90 84 00 00 */	stw r4, 0(r4)
/* 8005A0D8 00023698  80 83 00 04 */	lwz r4, 4(r3)
/* 8005A0DC 0002369C  90 84 00 04 */	stw r4, 4(r4)
/* 8005A0E0 000236A0  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8005A0E4 000236A4  2C 00 00 00 */	cmpwi r0, 0
/* 8005A0E8 000236A8  40 82 00 1C */	bne .L_8005A104
/* 8005A0EC 000236AC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8005A0F0 000236B0  2C 03 00 00 */	cmpwi r3, 0
/* 8005A0F4 000236B4  41 82 00 10 */	beq .L_8005A104
/* 8005A0F8 000236B8  48 3D AC E9 */	bl __dla__FPv
/* 8005A0FC 000236BC  38 00 00 00 */	li r0, 0
/* 8005A100 000236C0  90 1E 00 14 */	stw r0, 0x14(r30)
.L_8005A104:
/* 8005A104 000236C4  2C 1F 00 00 */	cmpwi r31, 0
/* 8005A108 000236C8  40 81 00 0C */	ble .L_8005A114
/* 8005A10C 000236CC  7F C3 F3 78 */	mr r3, r30
/* 8005A110 000236D0  48 3D AB 1D */	bl __dl__FPv
.L_8005A114:
/* 8005A114 000236D4  7F C3 F3 78 */	mr r3, r30
/* 8005A118 000236D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A11C 000236DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005A120 000236E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A124 000236E4  7C 08 03 A6 */	mtlr r0
/* 8005A128 000236E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A12C 000236EC  4E 80 00 20 */	blr 
.endfn __dt___reslist_base_CVirtualLightObj

.fn __dt__reslist_CVirtualLightObj, global
/* 8005A130 000236F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A134 000236F4  7C 08 02 A6 */	mflr r0
/* 8005A138 000236F8  2C 03 00 00 */	cmpwi r3, 0
/* 8005A13C 000236FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A140 00023700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005A144 00023704  7C 9F 23 78 */	mr r31, r4
/* 8005A148 00023708  93 C1 00 08 */	stw r30, 8(r1)
/* 8005A14C 0002370C  7C 7E 1B 78 */	mr r30, r3
/* 8005A150 00023710  41 82 00 7C */	beq .L_8005A1CC
/* 8005A154 00023714  41 82 00 68 */	beq .L_8005A1BC
/* 8005A158 00023718  3C A0 80 53 */	lis r5, "__vt__34_reslist_base<P16CVirtualLightObj>"@ha
/* 8005A15C 0002371C  80 83 00 04 */	lwz r4, 4(r3)
/* 8005A160 00023720  38 A5 9C 78 */	addi r5, r5, "__vt__34_reslist_base<P16CVirtualLightObj>"@l
/* 8005A164 00023724  90 A3 00 00 */	stw r5, 0(r3)
/* 8005A168 00023728  38 00 00 00 */	li r0, 0
/* 8005A16C 0002372C  80 84 00 00 */	lwz r4, 0(r4)
/* 8005A170 00023730  48 00 00 10 */	b .L_8005A180
.L_8005A174:
/* 8005A174 00023734  7C 85 23 78 */	mr r5, r4
/* 8005A178 00023738  80 84 00 00 */	lwz r4, 0(r4)
/* 8005A17C 0002373C  90 05 00 00 */	stw r0, 0(r5)
.L_8005A180:
/* 8005A180 00023740  80 A3 00 04 */	lwz r5, 4(r3)
/* 8005A184 00023744  7C 04 28 40 */	cmplw r4, r5
/* 8005A188 00023748  40 82 FF EC */	bne .L_8005A174
/* 8005A18C 0002374C  90 A5 00 00 */	stw r5, 0(r5)
/* 8005A190 00023750  80 83 00 04 */	lwz r4, 4(r3)
/* 8005A194 00023754  90 84 00 04 */	stw r4, 4(r4)
/* 8005A198 00023758  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8005A19C 0002375C  2C 00 00 00 */	cmpwi r0, 0
/* 8005A1A0 00023760  40 82 00 1C */	bne .L_8005A1BC
/* 8005A1A4 00023764  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8005A1A8 00023768  2C 03 00 00 */	cmpwi r3, 0
/* 8005A1AC 0002376C  41 82 00 10 */	beq .L_8005A1BC
/* 8005A1B0 00023770  48 3D AC 31 */	bl __dla__FPv
/* 8005A1B4 00023774  38 00 00 00 */	li r0, 0
/* 8005A1B8 00023778  90 1E 00 14 */	stw r0, 0x14(r30)
.L_8005A1BC:
/* 8005A1BC 0002377C  2C 1F 00 00 */	cmpwi r31, 0
/* 8005A1C0 00023780  40 81 00 0C */	ble .L_8005A1CC
/* 8005A1C4 00023784  7F C3 F3 78 */	mr r3, r30
/* 8005A1C8 00023788  48 3D AA 65 */	bl __dl__FPv
.L_8005A1CC:
/* 8005A1CC 0002378C  7F C3 F3 78 */	mr r3, r30
/* 8005A1D0 00023790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A1D4 00023794  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005A1D8 00023798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A1DC 0002379C  7C 08 03 A6 */	mtlr r0
/* 8005A1E0 000237A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A1E4 000237A4  4E 80 00 20 */	blr 
.endfn __dt__reslist_CVirtualLightObj

.fn __dt__CTimeLightGrp, global
/* 8005A1E8 000237A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005A1EC 000237AC  7C 08 02 A6 */	mflr r0
/* 8005A1F0 000237B0  2C 03 00 00 */	cmpwi r3, 0
/* 8005A1F4 000237B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005A1F8 000237B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005A1FC 000237BC  7C 9F 23 78 */	mr r31, r4
/* 8005A200 000237C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005A204 000237C4  7C 7E 1B 78 */	mr r30, r3
/* 8005A208 000237C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8005A20C 000237CC  41 82 00 C4 */	beq .L_8005A2D0
/* 8005A210 000237D0  3C A0 80 53 */	lis r5, __vt__13CTimeLightGrp@ha
/* 8005A214 000237D4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8005A218 000237D8  38 A5 9C 48 */	addi r5, r5, __vt__13CTimeLightGrp@l
/* 8005A21C 000237DC  90 A3 00 00 */	stw r5, 0(r3)
/* 8005A220 000237E0  38 00 00 00 */	li r0, 0
/* 8005A224 000237E4  80 A4 00 00 */	lwz r5, 0(r4)
/* 8005A228 000237E8  48 00 00 10 */	b .L_8005A238
.L_8005A22C:
/* 8005A22C 000237EC  7C A4 2B 78 */	mr r4, r5
/* 8005A230 000237F0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8005A234 000237F4  90 04 00 00 */	stw r0, 0(r4)
.L_8005A238:
/* 8005A238 000237F8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8005A23C 000237FC  7C 05 20 40 */	cmplw r5, r4
/* 8005A240 00023800  40 82 FF EC */	bne .L_8005A22C
/* 8005A244 00023804  90 84 00 00 */	stw r4, 0(r4)
/* 8005A248 00023808  37 A3 00 08 */	addic. r29, r3, 8
/* 8005A24C 0002380C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8005A250 00023810  90 63 00 04 */	stw r3, 4(r3)
/* 8005A254 00023814  41 82 00 6C */	beq .L_8005A2C0
/* 8005A258 00023818  41 82 00 68 */	beq .L_8005A2C0
/* 8005A25C 0002381C  3C 80 80 53 */	lis r4, "__vt__34_reslist_base<P16CVirtualLightObj>"@ha
/* 8005A260 00023820  80 7D 00 04 */	lwz r3, 4(r29)
/* 8005A264 00023824  38 84 9C 78 */	addi r4, r4, "__vt__34_reslist_base<P16CVirtualLightObj>"@l
/* 8005A268 00023828  90 9D 00 00 */	stw r4, 0(r29)
/* 8005A26C 0002382C  38 00 00 00 */	li r0, 0
/* 8005A270 00023830  80 83 00 00 */	lwz r4, 0(r3)
/* 8005A274 00023834  48 00 00 10 */	b .L_8005A284
.L_8005A278:
/* 8005A278 00023838  7C 83 23 78 */	mr r3, r4
/* 8005A27C 0002383C  80 84 00 00 */	lwz r4, 0(r4)
/* 8005A280 00023840  90 03 00 00 */	stw r0, 0(r3)
.L_8005A284:
/* 8005A284 00023844  80 7D 00 04 */	lwz r3, 4(r29)
/* 8005A288 00023848  7C 04 18 40 */	cmplw r4, r3
/* 8005A28C 0002384C  40 82 FF EC */	bne .L_8005A278
/* 8005A290 00023850  90 63 00 00 */	stw r3, 0(r3)
/* 8005A294 00023854  80 7D 00 04 */	lwz r3, 4(r29)
/* 8005A298 00023858  90 63 00 04 */	stw r3, 4(r3)
/* 8005A29C 0002385C  88 1D 00 1C */	lbz r0, 0x1c(r29)
/* 8005A2A0 00023860  2C 00 00 00 */	cmpwi r0, 0
/* 8005A2A4 00023864  40 82 00 1C */	bne .L_8005A2C0
/* 8005A2A8 00023868  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8005A2AC 0002386C  2C 03 00 00 */	cmpwi r3, 0
/* 8005A2B0 00023870  41 82 00 10 */	beq .L_8005A2C0
/* 8005A2B4 00023874  48 3D AB 2D */	bl __dla__FPv
/* 8005A2B8 00023878  38 00 00 00 */	li r0, 0
/* 8005A2BC 0002387C  90 1D 00 14 */	stw r0, 0x14(r29)
.L_8005A2C0:
/* 8005A2C0 00023880  2C 1F 00 00 */	cmpwi r31, 0
/* 8005A2C4 00023884  40 81 00 0C */	ble .L_8005A2D0
/* 8005A2C8 00023888  7F C3 F3 78 */	mr r3, r30
/* 8005A2CC 0002388C  48 3D A9 61 */	bl __dl__FPv
.L_8005A2D0:
/* 8005A2D0 00023890  7F C3 F3 78 */	mr r3, r30
/* 8005A2D4 00023894  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8005A2D8 00023898  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005A2DC 0002389C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8005A2E0 000238A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005A2E4 000238A4  7C 08 03 A6 */	mtlr r0
/* 8005A2E8 000238A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8005A2EC 000238AC  4E 80 00 20 */	blr 
.endfn __dt__CTimeLightGrp

.fn func_8005A2F0, global
/* 8005A2F0 000238B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8005A2F4 000238B4  38 C0 00 00 */	li r6, 0
/* 8005A2F8 000238B8  38 E0 00 00 */	li r7, 0
/* 8005A2FC 000238BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8005A300 000238C0  7C 3F 0B 78 */	mr r31, r1
/* 8005A304 000238C4  81 23 00 0C */	lwz r9, 0xc(r3)
/* 8005A308 000238C8  81 03 00 20 */	lwz r8, 0x20(r3)
/* 8005A30C 000238CC  48 00 00 1C */	b .L_8005A328
.L_8005A310:
/* 8005A310 000238D0  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8005A314 000238D4  7C 05 38 2E */	lwzx r0, r5, r7
/* 8005A318 000238D8  2C 00 00 00 */	cmpwi r0, 0
/* 8005A31C 000238DC  41 82 00 14 */	beq .L_8005A330
/* 8005A320 000238E0  38 E7 00 0C */	addi r7, r7, 0xc
/* 8005A324 000238E4  38 C6 00 01 */	addi r6, r6, 1
.L_8005A328:
/* 8005A328 000238E8  7C 06 40 00 */	cmpw r6, r8
/* 8005A32C 000238EC  41 80 FF E4 */	blt .L_8005A310
.L_8005A330:
/* 8005A330 000238F0  1C 06 00 0C */	mulli r0, r6, 0xc
/* 8005A334 000238F4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8005A338 000238F8  7C A3 02 14 */	add r5, r3, r0
/* 8005A33C 000238FC  34 65 00 08 */	addic. r3, r5, 8
/* 8005A340 00023900  41 82 00 0C */	beq .L_8005A34C
/* 8005A344 00023904  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 8005A348 00023908  90 83 00 00 */	stw r4, 0(r3)
.L_8005A34C:
/* 8005A34C 0002390C  91 25 00 00 */	stw r9, 0(r5)
/* 8005A350 00023910  7F EA FB 78 */	mr r10, r31
/* 8005A354 00023914  80 09 00 04 */	lwz r0, 4(r9)
/* 8005A358 00023918  90 05 00 04 */	stw r0, 4(r5)
/* 8005A35C 0002391C  80 69 00 04 */	lwz r3, 4(r9)
/* 8005A360 00023920  90 A3 00 00 */	stw r5, 0(r3)
/* 8005A364 00023924  90 A9 00 04 */	stw r5, 4(r9)
/* 8005A368 00023928  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8005A36C 0002392C  80 21 00 00 */	lwz r1, 0(r1)
/* 8005A370 00023930  4E 80 00 20 */	blr 
.endfn func_8005A2F0

.fn func_8005A374, global
/* 8005A374 00023934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005A378 00023938  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 8005A37C 0002393C  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 8005A380 00023940  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8005A384 00023944  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8005A388 00023948  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8005A38C 0002394C  EC 81 00 F2 */	fmuls f4, f1, f3
/* 8005A390 00023950  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8005A394 00023954  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8005A398 00023958  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8005A39C 0002395C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8005A3A0 00023960  D0 01 00 08 */	stfs f0, 8(r1)
/* 8005A3A4 00023964  81 24 00 00 */	lwz r9, 0(r4)
/* 8005A3A8 00023968  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8005A3AC 0002396C  80 E1 00 08 */	lwz r7, 8(r1)
/* 8005A3B0 00023970  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8005A3B4 00023974  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8005A3B8 00023978  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8005A3BC 0002397C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8005A3C0 00023980  48 00 00 28 */	b .L_8005A3E8
.L_8005A3C4:
/* 8005A3C4 00023984  81 09 00 08 */	lwz r8, 8(r9)
/* 8005A3C8 00023988  88 08 00 19 */	lbz r0, 0x19(r8)
/* 8005A3CC 0002398C  2C 00 00 00 */	cmpwi r0, 0
/* 8005A3D0 00023990  40 82 00 14 */	bne .L_8005A3E4
/* 8005A3D4 00023994  90 E8 00 1C */	stw r7, 0x1c(r8)
/* 8005A3D8 00023998  90 C8 00 20 */	stw r6, 0x20(r8)
/* 8005A3DC 0002399C  90 A8 00 24 */	stw r5, 0x24(r8)
/* 8005A3E0 000239A0  90 88 00 28 */	stw r4, 0x28(r8)
.L_8005A3E4:
/* 8005A3E4 000239A4  81 29 00 00 */	lwz r9, 0(r9)
.L_8005A3E8:
/* 8005A3E8 000239A8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8005A3EC 000239AC  7C 09 00 40 */	cmplw r9, r0
/* 8005A3F0 000239B0  40 82 FF D4 */	bne .L_8005A3C4
/* 8005A3F4 000239B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8005A3F8 000239B8  4E 80 00 20 */	blr 
.endfn func_8005A374


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__13CTimeLightGrp, global
	.4byte __RTTI__13CTimeLightGrp
	.4byte 0
	.4byte __dt__CTimeLightGrp
.endobj __vt__13CTimeLightGrp

.obj CTimeLightGrp_hierarchy, global
	.4byte __RTTI__13CTimeLightObj
	.4byte 0
	.4byte 0
.endobj CTimeLightGrp_hierarchy


.obj "__vt__28reslist<P16CVirtualLightObj>", global
	.4byte "__RTTI__28reslist<P16CVirtualLightObj>"
	.4byte 0
	.4byte __dt__reslist_CVirtualLightObj
.endobj "__vt__28reslist<P16CVirtualLightObj>"

.obj reslist_CVirtualLightObj_hierarchy, global
	.4byte "__RTTI__34_reslist_base<P16CVirtualLightObj>"
	.4byte 0
	.4byte 0
.endobj reslist_CVirtualLightObj_hierarchy


.obj "__vt__34_reslist_base<P16CVirtualLightObj>", global
	.4byte "__RTTI__34_reslist_base<P16CVirtualLightObj>"
	.4byte 0
	.4byte __dt___reslist_base_CVirtualLightObj
	.4byte 0
.endobj "__vt__34_reslist_base<P16CVirtualLightObj>"


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CTimeLightGrp_typestr, global
	.asciz "CTimeLightGrp"
	.balign 4
.endobj CTimeLightGrp_typestr

.obj CTimeLightObj_typestr, global
	.asciz "CTimeLightObj"
	.balign 4
.endobj CTimeLightObj_typestr

.obj reslist_CVirtualLightObj_typestr, global
	.asciz "reslist<CVirtualLightObj *>"
.endobj reslist_CVirtualLightObj_typestr

.obj _reslist_base_CVirtualLightObj_typestr, global
	.asciz "_reslist_base<CVirtualLightObj *>"
	.balign 4
.endobj _reslist_base_CVirtualLightObj_typestr


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__13CTimeLightGrp, global
	.4byte CTimeLightGrp_typestr
	.4byte CTimeLightGrp_hierarchy
.endobj __RTTI__13CTimeLightGrp

.obj __RTTI__13CTimeLightObj, global
	.4byte CTimeLightObj_typestr
	.4byte 0
.endobj __RTTI__13CTimeLightObj

.obj "__RTTI__28reslist<P16CVirtualLightObj>", global
	.4byte reslist_CVirtualLightObj_typestr
	.4byte reslist_CVirtualLightObj_hierarchy
.endobj "__RTTI__28reslist<P16CVirtualLightObj>"

.obj "__RTTI__34_reslist_base<P16CVirtualLightObj>", global
	.4byte _reslist_base_CVirtualLightObj_typestr
	.4byte 0
.endobj "__RTTI__34_reslist_base<P16CVirtualLightObj>"

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_806688C8, global
	.float 1.0
	.4byte 0
.endobj float_806688C8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80007794", local
.hidden "@etb_80007794"
	.4byte 0x100A0000
	.4byte 0x00000080
	.4byte 0x00030010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000008
	.4byte __dt__reslist_CVirtualLightObj
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__8005A03C
.endobj "@etb_80007794"

.obj "@etb_800077BC", local
.hidden "@etb_800077BC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800077BC"

.obj "@etb_800077C4", local
.hidden "@etb_800077C4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800077C4"

.obj "@etb_800077CC", local
.hidden "@etb_800077CC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800077CC"

.obj "@etb_800077D4", local
.hidden "@etb_800077D4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800077D4"

.obj "@etb_800077DC", local
.hidden "@etb_800077DC"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_800077DC"

.obj "@etb_800077E4", local
.hidden "@etb_800077E4"
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800077E4"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002279C", local
.hidden "@eti_8002279C"
	.4byte __ct__CTimeLightGrp
	.4byte 0x00000184
	.4byte "@etb_80007794"
.endobj "@eti_8002279C"

.obj "@eti_800227A8", local
.hidden "@eti_800227A8"
	.4byte __dt__8005A03C
	.4byte 0x00000040
	.4byte "@etb_800077BC"
.endobj "@eti_800227A8"

.obj "@eti_800227B4", local
.hidden "@eti_800227B4"
	.4byte __dt___reslist_base_CVirtualLightObj
	.4byte 0x000000B4
	.4byte "@etb_800077C4"
.endobj "@eti_800227B4"

.obj "@eti_800227C0", local
.hidden "@eti_800227C0"
	.4byte __dt__reslist_CVirtualLightObj
	.4byte 0x000000B8
	.4byte "@etb_800077CC"
.endobj "@eti_800227C0"

.obj "@eti_800227CC", local
.hidden "@eti_800227CC"
	.4byte __dt__CTimeLightGrp
	.4byte 0x00000108
	.4byte "@etb_800077D4"
.endobj "@eti_800227CC"

.obj "@eti_800227D8", local
.hidden "@eti_800227D8"
	.4byte func_8005A2F0
	.4byte 0x00000084
	.4byte "@etb_800077DC"
.endobj "@eti_800227D8"

.obj "@eti_800227E4", local
.hidden "@eti_800227E4"
	.4byte func_8005A374
	.4byte 0x00000088
	.4byte "@etb_800077E4"
.endobj "@eti_800227E4"
