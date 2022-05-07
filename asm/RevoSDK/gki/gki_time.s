.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802DC200
func_802DC200:
/* 802DC200 002A57C0  3C 60 80 59 */	lis r3, lbl_80593140@ha
/* 802DC204 002A57C4  38 00 00 00 */	li r0, 0
/* 802DC208 002A57C8  38 63 31 40 */	addi r3, r3, lbl_80593140@l
/* 802DC20C 002A57CC  3C 63 00 03 */	addis r3, r3, 3
/* 802DC210 002A57D0  90 03 88 38 */	stw r0, -0x77c8(r3)
/* 802DC214 002A57D4  90 03 88 3C */	stw r0, -0x77c4(r3)
/* 802DC218 002A57D8  90 03 88 40 */	stw r0, -0x77c0(r3)
/* 802DC21C 002A57DC  90 03 88 60 */	stw r0, -0x77a0(r3)
/* 802DC220 002A57E0  90 03 88 80 */	stw r0, -0x7780(r3)
/* 802DC224 002A57E4  90 03 88 A0 */	stw r0, -0x7760(r3)
/* 802DC228 002A57E8  90 03 88 C0 */	stw r0, -0x7740(r3)
/* 802DC22C 002A57EC  90 03 88 44 */	stw r0, -0x77bc(r3)
/* 802DC230 002A57F0  90 03 88 64 */	stw r0, -0x779c(r3)
/* 802DC234 002A57F4  90 03 88 84 */	stw r0, -0x777c(r3)
/* 802DC238 002A57F8  90 03 88 A4 */	stw r0, -0x775c(r3)
/* 802DC23C 002A57FC  90 03 88 C4 */	stw r0, -0x773c(r3)
/* 802DC240 002A5800  90 03 88 48 */	stw r0, -0x77b8(r3)
/* 802DC244 002A5804  90 03 88 68 */	stw r0, -0x7798(r3)
/* 802DC248 002A5808  90 03 88 88 */	stw r0, -0x7778(r3)
/* 802DC24C 002A580C  90 03 88 A8 */	stw r0, -0x7758(r3)
/* 802DC250 002A5810  90 03 88 C8 */	stw r0, -0x7738(r3)
/* 802DC254 002A5814  90 03 88 4C */	stw r0, -0x77b4(r3)
/* 802DC258 002A5818  90 03 88 6C */	stw r0, -0x7794(r3)
/* 802DC25C 002A581C  90 03 88 8C */	stw r0, -0x7774(r3)
/* 802DC260 002A5820  90 03 88 AC */	stw r0, -0x7754(r3)
/* 802DC264 002A5824  90 03 88 CC */	stw r0, -0x7734(r3)
/* 802DC268 002A5828  90 03 88 50 */	stw r0, -0x77b0(r3)
/* 802DC26C 002A582C  90 03 88 70 */	stw r0, -0x7790(r3)
/* 802DC270 002A5830  90 03 88 90 */	stw r0, -0x7770(r3)
/* 802DC274 002A5834  90 03 88 B0 */	stw r0, -0x7750(r3)
/* 802DC278 002A5838  90 03 88 D0 */	stw r0, -0x7730(r3)
/* 802DC27C 002A583C  90 03 88 54 */	stw r0, -0x77ac(r3)
/* 802DC280 002A5840  90 03 88 74 */	stw r0, -0x778c(r3)
/* 802DC284 002A5844  90 03 88 94 */	stw r0, -0x776c(r3)
/* 802DC288 002A5848  90 03 88 B4 */	stw r0, -0x774c(r3)
/* 802DC28C 002A584C  90 03 88 D4 */	stw r0, -0x772c(r3)
/* 802DC290 002A5850  90 03 88 58 */	stw r0, -0x77a8(r3)
/* 802DC294 002A5854  90 03 88 78 */	stw r0, -0x7788(r3)
/* 802DC298 002A5858  90 03 88 98 */	stw r0, -0x7768(r3)
/* 802DC29C 002A585C  90 03 88 B8 */	stw r0, -0x7748(r3)
/* 802DC2A0 002A5860  90 03 88 D8 */	stw r0, -0x7728(r3)
/* 802DC2A4 002A5864  90 03 88 5C */	stw r0, -0x77a4(r3)
/* 802DC2A8 002A5868  90 03 88 7C */	stw r0, -0x7784(r3)
/* 802DC2AC 002A586C  90 03 88 9C */	stw r0, -0x7764(r3)
/* 802DC2B0 002A5870  90 03 88 BC */	stw r0, -0x7744(r3)
/* 802DC2B4 002A5874  90 03 88 DC */	stw r0, -0x7724(r3)
/* 802DC2B8 002A5878  4E 80 00 20 */	blr 
/* 802DC2BC 002A587C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DC2C0
func_802DC2C0:
/* 802DC2C0 002A5880  3C 60 80 59 */	lis r3, lbl_80593140@ha
/* 802DC2C4 002A5884  38 63 31 40 */	addi r3, r3, lbl_80593140@l
/* 802DC2C8 002A5888  3C 63 00 03 */	addis r3, r3, 3
/* 802DC2CC 002A588C  80 63 88 28 */	lwz r3, -0x77d8(r3)
/* 802DC2D0 002A5890  4E 80 00 20 */	blr 
/* 802DC2D4 002A5894  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC2D8 002A5898  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC2DC 002A589C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DC2E0
func_802DC2E0:
/* 802DC2E0 002A58A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC2E4 002A58A4  7C 08 02 A6 */	mflr r0
/* 802DC2E8 002A58A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC2EC 002A58AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC2F0 002A58B0  4B FD DE 65 */	bl _savegpr_27
/* 802DC2F4 002A58B4  7C 7B 1B 78 */	mr r27, r3
/* 802DC2F8 002A58B8  7C 9D 23 78 */	mr r29, r4
/* 802DC2FC 002A58BC  7C BF 2B 78 */	mr r31, r5
/* 802DC300 002A58C0  48 00 06 C1 */	bl func_802DC9C0
/* 802DC304 002A58C4  2C 1D 00 00 */	cmpwi r29, 0
/* 802DC308 002A58C8  7C 7C 1B 78 */	mr r28, r3
/* 802DC30C 002A58CC  3B C0 00 00 */	li r30, 0
/* 802DC310 002A58D0  41 81 00 08 */	bgt lbl_802DC318
/* 802DC314 002A58D4  3B A0 00 01 */	li r29, 1
lbl_802DC318:
/* 802DC318 002A58D8  7C 1F 00 D0 */	neg r0, r31
/* 802DC31C 002A58DC  7C 00 FB 78 */	or r0, r0, r31
/* 802DC320 002A58E0  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 802DC324 002A58E4  7F BF 00 38 */	and r31, r29, r0
/* 802DC328 002A58E8  48 00 06 D9 */	bl func_802DCA00
/* 802DC32C 002A58EC  3C 80 80 59 */	lis r4, lbl_80593140@ha
/* 802DC330 002A58F0  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 802DC334 002A58F4  38 84 31 40 */	addi r4, r4, lbl_80593140@l
/* 802DC338 002A58F8  3C A4 00 03 */	addis r5, r4, 3
/* 802DC33C 002A58FC  38 83 FF FF */	addi r4, r3, 0x7FFFFFFF@l
/* 802DC340 002A5900  80 65 88 38 */	lwz r3, -0x77c8(r5)
/* 802DC344 002A5904  80 05 88 3C */	lwz r0, -0x77c4(r5)
/* 802DC348 002A5908  7C 63 00 50 */	subf r3, r3, r0
/* 802DC34C 002A590C  7C 03 20 50 */	subf r0, r3, r4
/* 802DC350 002A5910  7C 00 E8 00 */	cmpw r0, r29
/* 802DC354 002A5914  40 81 00 08 */	ble lbl_802DC35C
/* 802DC358 002A5918  7C 9D 1A 14 */	add r4, r29, r3
lbl_802DC35C:
/* 802DC35C 002A591C  2C 1B 00 00 */	cmpwi r27, 0
/* 802DC360 002A5920  41 82 00 10 */	beq lbl_802DC370
/* 802DC364 002A5924  2C 1B 00 01 */	cmpwi r27, 1
/* 802DC368 002A5928  41 82 00 28 */	beq lbl_802DC390
/* 802DC36C 002A592C  48 00 00 44 */	b lbl_802DC3B0
lbl_802DC370:
/* 802DC370 002A5930  3C 60 80 59 */	lis r3, lbl_80593140@ha
/* 802DC374 002A5934  57 85 15 BA */	rlwinm r5, r28, 2, 0x16, 0x1d
/* 802DC378 002A5938  38 63 31 40 */	addi r3, r3, lbl_80593140@l
/* 802DC37C 002A593C  3C 03 00 03 */	addis r0, r3, 3
/* 802DC380 002A5940  7C 60 2A 14 */	add r3, r0, r5
/* 802DC384 002A5944  93 E3 88 80 */	stw r31, -0x7780(r3)
/* 802DC388 002A5948  90 83 88 60 */	stw r4, -0x77a0(r3)
/* 802DC38C 002A594C  48 00 00 28 */	b lbl_802DC3B4
lbl_802DC390:
/* 802DC390 002A5950  3C 60 80 59 */	lis r3, lbl_80593140@ha
/* 802DC394 002A5954  57 85 15 BA */	rlwinm r5, r28, 2, 0x16, 0x1d
/* 802DC398 002A5958  38 63 31 40 */	addi r3, r3, lbl_80593140@l
/* 802DC39C 002A595C  3C 03 00 03 */	addis r0, r3, 3
/* 802DC3A0 002A5960  7C 60 2A 14 */	add r3, r0, r5
/* 802DC3A4 002A5964  93 E3 88 C0 */	stw r31, -0x7740(r3)
/* 802DC3A8 002A5968  90 83 88 A0 */	stw r4, -0x7760(r3)
/* 802DC3AC 002A596C  48 00 00 08 */	b lbl_802DC3B4
lbl_802DC3B0:
/* 802DC3B0 002A5970  3B C0 00 01 */	li r30, 1
lbl_802DC3B4:
/* 802DC3B4 002A5974  2C 1E 00 00 */	cmpwi r30, 0
/* 802DC3B8 002A5978  40 82 00 58 */	bne lbl_802DC410
/* 802DC3BC 002A597C  2C 1D 00 00 */	cmpwi r29, 0
/* 802DC3C0 002A5980  40 81 00 50 */	ble lbl_802DC410
/* 802DC3C4 002A5984  3C 60 80 59 */	lis r3, lbl_80593140@ha
/* 802DC3C8 002A5988  38 63 31 40 */	addi r3, r3, lbl_80593140@l
/* 802DC3CC 002A598C  3C 63 00 03 */	addis r3, r3, 3
/* 802DC3D0 002A5990  80 83 88 3C */	lwz r4, -0x77c4(r3)
/* 802DC3D4 002A5994  2C 04 00 00 */	cmpwi r4, 0
/* 802DC3D8 002A5998  41 82 00 18 */	beq lbl_802DC3F0
/* 802DC3DC 002A599C  80 03 88 38 */	lwz r0, -0x77c8(r3)
/* 802DC3E0 002A59A0  7C 1D 00 00 */	cmpw r29, r0
/* 802DC3E4 002A59A4  40 80 00 2C */	bge lbl_802DC410
/* 802DC3E8 002A59A8  2C 00 00 00 */	cmpwi r0, 0
/* 802DC3EC 002A59AC  40 81 00 24 */	ble lbl_802DC410
lbl_802DC3F0:
/* 802DC3F0 002A59B0  3C 60 80 59 */	lis r3, lbl_80593140@ha
/* 802DC3F4 002A59B4  38 63 31 40 */	addi r3, r3, lbl_80593140@l
/* 802DC3F8 002A59B8  3C 63 00 03 */	addis r3, r3, 3
/* 802DC3FC 002A59BC  80 03 88 38 */	lwz r0, -0x77c8(r3)
/* 802DC400 002A59C0  7C 00 20 50 */	subf r0, r0, r4
/* 802DC404 002A59C4  7C 1D 02 14 */	add r0, r29, r0
/* 802DC408 002A59C8  90 03 88 3C */	stw r0, -0x77c4(r3)
/* 802DC40C 002A59CC  93 A3 88 38 */	stw r29, -0x77c8(r3)
lbl_802DC410:
/* 802DC410 002A59D0  48 00 05 C1 */	bl func_802DC9D0
/* 802DC414 002A59D4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC418 002A59D8  4B FD DD 89 */	bl _restgpr_27
/* 802DC41C 002A59DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC420 002A59E0  7C 08 03 A6 */	mtlr r0
/* 802DC424 002A59E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC428 002A59E8  4E 80 00 20 */	blr 
/* 802DC42C 002A59EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DC430
func_802DC430:
/* 802DC430 002A59F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC434 002A59F4  7C 08 02 A6 */	mflr r0
/* 802DC438 002A59F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC43C 002A59FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC440 002A5A00  7C 7F 1B 78 */	mr r31, r3
/* 802DC444 002A5A04  48 00 05 7D */	bl func_802DC9C0
/* 802DC448 002A5A08  2C 1F 00 00 */	cmpwi r31, 0
/* 802DC44C 002A5A0C  41 82 00 10 */	beq lbl_802DC45C
/* 802DC450 002A5A10  2C 1F 00 01 */	cmpwi r31, 1
/* 802DC454 002A5A14  41 82 00 2C */	beq lbl_802DC480
/* 802DC458 002A5A18  48 00 00 48 */	b lbl_802DC4A0
lbl_802DC45C:
/* 802DC45C 002A5A1C  3C 80 80 59 */	lis r4, lbl_80593140@ha
/* 802DC460 002A5A20  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 802DC464 002A5A24  38 84 31 40 */	addi r4, r4, lbl_80593140@l
/* 802DC468 002A5A28  38 A0 00 00 */	li r5, 0
/* 802DC46C 002A5A2C  3C 04 00 03 */	addis r0, r4, 3
/* 802DC470 002A5A30  7C 60 1A 14 */	add r3, r0, r3
/* 802DC474 002A5A34  90 A3 88 80 */	stw r5, -0x7780(r3)
/* 802DC478 002A5A38  90 A3 88 60 */	stw r5, -0x77a0(r3)
/* 802DC47C 002A5A3C  48 00 00 24 */	b lbl_802DC4A0
lbl_802DC480:
/* 802DC480 002A5A40  3C 80 80 59 */	lis r4, lbl_80593140@ha
/* 802DC484 002A5A44  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 802DC488 002A5A48  38 84 31 40 */	addi r4, r4, lbl_80593140@l
/* 802DC48C 002A5A4C  38 A0 00 00 */	li r5, 0
/* 802DC490 002A5A50  3C 04 00 03 */	addis r0, r4, 3
/* 802DC494 002A5A54  7C 60 1A 14 */	add r3, r0, r3
/* 802DC498 002A5A58  90 A3 88 C0 */	stw r5, -0x7740(r3)
/* 802DC49C 002A5A5C  90 A3 88 A0 */	stw r5, -0x7760(r3)
lbl_802DC4A0:
/* 802DC4A0 002A5A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC4A4 002A5A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC4A8 002A5A68  7C 08 03 A6 */	mtlr r0
/* 802DC4AC 002A5A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC4B0 002A5A70  4E 80 00 20 */	blr 
/* 802DC4B4 002A5A74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC4B8 002A5A78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC4BC 002A5A7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DC4C0
func_802DC4C0:
/* 802DC4C0 002A5A80  38 00 00 00 */	li r0, 0
/* 802DC4C4 002A5A84  90 03 00 00 */	stw r0, 0(r3)
/* 802DC4C8 002A5A88  90 03 00 04 */	stw r0, 4(r3)
/* 802DC4CC 002A5A8C  90 03 00 08 */	stw r0, 8(r3)
/* 802DC4D0 002A5A90  4E 80 00 20 */	blr 
/* 802DC4D4 002A5A94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC4D8 002A5A98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC4DC 002A5A9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DC4E0
func_802DC4E0:
/* 802DC4E0 002A5AA0  80 C3 00 00 */	lwz r6, 0(r3)
/* 802DC4E4 002A5AA4  38 E0 00 00 */	li r7, 0
/* 802DC4E8 002A5AA8  48 00 00 10 */	b lbl_802DC4F8
/* 802DC4EC 002A5AAC  60 00 00 00 */	nop 
lbl_802DC4F0:
/* 802DC4F0 002A5AB0  80 C6 00 00 */	lwz r6, 0(r6)
/* 802DC4F4 002A5AB4  38 E7 00 01 */	addi r7, r7, 1
lbl_802DC4F8:
/* 802DC4F8 002A5AB8  2C 06 00 00 */	cmpwi r6, 0
/* 802DC4FC 002A5ABC  41 82 00 10 */	beq lbl_802DC50C
/* 802DC500 002A5AC0  80 06 00 0C */	lwz r0, 0xc(r6)
/* 802DC504 002A5AC4  2C 00 00 00 */	cmpwi r0, 0
/* 802DC508 002A5AC8  40 81 FF E8 */	ble lbl_802DC4F0
lbl_802DC50C:
/* 802DC50C 002A5ACC  7C 88 23 78 */	mr r8, r4
/* 802DC510 002A5AD0  38 00 00 00 */	li r0, 0
/* 802DC514 002A5AD4  48 00 00 24 */	b lbl_802DC538
lbl_802DC518:
/* 802DC518 002A5AD8  81 26 00 0C */	lwz r9, 0xc(r6)
/* 802DC51C 002A5ADC  7C A8 48 51 */	subf. r5, r8, r9
/* 802DC520 002A5AE0  90 A6 00 0C */	stw r5, 0xc(r6)
/* 802DC524 002A5AE4  41 81 00 0C */	bgt lbl_802DC530
/* 802DC528 002A5AE8  90 06 00 0C */	stw r0, 0xc(r6)
/* 802DC52C 002A5AEC  38 E7 00 01 */	addi r7, r7, 1
lbl_802DC530:
/* 802DC530 002A5AF0  7D 09 40 50 */	subf r8, r9, r8
/* 802DC534 002A5AF4  80 C6 00 00 */	lwz r6, 0(r6)
lbl_802DC538:
/* 802DC538 002A5AF8  2C 06 00 00 */	cmpwi r6, 0
/* 802DC53C 002A5AFC  41 82 00 0C */	beq lbl_802DC548
/* 802DC540 002A5B00  2C 08 00 00 */	cmpwi r8, 0
/* 802DC544 002A5B04  41 81 FF D4 */	bgt lbl_802DC518
lbl_802DC548:
/* 802DC548 002A5B08  80 03 00 08 */	lwz r0, 8(r3)
/* 802DC54C 002A5B0C  2C 00 00 00 */	cmpwi r0, 0
/* 802DC550 002A5B10  40 81 00 18 */	ble lbl_802DC568
/* 802DC554 002A5B14  7C 04 00 51 */	subf. r0, r4, r0
/* 802DC558 002A5B18  90 03 00 08 */	stw r0, 8(r3)
/* 802DC55C 002A5B1C  40 80 00 0C */	bge lbl_802DC568
/* 802DC560 002A5B20  38 00 00 00 */	li r0, 0
/* 802DC564 002A5B24  90 03 00 08 */	stw r0, 8(r3)
lbl_802DC568:
/* 802DC568 002A5B28  7C E3 3B 78 */	mr r3, r7
/* 802DC56C 002A5B2C  4E 80 00 20 */	blr 

