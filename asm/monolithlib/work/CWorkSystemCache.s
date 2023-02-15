.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_804D8D90, global
/* 804D8D90 004A2350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D8D94 004A2354  7C 08 02 A6 */	mflr r0
/* 804D8D98 004A2358  38 C0 00 00 */	li r6, 0
/* 804D8D9C 004A235C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D8DA0 004A2360  BF C1 00 08 */	stmw r30, 8(r1)
/* 804D8DA4 004A2364  7C 7E 1B 78 */	mr r30, r3
/* 804D8DA8 004A2368  4B F5 E8 15 */	bl __ct__CWorkThread
/* 804D8DAC 004A236C  3C 60 80 57 */	lis r3, __vt__CWorkSystemCache@ha
/* 804D8DB0 004A2370  3C A0 80 57 */	lis r5, __vt___reslist_base_CCacheItem@ha
/* 804D8DB4 004A2374  3B E0 00 00 */	li r31, 0
/* 804D8DB8 004A2378  93 FE 01 D8 */	stw r31, 0x1d8(r30)
/* 804D8DBC 004A237C  38 9E 01 CC */	addi r4, r30, 0x1cc
/* 804D8DC0 004A2380  38 63 34 B8 */	addi r3, r3, __vt__CWorkSystemCache@l
/* 804D8DC4 004A2384  38 A5 35 84 */	addi r5, r5, __vt___reslist_base_CCacheItem@l
/* 804D8DC8 004A2388  90 7E 00 00 */	stw r3, 0(r30)
/* 804D8DCC 004A238C  3C 60 80 57 */	lis r3, __vt__reslist_CCacheItem@ha
/* 804D8DD0 004A2390  38 00 00 06 */	li r0, 6
/* 804D8DD4 004A2394  90 BE 01 C4 */	stw r5, 0x1c4(r30)
/* 804D8DD8 004A2398  38 63 35 6C */	addi r3, r3, __vt__reslist_CCacheItem@l
/* 804D8DDC 004A239C  93 FE 01 DC */	stw r31, 0x1dc(r30)
/* 804D8DE0 004A23A0  9B FE 01 E0 */	stb r31, 0x1e0(r30)
/* 804D8DE4 004A23A4  90 9E 01 C8 */	stw r4, 0x1c8(r30)
/* 804D8DE8 004A23A8  90 84 00 00 */	stw r4, 0(r4)
/* 804D8DEC 004A23AC  90 84 00 04 */	stw r4, 4(r4)
/* 804D8DF0 004A23B0  90 7E 01 C4 */	stw r3, 0x1c4(r30)
/* 804D8DF4 004A23B4  93 CD C1 20 */	stw r30, lbl_806682A0@sda21(r13)
/* 804D8DF8 004A23B8  90 1E 00 50 */	stw r0, 0x50(r30)
/* 804D8DFC 004A23BC  4B F5 E7 B9 */	bl func_804375B4
/* 804D8E00 004A23C0  7C 64 1B 78 */	mr r4, r3
/* 804D8E04 004A23C4  38 60 01 80 */	li r3, 0x180
/* 804D8E08 004A23C8  4B F5 BC 79 */	bl func_80434A80
/* 804D8E0C 004A23CC  38 00 00 20 */	li r0, 0x20
/* 804D8E10 004A23D0  7F E4 FB 78 */	mr r4, r31
/* 804D8E14 004A23D4  90 7E 01 D8 */	stw r3, 0x1d8(r30)
/* 804D8E18 004A23D8  7C 09 03 A6 */	mtctr r0
.L_804D8E1C:
/* 804D8E1C 004A23DC  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 804D8E20 004A23E0  7F E3 21 2E */	stwx r31, r3, r4
/* 804D8E24 004A23E4  38 84 00 0C */	addi r4, r4, 0xc
/* 804D8E28 004A23E8  42 00 FF F4 */	bdnz .L_804D8E1C
/* 804D8E2C 004A23EC  38 00 00 20 */	li r0, 0x20
/* 804D8E30 004A23F0  90 1E 01 DC */	stw r0, 0x1dc(r30)
/* 804D8E34 004A23F4  7F C3 F3 78 */	mr r3, r30
/* 804D8E38 004A23F8  BB C1 00 08 */	lmw r30, 8(r1)
/* 804D8E3C 004A23FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D8E40 004A2400  7C 08 03 A6 */	mtlr r0
/* 804D8E44 004A2404  38 21 00 10 */	addi r1, r1, 0x10
/* 804D8E48 004A2408  4E 80 00 20 */	blr 
.endfn func_804D8D90

