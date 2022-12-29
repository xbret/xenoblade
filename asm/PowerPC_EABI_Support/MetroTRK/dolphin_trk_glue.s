.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global TRKLoadContext
TRKLoadContext:
/* 802CC224 002957E4  80 03 00 00 */	lwz r0, 0(r3)
/* 802CC228 002957E8  80 23 00 04 */	lwz r1, 4(r3)
/* 802CC22C 002957EC  80 43 00 08 */	lwz r2, 8(r3)
/* 802CC230 002957F0  A0 A3 01 A2 */	lhz r5, 0x1a2(r3)
/* 802CC234 002957F4  54 A6 07 BD */	rlwinm. r6, r5, 0, 0x1e, 0x1e
/* 802CC238 002957F8  41 82 00 14 */	beq .L_802CC24C
/* 802CC23C 002957FC  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 802CC240 00295800  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 802CC244 00295804  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 802CC248 00295808  48 00 00 08 */	b .L_802CC250
.L_802CC24C:
/* 802CC24C 0029580C  B9 A3 00 34 */	lmw r13, 0x34(r3)
.L_802CC250:
/* 802CC250 00295810  7C 7F 1B 78 */	mr r31, r3
/* 802CC254 00295814  7C 83 23 78 */	mr r3, r4
/* 802CC258 00295818  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 802CC25C 0029581C  7C 8F F1 20 */	mtcrf 0xff, r4
/* 802CC260 00295820  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 802CC264 00295824  7C 88 03 A6 */	mtlr r4
/* 802CC268 00295828  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 802CC26C 0029582C  7C 89 03 A6 */	mtctr r4
/* 802CC270 00295830  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 802CC274 00295834  7C 81 03 A6 */	mtxer r4
/* 802CC278 00295838  7C 80 00 A6 */	mfmsr r4
/* 802CC27C 0029583C  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 802CC280 00295840  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 802CC284 00295844  7C 80 01 24 */	mtmsr r4
/* 802CC288 00295848  7C 51 43 A6 */	mtspr 0x111, r2
/* 802CC28C 0029584C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802CC290 00295850  7C 92 43 A6 */	mtspr 0x112, r4
/* 802CC294 00295854  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802CC298 00295858  7C 93 43 A6 */	mtspr 0x113, r4
/* 802CC29C 0029585C  80 5F 01 98 */	lwz r2, 0x198(r31)
/* 802CC2A0 00295860  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 802CC2A4 00295864  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 802CC2A8 00295868  48 00 33 24 */	b TRKInterruptHandler

.global TRKEXICallBack
TRKEXICallBack:
/* 802CC2AC 0029586C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC2B0 00295870  7C 08 02 A6 */	mflr r0
/* 802CC2B4 00295874  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC2B8 00295878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CC2BC 0029587C  7C 9F 23 78 */	mr r31, r4
/* 802CC2C0 00295880  48 08 F3 71 */	bl OSEnableScheduler
/* 802CC2C4 00295884  7F E3 FB 78 */	mr r3, r31
/* 802CC2C8 00295888  38 80 05 00 */	li r4, 0x500
/* 802CC2CC 0029588C  4B FF FF 59 */	bl TRKLoadContext
/* 802CC2D0 00295890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC2D4 00295894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CC2D8 00295898  7C 08 03 A6 */	mtlr r0
/* 802CC2DC 0029589C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC2E0 002958A0  4E 80 00 20 */	blr 