.global func_802DC570
func_802DC570:
/* 802DC570 002A5B30  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802DC574 002A5B34  2C 05 00 00 */	cmpwi r5, 0
/* 802DC578 002A5B38  4D 80 00 20 */	bltlr 
/* 802DC57C 002A5B3C  80 03 00 08 */	lwz r0, 8(r3)
/* 802DC580 002A5B40  7C 05 00 00 */	cmpw r5, r0
/* 802DC584 002A5B44  41 80 00 54 */	blt lbl_802DC5D8
/* 802DC588 002A5B48  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC58C 002A5B4C  2C 00 00 00 */	cmpwi r0, 0
/* 802DC590 002A5B50  40 82 00 0C */	bne lbl_802DC59C
/* 802DC594 002A5B54  90 83 00 00 */	stw r4, 0(r3)
/* 802DC598 002A5B58  48 00 00 1C */	b lbl_802DC5B4
lbl_802DC59C:
/* 802DC59C 002A5B5C  80 A3 00 04 */	lwz r5, 4(r3)
/* 802DC5A0 002A5B60  2C 05 00 00 */	cmpwi r5, 0
/* 802DC5A4 002A5B64  41 82 00 08 */	beq lbl_802DC5AC
/* 802DC5A8 002A5B68  90 85 00 00 */	stw r4, 0(r5)
lbl_802DC5AC:
/* 802DC5AC 002A5B6C  80 03 00 04 */	lwz r0, 4(r3)
/* 802DC5B0 002A5B70  90 04 00 04 */	stw r0, 4(r4)
lbl_802DC5B4:
/* 802DC5B4 002A5B74  38 00 00 00 */	li r0, 0
/* 802DC5B8 002A5B78  90 04 00 00 */	stw r0, 0(r4)
/* 802DC5BC 002A5B7C  90 83 00 04 */	stw r4, 4(r3)
/* 802DC5C0 002A5B80  80 03 00 08 */	lwz r0, 8(r3)
/* 802DC5C4 002A5B84  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802DC5C8 002A5B88  7C 00 28 50 */	subf r0, r0, r5
/* 802DC5CC 002A5B8C  90 04 00 0C */	stw r0, 0xc(r4)
/* 802DC5D0 002A5B90  90 A3 00 08 */	stw r5, 8(r3)
/* 802DC5D4 002A5B94  48 00 00 7C */	b lbl_802DC650
lbl_802DC5D8:
/* 802DC5D8 002A5B98  80 C3 00 00 */	lwz r6, 0(r3)
/* 802DC5DC 002A5B9C  48 00 00 1C */	b lbl_802DC5F8
lbl_802DC5E0:
/* 802DC5E0 002A5BA0  2C 05 00 00 */	cmpwi r5, 0
/* 802DC5E4 002A5BA4  40 81 00 10 */	ble lbl_802DC5F4
/* 802DC5E8 002A5BA8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802DC5EC 002A5BAC  7C 05 00 50 */	subf r0, r5, r0
/* 802DC5F0 002A5BB0  90 04 00 0C */	stw r0, 0xc(r4)
lbl_802DC5F4:
/* 802DC5F4 002A5BB4  80 C6 00 00 */	lwz r6, 0(r6)
lbl_802DC5F8:
/* 802DC5F8 002A5BB8  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 802DC5FC 002A5BBC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802DC600 002A5BC0  7C 00 28 00 */	cmpw r0, r5
/* 802DC604 002A5BC4  41 81 FF DC */	bgt lbl_802DC5E0
/* 802DC608 002A5BC8  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC60C 002A5BCC  7C 06 00 40 */	cmplw r6, r0
/* 802DC610 002A5BD0  40 82 00 18 */	bne lbl_802DC628
/* 802DC614 002A5BD4  90 04 00 00 */	stw r0, 0(r4)
/* 802DC618 002A5BD8  80 A3 00 00 */	lwz r5, 0(r3)
/* 802DC61C 002A5BDC  90 85 00 04 */	stw r4, 4(r5)
/* 802DC620 002A5BE0  90 83 00 00 */	stw r4, 0(r3)
/* 802DC624 002A5BE4  48 00 00 1C */	b lbl_802DC640
lbl_802DC628:
/* 802DC628 002A5BE8  80 66 00 04 */	lwz r3, 4(r6)
/* 802DC62C 002A5BEC  90 83 00 00 */	stw r4, 0(r3)
/* 802DC630 002A5BF0  80 06 00 04 */	lwz r0, 4(r6)
/* 802DC634 002A5BF4  90 04 00 04 */	stw r0, 4(r4)
/* 802DC638 002A5BF8  90 86 00 04 */	stw r4, 4(r6)
/* 802DC63C 002A5BFC  90 C4 00 00 */	stw r6, 0(r4)
lbl_802DC640:
/* 802DC640 002A5C00  80 64 00 0C */	lwz r3, 0xc(r4)
/* 802DC644 002A5C04  80 06 00 0C */	lwz r0, 0xc(r6)
/* 802DC648 002A5C08  7C 03 00 50 */	subf r0, r3, r0
/* 802DC64C 002A5C0C  90 06 00 0C */	stw r0, 0xc(r6)
lbl_802DC650:
/* 802DC650 002A5C10  38 00 00 01 */	li r0, 1
/* 802DC654 002A5C14  98 04 00 16 */	stb r0, 0x16(r4)
/* 802DC658 002A5C18  4E 80 00 20 */	blr 
/* 802DC65C 002A5C1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DC660
func_802DC660:
/* 802DC660 002A5C20  2C 04 00 00 */	cmpwi r4, 0
/* 802DC664 002A5C24  4D 82 00 20 */	beqlr 
/* 802DC668 002A5C28  88 04 00 16 */	lbz r0, 0x16(r4)
/* 802DC66C 002A5C2C  2C 00 00 00 */	cmpwi r0, 0
/* 802DC670 002A5C30  4D 82 00 20 */	beqlr 
/* 802DC674 002A5C34  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC678 002A5C38  2C 00 00 00 */	cmpwi r0, 0
/* 802DC67C 002A5C3C  40 82 00 08 */	bne lbl_802DC684
/* 802DC680 002A5C40  4E 80 00 20 */	blr

