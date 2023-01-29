.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __ieee754_acos, global
/* 802C7298 00290858  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C729C 0029085C  7C 08 02 A6 */	mflr r0
/* 802C72A0 00290860  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C72A4 00290864  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802C72A8 00290868  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 802C72AC 0029086C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802C72B0 00290870  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 802C72B4 00290874  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802C72B8 00290878  3C 00 3F F0 */	lis r0, 0x3ff0
/* 802C72BC 0029087C  80 81 00 08 */	lwz r4, 0x8(r1)
/* 802C72C0 00290880  54 83 00 7E */	clrlwi r3, r4, 1
/* 802C72C4 00290884  7C 03 00 00 */	cmpw r3, r0
/* 802C72C8 00290888  41 80 00 40 */	blt .L_802C7308
/* 802C72CC 0029088C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C72D0 00290890  3C 63 C0 10 */	addis r3, r3, 0xc010
/* 802C72D4 00290894  7C 60 03 79 */	or. r0, r3, r0
/* 802C72D8 00290898  40 82 00 1C */	bne .L_802C72F4
/* 802C72DC 0029089C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C72E0 002908A0  40 81 00 0C */	ble .L_802C72EC
/* 802C72E4 002908A4  C8 22 B5 20 */	lfd f1, "@52"@sda21(r2)
/* 802C72E8 002908A8  48 00 02 5C */	b .L_802C7544
.L_802C72EC:
/* 802C72EC 002908AC  C8 22 B5 28 */	lfd f1, "@53"@sda21(r2)
/* 802C72F0 002908B0  48 00 02 54 */	b .L_802C7544
.L_802C72F4:
/* 802C72F4 002908B4  3C 60 80 66 */	lis r3, __float_nan@ha
/* 802C72F8 002908B8  38 00 00 21 */	li r0, 0x21
/* 802C72FC 002908BC  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802C7300 002908C0  C0 23 58 88 */	lfs f1, __float_nan@l(r3)
/* 802C7304 002908C4  48 00 02 40 */	b .L_802C7544
.L_802C7308:
/* 802C7308 002908C8  3C 00 3F E0 */	lis r0, 0x3fe0
/* 802C730C 002908CC  7C 03 00 00 */	cmpw r3, r0
/* 802C7310 002908D0  40 80 00 B4 */	bge .L_802C73C4
/* 802C7314 002908D4  3C 00 3C 60 */	lis r0, 0x3c60
/* 802C7318 002908D8  7C 03 00 00 */	cmpw r3, r0
/* 802C731C 002908DC  41 81 00 0C */	bgt .L_802C7328
/* 802C7320 002908E0  C8 22 B5 30 */	lfd f1, "@54"@sda21(r2)
/* 802C7324 002908E4  48 00 02 20 */	b .L_802C7544
.L_802C7328:
/* 802C7328 002908E8  FD 81 00 72 */	fmul f12, f1, f1
/* 802C732C 002908EC  C8 02 B5 60 */	lfd f0, "@60"@sda21(r2)
/* 802C7330 002908F0  C8 42 B5 88 */	lfd f2, "@65"@sda21(r2)
/* 802C7334 002908F4  C8 62 B5 58 */	lfd f3, "@59"@sda21(r2)
/* 802C7338 002908F8  C9 42 B5 50 */	lfd f10, "@58"@sda21(r2)
/* 802C733C 002908FC  FC 80 03 32 */	fmul f4, f0, f12
/* 802C7340 00290900  C8 02 B5 80 */	lfd f0, "@64"@sda21(r2)
/* 802C7344 00290904  FC 42 03 32 */	fmul f2, f2, f12
/* 802C7348 00290908  C8 A2 B5 78 */	lfd f5, "@63"@sda21(r2)
/* 802C734C 0029090C  C9 22 B5 48 */	lfd f9, "@57"@sda21(r2)
/* 802C7350 00290910  FC 63 20 2A */	fadd f3, f3, f4
/* 802C7354 00290914  C8 82 B5 70 */	lfd f4, "@62"@sda21(r2)
/* 802C7358 00290918  FC 00 10 2A */	fadd f0, f0, f2
/* 802C735C 0029091C  FD 6C 00 F2 */	fmul f11, f12, f3
/* 802C7360 00290920  C9 02 B5 40 */	lfd f8, "@56"@sda21(r2)
/* 802C7364 00290924  C8 62 B5 68 */	lfd f3, "@61"@sda21(r2)
/* 802C7368 00290928  FC CC 00 32 */	fmul f6, f12, f0
/* 802C736C 0029092C  C8 E2 B5 38 */	lfd f7, "@55"@sda21(r2)
/* 802C7370 00290930  C8 42 B5 90 */	lfd f2, "@66"@sda21(r2)
/* 802C7374 00290934  FD 4A 58 2A */	fadd f10, f10, f11
/* 802C7378 00290938  C8 02 B5 30 */	lfd f0, "@54"@sda21(r2)
/* 802C737C 0029093C  FC A5 30 2A */	fadd f5, f5, f6
/* 802C7380 00290940  FC CC 02 B2 */	fmul f6, f12, f10
/* 802C7384 00290944  FC AC 01 72 */	fmul f5, f12, f5
/* 802C7388 00290948  FC C9 30 2A */	fadd f6, f9, f6
/* 802C738C 0029094C  FC 84 28 2A */	fadd f4, f4, f5
/* 802C7390 00290950  FC AC 01 B2 */	fmul f5, f12, f6
/* 802C7394 00290954  FC 8C 01 32 */	fmul f4, f12, f4
/* 802C7398 00290958  FC A8 28 2A */	fadd f5, f8, f5
/* 802C739C 0029095C  FC 83 20 2A */	fadd f4, f3, f4
/* 802C73A0 00290960  FC 6C 01 72 */	fmul f3, f12, f5
/* 802C73A4 00290964  FC 67 18 2A */	fadd f3, f7, f3
/* 802C73A8 00290968  FC 6C 00 F2 */	fmul f3, f12, f3
/* 802C73AC 0029096C  FC 63 20 24 */	fdiv f3, f3, f4
/* 802C73B0 00290970  FC 61 00 F2 */	fmul f3, f1, f3
/* 802C73B4 00290974  FC 42 18 28 */	fsub f2, f2, f3
/* 802C73B8 00290978  FC 21 10 28 */	fsub f1, f1, f2
/* 802C73BC 0029097C  FC 20 08 28 */	fsub f1, f0, f1
/* 802C73C0 00290980  48 00 01 84 */	b .L_802C7544
.L_802C73C4:
/* 802C73C4 00290984  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C73C8 00290988  40 80 00 B4 */	bge .L_802C747C
/* 802C73CC 0029098C  C9 62 B5 68 */	lfd f11, "@61"@sda21(r2)
/* 802C73D0 00290990  C8 02 B5 98 */	lfd f0, "@67"@sda21(r2)
/* 802C73D4 00290994  FC 2B 08 2A */	fadd f1, f11, f1
/* 802C73D8 00290998  C8 82 B5 60 */	lfd f4, "@60"@sda21(r2)
/* 802C73DC 0029099C  C9 22 B5 58 */	lfd f9, "@59"@sda21(r2)
/* 802C73E0 002909A0  C8 62 B5 80 */	lfd f3, "@64"@sda21(r2)
/* 802C73E4 002909A4  FC 20 00 72 */	fmul f1, f0, f1
/* 802C73E8 002909A8  C8 02 B5 88 */	lfd f0, "@65"@sda21(r2)
/* 802C73EC 002909AC  C9 02 B5 50 */	lfd f8, "@58"@sda21(r2)
/* 802C73F0 002909B0  C8 42 B5 78 */	lfd f2, "@63"@sda21(r2)
/* 802C73F4 002909B4  C8 E2 B5 48 */	lfd f7, "@57"@sda21(r2)
/* 802C73F8 002909B8  FD 44 00 72 */	fmul f10, f4, f1
/* 802C73FC 002909BC  C8 C2 B5 40 */	lfd f6, "@56"@sda21(r2)
/* 802C7400 002909C0  FC 80 00 72 */	fmul f4, f0, f1
/* 802C7404 002909C4  C8 02 B5 70 */	lfd f0, "@62"@sda21(r2)
/* 802C7408 002909C8  C8 A2 B5 38 */	lfd f5, "@55"@sda21(r2)
/* 802C740C 002909CC  FD 29 50 2A */	fadd f9, f9, f10
/* 802C7410 002909D0  FC 63 20 2A */	fadd f3, f3, f4
/* 802C7414 002909D4  FC 81 02 72 */	fmul f4, f1, f9
/* 802C7418 002909D8  FC 61 00 F2 */	fmul f3, f1, f3
/* 802C741C 002909DC  FC 88 20 2A */	fadd f4, f8, f4
/* 802C7420 002909E0  FC 42 18 2A */	fadd f2, f2, f3
/* 802C7424 002909E4  FC 61 01 32 */	fmul f3, f1, f4
/* 802C7428 002909E8  FC 41 00 B2 */	fmul f2, f1, f2
/* 802C742C 002909EC  FC 67 18 2A */	fadd f3, f7, f3
/* 802C7430 002909F0  FC 00 10 2A */	fadd f0, f0, f2
/* 802C7434 002909F4  FC 41 00 F2 */	fmul f2, f1, f3
/* 802C7438 002909F8  FC 01 00 32 */	fmul f0, f1, f0
/* 802C743C 002909FC  FC 46 10 2A */	fadd f2, f6, f2
/* 802C7440 00290A00  FF CB 00 2A */	fadd f30, f11, f0
/* 802C7444 00290A04  FC 01 00 B2 */	fmul f0, f1, f2
/* 802C7448 00290A08  FC 05 00 2A */	fadd f0, f5, f0
/* 802C744C 00290A0C  FF E1 00 32 */	fmul f31, f1, f0
/* 802C7450 00290A10  48 00 40 19 */	bl sqrt
/* 802C7454 00290A14  FC 9F F0 24 */	fdiv f4, f31, f30
/* 802C7458 00290A18  C8 62 B5 90 */	lfd f3, "@66"@sda21(r2)
/* 802C745C 00290A1C  C8 42 B5 A0 */	lfd f2, "@68"@sda21(r2)
/* 802C7460 00290A20  C8 02 B5 28 */	lfd f0, "@53"@sda21(r2)
/* 802C7464 00290A24  FC 84 00 72 */	fmul f4, f4, f1
/* 802C7468 00290A28  FC 64 18 28 */	fsub f3, f4, f3
/* 802C746C 00290A2C  FC 21 18 2A */	fadd f1, f1, f3
/* 802C7470 00290A30  FC 22 00 72 */	fmul f1, f2, f1
/* 802C7474 00290A34  FC 20 08 28 */	fsub f1, f0, f1
/* 802C7478 00290A38  48 00 00 CC */	b .L_802C7544
.L_802C747C:
/* 802C747C 00290A3C  C8 42 B5 68 */	lfd f2, "@61"@sda21(r2)
/* 802C7480 00290A40  C8 02 B5 98 */	lfd f0, "@67"@sda21(r2)
/* 802C7484 00290A44  FC 22 08 28 */	fsub f1, f2, f1
/* 802C7488 00290A48  FF E0 00 72 */	fmul f31, f0, f1
/* 802C748C 00290A4C  FC 20 F8 90 */	fmr f1, f31
/* 802C7490 00290A50  48 00 3F D9 */	bl sqrt
/* 802C7494 00290A54  C8 42 B5 60 */	lfd f2, "@60"@sda21(r2)
/* 802C7498 00290A58  38 00 00 00 */	li r0, 0x0
/* 802C749C 00290A5C  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 802C74A0 00290A60  FC 82 07 F2 */	fmul f4, f2, f31
/* 802C74A4 00290A64  C8 02 B5 88 */	lfd f0, "@65"@sda21(r2)
/* 802C74A8 00290A68  C8 62 B5 58 */	lfd f3, "@59"@sda21(r2)
/* 802C74AC 00290A6C  FC 40 07 F2 */	fmul f2, f0, f31
/* 802C74B0 00290A70  C8 02 B5 80 */	lfd f0, "@64"@sda21(r2)
/* 802C74B4 00290A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C74B8 00290A78  FC 63 20 2A */	fadd f3, f3, f4
/* 802C74BC 00290A7C  C9 61 00 10 */	lfd f11, 0x10(r1)
/* 802C74C0 00290A80  FC 00 10 2A */	fadd f0, f0, f2
/* 802C74C4 00290A84  FD 4B 02 F2 */	fmul f10, f11, f11
/* 802C74C8 00290A88  C8 C2 B5 50 */	lfd f6, "@58"@sda21(r2)
/* 802C74CC 00290A8C  C9 02 B5 48 */	lfd f8, "@57"@sda21(r2)
/* 802C74D0 00290A90  FC 5F 00 F2 */	fmul f2, f31, f3
/* 802C74D4 00290A94  C8 82 B5 78 */	lfd f4, "@63"@sda21(r2)
/* 802C74D8 00290A98  C8 E2 B5 40 */	lfd f7, "@56"@sda21(r2)
/* 802C74DC 00290A9C  FC BF 00 32 */	fmul f5, f31, f0
/* 802C74E0 00290AA0  C8 62 B5 70 */	lfd f3, "@62"@sda21(r2)
/* 802C74E4 00290AA4  FC 06 10 2A */	fadd f0, f6, f2
/* 802C74E8 00290AA8  C8 C2 B5 38 */	lfd f6, "@55"@sda21(r2)
/* 802C74EC 00290AAC  C8 42 B5 68 */	lfd f2, "@61"@sda21(r2)
/* 802C74F0 00290AB0  FD 5F 50 28 */	fsub f10, f31, f10
/* 802C74F4 00290AB4  FD 3F 00 32 */	fmul f9, f31, f0
/* 802C74F8 00290AB8  C8 02 B5 A0 */	lfd f0, "@68"@sda21(r2)
/* 802C74FC 00290ABC  FC 84 28 2A */	fadd f4, f4, f5
/* 802C7500 00290AC0  FC A8 48 2A */	fadd f5, f8, f9
/* 802C7504 00290AC4  FC 9F 01 32 */	fmul f4, f31, f4
/* 802C7508 00290AC8  FC BF 01 72 */	fmul f5, f31, f5
/* 802C750C 00290ACC  FC 63 20 2A */	fadd f3, f3, f4
/* 802C7510 00290AD0  FD 01 58 2A */	fadd f8, f1, f11
/* 802C7514 00290AD4  FC 87 28 2A */	fadd f4, f7, f5
/* 802C7518 00290AD8  FC 7F 00 F2 */	fmul f3, f31, f3
/* 802C751C 00290ADC  FC 9F 01 32 */	fmul f4, f31, f4
/* 802C7520 00290AE0  FC 62 18 2A */	fadd f3, f2, f3
/* 802C7524 00290AE4  FC AA 40 24 */	fdiv f5, f10, f8
/* 802C7528 00290AE8  FC 46 20 2A */	fadd f2, f6, f4
/* 802C752C 00290AEC  FC 5F 00 B2 */	fmul f2, f31, f2
/* 802C7530 00290AF0  FC 42 18 24 */	fdiv f2, f2, f3
/* 802C7534 00290AF4  FC 22 00 72 */	fmul f1, f2, f1
/* 802C7538 00290AF8  FC 25 08 2A */	fadd f1, f5, f1
/* 802C753C 00290AFC  FC 2B 08 2A */	fadd f1, f11, f1
/* 802C7540 00290B00  FC 20 00 72 */	fmul f1, f0, f1
.L_802C7544:
/* 802C7544 00290B04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C7548 00290B08  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 802C754C 00290B0C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802C7550 00290B10  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 802C7554 00290B14  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802C7558 00290B18  7C 08 03 A6 */	mtlr r0
/* 802C755C 00290B1C  38 21 00 40 */	addi r1, r1, 0x40
/* 802C7560 00290B20  4E 80 00 20 */	blr
.endfn __ieee754_acos