.global InitMetroTRKCommTable
InitMetroTRKCommTable:
/* 802CC2E4 002958A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC2E8 002958A8  7C 08 02 A6 */	mflr r0
/* 802CC2EC 002958AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC2F0 002958B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CC2F4 002958B4  7C 7F 1B 78 */	mr r31, r3
/* 802CC2F8 002958B8  7F E4 FB 78 */	mr r4, r31
/* 802CC2FC 002958BC  93 C1 00 08 */	stw r30, 8(r1)
/* 802CC300 002958C0  3F C0 80 54 */	lis r30, lbl_8053FD80@ha
/* 802CC304 002958C4  38 7E FD 80 */	addi r3, r30, lbl_8053FD80@l
/* 802CC308 002958C8  4C C6 31 82 */	crclr 6
/* 802CC30C 002958CC  48 08 8B E5 */	bl OSReport
/* 802CC310 002958D0  3B DE FD 80 */	addi r30, r30, lbl_8053FD80@l
/* 802CC314 002958D4  38 80 00 40 */	li r4, 0x40
/* 802CC318 002958D8  38 7E 00 15 */	addi r3, r30, 0x15
/* 802CC31C 002958DC  4C C6 31 82 */	crclr 6
/* 802CC320 002958E0  48 08 8B D1 */	bl OSReport
/* 802CC324 002958E4  2C 1F 00 02 */	cmpwi r31, 2
/* 802CC328 002958E8  38 00 00 00 */	li r0, 0
/* 802CC32C 002958EC  98 0D B3 F8 */	stb r0, lbl_80667578@sda21(r13)
/* 802CC330 002958F0  40 82 00 0C */	bne .L_802CC33C
/* 802CC334 002958F4  38 60 00 00 */	li r3, 0
/* 802CC338 002958F8  48 00 00 CC */	b .L_802CC404
.L_802CC33C:
/* 802CC33C 002958FC  2C 1F 00 01 */	cmpwi r31, 1
/* 802CC340 00295900  40 82 00 98 */	bne .L_802CC3D8
/* 802CC344 00295904  38 7E 00 3A */	addi r3, r30, 0x3a
/* 802CC348 00295908  4C C6 31 82 */	crclr 6
/* 802CC34C 0029590C  48 08 8B A5 */	bl OSReport
/* 802CC350 00295910  3C 60 80 58 */	lis r3, gDBCommTable@ha
/* 802CC354 00295914  3F C0 80 2D */	lis r30, gdev_cc_initialize@ha
/* 802CC358 00295918  3F E0 80 2D */	lis r31, gdev_cc_open@ha
/* 802CC35C 0029591C  3D 60 80 2D */	lis r11, gdev_cc_close@ha
/* 802CC360 00295920  3D 40 80 2D */	lis r10, gdev_cc_read@ha
/* 802CC364 00295924  3D 20 80 2D */	lis r9, gdev_cc_write@ha
/* 802CC368 00295928  3D 00 80 2D */	lis r8, gdev_cc_shutdown@ha
/* 802CC36C 0029592C  3C E0 80 2D */	lis r7, gdev_cc_peek@ha
/* 802CC370 00295930  3C C0 80 2D */	lis r6, gdev_cc_pre_continue@ha
/* 802CC374 00295934  3C A0 80 2D */	lis r5, gdev_cc_post_stop@ha
/* 802CC378 00295938  3C 80 80 2D */	lis r4, gdev_cc_initinterrupts@ha
/* 802CC37C 0029593C  3B DE B5 2C */	addi r30, r30, gdev_cc_initialize@l
/* 802CC380 00295940  39 83 B8 88 */	addi r12, r3, gDBCommTable@l
/* 802CC384 00295944  3B FF B5 70 */	addi r31, r31, gdev_cc_open@l
/* 802CC388 00295948  39 6B B5 94 */	addi r11, r11, gdev_cc_close@l
/* 802CC38C 0029594C  39 4A B5 9C */	addi r10, r10, gdev_cc_read@l
/* 802CC390 00295950  39 29 B6 50 */	addi r9, r9, gdev_cc_write@l
/* 802CC394 00295954  39 08 B5 68 */	addi r8, r8, gdev_cc_shutdown@l
/* 802CC398 00295958  38 E7 B7 0C */	addi r7, r7, gdev_cc_peek@l
/* 802CC39C 0029595C  38 C6 B6 C4 */	addi r6, r6, gdev_cc_pre_continue@l
/* 802CC3A0 00295960  38 A5 B6 E8 */	addi r5, r5, gdev_cc_post_stop@l
/* 802CC3A4 00295964  38 84 B7 80 */	addi r4, r4, gdev_cc_initinterrupts@l
/* 802CC3A8 00295968  93 C3 B8 88 */	stw r30, gDBCommTable@l(r3)
/* 802CC3AC 0029596C  38 60 00 00 */	li r3, 0
/* 802CC3B0 00295970  93 EC 00 18 */	stw r31, 0x18(r12)
/* 802CC3B4 00295974  91 6C 00 1C */	stw r11, 0x1c(r12)
/* 802CC3B8 00295978  91 4C 00 10 */	stw r10, 0x10(r12)
/* 802CC3BC 0029597C  91 2C 00 14 */	stw r9, 0x14(r12)
/* 802CC3C0 00295980  91 0C 00 08 */	stw r8, 8(r12)
/* 802CC3C4 00295984  90 EC 00 0C */	stw r7, 0xc(r12)
/* 802CC3C8 00295988  90 CC 00 20 */	stw r6, 0x20(r12)
/* 802CC3CC 0029598C  90 AC 00 24 */	stw r5, 0x24(r12)
/* 802CC3D0 00295990  90 8C 00 04 */	stw r4, 4(r12)
/* 802CC3D4 00295994  48 00 00 30 */	b .L_802CC404
.L_802CC3D8:
/* 802CC3D8 00295998  7F E4 FB 78 */	mr r4, r31
/* 802CC3DC 0029599C  38 7E 00 5B */	addi r3, r30, 0x5b
/* 802CC3E0 002959A0  4C C6 31 82 */	crclr 6
/* 802CC3E4 002959A4  48 08 8B 0D */	bl OSReport
/* 802CC3E8 002959A8  38 7E 00 86 */	addi r3, r30, 0x86
/* 802CC3EC 002959AC  4C C6 31 82 */	crclr 6
/* 802CC3F0 002959B0  48 08 8B 01 */	bl OSReport
/* 802CC3F4 002959B4  38 7E 00 B5 */	addi r3, r30, 0xb5
/* 802CC3F8 002959B8  4C C6 31 82 */	crclr 6
/* 802CC3FC 002959BC  48 08 8A F5 */	bl OSReport
/* 802CC400 002959C0  38 60 00 01 */	li r3, 1
.L_802CC404:
/* 802CC404 002959C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC408 002959C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CC40C 002959CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CC410 002959D0  7C 08 03 A6 */	mtlr r0
/* 802CC414 002959D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC418 002959D8  4E 80 00 20 */	blr 