.fn __dt__804D8E4C, global
/* 804D8E4C 004A240C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D8E50 004A2410  7C 08 02 A6 */	mflr r0
/* 804D8E54 004A2414  2C 03 00 00 */	cmpwi r3, 0
/* 804D8E58 004A2418  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D8E5C 004A241C  BF C1 00 08 */	stmw r30, 8(r1)
/* 804D8E60 004A2420  7C 7E 1B 78 */	mr r30, r3
/* 804D8E64 004A2424  7C 9F 23 78 */	mr r31, r4
/* 804D8E68 004A2428  41 82 00 48 */	beq .L_804D8EB0
/* 804D8E6C 004A242C  3C 80 80 57 */	lis r4, __vt___reslist_base_CCacheItem@ha
/* 804D8E70 004A2430  38 84 35 84 */	addi r4, r4, __vt___reslist_base_CCacheItem@l
/* 804D8E74 004A2434  90 83 00 00 */	stw r4, 0(r3)
/* 804D8E78 004A2438  48 00 00 51 */	bl func_804D8EC8
/* 804D8E7C 004A243C  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 804D8E80 004A2440  2C 00 00 00 */	cmpwi r0, 0
/* 804D8E84 004A2444  40 82 00 1C */	bne .L_804D8EA0
/* 804D8E88 004A2448  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 804D8E8C 004A244C  2C 03 00 00 */	cmpwi r3, 0
/* 804D8E90 004A2450  41 82 00 10 */	beq .L_804D8EA0
/* 804D8E94 004A2454  4B F5 BF 4D */	bl __dla__FPv
/* 804D8E98 004A2458  38 00 00 00 */	li r0, 0
/* 804D8E9C 004A245C  90 1E 00 14 */	stw r0, 0x14(r30)
.L_804D8EA0:
/* 804D8EA0 004A2460  2C 1F 00 00 */	cmpwi r31, 0
/* 804D8EA4 004A2464  40 81 00 0C */	ble .L_804D8EB0
/* 804D8EA8 004A2468  7F C3 F3 78 */	mr r3, r30
/* 804D8EAC 004A246C  4B F5 BD 81 */	bl __dl__FPv
.L_804D8EB0:
/* 804D8EB0 004A2470  7F C3 F3 78 */	mr r3, r30
/* 804D8EB4 004A2474  BB C1 00 08 */	lmw r30, 8(r1)
/* 804D8EB8 004A2478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D8EBC 004A247C  7C 08 03 A6 */	mtlr r0
/* 804D8EC0 004A2480  38 21 00 10 */	addi r1, r1, 0x10
/* 804D8EC4 004A2484  4E 80 00 20 */	blr 
.endfn __dt__804D8E4C

.fn func_804D8EC8, global
/* 804D8EC8 004A2488  80 83 00 04 */	lwz r4, 4(r3)
/* 804D8ECC 004A248C  38 00 00 00 */	li r0, 0
/* 804D8ED0 004A2490  80 A4 00 00 */	lwz r5, 0(r4)
/* 804D8ED4 004A2494  48 00 00 10 */	b .L_804D8EE4
.L_804D8ED8:
/* 804D8ED8 004A2498  7C A4 2B 78 */	mr r4, r5
/* 804D8EDC 004A249C  80 A5 00 00 */	lwz r5, 0(r5)
/* 804D8EE0 004A24A0  90 04 00 00 */	stw r0, 0(r4)
.L_804D8EE4:
/* 804D8EE4 004A24A4  80 83 00 04 */	lwz r4, 4(r3)
/* 804D8EE8 004A24A8  7C 05 20 40 */	cmplw r5, r4
/* 804D8EEC 004A24AC  40 82 FF EC */	bne .L_804D8ED8
/* 804D8EF0 004A24B0  90 84 00 00 */	stw r4, 0(r4)
/* 804D8EF4 004A24B4  4E 80 00 20 */	blr 
.endfn func_804D8EC8