.global lbl_802DC684
lbl_802DC684:
/* 802DC684 002A5C44  80 C4 00 00 */	lwz r6, 0(r4)
/* 802DC688 002A5C48  2C 06 00 00 */	cmpwi r6, 0
/* 802DC68C 002A5C4C  41 82 00 18 */	beq lbl_802DC6A4
/* 802DC690 002A5C50  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 802DC694 002A5C54  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802DC698 002A5C58  7C 05 02 14 */	add r0, r5, r0
/* 802DC69C 002A5C5C  90 06 00 0C */	stw r0, 0xc(r6)
/* 802DC6A0 002A5C60  48 00 00 14 */	b lbl_802DC6B4
lbl_802DC6A4:
/* 802DC6A4 002A5C64  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802DC6A8 002A5C68  80 03 00 08 */	lwz r0, 8(r3)
/* 802DC6AC 002A5C6C  7C 05 00 50 */	subf r0, r5, r0
/* 802DC6B0 002A5C70  90 03 00 08 */	stw r0, 8(r3)
lbl_802DC6B4:
/* 802DC6B4 002A5C74  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC6B8 002A5C78  7C 00 20 40 */	cmplw r0, r4
/* 802DC6BC 002A5C7C  40 82 00 34 */	bne lbl_802DC6F0
/* 802DC6C0 002A5C80  80 A4 00 00 */	lwz r5, 0(r4)
/* 802DC6C4 002A5C84  90 A3 00 00 */	stw r5, 0(r3)
/* 802DC6C8 002A5C88  2C 05 00 00 */	cmpwi r5, 0
/* 802DC6CC 002A5C8C  41 82 00 0C */	beq lbl_802DC6D8
/* 802DC6D0 002A5C90  38 00 00 00 */	li r0, 0
/* 802DC6D4 002A5C94  90 05 00 04 */	stw r0, 4(r5)
lbl_802DC6D8:
/* 802DC6D8 002A5C98  80 03 00 04 */	lwz r0, 4(r3)
/* 802DC6DC 002A5C9C  7C 00 20 40 */	cmplw r0, r4
/* 802DC6E0 002A5CA0  40 82 00 88 */	bne lbl_802DC768
/* 802DC6E4 002A5CA4  38 00 00 00 */	li r0, 0
/* 802DC6E8 002A5CA8  90 03 00 04 */	stw r0, 4(r3)
/* 802DC6EC 002A5CAC  48 00 00 7C */	b lbl_802DC768
lbl_802DC6F0:
/* 802DC6F0 002A5CB0  80 03 00 04 */	lwz r0, 4(r3)
/* 802DC6F4 002A5CB4  7C 00 20 40 */	cmplw r0, r4
/* 802DC6F8 002A5CB8  40 82 00 20 */	bne lbl_802DC718
/* 802DC6FC 002A5CBC  80 A4 00 04 */	lwz r5, 4(r4)
/* 802DC700 002A5CC0  90 A3 00 04 */	stw r5, 4(r3)
/* 802DC704 002A5CC4  2C 05 00 00 */	cmpwi r5, 0
/* 802DC708 002A5CC8  41 82 00 60 */	beq lbl_802DC768
/* 802DC70C 002A5CCC  38 00 00 00 */	li r0, 0
/* 802DC710 002A5CD0  90 05 00 00 */	stw r0, 0(r5)
/* 802DC714 002A5CD4  48 00 00 54 */	b lbl_802DC768
lbl_802DC718:
/* 802DC718 002A5CD8  80 64 00 00 */	lwz r3, 0(r4)
/* 802DC71C 002A5CDC  2C 03 00 00 */	cmpwi r3, 0
/* 802DC720 002A5CE0  4D 82 00 20 */	beqlr 
/* 802DC724 002A5CE4  80 03 00 04 */	lwz r0, 4(r3)
/* 802DC728 002A5CE8  7C 00 20 40 */	cmplw r0, r4
/* 802DC72C 002A5CEC  4C 82 00 20 */	bnelr 
/* 802DC730 002A5CF0  80 04 00 04 */	lwz r0, 4(r4)
/* 802DC734 002A5CF4  90 03 00 04 */	stw r0, 4(r3)
/* 802DC738 002A5CF8  48 00 00 08 */	b lbl_802DC740
/* 802DC73C 002A5CFC  4E 80 00 20 */	blr