.global TRKUARTInterruptHandler
TRKUARTInterruptHandler:
/* 802CC41C 002959DC  4E 80 00 20 */	blr 

.global TRKInitializeIntDrivenUART
TRKInitializeIntDrivenUART:
/* 802CC420 002959E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC424 002959E4  7C 08 02 A6 */	mflr r0
/* 802CC428 002959E8  3C 80 80 2D */	lis r4, TRKEXICallBack@ha
/* 802CC42C 002959EC  7C A3 2B 78 */	mr r3, r5
/* 802CC430 002959F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC434 002959F4  38 84 C2 AC */	addi r4, r4, TRKEXICallBack@l
/* 802CC438 002959F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CC43C 002959FC  3F E0 80 58 */	lis r31, gDBCommTable@ha
/* 802CC440 00295A00  81 9F B8 88 */	lwz r12, gDBCommTable@l(r31)
/* 802CC444 00295A04  7D 89 03 A6 */	mtctr r12
/* 802CC448 00295A08  4E 80 04 21 */	bctrl 
/* 802CC44C 00295A0C  38 7F B8 88 */	addi r3, r31, gDBCommTable@l
/* 802CC450 00295A10  81 83 00 18 */	lwz r12, 0x18(r3)
/* 802CC454 00295A14  7D 89 03 A6 */	mtctr r12
/* 802CC458 00295A18  4E 80 04 21 */	bctrl 
/* 802CC45C 00295A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CC460 00295A20  38 60 00 00 */	li r3, 0
/* 802CC464 00295A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC468 00295A28  7C 08 03 A6 */	mtlr r0
/* 802CC46C 00295A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC470 00295A30  4E 80 00 20 */	blr