# 0x8066B8A0 - 0x8066B928
.section .sdata2, "a"
.balign 8

.obj "@52", local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj "@52"

.obj "@53", local
	.4byte 0x400921FB
	.4byte 0x54442D18
.endobj "@53"

.obj "@54", local
	.4byte 0x3FF921FB
	.4byte 0x54442D18
.endobj "@54"

.obj "@55", local
	.4byte 0x3FC55555
	.4byte 0x55555555
.endobj "@55"

.obj "@56", local
	.4byte 0xBFD4D612
	.4byte 0x03EB6F7D
.endobj "@56"

.obj "@57", local
	.4byte 0x3FC9C155
	.4byte 0x0E884455
.endobj "@57"

.obj "@58", local
	.4byte 0xBFA48228
	.4byte 0xB5688F3B
.endobj "@58"

.obj "@59", local
	.4byte 0x3F49EFE0
	.4byte 0x7501B288
.endobj "@59"

.obj "@60", local
	.4byte 0x3F023DE1
	.4byte 0x0DFDF709
.endobj "@60"

.obj "@61", local
	.4byte 0x3FF00000
	.4byte 0x00000000
.endobj "@61"

.obj "@62", local
	.4byte 0xC0033A27
	.4byte 0x1C8A2D4B
.endobj "@62"

.obj "@63", local
	.4byte 0x40002AE5
	.4byte 0x9C598AC8
.endobj "@63"

.obj "@64", local
	.4byte 0xBFE6066C
	.4byte 0x1B8D0159
.endobj "@64"

.obj "@65", local
	.4byte 0x3FB3B8C5
	.4byte 0xB12E9282
.endobj "@65"

.obj "@66", local
	.4byte 0x3C91A626
	.4byte 0x33145C07
.endobj "@66"

.obj "@67", local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj "@67"

.obj "@68", local
	.4byte 0x40000000
	.4byte 0x00000000
.endobj "@68"
