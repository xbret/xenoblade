.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn CalcPitchRatio__Q44nw4r3snd6detail4UtilFi, global
/* 804293D0 003F2990  20 A3 0B FF */	subfic r5, r3, 0xbff
/* 804293D4 003F2994  38 00 0C 00 */	li r0, 0xc00
/* 804293D8 003F2998  7C A5 03 96 */	divwu r5, r5, r0
/* 804293DC 003F299C  2C 03 00 00 */	cmpwi r3, 0
/* 804293E0 003F29A0  C0 22 C5 50 */	lfs f1, float_8066C8D0@sda21(r2)
/* 804293E4 003F29A4  38 C0 00 00 */	li r6, 0
/* 804293E8 003F29A8  40 80 00 34 */	bge .L_8042941C
/* 804293EC 003F29AC  54 A4 E8 FF */	rlwinm. r4, r5, 0x1d, 3, 0x1f
/* 804293F0 003F29B0  1C 05 0C 00 */	mulli r0, r5, 0xc00
/* 804293F4 003F29B4  7C 89 03 A6 */	mtctr r4
/* 804293F8 003F29B8  41 82 00 14 */	beq .L_8042940C
.L_804293FC:
/* 804293FC 003F29BC  38 C6 FF F8 */	addi r6, r6, -8
/* 80429400 003F29C0  42 00 FF FC */	bdnz .L_804293FC
/* 80429404 003F29C4  70 A5 00 07 */	andi. r5, r5, 7
/* 80429408 003F29C8  41 82 00 10 */	beq .L_80429418
.L_8042940C:
/* 8042940C 003F29CC  7C A9 03 A6 */	mtctr r5
.L_80429410:
/* 80429410 003F29D0  38 C6 FF FF */	addi r6, r6, -1
/* 80429414 003F29D4  42 00 FF FC */	bdnz .L_80429410
.L_80429418:
/* 80429418 003F29D8  7C 63 02 14 */	add r3, r3, r0
.L_8042941C:
/* 8042941C 003F29DC  38 00 0C 00 */	li r0, 0xc00
/* 80429420 003F29E0  2C 03 0C 00 */	cmpwi r3, 0xc00
/* 80429424 003F29E4  7C A3 03 96 */	divwu r5, r3, r0
/* 80429428 003F29E8  41 80 00 34 */	blt .L_8042945C
/* 8042942C 003F29EC  54 A4 E8 FF */	rlwinm. r4, r5, 0x1d, 3, 0x1f
/* 80429430 003F29F0  1C 05 F4 00 */	mulli r0, r5, -3072
/* 80429434 003F29F4  7C 89 03 A6 */	mtctr r4
/* 80429438 003F29F8  41 82 00 14 */	beq .L_8042944C
.L_8042943C:
/* 8042943C 003F29FC  38 C6 00 08 */	addi r6, r6, 8
/* 80429440 003F2A00  42 00 FF FC */	bdnz .L_8042943C
/* 80429444 003F2A04  70 A5 00 07 */	andi. r5, r5, 7
/* 80429448 003F2A08  41 82 00 10 */	beq .L_80429458
.L_8042944C:
/* 8042944C 003F2A0C  7C A9 03 A6 */	mtctr r5
.L_80429450:
/* 80429450 003F2A10  38 C6 00 01 */	addi r6, r6, 1
/* 80429454 003F2A14  42 00 FF FC */	bdnz .L_80429450
.L_80429458:
/* 80429458 003F2A18  7C 63 02 14 */	add r3, r3, r0
.L_8042945C:
/* 8042945C 003F2A1C  2C 06 00 00 */	cmpwi r6, 0
/* 80429460 003F2A20  C0 02 C5 54 */	lfs f0, float_8066C8D4@sda21(r2)
/* 80429464 003F2A24  7C C5 33 78 */	mr r5, r6
/* 80429468 003F2A28  40 81 00 50 */	ble .L_804294B8
/* 8042946C 003F2A2C  54 C4 E8 FF */	rlwinm. r4, r6, 0x1d, 3, 0x1f
/* 80429470 003F2A30  7C 06 00 D0 */	neg r0, r6
/* 80429474 003F2A34  7C 89 03 A6 */	mtctr r4
/* 80429478 003F2A38  41 82 00 30 */	beq .L_804294A8
.L_8042947C:
/* 8042947C 003F2A3C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80429480 003F2A40  EC 21 00 32 */	fmuls f1, f1, f0
/* 80429484 003F2A44  EC 21 00 32 */	fmuls f1, f1, f0
/* 80429488 003F2A48  EC 21 00 32 */	fmuls f1, f1, f0
/* 8042948C 003F2A4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80429490 003F2A50  EC 21 00 32 */	fmuls f1, f1, f0
/* 80429494 003F2A54  EC 21 00 32 */	fmuls f1, f1, f0
/* 80429498 003F2A58  EC 21 00 32 */	fmuls f1, f1, f0
/* 8042949C 003F2A5C  42 00 FF E0 */	bdnz .L_8042947C
/* 804294A0 003F2A60  70 C5 00 07 */	andi. r5, r6, 7
/* 804294A4 003F2A64  41 82 00 10 */	beq .L_804294B4
.L_804294A8:
/* 804294A8 003F2A68  7C A9 03 A6 */	mtctr r5
.L_804294AC:
/* 804294AC 003F2A6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294B0 003F2A70  42 00 FF FC */	bdnz .L_804294AC
.L_804294B4:
/* 804294B4 003F2A74  7C C6 02 14 */	add r6, r6, r0
.L_804294B8:
/* 804294B8 003F2A78  2C 06 00 00 */	cmpwi r6, 0
/* 804294BC 003F2A7C  C0 02 C5 58 */	lfs f0, float_8066C8D8@sda21(r2)
/* 804294C0 003F2A80  7C 86 00 D0 */	neg r4, r6
/* 804294C4 003F2A84  40 80 00 48 */	bge .L_8042950C
/* 804294C8 003F2A88  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 804294CC 003F2A8C  7C 09 03 A6 */	mtctr r0
/* 804294D0 003F2A90  41 82 00 30 */	beq .L_80429500
.L_804294D4:
/* 804294D4 003F2A94  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294D8 003F2A98  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294DC 003F2A9C  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294E0 003F2AA0  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294E4 003F2AA4  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294E8 003F2AA8  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294EC 003F2AAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294F0 003F2AB0  EC 21 00 32 */	fmuls f1, f1, f0
/* 804294F4 003F2AB4  42 00 FF E0 */	bdnz .L_804294D4
/* 804294F8 003F2AB8  70 84 00 07 */	andi. r4, r4, 7
/* 804294FC 003F2ABC  41 82 00 10 */	beq .L_8042950C
.L_80429500:
/* 80429500 003F2AC0  7C 89 03 A6 */	mtctr r4
.L_80429504:
/* 80429504 003F2AC4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80429508 003F2AC8  42 00 FF FC */	bdnz .L_80429504
.L_8042950C:
/* 8042950C 003F2ACC  7C 64 46 70 */	srawi r4, r3, 8
/* 80429510 003F2AD0  54 60 C0 0E */	slwi r0, r3, 0x18
/* 80429514 003F2AD4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80429518 003F2AD8  7C 03 00 50 */	subf r0, r3, r0
/* 8042951C 003F2ADC  7C A4 01 95 */	addze. r5, r4
/* 80429520 003F2AE0  54 00 40 3E */	rotlwi r0, r0, 8
/* 80429524 003F2AE4  7C 60 1A 14 */	add r3, r0, r3
/* 80429528 003F2AE8  41 82 00 18 */	beq .L_80429540
/* 8042952C 003F2AEC  3C 80 80 52 */	lis r4, NoteTable__Q44nw4r3snd6detail4Util@ha
/* 80429530 003F2AF0  54 A0 10 3A */	slwi r0, r5, 2
/* 80429534 003F2AF4  38 84 38 A8 */	addi r4, r4, NoteTable__Q44nw4r3snd6detail4Util@l
/* 80429538 003F2AF8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8042953C 003F2AFC  EC 21 00 32 */	fmuls f1, f1, f0
.L_80429540:
/* 80429540 003F2B00  2C 03 00 00 */	cmpwi r3, 0
/* 80429544 003F2B04  4D 82 00 20 */	beqlr 
/* 80429548 003F2B08  3C 80 80 52 */	lis r4, PitchTable__Q44nw4r3snd6detail4Util@ha
/* 8042954C 003F2B0C  54 60 10 3A */	slwi r0, r3, 2
/* 80429550 003F2B10  38 84 38 D8 */	addi r4, r4, PitchTable__Q44nw4r3snd6detail4Util@l
/* 80429554 003F2B14  7C 04 04 2E */	lfsx f0, r4, r0
/* 80429558 003F2B18  EC 21 00 32 */	fmuls f1, f1, f0
/* 8042955C 003F2B1C  4E 80 00 20 */	blr 
.endfn CalcPitchRatio__Q44nw4r3snd6detail4UtilFi

.fn CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf, global
/* 80429560 003F2B20  C0 42 C5 5C */	lfs f2, float_8066C8DC@sda21(r2)
/* 80429564 003F2B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429568 003F2B28  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8042956C 003F2B2C  40 81 00 08 */	ble .L_80429574
/* 80429570 003F2B30  48 00 00 18 */	b .L_80429588
.L_80429574:
/* 80429574 003F2B34  C0 42 C5 60 */	lfs f2, float_8066C8E0@sda21(r2)
/* 80429578 003F2B38  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8042957C 003F2B3C  40 80 00 08 */	bge .L_80429584
/* 80429580 003F2B40  48 00 00 08 */	b .L_80429588
.L_80429584:
/* 80429584 003F2B44  FC 40 08 90 */	fmr f2, f1
.L_80429588:
/* 80429588 003F2B48  C0 02 C5 64 */	lfs f0, float_8066C8E4@sda21(r2)
/* 8042958C 003F2B4C  3C 60 80 52 */	lis r3, Decibel2RatioTable__Q44nw4r3snd6detail4Util@ha
/* 80429590 003F2B50  38 63 3C D8 */	addi r3, r3, Decibel2RatioTable__Q44nw4r3snd6detail4Util@l
/* 80429594 003F2B54  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80429598 003F2B58  FC 00 00 1E */	fctiwz f0, f0
/* 8042959C 003F2B5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804295A0 003F2B60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804295A4 003F2B64  38 04 03 88 */	addi r0, r4, 0x388
/* 804295A8 003F2B68  54 00 10 3A */	slwi r0, r0, 2
/* 804295AC 003F2B6C  7C 23 04 2E */	lfsx f1, r3, r0
/* 804295B0 003F2B70  38 21 00 10 */	addi r1, r1, 0x10
/* 804295B4 003F2B74  4E 80 00 20 */	blr 
.endfn CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf

.fn CalcPanRatio__Q44nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4Util7PanInfo, global
/* 804295B8 003F2B78  C0 42 C5 50 */	lfs f2, float_8066C8D0@sda21(r2)
/* 804295BC 003F2B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804295C0 003F2B80  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804295C4 003F2B84  40 81 00 08 */	ble .L_804295CC
/* 804295C8 003F2B88  48 00 00 18 */	b .L_804295E0
.L_804295CC:
/* 804295CC 003F2B8C  C0 42 C5 68 */	lfs f2, float_8066C8E8@sda21(r2)
/* 804295D0 003F2B90  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804295D4 003F2B94  40 80 00 08 */	bge .L_804295DC
/* 804295D8 003F2B98  48 00 00 08 */	b .L_804295E0
.L_804295DC:
/* 804295DC 003F2B9C  FC 40 08 90 */	fmr f2, f1
.L_804295E0:
/* 804295E0 003F2BA0  C0 02 C5 50 */	lfs f0, float_8066C8D0@sda21(r2)
/* 804295E4 003F2BA4  3C 80 80 57 */	lis r4, PanTableTable__Q44nw4r3snd6detail4Util@ha
/* 804295E8 003F2BA8  80 03 00 00 */	lwz r0, 0(r3)
/* 804295EC 003F2BAC  38 84 E6 40 */	addi r4, r4, PanTableTable__Q44nw4r3snd6detail4Util@l
/* 804295F0 003F2BB0  EC 20 10 2A */	fadds f1, f0, f2
/* 804295F4 003F2BB4  C0 42 C5 58 */	lfs f2, float_8066C8D8@sda21(r2)
/* 804295F8 003F2BB8  54 05 10 3A */	slwi r5, r0, 2
/* 804295FC 003F2BBC  88 03 00 04 */	lbz r0, 4(r3)
/* 80429600 003F2BC0  C0 02 C5 6C */	lfs f0, float_8066C8EC@sda21(r2)
/* 80429604 003F2BC4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80429608 003F2BC8  2C 00 00 00 */	cmpwi r0, 0
/* 8042960C 003F2BCC  7C 84 28 2E */	lwzx r4, r4, r5
/* 80429610 003F2BD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80429614 003F2BD4  EC 02 00 2A */	fadds f0, f2, f0
/* 80429618 003F2BD8  FC 00 00 1E */	fctiwz f0, f0
/* 8042961C 003F2BDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80429620 003F2BE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80429624 003F2BE4  54 00 10 3A */	slwi r0, r0, 2
/* 80429628 003F2BE8  7C 44 04 2E */	lfsx f2, r4, r0
/* 8042962C 003F2BEC  41 82 00 0C */	beq .L_80429638
/* 80429630 003F2BF0  C0 04 02 00 */	lfs f0, 0x200(r4)
/* 80429634 003F2BF4  EC 42 00 24 */	fdivs f2, f2, f0
.L_80429638:
/* 80429638 003F2BF8  88 03 00 05 */	lbz r0, 5(r3)
/* 8042963C 003F2BFC  2C 00 00 00 */	cmpwi r0, 0
/* 80429640 003F2C00  41 82 00 2C */	beq .L_8042966C
/* 80429644 003F2C04  C0 22 C5 50 */	lfs f1, float_8066C8D0@sda21(r2)
/* 80429648 003F2C08  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8042964C 003F2C0C  40 81 00 08 */	ble .L_80429654
/* 80429650 003F2C10  48 00 00 40 */	b .L_80429690
.L_80429654:
/* 80429654 003F2C14  C0 22 C5 70 */	lfs f1, float_8066C8F0@sda21(r2)
/* 80429658 003F2C18  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8042965C 003F2C1C  40 80 00 08 */	bge .L_80429664
/* 80429660 003F2C20  48 00 00 30 */	b .L_80429690
.L_80429664:
/* 80429664 003F2C24  FC 20 10 90 */	fmr f1, f2
/* 80429668 003F2C28  48 00 00 28 */	b .L_80429690
.L_8042966C:
/* 8042966C 003F2C2C  C0 22 C5 54 */	lfs f1, float_8066C8D4@sda21(r2)
/* 80429670 003F2C30  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80429674 003F2C34  40 81 00 08 */	ble .L_8042967C
/* 80429678 003F2C38  48 00 00 18 */	b .L_80429690
.L_8042967C:
/* 8042967C 003F2C3C  C0 22 C5 70 */	lfs f1, float_8066C8F0@sda21(r2)
/* 80429680 003F2C40  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80429684 003F2C44  40 80 00 08 */	bge .L_8042968C
/* 80429688 003F2C48  48 00 00 08 */	b .L_80429690
.L_8042968C:
/* 8042968C 003F2C4C  FC 20 10 90 */	fmr f1, f2
.L_80429690:
/* 80429690 003F2C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80429694 003F2C54  4E 80 00 20 */	blr 
.endfn CalcPanRatio__Q44nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4Util7PanInfo

.fn CalcSurroundPanRatio__Q44nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4Util7PanInfo, global
/* 80429698 003F2C58  C0 02 C5 54 */	lfs f0, float_8066C8D4@sda21(r2)
/* 8042969C 003F2C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804296A0 003F2C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804296A4 003F2C64  40 81 00 08 */	ble .L_804296AC
/* 804296A8 003F2C68  48 00 00 18 */	b .L_804296C0
.L_804296AC:
/* 804296AC 003F2C6C  C0 02 C5 70 */	lfs f0, float_8066C8F0@sda21(r2)
/* 804296B0 003F2C70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804296B4 003F2C74  40 80 00 08 */	bge .L_804296BC
/* 804296B8 003F2C78  48 00 00 08 */	b .L_804296C0
.L_804296BC:
/* 804296BC 003F2C7C  FC 00 08 90 */	fmr f0, f1
.L_804296C0:
/* 804296C0 003F2C80  C0 42 C5 58 */	lfs f2, float_8066C8D8@sda21(r2)
/* 804296C4 003F2C84  3C 80 80 57 */	lis r4, PanTableTable__Q44nw4r3snd6detail4Util@ha
/* 804296C8 003F2C88  80 03 00 00 */	lwz r0, 0(r3)
/* 804296CC 003F2C8C  38 84 E6 40 */	addi r4, r4, PanTableTable__Q44nw4r3snd6detail4Util@l
/* 804296D0 003F2C90  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804296D4 003F2C94  C0 02 C5 6C */	lfs f0, float_8066C8EC@sda21(r2)
/* 804296D8 003F2C98  54 00 10 3A */	slwi r0, r0, 2
/* 804296DC 003F2C9C  C0 62 C5 54 */	lfs f3, float_8066C8D4@sda21(r2)
/* 804296E0 003F2CA0  7C 64 00 2E */	lwzx r3, r4, r0
/* 804296E4 003F2CA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804296E8 003F2CA8  EC 02 00 2A */	fadds f0, f2, f0
/* 804296EC 003F2CAC  FC 00 00 1E */	fctiwz f0, f0
/* 804296F0 003F2CB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804296F4 003F2CB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804296F8 003F2CB8  54 00 10 3A */	slwi r0, r0, 2
/* 804296FC 003F2CBC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80429700 003F2CC0  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80429704 003F2CC4  40 81 00 08 */	ble .L_8042970C
/* 80429708 003F2CC8  48 00 00 18 */	b .L_80429720
.L_8042970C:
/* 8042970C 003F2CCC  C0 62 C5 70 */	lfs f3, float_8066C8F0@sda21(r2)
/* 80429710 003F2CD0  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80429714 003F2CD4  40 80 00 08 */	bge .L_8042971C
/* 80429718 003F2CD8  48 00 00 08 */	b .L_80429720
.L_8042971C:
/* 8042971C 003F2CDC  FC 60 00 90 */	fmr f3, f0
.L_80429720:
/* 80429720 003F2CE0  FC 20 18 90 */	fmr f1, f3
/* 80429724 003F2CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80429728 003F2CE8  4E 80 00 20 */	blr 
.endfn CalcSurroundPanRatio__Q44nw4r3snd6detail4UtilFfRCQ54nw4r3snd6detail4Util7PanInfo

.fn CalcLpfFreq__Q44nw4r3snd6detail4UtilFf, global
/* 8042972C 003F2CEC  C0 42 C5 50 */	lfs f2, float_8066C8D0@sda21(r2)
/* 80429730 003F2CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429734 003F2CF4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80429738 003F2CF8  40 81 00 08 */	ble .L_80429740
/* 8042973C 003F2CFC  48 00 00 18 */	b .L_80429754
.L_80429740:
/* 80429740 003F2D00  C0 42 C5 70 */	lfs f2, float_8066C8F0@sda21(r2)
/* 80429744 003F2D04  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80429748 003F2D08  40 80 00 08 */	bge .L_80429750
/* 8042974C 003F2D0C  48 00 00 08 */	b .L_80429754
.L_80429750:
/* 80429750 003F2D10  FC 40 08 90 */	fmr f2, f1
.L_80429754:
/* 80429754 003F2D14  C0 22 C5 74 */	lfs f1, float_8066C8F4@sda21(r2)
/* 80429758 003F2D18  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8042975C 003F2D1C  40 80 00 0C */	bge .L_80429768
/* 80429760 003F2D20  38 60 00 50 */	li r3, 0x50
/* 80429764 003F2D24  48 00 00 44 */	b .L_804297A8
.L_80429768:
/* 80429768 003F2D28  C0 02 C5 78 */	lfs f0, float_8066C8F8@sda21(r2)
/* 8042976C 003F2D2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80429770 003F2D30  4C 41 13 82 */	cror 2, 1, 2
/* 80429774 003F2D34  40 82 00 0C */	bne .L_80429780
/* 80429778 003F2D38  38 60 3E 80 */	li r3, 0x3e80
/* 8042977C 003F2D3C  48 00 00 2C */	b .L_804297A8
.L_80429780:
/* 80429780 003F2D40  EC 22 08 28 */	fsubs f1, f2, f1
/* 80429784 003F2D44  C0 02 C5 7C */	lfs f0, float_8066C8FC@sda21(r2)
/* 80429788 003F2D48  3C 60 80 52 */	lis r3, CalcLpfFreqTable__Q44nw4r3snd6detail4Util@ha
/* 8042978C 003F2D4C  38 63 5C F8 */	addi r3, r3, CalcLpfFreqTable__Q44nw4r3snd6detail4Util@l
/* 80429790 003F2D50  EC 01 00 24 */	fdivs f0, f1, f0
/* 80429794 003F2D54  FC 00 00 1E */	fctiwz f0, f0
/* 80429798 003F2D58  D8 01 00 08 */	stfd f0, 8(r1)
/* 8042979C 003F2D5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804297A0 003F2D60  54 00 08 3C */	slwi r0, r0, 1
/* 804297A4 003F2D64  7C 63 02 2E */	lhzx r3, r3, r0
.L_804297A8:
/* 804297A8 003F2D68  38 21 00 10 */	addi r1, r1, 0x10
/* 804297AC 003F2D6C  4E 80 00 20 */	blr 
.endfn CalcLpfFreq__Q44nw4r3snd6detail4UtilFf

.fn GetRemoteFilterCoefs__Q44nw4r3snd6detail4UtilFiPUsPUsPUsPUsPUs, global
/* 804297B0 003F2D70  2C 03 00 7F */	cmpwi r3, 0x7f
/* 804297B4 003F2D74  40 81 00 0C */	ble .L_804297C0
/* 804297B8 003F2D78  38 00 00 7F */	li r0, 0x7f
/* 804297BC 003F2D7C  48 00 00 0C */	b .L_804297C8
.L_804297C0:
/* 804297C0 003F2D80  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 804297C4 003F2D84  7C 60 00 78 */	andc r0, r3, r0
.L_804297C8:
/* 804297C8 003F2D88  1D 20 00 0A */	mulli r9, r0, 0xa
/* 804297CC 003F2D8C  3C 60 80 52 */	lis r3, RemoteFilterCoefTable__Q44nw4r3snd6detail4Util@ha
/* 804297D0 003F2D90  38 63 57 F8 */	addi r3, r3, RemoteFilterCoefTable__Q44nw4r3snd6detail4Util@l
/* 804297D4 003F2D94  7C 03 4A 2E */	lhzx r0, r3, r9
/* 804297D8 003F2D98  7D 23 4A 14 */	add r9, r3, r9
/* 804297DC 003F2D9C  A0 69 00 02 */	lhz r3, 2(r9)
/* 804297E0 003F2DA0  B0 04 00 00 */	sth r0, 0(r4)
/* 804297E4 003F2DA4  A0 09 00 04 */	lhz r0, 4(r9)
/* 804297E8 003F2DA8  B0 65 00 00 */	sth r3, 0(r5)
/* 804297EC 003F2DAC  A0 69 00 06 */	lhz r3, 6(r9)
/* 804297F0 003F2DB0  B0 06 00 00 */	sth r0, 0(r6)
/* 804297F4 003F2DB4  A0 09 00 08 */	lhz r0, 8(r9)
/* 804297F8 003F2DB8  B0 67 00 00 */	sth r3, 0(r7)
/* 804297FC 003F2DBC  B0 08 00 00 */	sth r0, 0(r8)
/* 80429800 003F2DC0  4E 80 00 20 */	blr 
.endfn GetRemoteFilterCoefs__Q44nw4r3snd6detail4UtilFiPUsPUsPUsPUsPUs

.fn CalcRandom__Q44nw4r3snd6detail4UtilFv, global
/* 80429804 003F2DC4  3C 60 00 19 */	lis r3, 0x0019660D@ha
/* 80429808 003F2DC8  80 8D 9C A0 */	lwz r4, lbl_80665E20@sda21(r13)
/* 8042980C 003F2DCC  38 03 66 0D */	addi r0, r3, 0x0019660D@l
/* 80429810 003F2DD0  7C 64 01 D6 */	mullw r3, r4, r0
/* 80429814 003F2DD4  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 80429818 003F2DD8  38 03 F3 5F */	addi r0, r3, -3233
/* 8042981C 003F2DDC  90 0D 9C A0 */	stw r0, lbl_80665E20@sda21(r13)
/* 80429820 003F2DE0  54 03 84 3E */	srwi r3, r0, 0x10
/* 80429824 003F2DE4  4E 80 00 20 */	blr 
.endfn CalcRandom__Q44nw4r3snd6detail4UtilFv

.fn GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv, global
/* 80429828 003F2DE8  2C 03 00 01 */	cmpwi r3, 1
/* 8042982C 003F2DEC  40 82 00 0C */	bne .L_80429838
/* 80429830 003F2DF0  7C 64 2A 14 */	add r3, r4, r5
/* 80429834 003F2DF4  4E 80 00 20 */	blr
.L_80429838:
/* 80429838 003F2DF8  2C 03 00 00 */	cmpwi r3, 0
/* 8042983C 003F2DFC  38 60 00 00 */	li r3, 0
/* 80429840 003F2E00  4C 82 00 20 */	bnelr 
/* 80429844 003F2E04  7C 83 23 78 */	mr r3, r4
/* 80429848 003F2E08  4E 80 00 20 */	blr 
.endfn GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj NoteTable__Q44nw4r3snd6detail4Util, local
    .float 1.0
    .float 1.0594631
    .float 1.122462
    .float 1.1892071
    .float 1.2599211
    .float 1.3348398
    .float 1.4142135
    .float 1.4983071
    .float 1.587401
    .float 1.6817929
    .float 1.7817974
    .float 1.8877486
.endobj NoteTable__Q44nw4r3snd6detail4Util


.obj PitchTable__Q44nw4r3snd6detail4Util, local
    .float 1.0
    .float 1.0002257
    .float 1.0004513
    .float 1.0006771
    .float 1.0009029
    .float 1.0011288
    .float 1.0013547
    .float 1.0015807
    .float 1.0018067
    .float 1.0020328
    .float 1.0022589
    .float 1.002485
    .float 1.0027113
    .float 1.0029376
    .float 1.0031638
    .float 1.0033902
    .float 1.0036167
    .float 1.0038432
    .float 1.0040697
    .float 1.0042963
    .float 1.0045229
    .float 1.0047495
    .float 1.0049763
    .float 1.005203
    .float 1.0054299
    .float 1.0056568
    .float 1.0058837
    .float 1.0061107
    .float 1.0063378
    .float 1.0065649
    .float 1.0067919
    .float 1.0070192
    .float 1.0072464
    .float 1.0074737
    .float 1.007701
    .float 1.0079285
    .float 1.0081559
    .float 1.0083834
    .float 1.008611
    .float 1.0088385
    .float 1.0090662
    .float 1.0092939
    .float 1.0095217
    .float 1.0097495
    .float 1.0099773
    .float 1.0102053
    .float 1.0104332
    .float 1.0106612
    .float 1.0108893
    .float 1.0111175
    .float 1.0113456
    .float 1.0115738
    .float 1.0118021
    .float 1.0120304
    .float 1.0122588
    .float 1.0124872
    .float 1.0127157
    .float 1.0129442
    .float 1.0131727
    .float 1.0134014
    .float 1.01363
    .float 1.0138588
    .float 1.0140876
    .float 1.0143164
    .float 1.0145453
    .float 1.0147743
    .float 1.0150033
    .float 1.0152323
    .float 1.0154614
    .float 1.0156906
    .float 1.0159198
    .float 1.016149
    .float 1.0163783
    .float 1.0166076
    .float 1.0168371
    .float 1.0170665
    .float 1.0172961
    .float 1.0175256
    .float 1.0177553
    .float 1.0179849
    .float 1.0182146
    .float 1.0184444
    .float 1.0186743
    .float 1.0189041
    .float 1.019134
    .float 1.019364
    .float 1.019594
    .float 1.019824
    .float 1.0200542
    .float 1.0202844
    .float 1.0205146
    .float 1.0207449
    .float 1.0209752
    .float 1.0212057
    .float 1.0214361
    .float 1.0216666
    .float 1.0218972
    .float 1.0221277
    .float 1.0223584
    .float 1.0225891
    .float 1.0228199
    .float 1.0230507
    .float 1.0232816
    .float 1.0235125
    .float 1.0237434
    .float 1.0239744
    .float 1.0242054
    .float 1.0244366
    .float 1.0246677
    .float 1.024899
    .float 1.0251303
    .float 1.0253617
    .float 1.025593
    .float 1.0258244
    .float 1.0260559
    .float 1.0262874
    .float 1.0265191
    .float 1.0267507
    .float 1.0269824
    .float 1.0272142
    .float 1.0274459
    .float 1.0276778
    .float 1.0279098
    .float 1.0281416
    .float 1.0283737
    .float 1.0286057
    .float 1.0288378
    .float 1.02907
    .float 1.0293022
    .float 1.0295345
    .float 1.0297668
    .float 1.0299993
    .float 1.0302316
    .float 1.0304642
    .float 1.0306966
    .float 1.0309292
    .float 1.0311619
    .float 1.0313946
    .float 1.0316273
    .float 1.0318601
    .float 1.0320929
    .float 1.0323259
    .float 1.0325588
    .float 1.0327919
    .float 1.0330249
    .float 1.033258
    .float 1.0334911
    .float 1.0337244
    .float 1.0339576
    .float 1.034191
    .float 1.0344243
    .float 1.0346577
    .float 1.0348912
    .float 1.0351248
    .float 1.0353583
    .float 1.035592
    .float 1.0358257
    .float 1.0360594
    .float 1.0362933
    .float 1.036527
    .float 1.0367609
    .float 1.0369949
    .float 1.0372289
    .float 1.0374629
    .float 1.0376971
    .float 1.0379313
    .float 1.0381655
    .float 1.0383998
    .float 1.0386341
    .float 1.0388684
    .float 1.0391029
    .float 1.0393374
    .float 1.0395719
    .float 1.0398065
    .float 1.0400412
    .float 1.0402758
    .float 1.0405107
    .float 1.0407454
    .float 1.0409802
    .float 1.0412152
    .float 1.0414501
    .float 1.0416851
    .float 1.0419202
    .float 1.0421553
    .float 1.0423905
    .float 1.0426257
    .float 1.042861
    .float 1.0430963
    .float 1.0433317
    .float 1.0435672
    .float 1.0438026
    .float 1.0440382
    .float 1.0442737
    .float 1.0445094
    .float 1.0447451
    .float 1.0449809
    .float 1.0452167
    .float 1.0454526
    .float 1.0456885
    .float 1.0459244
    .float 1.0461605
    .float 1.0463965
    .float 1.0466326
    .float 1.0468688
    .float 1.0471051
    .float 1.0473413
    .float 1.0475777
    .float 1.0478141
    .float 1.0480505
    .float 1.048287
    .float 1.0485237
    .float 1.0487603
    .float 1.0489969
    .float 1.0492337
    .float 1.0494704
    .float 1.0497072
    .float 1.049944
    .float 1.050181
    .float 1.050418
    .float 1.050655
    .float 1.0508921
    .float 1.0511292
    .float 1.0513664
    .float 1.0516037
    .float 1.051841
    .float 1.0520784
    .float 1.0523158
    .float 1.0525533
    .float 1.0527908
    .float 1.0530283
    .float 1.0532659
    .float 1.0535036
    .float 1.0537413
    .float 1.0539792
    .float 1.054217
    .float 1.0544549
    .float 1.0546929
    .float 1.0549308
    .float 1.0551689
    .float 1.055407
    .float 1.0556452
    .float 1.0558834
    .float 1.0561217
    .float 1.05636
    .float 1.0565984
    .float 1.0568368
    .float 1.0570753
    .float 1.0573138
    .float 1.0575525
    .float 1.0577911
    .float 1.0580298
    .float 1.0582685
    .float 1.0585073
    .float 1.0587462
    .float 1.0589851
    .float 1.0592241
.endobj PitchTable__Q44nw4r3snd6detail4Util


.obj Decibel2RatioTable__Q44nw4r3snd6detail4Util, local
    .float 0
    .float 3.0549199E-05
    .float 3.0903E-05
    .float 3.1260799E-05
    .float 3.16228E-05
    .float 3.1988999E-05
    .float 3.2359399E-05
    .float 3.27341E-05
    .float 3.3113101E-05
    .float 3.3496501E-05
    .float 3.38844E-05
    .float 3.42768E-05
    .float 3.46737E-05
    .float 3.5075202E-05
    .float 3.5481298E-05
    .float 3.5892201E-05
    .float 3.63078E-05
    .float 3.6728201E-05
    .float 3.7153499E-05
    .float 3.7583701E-05
    .float 3.8018901E-05
    .float 3.8459199E-05
    .float 3.8904502E-05
    .float 3.9355E-05
    .float 3.98107E-05
    .float 4.0271701E-05
    .float 4.0737999E-05
    .float 4.1209802E-05
    .float 4.1686901E-05
    .float 4.21697E-05
    .float 4.2658001E-05
    .float 4.31519E-05
    .float 4.3651598E-05
    .float 4.4157001E-05
    .float 4.4668399E-05
    .float 4.5185599E-05
    .float 4.5708799E-05
    .float 4.6238099E-05
    .float 4.6773501E-05
    .float 4.7315101E-05
    .float 4.7862999E-05
    .float 4.8417201E-05
    .float 4.8977901E-05
    .float 4.9545E-05
    .float 5.0118699E-05
    .float 5.0699098E-05
    .float 5.1286101E-05
    .float 5.1880001E-05
    .float 5.24807E-05
    .float 5.3088399E-05
    .float 5.3703199E-05
    .float 5.4324999E-05
    .float 5.49541E-05
    .float 5.5590401E-05
    .float 5.6234101E-05
    .float 5.6885299E-05
    .float 5.7543999E-05
    .float 5.8210298E-05
    .float 5.8884401E-05
    .float 5.9566199E-05
    .float 6.0255999E-05
    .float 6.0953698E-05
    .float 6.1659499E-05
    .float 6.2373503E-05
    .float 6.30957E-05
    .float 6.3826301E-05
    .float 6.45654E-05
    .float 6.5313099E-05
    .float 6.6069297E-05
    .float 6.68344E-05
    .float 6.76083E-05
    .float 6.83912E-05
    .float 6.9183101E-05
    .float 6.9984198E-05
    .float 7.0794602E-05
    .float 7.1614297E-05
    .float 7.2443603E-05
    .float 7.3282499E-05
    .float 7.4131E-05
    .float 7.4989402E-05
    .float 7.5857803E-05
    .float 7.6736098E-05
    .float 7.7624703E-05
    .float 7.8523597E-05
    .float 7.9432801E-05
    .float 8.0352598E-05
    .float 8.1283099E-05
    .float 8.2224302E-05
    .float 8.3176397E-05
    .float 8.4139501E-05
    .float 8.5113803E-05
    .float 8.6099397E-05
    .float 8.70964E-05
    .float 8.8104898E-05
    .float 8.9125097E-05
    .float 9.0157097E-05
    .float 9.1201102E-05
    .float 9.2257098E-05
    .float 9.3325398E-05
    .float 9.4406103E-05
    .float 9.5499301E-05
    .float 9.6605101E-05
    .float 9.77237E-05
    .float 9.88553E-05
    .float 9.9999997E-05
    .float 0.000101158
    .float 0.000102329
    .float 0.000103514
    .float 0.000104713
    .float 0.000105925
    .float 0.000107152
    .float 0.000108393
    .float 0.000109648
    .float 0.000110917
    .float 0.000112202
    .float 0.000113501
    .float 0.000114815
    .float 0.000116145
    .float 0.00011749
    .float 0.00011885
    .float 0.000120226
    .float 0.000121619
    .float 0.000123027
    .float 0.00012445101
    .float 0.000125893
    .float 0.00012734999
    .float 0.00012882501
    .float 0.000130317
    .float 0.000131826
    .float 0.000133352
    .float 0.00013489601
    .float 0.00013645799
    .float 0.000138038
    .float 0.00013963701
    .float 0.000141254
    .float 0.000142889
    .float 0.000144544
    .float 0.00014621799
    .float 0.00014791101
    .float 0.000149624
    .float 0.000151356
    .float 0.00015310899
    .float 0.000154882
    .float 0.000156675
    .float 0.000158489
    .float 0.000160325
    .float 0.00016218099
    .float 0.00016405901
    .float 0.00016595901
    .float 0.00016788
    .float 0.00016982399
    .float 0.00017179101
    .float 0.00017378
    .float 0.000175792
    .float 0.000177828
    .float 0.00017988701
    .float 0.00018197
    .float 0.000184077
    .float 0.000186209
    .float 0.000188365
    .float 0.00019054599
    .float 0.00019275201
    .float 0.00019498399
    .float 0.000197242
    .float 0.000199526
    .float 0.000201837
    .float 0.00020417399
    .float 0.000206538
    .float 0.00020893
    .float 0.000211349
    .float 0.000213796
    .float 0.000216272
    .float 0.000218776
    .float 0.000221309
    .float 0.000223872
    .float 0.00022646401
    .float 0.000229087
    .float 0.000231739
    .float 0.000234423
    .float 0.00023713701
    .float 0.000239883
    .float 0.000242661
    .float 0.00024547099
    .float 0.00024831301
    .float 0.00025118899
    .float 0.00025409699
    .float 0.00025704
    .float 0.00026001601
    .float 0.000263027
    .float 0.00026607301
    .float 0.00026915301
    .float 0.00027227
    .float 0.00027542299
    .float 0.00027861199
    .float 0.000281838
    .float 0.000285102
    .float 0.00028840301
    .float 0.000291743
    .float 0.00029512099
    .float 0.00029853801
    .float 0.00030199499
    .float 0.00030549199
    .float 0.00030903
    .float 0.000312608
    .float 0.00031622799
    .float 0.00031989001
    .float 0.00032359399
    .float 0.000327341
    .float 0.00033113101
    .float 0.00033496501
    .float 0.00033884399
    .float 0.00034276801
    .float 0.00034673701
    .float 0.000350752
    .float 0.000354813
    .float 0.000358922
    .float 0.000363078
    .float 0.00036728199
    .float 0.00037153499
    .float 0.000375837
    .float 0.00038018901
    .float 0.00038459199
    .float 0.00038904499
    .float 0.00039355
    .float 0.00039810699
    .float 0.00040271701
    .float 0.00040737999
    .float 0.00041209799
    .float 0.00041686901
    .float 0.00042169701
    .float 0.00042657999
    .float 0.000431519
    .float 0.00043651601
    .float 0.00044157001
    .float 0.00044668399
    .float 0.000451856
    .float 0.000457088
    .float 0.00046238099
    .float 0.00046773499
    .float 0.00047315101
    .float 0.00047863001
    .float 0.00048417199
    .float 0.00048977899
    .float 0.00049544999
    .float 0.00050118699
    .float 0.000506991
    .float 0.00051286101
    .float 0.00051879999
    .float 0.00052480702
    .float 0.00053088402
    .float 0.00053703203
    .float 0.00054325
    .float 0.00054954097
    .float 0.000555904
    .float 0.00056234101
    .float 0.00056885299
    .float 0.00057544
    .float 0.00058210298
    .float 0.00058884401
    .float 0.00059566199
    .float 0.00060256
    .float 0.000609537
    .float 0.00061659497
    .float 0.00062373502
    .float 0.00063095702
    .float 0.00063826301
    .float 0.00064565398
    .float 0.00065313099
    .float 0.00066069298
    .float 0.00066834397
    .float 0.00067608297
    .float 0.00068391202
    .float 0.000691831
    .float 0.000699842
    .float 0.00070794602
    .float 0.000716143
    .float 0.00072443602
    .float 0.00073282502
    .float 0.00074131001
    .float 0.00074989401
    .float 0.00075857801
    .float 0.00076736102
    .float 0.000776247
    .float 0.00078523601
    .float 0.00079432799
    .float 0.00080352603
    .float 0.00081283099
    .float 0.00082224299
    .float 0.00083176402
    .float 0.000841395
    .float 0.00085113797
    .float 0.00086099398
    .float 0.00087096402
    .float 0.00088104903
    .float 0.00089125102
    .float 0.00090157101
    .float 0.00091201102
    .float 0.00092257099
    .float 0.00093325402
    .float 0.00094406097
    .float 0.00095499301
    .float 0.00096605101
    .float 0.00097723701
    .float 0.00098855305
    .float 0.001
    .float 0.0010115789
    .float 0.001023293
    .float 0.001035142
    .float 0.001047129
    .float 0.001059254
    .float 0.001071519
    .float 0.001083927
    .float 0.001096478
    .float 0.001109175
    .float 0.001122018
    .float 0.001135011
    .float 0.001148154
    .float 0.001161449
    .float 0.001174898
    .float 0.0011885019
    .float 0.001202264
    .float 0.001216186
    .float 0.001230269
    .float 0.0012445149
    .float 0.001258925
    .float 0.0012735029
    .float 0.00128825
    .float 0.001303167
    .float 0.001318257
    .float 0.001333521
    .float 0.001348963
    .float 0.001364583
    .float 0.001380384
    .float 0.001396368
    .float 0.001412538
    .float 0.001428894
    .float 0.00144544
    .float 0.001462177
    .float 0.001479108
    .float 0.001496236
    .float 0.001513561
    .float 0.001531087
    .float 0.001548817
    .float 0.001566751
    .float 0.001584893
    .float 0.001603245
    .float 0.00162181
    .float 0.00164059
    .float 0.001659587
    .float 0.0016788041
    .float 0.001698244
    .float 0.001717908
    .float 0.001737801
    .float 0.001757924
    .float 0.001778279
    .float 0.001798871
    .float 0.0018197011
    .float 0.001840772
    .float 0.0018620871
    .float 0.001883649
    .float 0.001905461
    .float 0.001927525
    .float 0.001949845
    .float 0.0019724229
    .float 0.001995262
    .float 0.002018366
    .float 0.002041738
    .float 0.0020653801
    .float 0.002089296
    .float 0.002113489
    .float 0.002137962
    .float 0.0021627189
    .float 0.0021877619
    .float 0.0022130951
    .float 0.0022387209
    .float 0.002264644
    .float 0.002290868
    .float 0.0023173951
    .float 0.002344229
    .float 0.0023713741
    .float 0.0023988329
    .float 0.0024266101
    .float 0.002454709
    .float 0.002483133
    .float 0.0025118859
    .float 0.002540973
    .float 0.0025703961
    .float 0.00260016
    .float 0.002630268
    .float 0.002660725
    .float 0.002691535
    .float 0.0027227011
    .float 0.0027542289
    .float 0.0027861211
    .float 0.002818383
    .float 0.002851018
    .float 0.002884032
    .float 0.0029174271
    .float 0.002951209
    .float 0.0029853829
    .float 0.003019952
    .float 0.003054921
    .float 0.003090295
    .float 0.003126079
    .float 0.0031622781
    .float 0.0031988949
    .float 0.0032359371
    .float 0.003273407
    .float 0.0033113109
    .float 0.0033496539
    .float 0.0033884421
    .float 0.003427678
    .float 0.0034673689
    .float 0.0035075189
    .float 0.0035481339
    .float 0.0035892189
    .float 0.0036307811
    .float 0.0036728231
    .float 0.0037153519
    .float 0.0037583739
    .float 0.0038018939
    .float 0.003845918
    .float 0.003890451
    .float 0.003935501
    .float 0.003981072
    .float 0.0040271701
    .float 0.0040738028
    .float 0.0041209748
    .float 0.0041686939
    .float 0.0042169648
    .float 0.004265795
    .float 0.0043151909
    .float 0.0043651578
    .float 0.0044157039
    .float 0.0044668359
    .float 0.0045185592
    .float 0.0045708818
    .float 0.0046238098
    .float 0.0046773511
    .float 0.0047315131
    .float 0.0047863009
    .float 0.0048417239
    .float 0.0048977882
    .float 0.004954502
    .float 0.0050118719
    .float 0.0050699068
    .float 0.0051286141
    .float 0.0051879999
    .float 0.0052480749
    .float 0.0053088441
    .float 0.005370318
    .float 0.0054325028
    .float 0.005495409
    .float 0.005559043
    .float 0.0056234128
    .float 0.005688529
    .float 0.0057543991
    .float 0.005821032
    .float 0.0058884369
    .float 0.0059566209
    .float 0.0060255961
    .float 0.0060953689
    .float 0.0061659501
    .float 0.0062373481
    .float 0.0063095731
    .float 0.0063826349
    .float 0.0064565418
    .float 0.0065313061
    .float 0.0066069341
    .float 0.006683439
    .float 0.0067608301
    .float 0.0068391161
    .float 0.0069183102
    .float 0.0069984202
    .float 0.0070794579
    .float 0.0071614338
    .float 0.0072443602
    .float 0.0073282449
    .float 0.0074131018
    .float 0.0074989418
    .float 0.007585776
    .float 0.0076736151
    .float 0.0077624712
    .float 0.0078523559
    .float 0.0079432819
    .float 0.0080352612
    .float 0.008128305
    .float 0.0082224263
    .float 0.0083176382
    .float 0.0084139509
    .float 0.0085113803
    .float 0.0086099384
    .float 0.0087096356
    .float 0.0088104894
    .float 0.0089125093
    .float 0.009015711
    .float 0.0091201076
    .float 0.009225714
    .float 0.0093325432
    .float 0.0094406093
    .float 0.009549926
    .float 0.0096605094
    .float 0.0097723724
    .float 0.0098855309
    .float 0.0099999998
    .float 0.010115795
    .float 0.01023293
    .float 0.010351422
    .float 0.010471285
    .float 0.010592537
    .float 0.010715193
    .float 0.010839269
    .float 0.010964782
    .float 0.011091748
    .float 0.011220185
    .float 0.011350108
    .float 0.011481536
    .float 0.011614486
    .float 0.011748976
    .float 0.011885022
    .float 0.012022644
    .float 0.01216186
    .float 0.012302688
    .float 0.012445146
    .float 0.012589254
    .float 0.012735031
    .float 0.012882496
    .float 0.013031668
    .float 0.013182567
    .float 0.013335214
    .float 0.013489629
    .float 0.013645831
    .float 0.013803843
    .float 0.013963684
    .float 0.014125375
    .float 0.01428894
    .float 0.014454398
    .float 0.014621772
    .float 0.014791084
    .float 0.014962357
    .float 0.015135612
    .float 0.015310875
    .float 0.015488166
    .float 0.015667511
    .float 0.015848933
    .float 0.016032454
    .float 0.016218102
    .float 0.016405897
    .float 0.016595868
    .float 0.016788039
    .float 0.016982436
    .float 0.017179083
    .float 0.017378008
    .float 0.017579235
    .float 0.017782794
    .float 0.01798871
    .float 0.018197009
    .float 0.018407719
    .float 0.018620871
    .float 0.018836491
    .float 0.019054607
    .float 0.01927525
    .float 0.019498445
    .float 0.019724227
    .float 0.019952623
    .float 0.020183664
    .float 0.020417379
    .float 0.020653803
    .float 0.020892961
    .float 0.021134891
    .float 0.021379622
    .float 0.021627186
    .float 0.021877617
    .float 0.022130948
    .float 0.02238721
    .float 0.022646444
    .float 0.022908676
    .float 0.023173947
    .float 0.023442289
    .float 0.023713738
    .float 0.023988329
    .float 0.024266101
    .float 0.024547089
    .float 0.02483133
    .float 0.025118863
    .float 0.025409726
    .float 0.025703957
    .float 0.026001597
    .float 0.02630268
    .float 0.026607251
    .float 0.026915347
    .float 0.027227012
    .float 0.027542287
    .float 0.027861211
    .float 0.028183829
    .float 0.028510183
    .float 0.028840315
    .float 0.02917427
    .float 0.029512092
    .float 0.029853826
    .float 0.030199517
    .float 0.030549211
    .float 0.030902954
    .float 0.031260792
    .float 0.031622779
    .float 0.031988952
    .float 0.032359365
    .float 0.03273407
    .float 0.033113111
    .float 0.033496544
    .float 0.033884417
    .float 0.03427678
    .float 0.034673683
    .float 0.035075188
    .float 0.035481337
    .float 0.035892192
    .float 0.036307804
    .float 0.036728229
    .float 0.037153523
    .float 0.037583739
    .float 0.038018938
    .float 0.038459178
    .float 0.038904514
    .float 0.03935501
    .float 0.039810717
    .float 0.040271703
    .float 0.040738028
    .float 0.041209754
    .float 0.041686937
    .float 0.042169649
    .float 0.042657953
    .float 0.043151908
    .float 0.043651585
    .float 0.044157047
    .float 0.044668358
    .float 0.045185596
    .float 0.04570882
    .float 0.046238102
    .float 0.046773516
    .float 0.047315124
    .float 0.04786301
    .float 0.048417237
    .float 0.048977882
    .float 0.04954502
    .float 0.050118722
    .float 0.05069907
    .float 0.051286139
    .float 0.051880006
    .float 0.052480746
    .float 0.053088445
    .float 0.053703181
    .float 0.054325033
    .float 0.054954085
    .float 0.055590425
    .float 0.056234132
    .float 0.056885295
    .float 0.057543993
    .float 0.058210321
    .float 0.058884367
    .float 0.059566215
    .float 0.06025596
    .float 0.060953692
    .float 0.0616595
    .float 0.062373485
    .float 0.063095734
    .float 0.063826352
    .float 0.06456542
    .float 0.065313056
    .float 0.066069342
    .float 0.06683439
    .float 0.067608297
    .float 0.068391167
    .float 0.069183096
    .float 0.069984198
    .float 0.070794575
    .float 0.07161434
    .float 0.072443597
    .float 0.07328245
    .float 0.074131027
    .float 0.074989423
    .float 0.075857759
    .float 0.076736152
    .float 0.077624708
    .float 0.078523561
    .float 0.079432823
    .float 0.080352612
    .float 0.081283055
    .float 0.082224265
    .float 0.083176374
    .float 0.084139511
    .float 0.085113801
    .float 0.086099371
    .float 0.087096356
    .float 0.088104889
    .float 0.089125097
    .float 0.090157114
    .float 0.091201082
    .float 0.092257142
    .float 0.093325429
    .float 0.094406091
    .float 0.095499262
    .float 0.096605085
    .float 0.097723722
    .float 0.098855309
    .float 0.1
    .float 0.10115795
    .float 0.1023293
    .float 0.10351422
    .float 0.10471285
    .float 0.105925373
    .float 0.10715193
    .float 0.10839269
    .float 0.10964782
    .float 0.11091748
    .float 0.11220185
    .float 0.11350108
    .float 0.11481536
    .float 0.11614486
    .float 0.117489755
    .float 0.11885022
    .float 0.12022644
    .float 0.1216186
    .float 0.12302688
    .float 0.12445146
    .float 0.12589253
    .float 0.1273503
    .float 0.12882495
    .float 0.13031667
    .float 0.13182567
    .float 0.13335215
    .float 0.13489629
    .float 0.13645831
    .float 0.13803843
    .float 0.13963683
    .float 0.14125375
    .float 0.1428894
    .float 0.14454398
    .float 0.14621772
    .float 0.14791083
    .float 0.14962357
    .float 0.15135613
    .float 0.15310875
    .float 0.15488166
    .float 0.1566751
    .float 0.15848932
    .float 0.16032454
    .float 0.162181
    .float 0.16405898
    .float 0.16595869
    .float 0.1678804
    .float 0.16982436
    .float 0.17179084
    .float 0.17378008
    .float 0.17579237
    .float 0.17782794
    .float 0.17988709
    .float 0.18197009
    .float 0.1840772
    .float 0.18620871
    .float 0.18836491
    .float 0.19054607
    .float 0.1927525
    .float 0.19498447
    .float 0.19724227
    .float 0.19952624
    .float 0.20183663
    .float 0.20417379
    .float 0.20653802
    .float 0.20892961
    .float 0.21134891
    .float 0.21379621
    .float 0.21627185
    .float 0.21877617
    .float 0.22130947
    .float 0.22387211
    .float 0.22646444
    .float 0.22908677
    .float 0.23173946
    .float 0.23442288
    .float 0.23713738
    .float 0.23988329
    .float 0.24266101
    .float 0.2454709
    .float 0.24831331
    .float 0.25118864
    .float 0.25409728
    .float 0.25703958
    .float 0.26001596
    .float 0.2630268
    .float 0.26607251
    .float 0.26915348
    .float 0.27227014
    .float 0.27542287
    .float 0.27861211
    .float 0.2818383
    .float 0.28510183
    .float 0.28840315
    .float 0.29174271
    .float 0.29512092
    .float 0.29853827
    .float 0.30199516
    .float 0.3054921
    .float 0.30902955
    .float 0.31260794
    .float 0.31622776
    .float 0.31988952
    .float 0.32359365
    .float 0.32734069
    .float 0.33113113
    .float 0.33496544
    .float 0.33884415
    .float 0.34276778
    .float 0.34673685
    .float 0.35075188
    .float 0.3548134
    .float 0.35892195
    .float 0.36307806
    .float 0.3672823
    .float 0.37153524
    .float 0.37583742
    .float 0.38018939
    .float 0.38459179
    .float 0.38904515
    .float 0.39355007
    .float 0.39810717
    .float 0.40271702
    .float 0.40738028
    .float 0.41209751
    .float 0.41686937
    .float 0.42169651
    .float 0.42657951
    .float 0.43151909
    .float 0.43651584
    .float 0.44157046
    .float 0.44668359
    .float 0.45185596
    .float 0.4570882
    .float 0.46238104
    .float 0.46773514
    .float 0.47315127
    .float 0.4786301
    .float 0.48417237
    .float 0.48977882
    .float 0.4954502
    .float 0.50118721
    .float 0.50699073
    .float 0.51286137
    .float 0.51880002
    .float 0.52480745
    .float 0.53088444
    .float 0.53703177
    .float 0.54325032
    .float 0.54954088
    .float 0.55590427
    .float 0.56234133
    .float 0.5688529
    .float 0.57543993
    .float 0.58210319
    .float 0.58884364
    .float 0.59566212
    .float 0.60255957
    .float 0.60953689
    .float 0.61659503
    .float 0.62373483
    .float 0.63095737
    .float 0.63826346
    .float 0.6456542
    .float 0.65313053
    .float 0.66069347
    .float 0.6683439
    .float 0.67608297
    .float 0.68391162
    .float 0.69183099
    .float 0.69984198
    .float 0.70794576
    .float 0.71614343
    .float 0.72443599
    .float 0.7328245
    .float 0.74131024
    .float 0.7498942
    .float 0.75857759
    .float 0.76736146
    .float 0.77624714
    .float 0.78523564
    .float 0.79432821
    .float 0.8035261
    .float 0.81283051
    .float 0.82224268
    .float 0.83176374
    .float 0.84139514
    .float 0.85113806
    .float 0.86099374
    .float 0.87096357
    .float 0.88104886
    .float 0.89125091
    .float 0.90157115
    .float 0.91201085
    .float 0.92257142
    .float 0.9332543
    .float 0.94406086
    .float 0.95499259
    .float 0.96605086
    .float 0.97723722
    .float 0.98855311
    .float 1.0
    .float 1.0115795
    .float 1.023293
    .float 1.0351422
    .float 1.0471286
    .float 1.0592537
    .float 1.0715193
    .float 1.0839269
    .float 1.0964782
    .float 1.1091748
    .float 1.1220185
    .float 1.1350108
    .float 1.1481537
    .float 1.1614486
    .float 1.1748976
    .float 1.1885022
    .float 1.2022644
    .float 1.216186
    .float 1.2302687
    .float 1.2445146
    .float 1.2589254
    .float 1.2735031
    .float 1.2882495
    .float 1.3031667
    .float 1.3182567
    .float 1.3335215
    .float 1.3489629
    .float 1.3645831
    .float 1.3803842
    .float 1.3963684
    .float 1.4125376
    .float 1.4288939
    .float 1.4454398
    .float 1.4621772
    .float 1.4791083
    .float 1.4962356
    .float 1.5135612
    .float 1.5310875
    .float 1.5488166
    .float 1.5667511
    .float 1.5848932
    .float 1.6032454
    .float 1.6218101
    .float 1.6405897
    .float 1.6595869
    .float 1.678804
    .float 1.6982436
    .float 1.7179084
    .float 1.7378008
    .float 1.7579236
    .float 1.7782794
    .float 1.7988709
    .float 1.8197008
    .float 1.840772
    .float 1.8620871
    .float 1.8836491
    .float 1.9054607
    .float 1.9275249
    .float 1.9498446
    .float 1.9724227
    .float 1.9952623
.endobj Decibel2RatioTable__Q44nw4r3snd6detail4Util

.obj Pan2RatioTableSqrt__Q44nw4r3snd6detail4Util, local
    .float 1.0
    .float 0.99804497
    .float 0.99608612
    .float 0.99412334
    .float 0.99215674
    .float 0.99018621
    .float 0.98821175
    .float 0.98623335
    .float 0.98425096
    .float 0.98226458
    .float 0.9802742
    .float 0.97827977
    .float 0.97628123
    .float 0.97427857
    .float 0.9722718
    .float 0.97026092
    .float 0.96824586
    .float 0.96622658
    .float 0.96420306
    .float 0.96217525
    .float 0.96014321
    .float 0.95810688
    .float 0.95606613
    .float 0.9540211
    .float 0.95197165
    .float 0.94991773
    .float 0.94785941
    .float 0.94579661
    .float 0.94372928
    .float 0.94165742
    .float 0.93958104
    .float 0.9375
    .float 0.93541437
    .float 0.93332404
    .float 0.93122905
    .float 0.9291293
    .float 0.92702478
    .float 0.92491555
    .float 0.92280143
    .float 0.92068249
    .float 0.91855866
    .float 0.91642988
    .float 0.91429615
    .float 0.91215748
    .float 0.91001374
    .float 0.90786493
    .float 0.90571105
    .float 0.903552
    .float 0.90138781
    .float 0.89921844
    .float 0.89704376
    .float 0.89486384
    .float 0.89267856
    .float 0.89048791
    .float 0.8882919
    .float 0.88609046
    .float 0.88388348
    .float 0.88167101
    .float 0.87945294
    .float 0.87722927
    .float 0.875
    .float 0.872765
    .float 0.87052429
    .float 0.86827773
    .float 0.86602539
    .float 0.86376721
    .float 0.86150306
    .float 0.85923296
    .float 0.85695684
    .float 0.85467464
    .float 0.85238636
    .float 0.85009193
    .float 0.84779125
    .float 0.84548432
    .float 0.84317112
    .float 0.84085149
    .float 0.83852547
    .float 0.83619303
    .float 0.83385402
    .float 0.8315084
    .float 0.82915622
    .float 0.82679731
    .float 0.8244316
    .float 0.82205915
    .float 0.8196798
    .float 0.81729352
    .float 0.81490028
    .float 0.8125
    .float 0.81009257
    .float 0.80767798
    .float 0.80525619
    .float 0.80282706
    .float 0.80039054
    .float 0.79794657
    .float 0.79549515
    .float 0.7930361
    .float 0.79056942
    .float 0.788095
    .float 0.78561282
    .float 0.78312278
    .float 0.78062475
    .float 0.77811873
    .float 0.77560461
    .float 0.77308232
    .float 0.77055174
    .float 0.76801288
    .float 0.76546556
    .float 0.76290971
    .float 0.76034534
    .float 0.75777221
    .float 0.75519037
    .float 0.75259966
    .float 0.75
    .float 0.74739128
    .float 0.74477345
    .float 0.74214637
    .float 0.73951
    .float 0.73686415
    .float 0.73420876
    .float 0.73154372
    .float 0.72886896
    .float 0.72618437
    .float 0.72348982
    .float 0.72078514
    .float 0.71807033
    .float 0.7153452
    .float 0.71260965
    .float 0.70986354
    .float 0.70710678
    .float 0.70433921
    .float 0.70156074
    .float 0.69877124
    .float 0.69597054
    .float 0.69315851
    .float 0.69033504
    .float 0.6875
    .float 0.68465322
    .float 0.68179452
    .float 0.67892379
    .float 0.67604089
    .float 0.67314559
    .float 0.67023784
    .float 0.66731739
    .float 0.66438413
    .float 0.66143781
    .float 0.65847838
    .float 0.65550554
    .float 0.65251917
    .float 0.64951903
    .float 0.646505
    .float 0.6434769
    .float 0.64043444
    .float 0.63737744
    .float 0.63430572
    .float 0.63121903
    .float 0.6281172
    .float 0.625
    .float 0.62186712
    .float 0.61871845
    .float 0.61555362
    .float 0.61237246
    .float 0.60917467
    .float 0.60596001
    .float 0.60272819
    .float 0.59947896
    .float 0.59621203
    .float 0.59292704
    .float 0.58962381
    .float 0.58630198
    .float 0.5829612
    .float 0.57960117
    .float 0.57622153
    .float 0.57282197
    .float 0.5694021
    .float 0.5659616
    .float 0.5625
    .float 0.559017
    .float 0.55551213
    .float 0.55198503
    .float 0.54843527
    .float 0.54486239
    .float 0.5412659
    .float 0.53764534
    .float 0.53400022
    .float 0.53033006
    .float 0.52663434
    .float 0.5229125
    .float 0.51916397
    .float 0.51538819
    .float 0.51158452
    .float 0.50775242
    .float 0.50389111
    .float 0.5
    .float 0.49607837
    .float 0.49212548
    .float 0.48814061
    .float 0.48412293
    .float 0.4800716
    .float 0.47598583
    .float 0.47186464
    .float 0.46770719
    .float 0.46351239
    .float 0.45927933
    .float 0.45500687
    .float 0.45069391
    .float 0.44633928
    .float 0.44194174
    .float 0.4375
    .float 0.43301269
    .float 0.42847842
    .float 0.42389563
    .float 0.41926274
    .float 0.41457811
    .float 0.4098399
    .float 0.40504628
    .float 0.40019527
    .float 0.39528471
    .float 0.39031237
    .float 0.38527587
    .float 0.38017267
    .float 0.375
    .float 0.369755
    .float 0.36443448
    .float 0.35903516
    .float 0.35355338
    .float 0.34798527
    .float 0.34232661
    .float 0.3365728
    .float 0.3307189
    .float 0.32475951
    .float 0.31868872
    .float 0.3125
    .float 0.30618623
    .float 0.29973948
    .float 0.29315099
    .float 0.28641099
    .float 0.2795085
    .float 0.27243119
    .float 0.26516503
    .float 0.2576941
    .float 0.25
    .float 0.24206147
    .float 0.23385359
    .float 0.22534695
    .float 0.21650635
    .float 0.20728905
    .float 0.19764236
    .float 0.1875
    .float 0.17677669
    .float 0.16535945
    .float 0.15309311
    .float 0.13975425
    .float 0.125
    .float 0.10825317
    .float 0.088388346
    .float 0.0625
    .float 0
.endobj Pan2RatioTableSqrt__Q44nw4r3snd6detail4Util


.obj Pan2RatioTableSinCos__Q44nw4r3snd6detail4Util, local
    .float 1.0
    .float 0.99998116
    .float 0.99992472
    .float 0.9998306
    .float 0.99969882
    .float 0.99952942
    .float 0.99932241
    .float 0.99907774
    .float 0.99879545
    .float 0.99847555
    .float 0.9981181
    .float 0.99772304
    .float 0.99729043
    .float 0.99682027
    .float 0.99631262
    .float 0.99576741
    .float 0.99518472
    .float 0.99456459
    .float 0.99390697
    .float 0.99321193
    .float 0.99247956
    .float 0.99170977
    .float 0.99090266
    .float 0.99005818
    .float 0.98917651
    .float 0.98825759
    .float 0.98730141
    .float 0.9863081
    .float 0.98527765
    .float 0.98421007
    .float 0.98310548
    .float 0.98196387
    .float 0.98078525
    .float 0.97956979
    .float 0.97831738
    .float 0.97702813
    .float 0.97570211
    .float 0.97433937
    .float 0.97293997
    .float 0.97150391
    .float 0.97003126
    .float 0.96852207
    .float 0.96697646
    .float 0.96539444
    .float 0.96377605
    .float 0.96212143
    .float 0.9604305
    .float 0.95870346
    .float 0.95694035
    .float 0.95514119
    .float 0.95330602
    .float 0.95143503
    .float 0.94952816
    .float 0.94758558
    .float 0.9456073
    .float 0.94359344
    .float 0.94154406
    .float 0.9394592
    .float 0.93733901
    .float 0.93518353
    .float 0.93299282
    .float 0.93076694
    .float 0.92850608
    .float 0.92621022
    .float 0.9238795
    .float 0.92151403
    .float 0.91911387
    .float 0.91667908
    .float 0.91420978
    .float 0.91170603
    .float 0.909168
    .float 0.90659571
    .float 0.90398932
    .float 0.90134883
    .float 0.89867449
    .float 0.89596623
    .float 0.8932243
    .float 0.89044875
    .float 0.88763964
    .float 0.8847971
    .float 0.88192129
    .float 0.87901223
    .float 0.87607008
    .float 0.87309498
    .float 0.87008697
    .float 0.86704624
    .float 0.86397284
    .float 0.86086696
    .float 0.8577286
    .float 0.85455799
    .float 0.8513552
    .float 0.84812033
    .float 0.84485358
    .float 0.841555
    .float 0.83822471
    .float 0.83486289
    .float 0.8314696
    .float 0.82804507
    .float 0.82458931
    .float 0.8211025
    .float 0.81758481
    .float 0.81403631
    .float 0.81045717
    .float 0.80684757
    .float 0.80320752
    .float 0.79953724
    .float 0.79583693
    .float 0.79210657
    .float 0.78834641
    .float 0.78455657
    .float 0.78073722
    .float 0.77688849
    .float 0.77301043
    .float 0.76910335
    .float 0.76516724
    .float 0.76120239
    .float 0.75720882
    .float 0.75318682
    .float 0.74913639
    .float 0.74505776
    .float 0.74095112
    .float 0.73681659
    .float 0.73265427
    .float 0.72846437
    .float 0.7242471
    .float 0.72000253
    .float 0.71573085
    .float 0.71143222
    .float 0.70710678
    .float 0.70275474
    .float 0.69837624
    .float 0.69397146
    .float 0.68954057
    .float 0.68508369
    .float 0.680601
    .float 0.67609268
    .float 0.67155898
    .float 0.66699994
    .float 0.6624158
    .float 0.65780669
    .float 0.65317285
    .float 0.64851439
    .float 0.64383155
    .float 0.63912445
    .float 0.63439327
    .float 0.62963825
    .float 0.62485951
    .float 0.62005723
    .float 0.61523157
    .float 0.6103828
    .float 0.60551107
    .float 0.60061646
    .float 0.59569931
    .float 0.59075969
    .float 0.58579785
    .float 0.58081394
    .float 0.57580817
    .float 0.57078075
    .float 0.56573182
    .float 0.56066155
    .float 0.55557024
    .float 0.55045795
    .float 0.54532498
    .float 0.54017144
    .float 0.53499764
    .float 0.52980363
    .float 0.52458966
    .float 0.51935601
    .float 0.51410276
    .float 0.50883013
    .float 0.50353837
    .float 0.49822766
    .float 0.4928982
    .float 0.48755017
    .float 0.48218378
    .float 0.47679922
    .float 0.47139674
    .float 0.46597651
    .float 0.46053872
    .float 0.45508358
    .float 0.44961134
    .float 0.44412214
    .float 0.43861625
    .float 0.43309382
    .float 0.42755508
    .float 0.42200026
    .float 0.41642955
    .float 0.41084316
    .float 0.40524131
    .float 0.3996242
    .float 0.39399204
    .float 0.38834503
    .float 0.38268343
    .float 0.37700742
    .float 0.37131721
    .float 0.36561298
    .float 0.35989505
    .float 0.35416353
    .float 0.34841868
    .float 0.34266073
    .float 0.33688986
    .float 0.33110631
    .float 0.32531029
    .float 0.31950203
    .float 0.31368175
    .float 0.30784965
    .float 0.30200595
    .float 0.29615089
    .float 0.29028466
    .float 0.28440753
    .float 0.27851969
    .float 0.27262136
    .float 0.26671275
    .float 0.2607941
    .float 0.25486565
    .float 0.24892761
    .float 0.24298018
    .float 0.23702361
    .float 0.23105811
    .float 0.22508392
    .float 0.21910124
    .float 0.21311031
    .float 0.20711137
    .float 0.20110464
    .float 0.19509032
    .float 0.18906866
    .float 0.18303989
    .float 0.17700422
    .float 0.17096189
    .float 0.16491312
    .float 0.15885815
    .float 0.15279719
    .float 0.14673047
    .float 0.14065824
    .float 0.1345807
    .float 0.12849811
    .float 0.12241068
    .float 0.11631863
    .float 0.110222205
    .float 0.10412163
    .float 0.098017141
    .float 0.091908954
    .float 0.08579731
    .float 0.07968244
    .float 0.073564567
    .float 0.067443922
    .float 0.061320737
    .float 0.055195242
    .float 0.049067672
    .float 0.042938258
    .float 0.036807224
    .float 0.030674802
    .float 0.024541229
    .float 0.01840673
    .float 0.012271538
    .float 0.0061358851
    .float 0 #0
.endobj Pan2RatioTableSinCos__Q44nw4r3snd6detail4Util

.obj Pan2RatioTableLinear__Q44nw4r3snd6detail4Util, local
    .float 1.0
    .float 0.99609375
    .float 0.9921875
    .float 0.98828125
    .float 0.984375
    .float 0.98046875
    .float 0.9765625
    .float 0.97265625
    .float 0.96875
    .float 0.96484375
    .float 0.9609375
    .float 0.95703125
    .float 0.953125
    .float 0.94921875
    .float 0.9453125
    .float 0.94140625
    .float 0.9375
    .float 0.93359375
    .float 0.9296875
    .float 0.92578125
    .float 0.921875
    .float 0.91796875
    .float 0.9140625
    .float 0.91015625
    .float 0.90625
    .float 0.90234375
    .float 0.8984375
    .float 0.89453125
    .float 0.890625
    .float 0.88671875
    .float 0.8828125
    .float 0.87890625
    .float 0.875
    .float 0.87109375
    .float 0.8671875
    .float 0.86328125
    .float 0.859375
    .float 0.85546875
    .float 0.8515625
    .float 0.84765625
    .float 0.84375
    .float 0.83984375
    .float 0.8359375
    .float 0.83203125
    .float 0.828125
    .float 0.82421875
    .float 0.8203125
    .float 0.81640625
    .float 0.8125
    .float 0.80859375
    .float 0.8046875
    .float 0.80078125
    .float 0.796875
    .float 0.79296875
    .float 0.7890625
    .float 0.78515625
    .float 0.78125
    .float 0.77734375
    .float 0.7734375
    .float 0.76953125
    .float 0.765625
    .float 0.76171875
    .float 0.7578125
    .float 0.75390625
    .float 0.75
    .float 0.74609375
    .float 0.7421875
    .float 0.73828125
    .float 0.734375
    .float 0.73046875
    .float 0.7265625
    .float 0.72265625
    .float 0.71875
    .float 0.71484375
    .float 0.7109375
    .float 0.70703125
    .float 0.703125
    .float 0.69921875
    .float 0.6953125
    .float 0.69140625
    .float 0.6875
    .float 0.68359375
    .float 0.6796875
    .float 0.67578125
    .float 0.671875
    .float 0.66796875
    .float 0.6640625
    .float 0.66015625
    .float 0.65625
    .float 0.65234375
    .float 0.6484375
    .float 0.64453125
    .float 0.640625
    .float 0.63671875
    .float 0.6328125
    .float 0.62890625
    .float 0.625
    .float 0.62109375
    .float 0.6171875
    .float 0.61328125
    .float 0.609375
    .float 0.60546875
    .float 0.6015625
    .float 0.59765625
    .float 0.59375
    .float 0.58984375
    .float 0.5859375
    .float 0.58203125
    .float 0.578125
    .float 0.57421875
    .float 0.5703125
    .float 0.56640625
    .float 0.5625
    .float 0.55859375
    .float 0.5546875
    .float 0.55078125
    .float 0.546875
    .float 0.54296875
    .float 0.5390625
    .float 0.53515625
    .float 0.53125
    .float 0.52734375
    .float 0.5234375
    .float 0.51953125
    .float 0.515625
    .float 0.51171875
    .float 0.5078125
    .float 0.50390625
    .float 0.5
    .float 0.49609375
    .float 0.4921875
    .float 0.48828125
    .float 0.484375
    .float 0.48046875
    .float 0.4765625
    .float 0.47265625
    .float 0.46875
    .float 0.46484375
    .float 0.4609375
    .float 0.45703125
    .float 0.453125
    .float 0.44921875
    .float 0.4453125
    .float 0.44140625
    .float 0.4375
    .float 0.43359375
    .float 0.4296875
    .float 0.42578125
    .float 0.421875
    .float 0.41796875
    .float 0.4140625
    .float 0.41015625
    .float 0.40625
    .float 0.40234375
    .float 0.3984375
    .float 0.39453125
    .float 0.390625
    .float 0.38671875
    .float 0.3828125
    .float 0.37890625
    .float 0.375
    .float 0.37109375
    .float 0.3671875
    .float 0.36328125
    .float 0.359375
    .float 0.35546875
    .float 0.3515625
    .float 0.34765625
    .float 0.34375
    .float 0.33984375
    .float 0.3359375
    .float 0.33203125
    .float 0.328125
    .float 0.32421875
    .float 0.3203125
    .float 0.31640625
    .float 0.3125
    .float 0.30859375
    .float 0.3046875
    .float 0.30078125
    .float 0.296875
    .float 0.29296875
    .float 0.2890625
    .float 0.28515625
    .float 0.28125
    .float 0.27734375
    .float 0.2734375
    .float 0.26953125
    .float 0.265625
    .float 0.26171875
    .float 0.2578125
    .float 0.25390625
    .float 0.25
    .float 0.24609375
    .float 0.2421875
    .float 0.23828125
    .float 0.234375
    .float 0.23046875
    .float 0.2265625
    .float 0.22265625
    .float 0.21875
    .float 0.21484375
    .float 0.2109375
    .float 0.20703125
    .float 0.203125
    .float 0.19921875
    .float 0.1953125
    .float 0.19140625
    .float 0.1875
    .float 0.18359375
    .float 0.1796875
    .float 0.17578125
    .float 0.171875
    .float 0.16796875
    .float 0.1640625
    .float 0.16015625
    .float 0.15625
    .float 0.15234375
    .float 0.1484375
    .float 0.14453125
    .float 0.140625
    .float 0.13671875
    .float 0.1328125
    .float 0.12890625
    .float 0.125
    .float 0.12109375
    .float 0.1171875
    .float 0.11328125
    .float 0.109375
    .float 0.10546875
    .float 0.1015625
    .float 0.09765625
    .float 0.09375
    .float 0.08984375
    .float 0.0859375
    .float 0.08203125
    .float 0.078125
    .float 0.07421875
    .float 0.0703125
    .float 0.06640625
    .float 0.0625
    .float 0.05859375
    .float 0.0546875
    .float 0.05078125
    .float 0.046875
    .float 0.04296875
    .float 0.0390625
    .float 0.03515625
    .float 0.03125
    .float 0.02734375
    .float 0.0234375
    .float 0.01953125
    .float 0.015625
    .float 0.01171875
    .float 0.0078125
    .float 0.00390625
    .float 0 #0
.endobj Pan2RatioTableLinear__Q44nw4r3snd6detail4Util


.obj RemoteFilterCoefTable__Q44nw4r3snd6detail4Util, local
	.4byte 0x387C70F7
	.4byte 0x387C8144
	.4byte 0xC13E3549
	.4byte 0x6A933549
	.4byte 0x88E9C7F2
	.4byte 0x31C46389
	.4byte 0x31C49211
	.4byte 0xCE952E7C
	.4byte 0x5CF92E7C
	.4byte 0x9B3ED422
	.4byte 0x2B6F56DE
	.4byte 0x2B6FA44C
	.4byte 0xD8C72899
	.4byte 0x51332899
	.4byte 0xAD24DCA7
	.4byte 0x25F74BEE
	.4byte 0x25F7B5BA
	.4byte 0xDFE42384
	.4byte 0x47092384
	.4byte 0xBE07E294
	.4byte 0x213D427A
	.4byte 0x213DC608
	.4byte 0xE4CE1F1D
	.4byte 0x3E3A1F1D
	.4byte 0xCDBCE6A2
	.4byte 0x1D223A44
	.4byte 0x1D22D525
	.4byte 0xE81D1B48
	.4byte 0x36901B48
	.4byte 0xDC45E94C
	.4byte 0x198D331A
	.4byte 0x198DE31D
	.4byte 0xEA3917EE
	.4byte 0x2FDC17EE
	.4byte 0xE9B0EAEC
	.4byte 0x16692CD2
	.4byte 0x1669F001
	.4byte 0xEB6C14FD
	.4byte 0x29F914FD
	.4byte 0xF613EBBE
	.4byte 0x13A7274D
	.4byte 0x13A7FBE7
	.4byte 0xEBE91265
	.4byte 0x24CB1265
	.4byte 0x0180EBF1
	.4byte 0x11382270
	.4byte 0x113806E2
	.4byte 0xEBD9101C
	.4byte 0x2039101C
	.4byte 0x0C0DEBA6
	.4byte 0x0F121E24
	.4byte 0x0F121104
	.4byte 0xEB5A0E18
	.4byte 0x1C300E18
	.4byte 0x15C9EAF8
	.4byte 0x0D2D1A59
	.4byte 0x0D2D1A5D
	.4byte 0xEA840C50
	.4byte 0x189F0C50
	.4byte 0x1EC3E9FE
	.4byte 0x0B801700
	.4byte 0x0B8022FC
	.4byte 0xE9690ABD
	.4byte 0x15790ABD
	.4byte 0x270AE8C7
	.4byte 0x0A05140B
	.4byte 0x0A052AED
	.4byte 0xE81A0959
	.4byte 0x12B30959
	.4byte 0x2EA9E763
	.4byte 0x08B81170
	.4byte 0x08B8323D
	.4byte 0xE6A30820
	.4byte 0x10410820
	.4byte 0x35ACE5DD
	.4byte 0x07920F25
	.4byte 0x079238F6
	.4byte 0xE510070D
	.4byte 0x0E1A070D
	.4byte 0x3C1DE43E
	.4byte 0x06900D21
	.4byte 0x06903F23
	.4byte 0xE369061B
	.4byte 0x0C37061B
	.4byte 0x4208E290
	.4byte 0x05AE0B5C
	.4byte 0x05AE44CD
	.4byte 0xE1B60548
	.4byte 0x0A900548
	.4byte 0x4774E0DA
	.4byte 0x04E809D0
	.4byte 0x04E849FE
	.4byte 0xDFFD048F
	.4byte 0x091E048F
	.4byte 0x4C6CDF20
	.4byte 0x043B0877
	.4byte 0x043B4EBF
	.4byte 0xDE4403ED
	.4byte 0x07DB03ED
	.4byte 0x50F8DD69
	.4byte 0x03A50749
	.4byte 0x03A55317
	.4byte 0xDC900361
	.4byte 0x06C20361
	.4byte 0x551FDBB8
	.4byte 0x03220643
	.4byte 0x03225710
	.4byte 0xDAE302E7
	.4byte 0x05CE02E7
	.4byte 0x58EADA11
	.4byte 0x02B00560
	.4byte 0x02B05AAF
	.4byte 0xD941027D
	.4byte 0x04FA027D
	.4byte 0x5C60D875
	.4byte 0x024E049B
	.4byte 0x024E5DFE
	.4byte 0xD7AD0222
	.4byte 0x04430222
	.4byte 0x5F88D6E8
	.4byte 0x01F903F1
	.4byte 0x01F96101
	.4byte 0xD62701D3
	.4byte 0x03A501D3
	.4byte 0x6269D56A
	.4byte 0x01AF035F
	.4byte 0x01AF63C0
	.4byte 0xD4B1018F
	.4byte 0x031D018F
	.4byte 0x6507D3FC
	.4byte 0x017002E1
	.4byte 0x01706640
	.4byte 0xD34C0154
	.4byte 0x02A80154
	.4byte 0x676AD2A0
	.4byte 0x013A0274
	.4byte 0x013A6887
	.4byte 0xD1F90122
	.4byte 0x02440122
	.4byte 0x6996D156
	.4byte 0x010C0217
	.4byte 0x010C6A99
	.4byte 0xD0B700F7
	.4byte 0x01EE00F7
	.4byte 0x6B90D01D
	.4byte 0x00E401C7
	.4byte 0x00E46C7C
	.4byte 0xCF8700D2
	.4byte 0x01A400D2
	.4byte 0x6D5DCEF6
	.4byte 0x00C20183
	.4byte 0x00C26E33
	.4byte 0xCE6900B2
	.4byte 0x016500B2
	.4byte 0x6F00CDE0
	.4byte 0x00A40149
	.4byte 0x00A46FC3
	.4byte 0xCD5C0098
	.4byte 0x012F0098
	.4byte 0x707DCCDC
	.4byte 0x008C0117
	.4byte 0x008C712F
	.4byte 0xCC600081
	.4byte 0x01010081
	.4byte 0x71D9CBE7
	.4byte 0x007600ED
	.4byte 0x0076727A
	.4byte 0xCB73006D
	.4byte 0x00DA006D
	.4byte 0x7315CB03
	.4byte 0x006400C9
	.4byte 0x006473A8
	.4byte 0xCA97005C
	.4byte 0x00B9005C
	.4byte 0x7434CA2E
	.4byte 0x005500AA
	.4byte 0x005574BB
	.4byte 0xC9C9004E
	.4byte 0x009C004E
	.4byte 0x753BC967
	.4byte 0x00480090
	.4byte 0x004875B5
	.4byte 0xC9090042
	.4byte 0x00840042
	.4byte 0x7629C8AF
	.4byte 0x003D007A
	.4byte 0x003D7699
	.4byte 0xC8570038
	.4byte 0x00700038
	.4byte 0x7703C803
	.4byte 0x00330067
	.4byte 0x00337768
	.4byte 0xC7B1002F
	.4byte 0x005F002F
	.4byte 0x77C9C763
	.4byte 0x002C0057
	.4byte 0x002C7826
	.4byte 0xC7180028
	.4byte 0x00500028
	.4byte 0x787EC6CF
	.4byte 0x0025004A
	.4byte 0x002578D2
	.4byte 0xC6890022
	.4byte 0x00440022
	.4byte 0x7923C646
	.4byte 0x001F003E
	.4byte 0x001F7970
	.4byte 0xC606001D
	.4byte 0x0039001D
	.4byte 0x79B9C5C7
	.4byte 0x001A0034
	.4byte 0x001A7A00
	.4byte 0xC58C0018
	.4byte 0x00300018
	.4byte 0x7A43C552
	.4byte 0x0016002C
	.4byte 0x00167A83
	.4byte 0xC51B0014
	.4byte 0x00290014
	.4byte 0x7AC0C4E6
	.4byte 0x00130025
	.4byte 0x00137AFB
	.4byte 0xC4B30011
	.4byte 0x00220011
	.4byte 0x7B32C482
	.4byte 0x00100020
	.4byte 0x00107B68
	.4byte 0xC452000E
	.4byte 0x001D000E
	.4byte 0x7B9BC425
	.4byte 0x000D001B
	.4byte 0x000D7BCC
	.4byte 0xC3FA000C
	.4byte 0x0018000C
	.4byte 0x7BFAC3D0
	.4byte 0x000B0016
	.4byte 0x000B7C27
	.4byte 0xC3A8000A
	.4byte 0x0015000A
	.4byte 0x7C52C381
	.4byte 0x00090013
	.4byte 0x00097C7A
	.4byte 0xC35C0009
	.4byte 0x00110009
	.4byte 0x7CA1C339
	.4byte 0x00080010
	.4byte 0x00087CC7
	.4byte 0xC3170007
	.4byte 0x000F0007
	.4byte 0x7CEAC2F6
	.4byte 0x0007000D
	.4byte 0x00077D0C
	.4byte 0xC2D70006
	.4byte 0x000C0006
	.4byte 0x7D2DC2B9
	.4byte 0x0006000B
	.4byte 0x00067D4C
	.4byte 0xC29C0005
	.4byte 0x000A0005
	.4byte 0x7D6AC280
	.4byte 0x0005000A
	.4byte 0x00057D86
	.4byte 0xC2650004
	.4byte 0x00090004
	.4byte 0x7DA1C24C
	.4byte 0x00040008
	.4byte 0x00047DBB
	.4byte 0xC2340004
	.4byte 0x00070004
	.4byte 0x7DD4C21C
	.4byte 0x00030007
	.4byte 0x00037DEC
	.4byte 0xC2060003
	.4byte 0x00060003
	.4byte 0x7E03C1F0
	.4byte 0x00030006
	.4byte 0x00037E19
	.4byte 0xC1DB0003
	.4byte 0x00050003
	.4byte 0x7E2EC1C8
	.4byte 0x00020005
	.4byte 0x00027E42
	.4byte 0xC1B50002
	.4byte 0x00040002
	.4byte 0x7E55C1A2
	.4byte 0x00020004
	.4byte 0x00027E67
	.4byte 0xC1910002
	.4byte 0x00040002
	.4byte 0x7E79C180
	.4byte 0x00020003
	.4byte 0x00027E89
	.4byte 0xC1700002
	.4byte 0x00030002
	.4byte 0x7E99C161
	.4byte 0x00010003
	.4byte 0x00017EA9
	.4byte 0xC1520001
	.4byte 0x00030001
	.4byte 0x7EB7C144
	.4byte 0x00010002
	.4byte 0x00017EC5
	.4byte 0xC1360001
	.4byte 0x00020001
	.4byte 0x7ED3C129
	.4byte 0x00010002
	.4byte 0x00017EE0
	.4byte 0xC11D0001
	.4byte 0x00020001
	.4byte 0x7EECC111
	.4byte 0x00010002
	.4byte 0x00017EF8
	.4byte 0xC1050001
	.4byte 0x00020001
	.4byte 0x7F03C0FA
	.4byte 0x00010001
	.4byte 0x00017F0E
	.4byte 0xC0F00001
	.4byte 0x00010001
	.4byte 0x7F18C0E6
.endobj RemoteFilterCoefTable__Q44nw4r3snd6detail4Util


.obj CalcLpfFreqTable__Q44nw4r3snd6detail4Util, local
	.2byte 0x0050
    .2byte 0x0064
	.2byte 0x0080
    .2byte 0x00A0
	.2byte 0x00C8
    .2byte 0x0100
	.2byte 0x0140
    .2byte 0x0190
	.2byte 0x01F4
    .2byte 0x0280
	.2byte 0x0320
    .2byte 0x03E8
	.2byte 0x0500
    .2byte 0x0640
	.2byte 0x07D0
    .2byte 0x0A00
	.2byte 0x0C80
    .2byte 0x0FA0
	.2byte 0x1400
    .2byte 0x1900
	.2byte 0x1F40
    .2byte 0x2800
	.2byte 0x3200
    .2byte 0x3E80
.endobj CalcLpfFreqTable__Q44nw4r3snd6detail4Util


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj PanTableTable__Q44nw4r3snd6detail4Util, local
	.4byte Pan2RatioTableSqrt__Q44nw4r3snd6detail4Util
	.4byte Pan2RatioTableSinCos__Q44nw4r3snd6detail4Util
	.4byte Pan2RatioTableLinear__Q44nw4r3snd6detail4Util
	.4byte 0
.endobj PanTableTable__Q44nw4r3snd6detail4Util

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

#@LOCAL@CalcRandom__Q44nw4r3snd6detail4UtilFv@u
.obj lbl_80665E20, global
	.4byte 0x12345678
	.4byte 0
.endobj lbl_80665E20

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066C8D0, global
	.float 1.0
.endobj float_8066C8D0


.obj float_8066C8D4, global
	.float 2 #0x40000000
.endobj float_8066C8D4


.obj float_8066C8D8, global
	.float 0.5
.endobj float_8066C8D8


.obj float_8066C8DC, global
	.float 6 #0x40C00000
.endobj float_8066C8DC


.obj float_8066C8E0, global
	.float -90.4 #0xC2B4CCCD
.endobj float_8066C8E0


.obj float_8066C8E4, global
	.float 10.0
.endobj float_8066C8E4


.obj float_8066C8E8, global
	.float -1.0
.endobj float_8066C8E8


.obj float_8066C8EC, global
	.float 256 #0x43800000
.endobj float_8066C8EC


.obj float_8066C8F0, global
	.float 0
.endobj float_8066C8F0


.obj float_8066C8F4, global
	.float 0.13561438 #0x3E0ADE7F
.endobj float_8066C8F4


.obj float_8066C8F8, global
	.float 0.9 #0x3F666666
.endobj float_8066C8F8


.obj float_8066C8FC, global
	.float 0.033333335 #0x3D088889
.endobj float_8066C8FC