.global EnableEXI2Interrupts
EnableEXI2Interrupts:
/* 802CC474 00295A34  88 0D B3 F8 */	lbz r0, lbl_80667578@sda21(r13)
/* 802CC478 00295A38  2C 00 00 00 */	cmpwi r0, 0
/* 802CC47C 00295A3C  4C 82 00 20 */	bnelr 
/* 802CC480 00295A40  3C 60 80 58 */	lis r3, gDBCommTable@ha
/* 802CC484 00295A44  38 63 B8 88 */	addi r3, r3, gDBCommTable@l
/* 802CC488 00295A48  81 83 00 04 */	lwz r12, 4(r3)
/* 802CC48C 00295A4C  2C 0C 00 00 */	cmpwi r12, 0
/* 802CC490 00295A50  4D 82 00 20 */	beqlr 
/* 802CC494 00295A54  7D 89 03 A6 */	mtctr r12
/* 802CC498 00295A58  4E 80 04 20 */	bctr 
/* 802CC49C 00295A5C  4E 80 00 20 */	blr 

.global TRKPollUART
TRKPollUART:
/* 802CC4A0 00295A60  3C 60 80 58 */	lis r3, gDBCommTable@ha
/* 802CC4A4 00295A64  38 63 B8 88 */	addi r3, r3, gDBCommTable@l
/* 802CC4A8 00295A68  81 83 00 0C */	lwz r12, 0xc(r3)
/* 802CC4AC 00295A6C  7D 89 03 A6 */	mtctr r12
/* 802CC4B0 00295A70  4E 80 04 20 */	bctr 

.global TRKReadUARTN
TRKReadUARTN:
/* 802CC4B4 00295A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC4B8 00295A78  7C 08 02 A6 */	mflr r0
/* 802CC4BC 00295A7C  3C A0 80 58 */	lis r5, gDBCommTable@ha
/* 802CC4C0 00295A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC4C4 00295A84  38 A5 B8 88 */	addi r5, r5, gDBCommTable@l
/* 802CC4C8 00295A88  81 85 00 10 */	lwz r12, 0x10(r5)
/* 802CC4CC 00295A8C  7D 89 03 A6 */	mtctr r12
/* 802CC4D0 00295A90  4E 80 04 21 */	bctrl 
/* 802CC4D4 00295A94  7C 03 00 D0 */	neg r0, r3
/* 802CC4D8 00295A98  7C 00 1B 78 */	or r0, r0, r3
/* 802CC4DC 00295A9C  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 802CC4E0 00295AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC4E4 00295AA4  7C 08 03 A6 */	mtlr r0
/* 802CC4E8 00295AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC4EC 00295AAC  4E 80 00 20 */	blr 

.global TRKWriteUARTN
TRKWriteUARTN:
/* 802CC4F0 00295AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC4F4 00295AB4  7C 08 02 A6 */	mflr r0
/* 802CC4F8 00295AB8  3C A0 80 58 */	lis r5, gDBCommTable@ha
/* 802CC4FC 00295ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC500 00295AC0  38 A5 B8 88 */	addi r5, r5, gDBCommTable@l
/* 802CC504 00295AC4  81 85 00 14 */	lwz r12, 0x14(r5)
/* 802CC508 00295AC8  7D 89 03 A6 */	mtctr r12
/* 802CC50C 00295ACC  4E 80 04 21 */	bctrl 
/* 802CC510 00295AD0  7C 03 00 D0 */	neg r0, r3
/* 802CC514 00295AD4  7C 00 1B 78 */	or r0, r0, r3
/* 802CC518 00295AD8  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 802CC51C 00295ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC520 00295AE0  7C 08 03 A6 */	mtlr r0
/* 802CC524 00295AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC528 00295AE8  4E 80 00 20 */	blr 

.global ReserveEXI2Port
ReserveEXI2Port:
/* 802CC52C 00295AEC  3C 60 80 58 */	lis r3, gDBCommTable@ha
/* 802CC530 00295AF0  38 63 B8 88 */	addi r3, r3, gDBCommTable@l
/* 802CC534 00295AF4  81 83 00 24 */	lwz r12, 0x24(r3)
/* 802CC538 00295AF8  7D 89 03 A6 */	mtctr r12
/* 802CC53C 00295AFC  4E 80 04 20 */	bctr 

.global UnreserveEXI2Port
UnreserveEXI2Port:
/* 802CC540 00295B00  3C 60 80 58 */	lis r3, gDBCommTable@ha
/* 802CC544 00295B04  38 63 B8 88 */	addi r3, r3, gDBCommTable@l
/* 802CC548 00295B08  81 83 00 20 */	lwz r12, 0x20(r3)
/* 802CC54C 00295B0C  7D 89 03 A6 */	mtctr r12
/* 802CC550 00295B10  4E 80 04 20 */	bctr 

.global TRK_board_display
TRK_board_display:
/* 802CC554 00295B14  3C A0 80 54 */	lis r5, lbl_8053FD80@ha
/* 802CC558 00295B18  7C 64 1B 78 */	mr r4, r3
/* 802CC55C 00295B1C  38 A5 FD 80 */	addi r5, r5, lbl_8053FD80@l
/* 802CC560 00295B20  38 65 00 DD */	addi r3, r5, 0xdd
/* 802CC564 00295B24  4C C6 31 82 */	crclr 6
/* 802CC568 00295B28  48 08 89 88 */	b OSReport

.global InitializeProgramEndTrap
InitializeProgramEndTrap:
/* 802CC56C 00295B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC570 00295B30  7C 08 02 A6 */	mflr r0
/* 802CC574 00295B34  38 82 BA 30 */	addi r4, r2, lbl_8066BDB0@sda21
/* 802CC578 00295B38  38 A0 00 04 */	li r5, 4
/* 802CC57C 00295B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC580 00295B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CC584 00295B44  3F E0 80 2E */	lis r31, PPCHalt@ha
/* 802CC588 00295B48  3B FF AB D0 */	addi r31, r31, PPCHalt@l
/* 802CC58C 00295B4C  38 7F 00 04 */	addi r3, r31, 4
/* 802CC590 00295B50  4B FF F5 ED */	bl TRK_memcpy
/* 802CC594 00295B54  38 7F 00 04 */	addi r3, r31, 4
/* 802CC598 00295B58  38 80 00 04 */	li r4, 4
/* 802CC59C 00295B5C  48 08 7B 05 */	bl ICInvalidateRange
/* 802CC5A0 00295B60  38 7F 00 04 */	addi r3, r31, 4
/* 802CC5A4 00295B64  38 80 00 04 */	li r4, 4
/* 802CC5A8 00295B68  48 08 7A 09 */	bl DCFlushRange
/* 802CC5AC 00295B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC5B0 00295B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CC5B4 00295B74  7C 08 03 A6 */	mtlr r0
/* 802CC5B8 00295B78  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC5BC 00295B7C  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053FD80
lbl_8053FD80:
	.asciz "Devkit set to : %ld\n"
	.asciz "MetroTRK : Sizeof Reply - %ld bytes\n"
	.asciz "MetroTRK : Set to NDEV hardware\n"
	.asciz "MetroTRK : Set to UNKNOWN hardware. (%ld)\n"
	.asciz "MetroTRK : Invalid hardware ID passed from OS\n"
	.asciz "MetroTRK : Defaulting to GDEV Hardware\n"
	.asciz "%s\n"
	.byte 0x00, 0x00, 0x00
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0
.global lbl_8066BDB0
lbl_8066BDB0:
	# ROM: 0x575C10
	.4byte 0x00454E44
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B
.global gDBCommTable
gDBCommTable:
	.skip 0x28

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_80667578
lbl_80667578:
	.skip 0x8