.fn __dt__804D8EF8, global
/* 804D8EF8 004A24B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D8EFC 004A24BC  7C 08 02 A6 */	mflr r0
/* 804D8F00 004A24C0  2C 03 00 00 */	cmpwi r3, 0
/* 804D8F04 004A24C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D8F08 004A24C8  BF C1 00 08 */	stmw r30, 8(r1)
/* 804D8F0C 004A24CC  7C 7E 1B 78 */	mr r30, r3
/* 804D8F10 004A24D0  7C 9F 23 78 */	mr r31, r4
/* 804D8F14 004A24D4  41 82 00 1C */	beq .L_804D8F30
/* 804D8F18 004A24D8  38 80 00 00 */	li r4, 0
/* 804D8F1C 004A24DC  4B FF FF 31 */	bl __dt__804D8E4C
/* 804D8F20 004A24E0  2C 1F 00 00 */	cmpwi r31, 0
/* 804D8F24 004A24E4  40 81 00 0C */	ble .L_804D8F30
/* 804D8F28 004A24E8  7F C3 F3 78 */	mr r3, r30
/* 804D8F2C 004A24EC  4B F5 BD 01 */	bl __dl__FPv
.L_804D8F30:
/* 804D8F30 004A24F0  7F C3 F3 78 */	mr r3, r30
/* 804D8F34 004A24F4  BB C1 00 08 */	lmw r30, 8(r1)
/* 804D8F38 004A24F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D8F3C 004A24FC  7C 08 03 A6 */	mtlr r0
/* 804D8F40 004A2500  38 21 00 10 */	addi r1, r1, 0x10
/* 804D8F44 004A2504  4E 80 00 20 */	blr 
.endfn __dt__804D8EF8

.fn __dt__804D8F48, global
/* 804D8F48 004A2508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D8F4C 004A250C  7C 08 02 A6 */	mflr r0
/* 804D8F50 004A2510  2C 03 00 00 */	cmpwi r3, 0
/* 804D8F54 004A2514  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D8F58 004A2518  BF C1 00 08 */	stmw r30, 8(r1)
/* 804D8F5C 004A251C  7C 7E 1B 78 */	mr r30, r3
/* 804D8F60 004A2520  7C 9F 23 78 */	mr r31, r4
/* 804D8F64 004A2524  41 82 00 38 */	beq .L_804D8F9C
/* 804D8F68 004A2528  34 63 01 C4 */	addic. r3, r3, 0x1c4
/* 804D8F6C 004A252C  38 00 00 00 */	li r0, 0
/* 804D8F70 004A2530  90 0D C1 20 */	stw r0, lbl_806682A0@sda21(r13)
/* 804D8F74 004A2534  41 82 00 0C */	beq .L_804D8F80
/* 804D8F78 004A2538  38 80 00 00 */	li r4, 0
/* 804D8F7C 004A253C  4B FF FE D1 */	bl __dt__804D8E4C
.L_804D8F80:
/* 804D8F80 004A2540  7F C3 F3 78 */	mr r3, r30
/* 804D8F84 004A2544  38 80 00 00 */	li r4, 0
/* 804D8F88 004A2548  4B F5 EB 41 */	bl __dt__CWorkThread
/* 804D8F8C 004A254C  2C 1F 00 00 */	cmpwi r31, 0
/* 804D8F90 004A2550  40 81 00 0C */	ble .L_804D8F9C
/* 804D8F94 004A2554  7F C3 F3 78 */	mr r3, r30
/* 804D8F98 004A2558  4B F5 BC 95 */	bl __dl__FPv
.L_804D8F9C:
/* 804D8F9C 004A255C  7F C3 F3 78 */	mr r3, r30
/* 804D8FA0 004A2560  BB C1 00 08 */	lmw r30, 8(r1)
/* 804D8FA4 004A2564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D8FA8 004A2568  7C 08 03 A6 */	mtlr r0
/* 804D8FAC 004A256C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D8FB0 004A2570  4E 80 00 20 */	blr 
.endfn __dt__804D8F48

.fn func_804D8FB4, global
/* 804D8FB4 004A2574  80 8D C1 20 */	lwz r4, lbl_806682A0@sda21(r13)
/* 804D8FB8 004A2578  38 60 00 00 */	li r3, 0
/* 804D8FBC 004A257C  80 A4 01 C8 */	lwz r5, 0x1c8(r4)
/* 804D8FC0 004A2580  80 85 00 00 */	lwz r4, 0(r5)
/* 804D8FC4 004A2584  48 00 00 0C */	b .L_804D8FD0
.L_804D8FC8:
/* 804D8FC8 004A2588  80 84 00 00 */	lwz r4, 0(r4)
/* 804D8FCC 004A258C  38 63 00 01 */	addi r3, r3, 1
.L_804D8FD0:
/* 804D8FD0 004A2590  7C 04 28 40 */	cmplw r4, r5
/* 804D8FD4 004A2594  40 82 FF F4 */	bne .L_804D8FC8
/* 804D8FD8 004A2598  4E 80 00 20 */	blr 
.endfn func_804D8FB4

.fn func_804D8FDC, global
/* 804D8FDC 004A259C  80 ED C1 20 */	lwz r7, lbl_806682A0@sda21(r13)
/* 804D8FE0 004A25A0  39 20 00 00 */	li r9, 0
/* 804D8FE4 004A25A4  80 E7 01 C8 */	lwz r7, 0x1c8(r7)
/* 804D8FE8 004A25A8  81 07 00 00 */	lwz r8, 0(r7)
/* 804D8FEC 004A25AC  48 00 00 40 */	b .L_804D902C
.L_804D8FF0:
/* 804D8FF0 004A25B0  7C 09 18 00 */	cmpw r9, r3
/* 804D8FF4 004A25B4  40 82 00 30 */	bne .L_804D9024
/* 804D8FF8 004A25B8  80 E8 00 08 */	lwz r7, 8(r8)
/* 804D8FFC 004A25BC  38 60 00 01 */	li r3, 1
/* 804D9000 004A25C0  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 804D9004 004A25C4  90 04 00 00 */	stw r0, 0(r4)
/* 804D9008 004A25C8  80 88 00 08 */	lwz r4, 8(r8)
/* 804D900C 004A25CC  38 04 00 04 */	addi r0, r4, 4
/* 804D9010 004A25D0  90 05 00 00 */	stw r0, 0(r5)
/* 804D9014 004A25D4  80 88 00 08 */	lwz r4, 8(r8)
/* 804D9018 004A25D8  80 04 00 40 */	lwz r0, 0x40(r4)
/* 804D901C 004A25DC  90 06 00 00 */	stw r0, 0(r6)
/* 804D9020 004A25E0  4E 80 00 20 */	blr
.L_804D9024:
/* 804D9024 004A25E4  81 08 00 00 */	lwz r8, 0(r8)
/* 804D9028 004A25E8  39 29 00 01 */	addi r9, r9, 1
.L_804D902C:
/* 804D902C 004A25EC  7C 08 38 40 */	cmplw r8, r7
/* 804D9030 004A25F0  40 82 FF C0 */	bne .L_804D8FF0
/* 804D9034 004A25F4  38 60 00 00 */	li r3, 0
/* 804D9038 004A25F8  4E 80 00 20 */	blr 
.endfn func_804D8FDC

.fn func_804D903C, global
/* 804D903C 004A25FC  80 85 00 00 */	lwz r4, 0(r5)
/* 804D9040 004A2600  38 00 00 00 */	li r0, 0
/* 804D9044 004A2604  80 E4 00 04 */	lwz r7, 4(r4)
/* 804D9048 004A2608  80 C4 00 00 */	lwz r6, 0(r4)
/* 804D904C 004A260C  90 C7 00 00 */	stw r6, 0(r7)
/* 804D9050 004A2610  90 E6 00 04 */	stw r7, 4(r6)
/* 804D9054 004A2614  80 85 00 00 */	lwz r4, 0(r5)
/* 804D9058 004A2618  90 04 00 00 */	stw r0, 0(r4)
/* 804D905C 004A261C  90 C3 00 00 */	stw r6, 0(r3)
/* 804D9060 004A2620  4E 80 00 20 */	blr 
.endfn func_804D903C

.fn func_804D9064, global
/* 804D9064 004A2624  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9068 004A2628  7C 08 02 A6 */	mflr r0
/* 804D906C 004A262C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D9070 004A2630  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804D9074 004A2634  3B E0 00 00 */	li r31, 0
/* 804D9078 004A2638  80 6D C1 20 */	lwz r3, lbl_806682A0@sda21(r13)
/* 804D907C 004A263C  80 63 01 C8 */	lwz r3, 0x1c8(r3)
/* 804D9080 004A2640  83 C3 00 00 */	lwz r30, 0(r3)
/* 804D9084 004A2644  48 00 00 64 */	b .L_804D90E8
.L_804D9088:
/* 804D9088 004A2648  83 BE 00 00 */	lwz r29, 0(r30)
/* 804D908C 004A264C  80 7E 00 08 */	lwz r3, 8(r30)
/* 804D9090 004A2650  48 00 01 2D */	bl func_804D91BC
/* 804D9094 004A2654  80 7E 00 08 */	lwz r3, 8(r30)
/* 804D9098 004A2658  48 00 01 41 */	bl func_804D91D8
/* 804D909C 004A265C  2C 03 00 00 */	cmpwi r3, 0
/* 804D90A0 004A2660  41 82 00 44 */	beq .L_804D90E4
/* 804D90A4 004A2664  80 7E 00 08 */	lwz r3, 8(r30)
/* 804D90A8 004A2668  2C 03 00 00 */	cmpwi r3, 0
/* 804D90AC 004A266C  41 82 00 20 */	beq .L_804D90CC
/* 804D90B0 004A2670  41 82 00 18 */	beq .L_804D90C8
/* 804D90B4 004A2674  81 83 00 00 */	lwz r12, 0(r3)
/* 804D90B8 004A2678  38 80 00 01 */	li r4, 1
/* 804D90BC 004A267C  81 8C 00 08 */	lwz r12, 8(r12)
/* 804D90C0 004A2680  7D 89 03 A6 */	mtctr r12
/* 804D90C4 004A2684  4E 80 04 21 */	bctrl 
.L_804D90C8:
/* 804D90C8 004A2688  93 FE 00 08 */	stw r31, 8(r30)
.L_804D90CC:
/* 804D90CC 004A268C  80 8D C1 20 */	lwz r4, lbl_806682A0@sda21(r13)
/* 804D90D0 004A2690  38 61 00 0C */	addi r3, r1, 0xc
/* 804D90D4 004A2694  93 C1 00 08 */	stw r30, 8(r1)
/* 804D90D8 004A2698  38 A1 00 08 */	addi r5, r1, 8
/* 804D90DC 004A269C  38 84 01 C4 */	addi r4, r4, 0x1c4
/* 804D90E0 004A26A0  4B FF FF 5D */	bl func_804D903C
.L_804D90E4:
/* 804D90E4 004A26A4  7F BE EB 78 */	mr r30, r29
.L_804D90E8:
/* 804D90E8 004A26A8  80 6D C1 20 */	lwz r3, lbl_806682A0@sda21(r13)
/* 804D90EC 004A26AC  80 03 01 C8 */	lwz r0, 0x1c8(r3)
/* 804D90F0 004A26B0  7C 1E 00 40 */	cmplw r30, r0
/* 804D90F4 004A26B4  40 82 FF 94 */	bne .L_804D9088
/* 804D90F8 004A26B8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804D90FC 004A26BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D9100 004A26C0  7C 08 03 A6 */	mtlr r0
/* 804D9104 004A26C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804D9108 004A26C8  4E 80 00 20 */	blr 
.endfn func_804D9064

.fn func_804D910C, global
/* 804D910C 004A26CC  4B F5 F8 EC */	b func_804389F8
.endfn func_804D910C

.fn __dt__804D9110, global
/* 804D9110 004A26D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9114 004A26D4  7C 08 02 A6 */	mflr r0
/* 804D9118 004A26D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D911C 004A26DC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804D9120 004A26E0  7C 7D 1B 78 */	mr r29, r3
/* 804D9124 004A26E4  3B E0 00 00 */	li r31, 0
/* 804D9128 004A26E8  80 83 01 C8 */	lwz r4, 0x1c8(r3)
/* 804D912C 004A26EC  83 C4 00 00 */	lwz r30, 0(r4)
/* 804D9130 004A26F0  48 00 00 30 */	b .L_804D9160
.L_804D9134:
/* 804D9134 004A26F4  80 7E 00 08 */	lwz r3, 8(r30)
/* 804D9138 004A26F8  2C 03 00 00 */	cmpwi r3, 0
/* 804D913C 004A26FC  41 82 00 20 */	beq .L_804D915C
/* 804D9140 004A2700  41 82 00 18 */	beq .L_804D9158
/* 804D9144 004A2704  81 83 00 00 */	lwz r12, 0(r3)
/* 804D9148 004A2708  38 80 00 01 */	li r4, 1
/* 804D914C 004A270C  81 8C 00 08 */	lwz r12, 8(r12)
/* 804D9150 004A2710  7D 89 03 A6 */	mtctr r12
/* 804D9154 004A2714  4E 80 04 21 */	bctrl 
.L_804D9158:
/* 804D9158 004A2718  93 FE 00 08 */	stw r31, 8(r30)
.L_804D915C:
/* 804D915C 004A271C  83 DE 00 00 */	lwz r30, 0(r30)
.L_804D9160:
/* 804D9160 004A2720  80 1D 01 C8 */	lwz r0, 0x1c8(r29)
/* 804D9164 004A2724  7C 1E 00 40 */	cmplw r30, r0
/* 804D9168 004A2728  40 82 FF CC */	bne .L_804D9134
/* 804D916C 004A272C  38 7D 01 C4 */	addi r3, r29, 0x1c4
/* 804D9170 004A2730  4B FF FD 59 */	bl func_804D8EC8
/* 804D9174 004A2734  88 1D 01 E0 */	lbz r0, 0x1e0(r29)
/* 804D9178 004A2738  2C 00 00 00 */	cmpwi r0, 0
/* 804D917C 004A273C  40 82 00 1C */	bne .L_804D9198
/* 804D9180 004A2740  80 7D 01 D8 */	lwz r3, 0x1d8(r29)
/* 804D9184 004A2744  2C 03 00 00 */	cmpwi r3, 0
/* 804D9188 004A2748  41 82 00 10 */	beq .L_804D9198
/* 804D918C 004A274C  4B F5 BC 55 */	bl __dla__FPv
/* 804D9190 004A2750  38 00 00 00 */	li r0, 0
/* 804D9194 004A2754  90 1D 01 D8 */	stw r0, 0x1d8(r29)
.L_804D9198:
/* 804D9198 004A2758  38 00 00 00 */	li r0, 0
/* 804D919C 004A275C  90 1D 01 DC */	stw r0, 0x1dc(r29)
/* 804D91A0 004A2760  7F A3 EB 78 */	mr r3, r29
/* 804D91A4 004A2764  4B F5 F8 81 */	bl func_80438A24
/* 804D91A8 004A2768  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804D91AC 004A276C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D91B0 004A2770  7C 08 03 A6 */	mtlr r0
/* 804D91B4 004A2774  38 21 00 20 */	addi r1, r1, 0x20
/* 804D91B8 004A2778  4E 80 00 20 */	blr 
.endfn __dt__804D9110

.fn func_804D91BC, global
/* 804D91BC 004A277C  88 03 00 48 */	lbz r0, 0x48(r3)
/* 804D91C0 004A2780  2C 00 00 00 */	cmpwi r0, 0
/* 804D91C4 004A2784  4C 82 00 20 */	bnelr 
/* 804D91C8 004A2788  80 83 00 44 */	lwz r4, 0x44(r3)
/* 804D91CC 004A278C  38 04 FF FF */	addi r0, r4, -1
/* 804D91D0 004A2790  90 03 00 44 */	stw r0, 0x44(r3)
/* 804D91D4 004A2794  4E 80 00 20 */	blr 
.endfn func_804D91BC

.fn func_804D91D8, global
/* 804D91D8 004A2798  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 804D91DC 004A279C  2C 00 00 00 */	cmpwi r0, 0
/* 804D91E0 004A27A0  40 82 00 18 */	bne .L_804D91F8
/* 804D91E4 004A27A4  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 804D91E8 004A27A8  2C 00 00 00 */	cmpwi r0, 0
/* 804D91EC 004A27AC  40 82 00 0C */	bne .L_804D91F8
/* 804D91F0 004A27B0  38 60 00 01 */	li r3, 1
/* 804D91F4 004A27B4  4E 80 00 20 */	blr
.L_804D91F8:
/* 804D91F8 004A27B8  80 03 00 44 */	lwz r0, 0x44(r3)
/* 804D91FC 004A27BC  38 60 00 01 */	li r3, 1
/* 804D9200 004A27C0  7C 00 00 34 */	cntlzw r0, r0
/* 804D9204 004A27C4  5C 63 07 FE */	rlwnm r3, r3, r0, 0x1f, 0x1f
/* 804D9208 004A27C8  4E 80 00 20 */	blr 
.endfn func_804D91D8

.fn func_804D920C, global
/* 804D920C 004A27CC  3C A0 80 66 */	lis r5, lbl_80659FB8@ha
/* 804D9210 004A27D0  84 85 9F B8 */	lwzu r4, lbl_80659FB8@l(r5)
/* 804D9214 004A27D4  80 05 00 04 */	lwz r0, 4(r5)
/* 804D9218 004A27D8  90 03 00 04 */	stw r0, 4(r3)
/* 804D921C 004A27DC  90 83 00 00 */	stw r4, 0(r3)
/* 804D9220 004A27E0  80 85 00 08 */	lwz r4, 8(r5)
/* 804D9224 004A27E4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 804D9228 004A27E8  90 03 00 0C */	stw r0, 0xc(r3)
/* 804D922C 004A27EC  90 83 00 08 */	stw r4, 8(r3)
/* 804D9230 004A27F0  80 85 00 10 */	lwz r4, 0x10(r5)
/* 804D9234 004A27F4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 804D9238 004A27F8  90 03 00 14 */	stw r0, 0x14(r3)
/* 804D923C 004A27FC  90 83 00 10 */	stw r4, 0x10(r3)
/* 804D9240 004A2800  80 85 00 18 */	lwz r4, 0x18(r5)
/* 804D9244 004A2804  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 804D9248 004A2808  90 03 00 1C */	stw r0, 0x1c(r3)
/* 804D924C 004A280C  90 83 00 18 */	stw r4, 0x18(r3)
/* 804D9250 004A2810  80 85 00 20 */	lwz r4, 0x20(r5)
/* 804D9254 004A2814  80 05 00 24 */	lwz r0, 0x24(r5)
/* 804D9258 004A2818  90 03 00 24 */	stw r0, 0x24(r3)
/* 804D925C 004A281C  90 83 00 20 */	stw r4, 0x20(r3)
/* 804D9260 004A2820  80 85 00 28 */	lwz r4, 0x28(r5)
/* 804D9264 004A2824  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 804D9268 004A2828  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804D926C 004A282C  90 83 00 28 */	stw r4, 0x28(r3)
/* 804D9270 004A2830  4E 80 00 20 */	blr 
.endfn func_804D920C

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global CWorkSystemCache_typestr
CWorkSystemCache_typestr:
	.asciz "CWorkSystemCache"
	.balign 4

.global reslist_CCacheItem_typestr
reslist_CCacheItem_typestr:
	.asciz "reslist<CCacheItem *>"
	.balign 4

.global _reslist_base_CCacheItem_typestr
_reslist_base_CCacheItem_typestr:
	.asciz "_reslist_base<CCacheItem *>"
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__CWorkSystemCache
__vt__CWorkSystemCache:
	.4byte __RTTI__CWorkSystemCache
	.4byte 0
	.4byte __dt__804D8F48
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_804D9064
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804D910C
	.4byte __dt__804D9110
	.4byte func_80039E30

.global CWorkSystemCache_hierarchy
CWorkSystemCache_hierarchy:
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0


.global __vt__reslist_CCacheItem
__vt__reslist_CCacheItem:
	.4byte __RTTI__reslist_CCacheItem
	.4byte 0
	.4byte __dt__804D8EF8

.global reslist_CCacheItem_hierarchy
reslist_CCacheItem_hierarchy:
	.4byte __RTTI___reslist_base_CCacheItem
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CCacheItem
__vt___reslist_base_CCacheItem:
	.4byte __RTTI___reslist_base_CCacheItem
	.4byte 0
	.4byte __dt__804D8E4C

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CWorkSystemCache
__RTTI__CWorkSystemCache:
	.4byte CWorkSystemCache_typestr
	.4byte CWorkSystemCache_hierarchy

.global __RTTI__reslist_CCacheItem
__RTTI__reslist_CCacheItem:
	.4byte reslist_CCacheItem_typestr
	.4byte reslist_CCacheItem_hierarchy

.global __RTTI___reslist_base_CCacheItem
__RTTI___reslist_base_CCacheItem:
	.4byte _reslist_base_CCacheItem_typestr
	.4byte 0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_806682A0
lbl_806682A0:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800205C4", local
.hidden "@etb_800205C4"
	.4byte 0x10080000
	.4byte 0x00000070
	.4byte 0x00030010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x000001C4
	.4byte __dt__804D8EF8
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__CWorkThread
.endobj "@etb_800205C4"

.obj "@etb_800205EC", local
.hidden "@etb_800205EC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800205EC"

.obj "@etb_800205F4", local
.hidden "@etb_800205F4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800205F4"

.obj "@etb_800205FC", local
.hidden "@etb_800205FC"
	.4byte 0x10080000
	.4byte 0x00000044
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x000001C4
	.4byte __dt__804D8EF8
.endobj "@etb_800205FC"

.obj "@etb_80020618", local
.hidden "@etb_80020618"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020618"

.obj "@etb_80020620", local
.hidden "@etb_80020620"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020620"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80038540", local
.hidden "@eti_80038540"
	.4byte func_804D8D90
	.4byte 0x000000BC
	.4byte "@etb_800205C4"
.endobj "@eti_80038540"

.obj "@eti_8003854C", local
.hidden "@eti_8003854C"
	.4byte __dt__804D8E4C
	.4byte 0x0000007C
	.4byte "@etb_800205EC"
.endobj "@eti_8003854C"

.obj "@eti_80038558", local
.hidden "@eti_80038558"
	.4byte __dt__804D8EF8
	.4byte 0x00000050
	.4byte "@etb_800205F4"
.endobj "@eti_80038558"

.obj "@eti_80038564", local
.hidden "@eti_80038564"
	.4byte __dt__804D8F48
	.4byte 0x0000006C
	.4byte "@etb_800205FC"
.endobj "@eti_80038564"

.obj "@eti_80038570", local
.hidden "@eti_80038570"
	.4byte func_804D9064
	.4byte 0x000000A8
	.4byte "@etb_80020618"
.endobj "@eti_80038570"

.obj "@eti_8003857C", local
.hidden "@eti_8003857C"
	.4byte __dt__804D9110
	.4byte 0x000000AC
	.4byte "@etb_80020620"
.endobj "@eti_8003857C"