.global lbl_802DC740
lbl_802DC740:
/* 802DC740 002A5D00  80 64 00 04 */	lwz r3, 4(r4)
/* 802DC744 002A5D04  2C 03 00 00 */	cmpwi r3, 0
/* 802DC748 002A5D08  4D 82 00 20 */	beqlr 
/* 802DC74C 002A5D0C  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC750 002A5D10  7C 00 20 40 */	cmplw r0, r4
/* 802DC754 002A5D14  4C 82 00 20 */	bnelr 
/* 802DC758 002A5D18  80 04 00 00 */	lwz r0, 0(r4)
/* 802DC75C 002A5D1C  90 03 00 00 */	stw r0, 0(r3)
/* 802DC760 002A5D20  48 00 00 08 */	b lbl_802DC768
/* 802DC764 002A5D24  4E 80 00 20 */	blr

.global lbl_802DC768
lbl_802DC768:
/* 802DC768 002A5D28  38 60 00 00 */	li r3, 0
/* 802DC76C 002A5D2C  3C 00 80 00 */	lis r0, 0x8000
/* 802DC770 002A5D30  90 64 00 04 */	stw r3, 4(r4)
/* 802DC774 002A5D34  90 64 00 00 */	stw r3, 0(r4)
/* 802DC778 002A5D38  90 04 00 0C */	stw r0, 0xc(r4)
/* 802DC77C 002A5D3C  98 64 00 16 */	stb r3, 0x16(r4)
/* 802DC780 002A5D40  4E 80 00 20 */	blr 
/* 802DC784 002A5D44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC788 002A5D48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DC78C 002A5D4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */