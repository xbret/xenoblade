.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_803FE0B8
func_803FE0B8:
/* 803FE0B8 003C7678  94 21 FA 50 */	stwu r1, -0x5b0(r1)
/* 803FE0BC 003C767C  7C 08 02 A6 */	mflr r0
/* 803FE0C0 003C7680  90 01 05 B4 */	stw r0, 0x5b4(r1)
/* 803FE0C4 003C7684  DB E1 05 A0 */	stfd f31, 0x5a0(r1)
/* 803FE0C8 003C7688  F3 E1 05 A8 */	psq_st f31, 1448(r1), 0, qr0
/* 803FE0CC 003C768C  39 61 05 A0 */	addi r11, r1, 0x5a0
/* 803FE0D0 003C7690  4B EB C0 51 */	bl _savegpr_14
/* 803FE0D4 003C7694  7C 9A 23 78 */	mr r26, r4
/* 803FE0D8 003C7698  7C BB 2B 78 */	mr r27, r5
/* 803FE0DC 003C769C  7C DC 33 78 */	mr r28, r6
/* 803FE0E0 003C76A0  7C FD 3B 78 */	mr r29, r7
/* 803FE0E4 003C76A4  4B FD B7 4D */	bl func_803D9830
/* 803FE0E8 003C76A8  39 C1 03 68 */	addi r14, r1, 0x368
/* 803FE0EC 003C76AC  3B 01 05 58 */	addi r24, r1, 0x558
/* 803FE0F0 003C76B0  7C 8E C0 50 */	subf r4, r14, r24
/* 803FE0F4 003C76B4  7C 77 1B 78 */	mr r23, r3
/* 803FE0F8 003C76B8  38 A4 00 0F */	addi r5, r4, 0xf
/* 803FE0FC 003C76BC  C3 E2 C1 B0 */	lfs f31, lbl_8066C530@sda21(r2)
/* 803FE100 003C76C0  7C A0 26 70 */	srawi r0, r5, 4
/* 803FE104 003C76C4  54 94 00 00 */	rlwinm r20, r4, 0, 0, 0
/* 803FE108 003C76C8  7C 60 01 94 */	addze r3, r0
/* 803FE10C 003C76CC  54 B3 00 00 */	rlwinm r19, r5, 0, 0, 0
/* 803FE110 003C76D0  3A A3 00 01 */	addi r21, r3, 1
/* 803FE114 003C76D4  3A C1 04 D8 */	addi r22, r1, 0x4d8
/* 803FE118 003C76D8  54 72 00 00 */	rlwinm r18, r3, 0, 0, 0
/* 803FE11C 003C76DC  3B E0 00 00 */	li r31, 0
/* 803FE120 003C76E0  56 B1 00 00 */	rlwinm r17, r21, 0, 0, 0
/* 803FE124 003C76E4  3B 20 00 00 */	li r25, 0
/* 803FE128 003C76E8  48 00 07 60 */	b lbl_803FE888
lbl_803FE12C:
/* 803FE12C 003C76EC  7F 43 D3 78 */	mr r3, r26
/* 803FE130 003C76F0  7F E4 FB 78 */	mr r4, r31
/* 803FE134 003C76F4  4B FE 7B D9 */	bl func_803E5D0C
/* 803FE138 003C76F8  2C 03 00 00 */	cmpwi r3, 0
/* 803FE13C 003C76FC  41 82 07 44 */	beq lbl_803FE880
/* 803FE140 003C7700  38 61 03 68 */	addi r3, r1, 0x368
/* 803FE144 003C7704  93 21 03 48 */	stw r25, 0x348(r1)
/* 803FE148 003C7708  7C 03 C0 40 */	cmplw r3, r24
/* 803FE14C 003C770C  93 21 03 4C */	stw r25, 0x34c(r1)
/* 803FE150 003C7710  93 21 03 50 */	stw r25, 0x350(r1)
/* 803FE154 003C7714  93 21 03 58 */	stw r25, 0x358(r1)
/* 803FE158 003C7718  93 21 03 5C */	stw r25, 0x35c(r1)
/* 803FE15C 003C771C  93 21 03 60 */	stw r25, 0x360(r1)
/* 803FE160 003C7720  40 80 01 20 */	bge lbl_803FE280
/* 803FE164 003C7724  2C 15 00 08 */	cmpwi r21, 8
/* 803FE168 003C7728  40 81 00 EC */	ble lbl_803FE254
/* 803FE16C 003C772C  7C 0E C0 40 */	cmplw r14, r24
/* 803FE170 003C7730  38 00 00 00 */	li r0, 0
/* 803FE174 003C7734  38 80 00 00 */	li r4, 0
/* 803FE178 003C7738  41 81 00 28 */	bgt lbl_803FE1A0
/* 803FE17C 003C773C  2C 14 00 00 */	cmpwi r20, 0
/* 803FE180 003C7740  38 A0 00 01 */	li r5, 1
/* 803FE184 003C7744  40 82 00 10 */	bne lbl_803FE194
/* 803FE188 003C7748  2C 13 00 00 */	cmpwi r19, 0
/* 803FE18C 003C774C  41 82 00 08 */	beq lbl_803FE194
/* 803FE190 003C7750  38 A0 00 00 */	li r5, 0
lbl_803FE194:
/* 803FE194 003C7754  2C 05 00 00 */	cmpwi r5, 0
/* 803FE198 003C7758  41 82 00 08 */	beq lbl_803FE1A0
/* 803FE19C 003C775C  38 80 00 01 */	li r4, 1
lbl_803FE1A0:
/* 803FE1A0 003C7760  2C 04 00 00 */	cmpwi r4, 0
/* 803FE1A4 003C7764  41 82 00 28 */	beq lbl_803FE1CC
/* 803FE1A8 003C7768  2C 12 00 00 */	cmpwi r18, 0
/* 803FE1AC 003C776C  38 80 00 01 */	li r4, 1
/* 803FE1B0 003C7770  40 82 00 10 */	bne lbl_803FE1C0
/* 803FE1B4 003C7774  7C 12 88 00 */	cmpw r18, r17
/* 803FE1B8 003C7778  41 82 00 08 */	beq lbl_803FE1C0
/* 803FE1BC 003C777C  38 80 00 00 */	li r4, 0
lbl_803FE1C0:
/* 803FE1C0 003C7780  2C 04 00 00 */	cmpwi r4, 0
/* 803FE1C4 003C7784  41 82 00 08 */	beq lbl_803FE1CC
/* 803FE1C8 003C7788  38 00 00 01 */	li r0, 1
lbl_803FE1CC:
/* 803FE1CC 003C778C  2C 00 00 00 */	cmpwi r0, 0
/* 803FE1D0 003C7790  41 82 00 84 */	beq lbl_803FE254
/* 803FE1D4 003C7794  38 16 00 7F */	addi r0, r22, 0x7f
/* 803FE1D8 003C7798  7C 03 00 50 */	subf r0, r3, r0
/* 803FE1DC 003C779C  54 00 C9 FE */	srwi r0, r0, 7
/* 803FE1E0 003C77A0  7C 09 03 A6 */	mtctr r0
/* 803FE1E4 003C77A4  7C 03 B0 40 */	cmplw r3, r22
/* 803FE1E8 003C77A8  40 80 00 6C */	bge lbl_803FE254
lbl_803FE1EC:
/* 803FE1EC 003C77AC  93 23 00 00 */	stw r25, 0(r3)
/* 803FE1F0 003C77B0  93 23 00 04 */	stw r25, 4(r3)
/* 803FE1F4 003C77B4  93 23 00 08 */	stw r25, 8(r3)
/* 803FE1F8 003C77B8  93 23 00 10 */	stw r25, 0x10(r3)
/* 803FE1FC 003C77BC  93 23 00 14 */	stw r25, 0x14(r3)
/* 803FE200 003C77C0  93 23 00 18 */	stw r25, 0x18(r3)
/* 803FE204 003C77C4  93 23 00 20 */	stw r25, 0x20(r3)
/* 803FE208 003C77C8  93 23 00 24 */	stw r25, 0x24(r3)
/* 803FE20C 003C77CC  93 23 00 28 */	stw r25, 0x28(r3)
/* 803FE210 003C77D0  93 23 00 30 */	stw r25, 0x30(r3)
/* 803FE214 003C77D4  93 23 00 34 */	stw r25, 0x34(r3)
/* 803FE218 003C77D8  93 23 00 38 */	stw r25, 0x38(r3)
/* 803FE21C 003C77DC  93 23 00 40 */	stw r25, 0x40(r3)
/* 803FE220 003C77E0  93 23 00 44 */	stw r25, 0x44(r3)
/* 803FE224 003C77E4  93 23 00 48 */	stw r25, 0x48(r3)
/* 803FE228 003C77E8  93 23 00 50 */	stw r25, 0x50(r3)
/* 803FE22C 003C77EC  93 23 00 54 */	stw r25, 0x54(r3)
/* 803FE230 003C77F0  93 23 00 58 */	stw r25, 0x58(r3)
/* 803FE234 003C77F4  93 23 00 60 */	stw r25, 0x60(r3)
/* 803FE238 003C77F8  93 23 00 64 */	stw r25, 0x64(r3)
/* 803FE23C 003C77FC  93 23 00 68 */	stw r25, 0x68(r3)
/* 803FE240 003C7800  93 23 00 70 */	stw r25, 0x70(r3)
/* 803FE244 003C7804  93 23 00 74 */	stw r25, 0x74(r3)
/* 803FE248 003C7808  93 23 00 78 */	stw r25, 0x78(r3)
/* 803FE24C 003C780C  38 63 00 80 */	addi r3, r3, 0x80
/* 803FE250 003C7810  42 00 FF 9C */	bdnz lbl_803FE1EC
lbl_803FE254:
/* 803FE254 003C7814  38 18 00 0F */	addi r0, r24, 0xf
/* 803FE258 003C7818  7C 03 00 50 */	subf r0, r3, r0
/* 803FE25C 003C781C  54 00 E1 3E */	srwi r0, r0, 4
/* 803FE260 003C7820  7C 09 03 A6 */	mtctr r0
/* 803FE264 003C7824  7C 03 C0 40 */	cmplw r3, r24
/* 803FE268 003C7828  40 80 00 18 */	bge lbl_803FE280
lbl_803FE26C:
/* 803FE26C 003C782C  93 23 00 00 */	stw r25, 0(r3)
/* 803FE270 003C7830  93 23 00 04 */	stw r25, 4(r3)
/* 803FE274 003C7834  93 23 00 08 */	stw r25, 8(r3)
/* 803FE278 003C7838  38 63 00 10 */	addi r3, r3, 0x10
/* 803FE27C 003C783C  42 00 FF F0 */	bdnz lbl_803FE26C
lbl_803FE280:
/* 803FE280 003C7840  81 9A 00 00 */	lwz r12, 0(r26)
/* 803FE284 003C7844  7F 43 D3 78 */	mr r3, r26
/* 803FE288 003C7848  7F E5 FB 78 */	mr r5, r31
/* 803FE28C 003C784C  38 81 03 40 */	addi r4, r1, 0x340
/* 803FE290 003C7850  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 803FE294 003C7854  7D 89 03 A6 */	mtctr r12
/* 803FE298 003C7858  4E 80 04 21 */	bctrl 
/* 803FE29C 003C785C  80 83 00 00 */	lwz r4, 0(r3)
/* 803FE2A0 003C7860  7C 7E 1B 78 */	mr r30, r3
/* 803FE2A4 003C7864  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 803FE2A8 003C7868  41 82 05 D8 */	beq lbl_803FE880
/* 803FE2AC 003C786C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 803FE2B0 003C7870  41 82 02 14 */	beq lbl_803FE4C4
/* 803FE2B4 003C7874  80 03 00 08 */	lwz r0, 8(r3)
/* 803FE2B8 003C7878  38 80 00 00 */	li r4, 0
/* 803FE2BC 003C787C  90 01 00 20 */	stw r0, 0x20(r1)
/* 803FE2C0 003C7880  82 1B 00 00 */	lwz r16, 0(r27)
/* 803FE2C4 003C7884  80 10 00 08 */	lwz r0, 8(r16)
/* 803FE2C8 003C7888  2C 00 00 00 */	cmpwi r0, 0
/* 803FE2CC 003C788C  41 82 00 0C */	beq lbl_803FE2D8
/* 803FE2D0 003C7890  7D F0 02 14 */	add r15, r16, r0
/* 803FE2D4 003C7894  48 00 00 08 */	b lbl_803FE2DC
lbl_803FE2D8:
/* 803FE2D8 003C7898  39 E0 00 00 */	li r15, 0
lbl_803FE2DC:
/* 803FE2DC 003C789C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 803FE2E0 003C78A0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803FE2E4 003C78A4  41 82 00 28 */	beq lbl_803FE30C
/* 803FE2E8 003C78A8  38 61 00 20 */	addi r3, r1, 0x20
/* 803FE2EC 003C78AC  38 81 00 1C */	addi r4, r1, 0x1c
/* 803FE2F0 003C78B0  38 A1 00 0A */	addi r5, r1, 0xa
/* 803FE2F4 003C78B4  4B FD EF 01 */	bl func_803DD1F4
/* 803FE2F8 003C78B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803FE2FC 003C78BC  38 80 00 01 */	li r4, 1
/* 803FE300 003C78C0  90 01 02 38 */	stw r0, 0x238(r1)
/* 803FE304 003C78C4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 803FE308 003C78C8  D0 01 02 3C */	stfs f0, 0x23c(r1)
lbl_803FE30C:
/* 803FE30C 003C78CC  54 80 18 38 */	slwi r0, r4, 3
/* 803FE310 003C78D0  38 A1 02 38 */	addi r5, r1, 0x238
/* 803FE314 003C78D4  7F C3 F3 78 */	mr r3, r30
/* 803FE318 003C78D8  38 E0 00 00 */	li r7, 0
/* 803FE31C 003C78DC  7C A5 02 14 */	add r5, r5, r0
/* 803FE320 003C78E0  48 00 00 48 */	b lbl_803FE368
lbl_803FE324:
/* 803FE324 003C78E4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 803FE328 003C78E8  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803FE32C 003C78EC  41 82 00 34 */	beq lbl_803FE360
/* 803FE330 003C78F0  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 803FE334 003C78F4  80 06 00 08 */	lwz r0, 8(r6)
/* 803FE338 003C78F8  2C 00 00 00 */	cmpwi r0, 0
/* 803FE33C 003C78FC  41 82 00 0C */	beq lbl_803FE348
/* 803FE340 003C7900  7C 06 02 14 */	add r0, r6, r0
/* 803FE344 003C7904  48 00 00 08 */	b lbl_803FE34C
lbl_803FE348:
/* 803FE348 003C7908  38 00 00 00 */	li r0, 0
lbl_803FE34C:
/* 803FE34C 003C790C  90 05 00 00 */	stw r0, 0(r5)
/* 803FE350 003C7910  38 84 00 01 */	addi r4, r4, 1
/* 803FE354 003C7914  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 803FE358 003C7918  D0 05 00 04 */	stfs f0, 4(r5)
/* 803FE35C 003C791C  38 A5 00 08 */	addi r5, r5, 8
lbl_803FE360:
/* 803FE360 003C7920  38 63 00 10 */	addi r3, r3, 0x10
/* 803FE364 003C7924  38 E7 00 01 */	addi r7, r7, 1
lbl_803FE368:
/* 803FE368 003C7928  80 1E 00 04 */	lwz r0, 4(r30)
/* 803FE36C 003C792C  7C 07 00 00 */	cmpw r7, r0
/* 803FE370 003C7930  41 80 FF B4 */	blt lbl_803FE324
/* 803FE374 003C7934  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 803FE378 003C7938  54 80 18 38 */	slwi r0, r4, 3
/* 803FE37C 003C793C  38 61 02 38 */	addi r3, r1, 0x238
/* 803FE380 003C7940  A0 85 00 1E */	lhz r4, 0x1e(r5)
/* 803FE384 003C7944  7C 63 02 14 */	add r3, r3, r0
/* 803FE388 003C7948  1C 84 00 0C */	mulli r4, r4, 0xc
/* 803FE38C 003C794C  7D 0F 22 14 */	add r8, r15, r4
/* 803FE390 003C7950  48 00 01 10 */	b lbl_803FE4A0
lbl_803FE394:
/* 803FE394 003C7954  80 E1 02 38 */	lwz r7, 0x238(r1)
/* 803FE398 003C7958  38 A1 02 40 */	addi r5, r1, 0x240
/* 803FE39C 003C795C  38 C3 00 07 */	addi r6, r3, 7
/* 803FE3A0 003C7960  C0 41 02 3C */	lfs f2, 0x23c(r1)
/* 803FE3A4 003C7964  E0 07 00 00 */	psq_l f0, 0(r7), 0, qr0
/* 803FE3A8 003C7968  7C C5 30 50 */	subf r6, r5, r6
/* 803FE3AC 003C796C  E0 27 80 08 */	psq_l f1, 8(r7), 1, qr0
/* 803FE3B0 003C7970  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE3B4 003C7974  7C 05 18 40 */	cmplw r5, r3
/* 803FE3B8 003C7978  10 00 00 B2 */	ps_mul f0, f0, f2
/* 803FE3BC 003C797C  10 21 00 B2 */	ps_mul f1, f1, f2
/* 803FE3C0 003C7980  90 01 02 38 */	stw r0, 0x238(r1)
/* 803FE3C4 003C7984  54 C6 E8 FE */	srwi r6, r6, 3
/* 803FE3C8 003C7988  40 80 00 CC */	bge lbl_803FE494
/* 803FE3CC 003C798C  54 C0 F0 BF */	rlwinm. r0, r6, 0x1e, 2, 0x1f
/* 803FE3D0 003C7990  7C 09 03 A6 */	mtctr r0
/* 803FE3D4 003C7994  41 82 00 94 */	beq lbl_803FE468
lbl_803FE3D8:
/* 803FE3D8 003C7998  80 E5 00 00 */	lwz r7, 0(r5)
/* 803FE3DC 003C799C  C0 45 00 04 */	lfs f2, 4(r5)
/* 803FE3E0 003C79A0  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE3E4 003C79A4  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE3E8 003C79A8  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE3EC 003C79AC  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE3F0 003C79B0  90 05 00 00 */	stw r0, 0(r5)
/* 803FE3F4 003C79B4  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE3F8 003C79B8  80 E5 00 08 */	lwz r7, 8(r5)
/* 803FE3FC 003C79BC  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 803FE400 003C79C0  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE404 003C79C4  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE408 003C79C8  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE40C 003C79CC  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE410 003C79D0  90 05 00 08 */	stw r0, 8(r5)
/* 803FE414 003C79D4  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE418 003C79D8  80 E5 00 10 */	lwz r7, 0x10(r5)
/* 803FE41C 003C79DC  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 803FE420 003C79E0  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE424 003C79E4  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE428 003C79E8  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE42C 003C79EC  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE430 003C79F0  90 05 00 10 */	stw r0, 0x10(r5)
/* 803FE434 003C79F4  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE438 003C79F8  80 E5 00 18 */	lwz r7, 0x18(r5)
/* 803FE43C 003C79FC  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 803FE440 003C7A00  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE444 003C7A04  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE448 003C7A08  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE44C 003C7A0C  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE450 003C7A10  90 05 00 18 */	stw r0, 0x18(r5)
/* 803FE454 003C7A14  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE458 003C7A18  38 A5 00 20 */	addi r5, r5, 0x20
/* 803FE45C 003C7A1C  42 00 FF 7C */	bdnz lbl_803FE3D8
/* 803FE460 003C7A20  70 C6 00 03 */	andi. r6, r6, 3
/* 803FE464 003C7A24  41 82 00 30 */	beq lbl_803FE494
lbl_803FE468:
/* 803FE468 003C7A28  7C C9 03 A6 */	mtctr r6
lbl_803FE46C:
/* 803FE46C 003C7A2C  80 E5 00 00 */	lwz r7, 0(r5)
/* 803FE470 003C7A30  C0 45 00 04 */	lfs f2, 4(r5)
/* 803FE474 003C7A34  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE478 003C7A38  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE47C 003C7A3C  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE480 003C7A40  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE484 003C7A44  90 05 00 00 */	stw r0, 0(r5)
/* 803FE488 003C7A48  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE48C 003C7A4C  38 A5 00 08 */	addi r5, r5, 8
/* 803FE490 003C7A50  42 00 FF DC */	bdnz lbl_803FE46C
lbl_803FE494:
/* 803FE494 003C7A54  F0 0F 00 00 */	psq_st f0, 0(r15), 0, qr0
/* 803FE498 003C7A58  F0 2F 80 08 */	psq_st f1, 8(r15), 1, qr0
/* 803FE49C 003C7A5C  39 EF 00 0C */	addi r15, r15, 0xc
lbl_803FE4A0:
/* 803FE4A0 003C7A60  7C 0F 40 40 */	cmplw r15, r8
/* 803FE4A4 003C7A64  41 80 FE F0 */	blt lbl_803FE394
/* 803FE4A8 003C7A68  80 10 00 08 */	lwz r0, 8(r16)
/* 803FE4AC 003C7A6C  2C 00 00 00 */	cmpwi r0, 0
/* 803FE4B0 003C7A70  41 82 00 0C */	beq lbl_803FE4BC
/* 803FE4B4 003C7A74  7C 70 02 14 */	add r3, r16, r0
/* 803FE4B8 003C7A78  48 00 00 08 */	b lbl_803FE4C0
lbl_803FE4BC:
/* 803FE4BC 003C7A7C  38 60 00 00 */	li r3, 0
lbl_803FE4C0:
/* 803FE4C0 003C7A80  4B F5 5B 21 */	bl func_80353FE0
lbl_803FE4C4:
/* 803FE4C4 003C7A84  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FE4C8 003C7A88  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803FE4CC 003C7A8C  41 82 02 24 */	beq lbl_803FE6F0
/* 803FE4D0 003C7A90  2C 1C 00 00 */	cmpwi r28, 0
/* 803FE4D4 003C7A94  41 82 02 1C */	beq lbl_803FE6F0
/* 803FE4D8 003C7A98  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 803FE4DC 003C7A9C  38 60 00 00 */	li r3, 0
/* 803FE4E0 003C7AA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 803FE4E4 003C7AA4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 803FE4E8 003C7AA8  54 00 10 3A */	slwi r0, r0, 2
/* 803FE4EC 003C7AAC  7E 1C 00 2E */	lwzx r16, r28, r0
/* 803FE4F0 003C7AB0  80 10 00 08 */	lwz r0, 8(r16)
/* 803FE4F4 003C7AB4  2C 00 00 00 */	cmpwi r0, 0
/* 803FE4F8 003C7AB8  41 82 00 0C */	beq lbl_803FE504
/* 803FE4FC 003C7ABC  7D F0 02 14 */	add r15, r16, r0
/* 803FE500 003C7AC0  48 00 00 08 */	b lbl_803FE508
lbl_803FE504:
/* 803FE504 003C7AC4  39 E0 00 00 */	li r15, 0
lbl_803FE508:
/* 803FE508 003C7AC8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 803FE50C 003C7ACC  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803FE510 003C7AD0  41 82 00 28 */	beq lbl_803FE538
/* 803FE514 003C7AD4  38 61 00 18 */	addi r3, r1, 0x18
/* 803FE518 003C7AD8  38 81 00 14 */	addi r4, r1, 0x14
/* 803FE51C 003C7ADC  38 A1 00 09 */	addi r5, r1, 9
/* 803FE520 003C7AE0  4B FD ED A5 */	bl func_803DD2C4
/* 803FE524 003C7AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FE528 003C7AE8  38 60 00 01 */	li r3, 1
/* 803FE52C 003C7AEC  90 01 01 30 */	stw r0, 0x130(r1)
/* 803FE530 003C7AF0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 803FE534 003C7AF4  D0 01 01 34 */	stfs f0, 0x134(r1)
lbl_803FE538:
/* 803FE538 003C7AF8  54 60 18 38 */	slwi r0, r3, 3
/* 803FE53C 003C7AFC  38 A1 01 30 */	addi r5, r1, 0x130
/* 803FE540 003C7B00  7F C4 F3 78 */	mr r4, r30
/* 803FE544 003C7B04  38 E0 00 00 */	li r7, 0
/* 803FE548 003C7B08  7C A5 02 14 */	add r5, r5, r0
/* 803FE54C 003C7B0C  48 00 00 48 */	b lbl_803FE594
lbl_803FE550:
/* 803FE550 003C7B10  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 803FE554 003C7B14  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803FE558 003C7B18  41 82 00 34 */	beq lbl_803FE58C
/* 803FE55C 003C7B1C  80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 803FE560 003C7B20  80 06 00 08 */	lwz r0, 8(r6)
/* 803FE564 003C7B24  2C 00 00 00 */	cmpwi r0, 0
/* 803FE568 003C7B28  41 82 00 0C */	beq lbl_803FE574
/* 803FE56C 003C7B2C  7C 06 02 14 */	add r0, r6, r0
/* 803FE570 003C7B30  48 00 00 08 */	b lbl_803FE578
lbl_803FE574:
/* 803FE574 003C7B34  38 00 00 00 */	li r0, 0
lbl_803FE578:
/* 803FE578 003C7B38  90 05 00 00 */	stw r0, 0(r5)
/* 803FE57C 003C7B3C  38 63 00 01 */	addi r3, r3, 1
/* 803FE580 003C7B40  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 803FE584 003C7B44  D0 05 00 04 */	stfs f0, 4(r5)
/* 803FE588 003C7B48  38 A5 00 08 */	addi r5, r5, 8
lbl_803FE58C:
/* 803FE58C 003C7B4C  38 84 00 10 */	addi r4, r4, 0x10
/* 803FE590 003C7B50  38 E7 00 01 */	addi r7, r7, 1
lbl_803FE594:
/* 803FE594 003C7B54  80 1E 00 04 */	lwz r0, 4(r30)
/* 803FE598 003C7B58  7C 07 00 00 */	cmpw r7, r0
/* 803FE59C 003C7B5C  41 80 FF B4 */	blt lbl_803FE550
/* 803FE5A0 003C7B60  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803FE5A4 003C7B64  54 60 18 38 */	slwi r0, r3, 3
/* 803FE5A8 003C7B68  38 61 01 30 */	addi r3, r1, 0x130
/* 803FE5AC 003C7B6C  A0 84 00 1E */	lhz r4, 0x1e(r4)
/* 803FE5B0 003C7B70  7C 63 02 14 */	add r3, r3, r0
/* 803FE5B4 003C7B74  1C 84 00 0C */	mulli r4, r4, 0xc
/* 803FE5B8 003C7B78  7D 0F 22 14 */	add r8, r15, r4
/* 803FE5BC 003C7B7C  48 00 01 10 */	b lbl_803FE6CC
lbl_803FE5C0:
/* 803FE5C0 003C7B80  80 E1 01 30 */	lwz r7, 0x130(r1)
/* 803FE5C4 003C7B84  38 A1 01 38 */	addi r5, r1, 0x138
/* 803FE5C8 003C7B88  38 C3 00 07 */	addi r6, r3, 7
/* 803FE5CC 003C7B8C  C0 41 01 34 */	lfs f2, 0x134(r1)
/* 803FE5D0 003C7B90  E0 07 00 00 */	psq_l f0, 0(r7), 0, qr0
/* 803FE5D4 003C7B94  7C C5 30 50 */	subf r6, r5, r6
/* 803FE5D8 003C7B98  E0 27 80 08 */	psq_l f1, 8(r7), 1, qr0
/* 803FE5DC 003C7B9C  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE5E0 003C7BA0  7C 05 18 40 */	cmplw r5, r3
/* 803FE5E4 003C7BA4  10 00 00 B2 */	ps_mul f0, f0, f2
/* 803FE5E8 003C7BA8  10 21 00 B2 */	ps_mul f1, f1, f2
/* 803FE5EC 003C7BAC  90 01 01 30 */	stw r0, 0x130(r1)
/* 803FE5F0 003C7BB0  54 C6 E8 FE */	srwi r6, r6, 3
/* 803FE5F4 003C7BB4  40 80 00 CC */	bge lbl_803FE6C0
/* 803FE5F8 003C7BB8  54 C0 F0 BF */	rlwinm. r0, r6, 0x1e, 2, 0x1f
/* 803FE5FC 003C7BBC  7C 09 03 A6 */	mtctr r0
/* 803FE600 003C7BC0  41 82 00 94 */	beq lbl_803FE694
lbl_803FE604:
/* 803FE604 003C7BC4  80 E5 00 00 */	lwz r7, 0(r5)
/* 803FE608 003C7BC8  C0 45 00 04 */	lfs f2, 4(r5)
/* 803FE60C 003C7BCC  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE610 003C7BD0  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE614 003C7BD4  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE618 003C7BD8  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE61C 003C7BDC  90 05 00 00 */	stw r0, 0(r5)
/* 803FE620 003C7BE0  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE624 003C7BE4  80 E5 00 08 */	lwz r7, 8(r5)
/* 803FE628 003C7BE8  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 803FE62C 003C7BEC  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE630 003C7BF0  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE634 003C7BF4  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE638 003C7BF8  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE63C 003C7BFC  90 05 00 08 */	stw r0, 8(r5)
/* 803FE640 003C7C00  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE644 003C7C04  80 E5 00 10 */	lwz r7, 0x10(r5)
/* 803FE648 003C7C08  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 803FE64C 003C7C0C  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE650 003C7C10  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE654 003C7C14  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE658 003C7C18  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE65C 003C7C1C  90 05 00 10 */	stw r0, 0x10(r5)
/* 803FE660 003C7C20  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE664 003C7C24  80 E5 00 18 */	lwz r7, 0x18(r5)
/* 803FE668 003C7C28  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 803FE66C 003C7C2C  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE670 003C7C30  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE674 003C7C34  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE678 003C7C38  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE67C 003C7C3C  90 05 00 18 */	stw r0, 0x18(r5)
/* 803FE680 003C7C40  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE684 003C7C44  38 A5 00 20 */	addi r5, r5, 0x20
/* 803FE688 003C7C48  42 00 FF 7C */	bdnz lbl_803FE604
/* 803FE68C 003C7C4C  70 C6 00 03 */	andi. r6, r6, 3
/* 803FE690 003C7C50  41 82 00 30 */	beq lbl_803FE6C0
lbl_803FE694:
/* 803FE694 003C7C54  7C C9 03 A6 */	mtctr r6
lbl_803FE698:
/* 803FE698 003C7C58  80 E5 00 00 */	lwz r7, 0(r5)
/* 803FE69C 003C7C5C  C0 45 00 04 */	lfs f2, 4(r5)
/* 803FE6A0 003C7C60  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 803FE6A4 003C7C64  38 07 00 0C */	addi r0, r7, 0xc
/* 803FE6A8 003C7C68  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 803FE6AC 003C7C6C  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE6B0 003C7C70  90 05 00 00 */	stw r0, 0(r5)
/* 803FE6B4 003C7C74  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE6B8 003C7C78  38 A5 00 08 */	addi r5, r5, 8
/* 803FE6BC 003C7C7C  42 00 FF DC */	bdnz lbl_803FE698
lbl_803FE6C0:
/* 803FE6C0 003C7C80  F0 0F 00 00 */	psq_st f0, 0(r15), 0, qr0
/* 803FE6C4 003C7C84  F0 2F 80 08 */	psq_st f1, 8(r15), 1, qr0
/* 803FE6C8 003C7C88  39 EF 00 0C */	addi r15, r15, 0xc
lbl_803FE6CC:
/* 803FE6CC 003C7C8C  7C 0F 40 40 */	cmplw r15, r8
/* 803FE6D0 003C7C90  41 80 FE F0 */	blt lbl_803FE5C0
/* 803FE6D4 003C7C94  80 10 00 08 */	lwz r0, 8(r16)
/* 803FE6D8 003C7C98  2C 00 00 00 */	cmpwi r0, 0
/* 803FE6DC 003C7C9C  41 82 00 0C */	beq lbl_803FE6E8
/* 803FE6E0 003C7CA0  7C 70 02 14 */	add r3, r16, r0
/* 803FE6E4 003C7CA4  48 00 00 08 */	b lbl_803FE6EC
lbl_803FE6E8:
/* 803FE6E8 003C7CA8  38 60 00 00 */	li r3, 0
lbl_803FE6EC:
/* 803FE6EC 003C7CAC  4B F5 58 F5 */	bl func_80353FE0
lbl_803FE6F0:
/* 803FE6F0 003C7CB0  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FE6F4 003C7CB4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 803FE6F8 003C7CB8  41 82 01 88 */	beq lbl_803FE880
/* 803FE6FC 003C7CBC  2C 1D 00 00 */	cmpwi r29, 0
/* 803FE700 003C7CC0  41 82 01 80 */	beq lbl_803FE880
/* 803FE704 003C7CC4  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 803FE708 003C7CC8  38 60 00 00 */	li r3, 0
/* 803FE70C 003C7CCC  90 81 00 10 */	stw r4, 0x10(r1)
/* 803FE710 003C7CD0  80 04 00 10 */	lwz r0, 0x10(r4)
/* 803FE714 003C7CD4  54 00 10 3A */	slwi r0, r0, 2
/* 803FE718 003C7CD8  7E 1D 00 2E */	lwzx r16, r29, r0
/* 803FE71C 003C7CDC  80 10 00 08 */	lwz r0, 8(r16)
/* 803FE720 003C7CE0  2C 00 00 00 */	cmpwi r0, 0
/* 803FE724 003C7CE4  41 82 00 0C */	beq lbl_803FE730
/* 803FE728 003C7CE8  7D F0 02 14 */	add r15, r16, r0
/* 803FE72C 003C7CEC  48 00 00 08 */	b lbl_803FE734
lbl_803FE730:
/* 803FE730 003C7CF0  39 E0 00 00 */	li r15, 0
lbl_803FE734:
/* 803FE734 003C7CF4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 803FE738 003C7CF8  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803FE73C 003C7CFC  41 82 00 28 */	beq lbl_803FE764
/* 803FE740 003C7D00  38 61 00 10 */	addi r3, r1, 0x10
/* 803FE744 003C7D04  38 81 00 0C */	addi r4, r1, 0xc
/* 803FE748 003C7D08  38 A1 00 08 */	addi r5, r1, 8
/* 803FE74C 003C7D0C  4B FD EC 55 */	bl func_803DD3A0
/* 803FE750 003C7D10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803FE754 003C7D14  38 60 00 01 */	li r3, 1
/* 803FE758 003C7D18  90 01 00 28 */	stw r0, 0x28(r1)
/* 803FE75C 003C7D1C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 803FE760 003C7D20  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_803FE764:
/* 803FE764 003C7D24  54 60 18 38 */	slwi r0, r3, 3
/* 803FE768 003C7D28  38 A1 00 28 */	addi r5, r1, 0x28
/* 803FE76C 003C7D2C  7F C4 F3 78 */	mr r4, r30
/* 803FE770 003C7D30  38 E0 00 00 */	li r7, 0
/* 803FE774 003C7D34  7C A5 02 14 */	add r5, r5, r0
/* 803FE778 003C7D38  48 00 00 48 */	b lbl_803FE7C0
lbl_803FE77C:
/* 803FE77C 003C7D3C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 803FE780 003C7D40  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803FE784 003C7D44  41 82 00 34 */	beq lbl_803FE7B8
/* 803FE788 003C7D48  80 C4 00 20 */	lwz r6, 0x20(r4)
/* 803FE78C 003C7D4C  80 06 00 08 */	lwz r0, 8(r6)
/* 803FE790 003C7D50  2C 00 00 00 */	cmpwi r0, 0
/* 803FE794 003C7D54  41 82 00 0C */	beq lbl_803FE7A0
/* 803FE798 003C7D58  7C 06 02 14 */	add r0, r6, r0
/* 803FE79C 003C7D5C  48 00 00 08 */	b lbl_803FE7A4
lbl_803FE7A0:
/* 803FE7A0 003C7D60  38 00 00 00 */	li r0, 0
lbl_803FE7A4:
/* 803FE7A4 003C7D64  90 05 00 00 */	stw r0, 0(r5)
/* 803FE7A8 003C7D68  38 63 00 01 */	addi r3, r3, 1
/* 803FE7AC 003C7D6C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 803FE7B0 003C7D70  D0 05 00 04 */	stfs f0, 4(r5)
/* 803FE7B4 003C7D74  38 A5 00 08 */	addi r5, r5, 8
lbl_803FE7B8:
/* 803FE7B8 003C7D78  38 84 00 10 */	addi r4, r4, 0x10
/* 803FE7BC 003C7D7C  38 E7 00 01 */	addi r7, r7, 1
lbl_803FE7C0:
/* 803FE7C0 003C7D80  80 1E 00 04 */	lwz r0, 4(r30)
/* 803FE7C4 003C7D84  7C 07 00 00 */	cmpw r7, r0
/* 803FE7C8 003C7D88  41 80 FF B4 */	blt lbl_803FE77C
/* 803FE7CC 003C7D8C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803FE7D0 003C7D90  54 60 18 38 */	slwi r0, r3, 3
/* 803FE7D4 003C7D94  38 61 00 28 */	addi r3, r1, 0x28
/* 803FE7D8 003C7D98  A0 84 00 1E */	lhz r4, 0x1e(r4)
/* 803FE7DC 003C7D9C  7C 63 02 14 */	add r3, r3, r0
/* 803FE7E0 003C7DA0  54 84 10 3A */	slwi r4, r4, 2
/* 803FE7E4 003C7DA4  7C CF 22 14 */	add r6, r15, r4
/* 803FE7E8 003C7DA8  48 00 00 74 */	b lbl_803FE85C
lbl_803FE7EC:
/* 803FE7EC 003C7DAC  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 803FE7F0 003C7DB0  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 803FE7F4 003C7DB4  E0 05 20 00 */	psq_l f0, 0(r5), 0, qr2
/* 803FE7F8 003C7DB8  E0 25 20 02 */	psq_l f1, 2(r5), 0, qr2
/* 803FE7FC 003C7DBC  38 E1 00 30 */	addi r7, r1, 0x30
/* 803FE800 003C7DC0  38 03 00 07 */	addi r0, r3, 7
/* 803FE804 003C7DC4  38 A5 00 04 */	addi r5, r5, 4
/* 803FE808 003C7DC8  7C 07 00 50 */	subf r0, r7, r0
/* 803FE80C 003C7DCC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 803FE810 003C7DD0  54 00 E8 FE */	srwi r0, r0, 3
/* 803FE814 003C7DD4  10 00 00 B2 */	ps_mul f0, f0, f2
/* 803FE818 003C7DD8  10 21 00 B2 */	ps_mul f1, f1, f2
/* 803FE81C 003C7DDC  7C 09 03 A6 */	mtctr r0
/* 803FE820 003C7DE0  7C 07 18 40 */	cmplw r7, r3
/* 803FE824 003C7DE4  40 80 00 2C */	bge lbl_803FE850
lbl_803FE828:
/* 803FE828 003C7DE8  80 A7 00 00 */	lwz r5, 0(r7)
/* 803FE82C 003C7DEC  C0 47 00 04 */	lfs f2, 4(r7)
/* 803FE830 003C7DF0  E0 65 20 00 */	psq_l f3, 0(r5), 0, qr2
/* 803FE834 003C7DF4  E0 85 20 02 */	psq_l f4, 2(r5), 0, qr2
/* 803FE838 003C7DF8  38 05 00 04 */	addi r0, r5, 4
/* 803FE83C 003C7DFC  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 803FE840 003C7E00  90 07 00 00 */	stw r0, 0(r7)
/* 803FE844 003C7E04  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 803FE848 003C7E08  38 E7 00 08 */	addi r7, r7, 8
/* 803FE84C 003C7E0C  42 00 FF DC */	bdnz lbl_803FE828
lbl_803FE850:
/* 803FE850 003C7E10  F0 0F 20 00 */	psq_st f0, 0(r15), 0, qr2
/* 803FE854 003C7E14  F0 2F 20 02 */	psq_st f1, 2(r15), 0, qr2
/* 803FE858 003C7E18  39 EF 00 04 */	addi r15, r15, 4
lbl_803FE85C:
/* 803FE85C 003C7E1C  7C 0F 30 40 */	cmplw r15, r6
/* 803FE860 003C7E20  41 80 FF 8C */	blt lbl_803FE7EC
/* 803FE864 003C7E24  80 10 00 08 */	lwz r0, 8(r16)
/* 803FE868 003C7E28  2C 00 00 00 */	cmpwi r0, 0
/* 803FE86C 003C7E2C  41 82 00 0C */	beq lbl_803FE878
/* 803FE870 003C7E30  7C 70 02 14 */	add r3, r16, r0
/* 803FE874 003C7E34  48 00 00 08 */	b lbl_803FE87C
lbl_803FE878:
/* 803FE878 003C7E38  38 60 00 00 */	li r3, 0
lbl_803FE87C:
/* 803FE87C 003C7E3C  4B F5 57 65 */	bl func_80353FE0
lbl_803FE880:
/* 803FE880 003C7E40  3B 7B 00 04 */	addi r27, r27, 4
/* 803FE884 003C7E44  3B FF 00 01 */	addi r31, r31, 1
lbl_803FE888:
/* 803FE888 003C7E48  7C 1F B8 40 */	cmplw r31, r23
/* 803FE88C 003C7E4C  41 80 F8 A0 */	blt lbl_803FE12C
/* 803FE890 003C7E50  E3 E1 05 A8 */	psq_l f31, 1448(r1), 0, qr0
/* 803FE894 003C7E54  39 61 05 A0 */	addi r11, r1, 0x5a0
/* 803FE898 003C7E58  CB E1 05 A0 */	lfd f31, 0x5a0(r1)
/* 803FE89C 003C7E5C  4B EB B8 D1 */	bl _restgpr_14
/* 803FE8A0 003C7E60  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 803FE8A4 003C7E64  7C 08 03 A6 */	mtlr r0
/* 803FE8A8 003C7E68  38 21 05 B0 */	addi r1, r1, 0x5b0
/* 803FE8AC 003C7E6C  4E 80 00 20 */	blr 