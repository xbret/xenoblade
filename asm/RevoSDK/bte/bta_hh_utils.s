.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn bta_hh_find_cb, global
/* 802E4154 002AD714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E4158 002AD718  7C 08 02 A6 */	mflr r0
/* 802E415C 002AD71C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E4160 002AD720  39 61 00 20 */	addi r11, r1, 0x20
/* 802E4164 002AD724  4B FD 5F F1 */	bl _savegpr_27
/* 802E4168 002AD728  3F E0 80 5C */	lis r31, bta_hh_cb@ha
/* 802E416C 002AD72C  3F C0 80 54 */	lis r30, lbl_805449A0@ha
/* 802E4170 002AD730  7C 7B 1B 78 */	mr r27, r3
/* 802E4174 002AD734  3B 80 00 00 */	li r28, 0
/* 802E4178 002AD738  3B DE 49 A0 */	addi r30, r30, lbl_805449A0@l
/* 802E417C 002AD73C  3B FF F7 C8 */	addi r31, r31, bta_hh_cb@l
.L_802E4180:
/* 802E4180 002AD740  57 9D 2C F4 */	rlwinm r29, r28, 5, 0x13, 0x1a
/* 802E4184 002AD744  7F 63 DB 78 */	mr r3, r27
/* 802E4188 002AD748  7C 9F EA 14 */	add r4, r31, r29
/* 802E418C 002AD74C  38 84 00 18 */	addi r4, r4, 0x18
/* 802E4190 002AD750  4B FF A4 D9 */	bl bdcmp
/* 802E4194 002AD754  2C 03 00 00 */	cmpwi r3, 0
/* 802E4198 002AD758  40 82 00 44 */	bne .L_802E41DC
/* 802E419C 002AD75C  7F 63 DB 78 */	mr r3, r27
/* 802E41A0 002AD760  38 82 D9 68 */	addi r4, r2, bd_addr_null@sda21
/* 802E41A4 002AD764  4B FF A4 C5 */	bl bdcmp
/* 802E41A8 002AD768  2C 03 00 00 */	cmpwi r3, 0
/* 802E41AC 002AD76C  41 82 00 30 */	beq .L_802E41DC
/* 802E41B0 002AD770  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E41B4 002AD774  28 00 00 05 */	cmplwi r0, 5
/* 802E41B8 002AD778  41 80 00 1C */	blt .L_802E41D4
/* 802E41BC 002AD77C  7C 7F EA 14 */	add r3, r31, r29
/* 802E41C0 002AD780  38 9E 00 00 */	addi r4, r30, 0
/* 802E41C4 002AD784  88 C3 00 26 */	lbz r6, 0x26(r3)
/* 802E41C8 002AD788  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 802E41CC 002AD78C  38 60 05 04 */	li r3, 0x504
/* 802E41D0 002AD790  4B FF 9E 11 */	bl LogMsg_2
.L_802E41D4:
/* 802E41D4 002AD794  7F 83 E3 78 */	mr r3, r28
/* 802E41D8 002AD798  48 00 00 A0 */	b .L_802E4278
.L_802E41DC:
/* 802E41DC 002AD79C  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E41E0 002AD7A0  28 00 00 05 */	cmplwi r0, 5
/* 802E41E4 002AD7A4  41 80 00 24 */	blt .L_802E4208
/* 802E41E8 002AD7A8  7D 1F EA 14 */	add r8, r31, r29
/* 802E41EC 002AD7AC  38 9E 00 24 */	addi r4, r30, 0x24
/* 802E41F0 002AD7B0  88 A8 00 28 */	lbz r5, 0x28(r8)
/* 802E41F4 002AD7B4  57 86 06 3E */	clrlwi r6, r28, 0x18
/* 802E41F8 002AD7B8  88 E8 00 26 */	lbz r7, 0x26(r8)
/* 802E41FC 002AD7BC  38 60 05 04 */	li r3, 0x504
/* 802E4200 002AD7C0  89 08 00 2C */	lbz r8, 0x2c(r8)
/* 802E4204 002AD7C4  4B FF 9E 1D */	bl LogMsg_4
.L_802E4208:
/* 802E4208 002AD7C8  3B 9C 00 01 */	addi r28, r28, 1
/* 802E420C 002AD7CC  28 1C 00 10 */	cmplwi r28, 0x10
/* 802E4210 002AD7D0  41 80 FF 70 */	blt .L_802E4180
/* 802E4214 002AD7D4  3C 80 80 5C */	lis r4, bta_hh_cb@ha
/* 802E4218 002AD7D8  38 00 00 10 */	li r0, 0x10
/* 802E421C 002AD7DC  38 84 F7 C8 */	addi r4, r4, bta_hh_cb@l
/* 802E4220 002AD7E0  3B A0 00 00 */	li r29, 0
/* 802E4224 002AD7E4  7C 09 03 A6 */	mtctr r0
.L_802E4228:
/* 802E4228 002AD7E8  57 A0 2C F4 */	rlwinm r0, r29, 5, 0x13, 0x1a
/* 802E422C 002AD7EC  7C 64 02 14 */	add r3, r4, r0
/* 802E4230 002AD7F0  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802E4234 002AD7F4  2C 00 00 00 */	cmpwi r0, 0
/* 802E4238 002AD7F8  40 82 00 14 */	bne .L_802E424C
/* 802E423C 002AD7FC  7F 64 DB 78 */	mr r4, r27
/* 802E4240 002AD800  38 63 00 18 */	addi r3, r3, 0x18
/* 802E4244 002AD804  4B FF A3 F1 */	bl bdcpy
/* 802E4248 002AD808  48 00 00 0C */	b .L_802E4254
.L_802E424C:
/* 802E424C 002AD80C  3B BD 00 01 */	addi r29, r29, 1
/* 802E4250 002AD810  42 00 FF D8 */	bdnz .L_802E4228
.L_802E4254:
/* 802E4254 002AD814  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E4258 002AD818  28 00 00 05 */	cmplwi r0, 5
/* 802E425C 002AD81C  41 80 00 18 */	blt .L_802E4274
/* 802E4260 002AD820  38 9E 00 58 */	addi r4, r30, 0x58
/* 802E4264 002AD824  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 802E4268 002AD828  38 60 05 04 */	li r3, 0x504
/* 802E426C 002AD82C  38 C0 00 10 */	li r6, 0x10
/* 802E4270 002AD830  4B FF 9D 71 */	bl LogMsg_2
.L_802E4274:
/* 802E4274 002AD834  7F A3 EB 78 */	mr r3, r29
.L_802E4278:
/* 802E4278 002AD838  39 61 00 20 */	addi r11, r1, 0x20
/* 802E427C 002AD83C  4B FD 5F 25 */	bl _restgpr_27
/* 802E4280 002AD840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E4284 002AD844  7C 08 03 A6 */	mtlr r0
/* 802E4288 002AD848  38 21 00 20 */	addi r1, r1, 0x20
/* 802E428C 002AD84C  4E 80 00 20 */	blr 
.endfn bta_hh_find_cb

.fn bta_hh_clean_up_kdev, global
/* 802E4290 002AD850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4294 002AD854  7C 08 02 A6 */	mflr r0
/* 802E4298 002AD858  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E429C 002AD85C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E42A0 002AD860  93 C1 00 08 */	stw r30, 8(r1)
/* 802E42A4 002AD864  7C 7E 1B 78 */	mr r30, r3
/* 802E42A8 002AD868  88 A3 00 16 */	lbz r5, 0x16(r3)
/* 802E42AC 002AD86C  28 05 00 FF */	cmplwi r5, 0xff
/* 802E42B0 002AD870  41 82 00 18 */	beq .L_802E42C8
/* 802E42B4 002AD874  3C 80 80 5C */	lis r4, bta_hh_cb@ha
/* 802E42B8 002AD878  38 00 00 10 */	li r0, 0x10
/* 802E42BC 002AD87C  38 84 F7 C8 */	addi r4, r4, bta_hh_cb@l
/* 802E42C0 002AD880  7C 84 2A 14 */	add r4, r4, r5
/* 802E42C4 002AD884  98 04 02 14 */	stb r0, 0x214(r4)
.L_802E42C8:
/* 802E42C8 002AD888  8B E3 00 12 */	lbz r31, 0x12(r3)
/* 802E42CC 002AD88C  38 63 00 04 */	addi r3, r3, 4
/* 802E42D0 002AD890  4B FF AA B1 */	bl utl_freebuf
/* 802E42D4 002AD894  7F C3 F3 78 */	mr r3, r30
/* 802E42D8 002AD898  38 80 00 00 */	li r4, 0
/* 802E42DC 002AD89C  38 A0 00 20 */	li r5, 0x20
/* 802E42E0 002AD8A0  4B D2 00 71 */	bl memset
/* 802E42E4 002AD8A4  38 60 00 01 */	li r3, 1
/* 802E42E8 002AD8A8  38 00 00 FF */	li r0, 0xff
/* 802E42EC 002AD8AC  9B FE 00 12 */	stb r31, 0x12(r30)
/* 802E42F0 002AD8B0  98 7E 00 1C */	stb r3, 0x1c(r30)
/* 802E42F4 002AD8B4  98 1E 00 16 */	stb r0, 0x16(r30)
/* 802E42F8 002AD8B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E42FC 002AD8BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E4300 002AD8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4304 002AD8C4  7C 08 03 A6 */	mtlr r0
/* 802E4308 002AD8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E430C 002AD8CC  4E 80 00 20 */	blr 
.endfn bta_hh_clean_up_kdev

.fn bta_hh_add_device_to_list, global
/* 802E4310 002AD8D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E4314 002AD8D4  7C 08 02 A6 */	mflr r0
/* 802E4318 002AD8D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E431C 002AD8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E4320 002AD8E0  4B FD 5E 31 */	bl _savegpr_26
/* 802E4324 002AD8E4  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E4328 002AD8E8  7C 7A 1B 78 */	mr r26, r3
/* 802E432C 002AD8EC  7C 9B 23 78 */	mr r27, r4
/* 802E4330 002AD8F0  7C BC 2B 78 */	mr r28, r5
/* 802E4334 002AD8F4  28 00 00 05 */	cmplwi r0, 5
/* 802E4338 002AD8F8  7C DD 33 78 */	mr r29, r6
/* 802E433C 002AD8FC  7C FE 3B 78 */	mr r30, r7
/* 802E4340 002AD900  7D 1F 43 78 */	mr r31, r8
/* 802E4344 002AD904  41 80 00 18 */	blt .L_802E435C
/* 802E4348 002AD908  3C 80 80 54 */	lis r4, lbl_80544A24@ha
/* 802E434C 002AD90C  7F C5 F3 78 */	mr r5, r30
/* 802E4350 002AD910  38 84 4A 24 */	addi r4, r4, lbl_80544A24@l
/* 802E4354 002AD914  38 60 05 04 */	li r3, 0x504
/* 802E4358 002AD918  4B FF 9C 69 */	bl LogMsg_1
.L_802E435C:
/* 802E435C 002AD91C  38 00 00 01 */	li r0, 1
/* 802E4360 002AD920  2C 1D 00 00 */	cmpwi r29, 0
/* 802E4364 002AD924  9B 7A 00 16 */	stb r27, 0x16(r26)
/* 802E4368 002AD928  98 1A 00 18 */	stb r0, 0x18(r26)
/* 802E436C 002AD92C  B3 9A 00 0E */	sth r28, 0xe(r26)
/* 802E4370 002AD930  9B DA 00 13 */	stb r30, 0x13(r26)
/* 802E4374 002AD934  9B FA 00 15 */	stb r31, 0x15(r26)
/* 802E4378 002AD938  41 82 00 3C */	beq .L_802E43B4
/* 802E437C 002AD93C  38 7A 00 04 */	addi r3, r26, 4
/* 802E4380 002AD940  4B FF AA 01 */	bl utl_freebuf
/* 802E4384 002AD944  A0 7D 00 00 */	lhz r3, 0(r29)
/* 802E4388 002AD948  2C 03 00 00 */	cmpwi r3, 0
/* 802E438C 002AD94C  41 82 00 28 */	beq .L_802E43B4
/* 802E4390 002AD950  4B FF 6E C1 */	bl GKI_getbuf
/* 802E4394 002AD954  2C 03 00 00 */	cmpwi r3, 0
/* 802E4398 002AD958  90 7A 00 04 */	stw r3, 4(r26)
/* 802E439C 002AD95C  41 82 00 18 */	beq .L_802E43B4
/* 802E43A0 002AD960  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802E43A4 002AD964  B0 1A 00 00 */	sth r0, 0(r26)
/* 802E43A8 002AD968  80 9D 00 04 */	lwz r4, 4(r29)
/* 802E43AC 002AD96C  A0 BD 00 00 */	lhz r5, 0(r29)
/* 802E43B0 002AD970  4B D1 FC 51 */	bl memcpy
.L_802E43B4:
/* 802E43B4 002AD974  39 61 00 20 */	addi r11, r1, 0x20
/* 802E43B8 002AD978  4B FD 5D E5 */	bl _restgpr_26
/* 802E43BC 002AD97C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E43C0 002AD980  7C 08 03 A6 */	mtlr r0
/* 802E43C4 002AD984  38 21 00 20 */	addi r1, r1, 0x20
/* 802E43C8 002AD988  4E 80 00 20 */	blr 
.endfn bta_hh_add_device_to_list

.fn bta_hh_tod_spt, global
/* 802E43CC 002AD98C  80 ED 97 78 */	lwz r7, p_bta_hh_cfg@sda21(r13)
/* 802E43D0 002AD990  54 89 F6 BE */	rlwinm r9, r4, 0x1e, 0x1a, 0x1f
/* 802E43D4 002AD994  39 00 00 00 */	li r8, 0
/* 802E43D8 002AD998  88 A7 00 00 */	lbz r5, 0(r7)
/* 802E43DC 002AD99C  48 00 00 30 */	b .L_802E440C
.L_802E43E0:
/* 802E43E0 002AD9A0  80 87 00 04 */	lwz r4, 4(r7)
/* 802E43E4 002AD9A4  55 06 0D FC */	rlwinm r6, r8, 1, 0x17, 0x1e
/* 802E43E8 002AD9A8  7C 04 30 AE */	lbzx r0, r4, r6
/* 802E43EC 002AD9AC  7C 09 00 40 */	cmplw r9, r0
/* 802E43F0 002AD9B0  40 82 00 18 */	bne .L_802E4408
/* 802E43F4 002AD9B4  7C 84 32 14 */	add r4, r4, r6
/* 802E43F8 002AD9B8  88 04 00 01 */	lbz r0, 1(r4)
/* 802E43FC 002AD9BC  98 03 00 15 */	stb r0, 0x15(r3)
/* 802E4400 002AD9C0  38 60 00 01 */	li r3, 1
/* 802E4404 002AD9C4  4E 80 00 20 */	blr
.L_802E4408:
/* 802E4408 002AD9C8  39 08 00 01 */	addi r8, r8, 1
.L_802E440C:
/* 802E440C 002AD9CC  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 802E4410 002AD9D0  7C 00 28 40 */	cmplw r0, r5
/* 802E4414 002AD9D4  41 80 FF CC */	blt .L_802E43E0
/* 802E4418 002AD9D8  38 60 00 00 */	li r3, 0
/* 802E441C 002AD9DC  4E 80 00 20 */	blr 
.endfn bta_hh_tod_spt

.fn bta_hh_trace_dev_db, global
/* 802E4420 002AD9E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E4424 002AD9E4  7C 08 02 A6 */	mflr r0
/* 802E4428 002AD9E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E442C 002AD9EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E4430 002AD9F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E4434 002AD9F4  3F C0 80 54 */	lis r30, lbl_805449A0@ha
/* 802E4438 002AD9F8  3B DE 49 A0 */	addi r30, r30, lbl_805449A0@l
/* 802E443C 002AD9FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E4440 002ADA00  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E4444 002ADA04  28 00 00 05 */	cmplwi r0, 5
/* 802E4448 002ADA08  41 80 00 10 */	blt .L_802E4458
/* 802E444C 002ADA0C  38 9E 01 E4 */	addi r4, r30, 0x1e4
/* 802E4450 002ADA10  38 60 05 04 */	li r3, 0x504
/* 802E4454 002ADA14  4B FF 9B 4D */	bl LogMsg_0
.L_802E4458:
/* 802E4458 002ADA18  3C 60 80 5C */	lis r3, bta_hh_cb@ha
/* 802E445C 002ADA1C  3B A0 00 00 */	li r29, 0
/* 802E4460 002ADA20  3B E3 F7 C8 */	addi r31, r3, bta_hh_cb@l
.L_802E4464:
/* 802E4464 002ADA24  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E4468 002ADA28  28 00 00 05 */	cmplwi r0, 5
/* 802E446C 002ADA2C  41 80 00 24 */	blt .L_802E4490
/* 802E4470 002ADA30  57 A0 2C F4 */	rlwinm r0, r29, 5, 0x13, 0x1a
/* 802E4474 002ADA34  38 9E 02 20 */	addi r4, r30, 0x220
/* 802E4478 002ADA38  7C FF 02 14 */	add r7, r31, r0
/* 802E447C 002ADA3C  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 802E4480 002ADA40  88 C7 00 28 */	lbz r6, 0x28(r7)
/* 802E4484 002ADA44  38 60 05 04 */	li r3, 0x504
/* 802E4488 002ADA48  88 E7 00 26 */	lbz r7, 0x26(r7)
/* 802E448C 002ADA4C  4B FF 9B 75 */	bl LogMsg_3
.L_802E4490:
/* 802E4490 002ADA50  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E4494 002ADA54  28 00 00 05 */	cmplwi r0, 5
/* 802E4498 002ADA58  41 80 00 28 */	blt .L_802E44C0
/* 802E449C 002ADA5C  57 A0 2C F4 */	rlwinm r0, r29, 5, 0x13, 0x1a
/* 802E44A0 002ADA60  38 9E 02 44 */	addi r4, r30, 0x244
/* 802E44A4 002ADA64  7D 1F 02 14 */	add r8, r31, r0
/* 802E44A8 002ADA68  38 60 05 04 */	li r3, 0x504
/* 802E44AC 002ADA6C  A0 A8 00 1E */	lhz r5, 0x1e(r8)
/* 802E44B0 002ADA70  88 C8 00 2C */	lbz r6, 0x2c(r8)
/* 802E44B4 002ADA74  88 E8 00 23 */	lbz r7, 0x23(r8)
/* 802E44B8 002ADA78  89 08 00 22 */	lbz r8, 0x22(r8)
/* 802E44BC 002ADA7C  4B FF 9B 65 */	bl LogMsg_4
.L_802E44C0:
/* 802E44C0 002ADA80  3B BD 00 01 */	addi r29, r29, 1
/* 802E44C4 002ADA84  28 1D 00 10 */	cmplwi r29, 0x10
/* 802E44C8 002ADA88  41 80 FF 9C */	blt .L_802E4464
/* 802E44CC 002ADA8C  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802E44D0 002ADA90  28 00 00 05 */	cmplwi r0, 5
/* 802E44D4 002ADA94  41 80 00 10 */	blt .L_802E44E4
/* 802E44D8 002ADA98  38 9E 02 80 */	addi r4, r30, 0x280
/* 802E44DC 002ADA9C  38 60 05 04 */	li r3, 0x504
/* 802E44E0 002ADAA0  4B FF 9A C1 */	bl LogMsg_0
.L_802E44E4:
/* 802E44E4 002ADAA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E44E8 002ADAA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E44EC 002ADAAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E44F0 002ADAB0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E44F4 002ADAB4  7C 08 03 A6 */	mtlr r0
/* 802E44F8 002ADAB8  38 21 00 20 */	addi r1, r1, 0x20
/* 802E44FC 002ADABC  4E 80 00 20 */	blr
.endfn bta_hh_trace_dev_db

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_805449A0, global
	.asciz "found kdev_cb[%d] hid_handle = %d "
	.balign 4
	.asciz "in_use ? [%d] kdev[%d].hid_handle = %d state = [%d]"
	.asciz "bta_hh_find_cb:: index = %d while max = %d"
	.balign 4
.endobj lbl_805449A0


.obj lbl_80544A24, global
	.asciz "subclass = 0x%2x"
	.balign 4
	.asciz "bta_hh_parse_keybd_rpt:  (report=%p, report_len=%d) called"
	.balign 4
	.4byte 0
	.asciz "Alt key pressed"
	.asciz "Alt key not pressed"
	.asciz "this_char = %02x"
	.balign 4
	.asciz "BTA_HhParseKeybdRpt:  Cannot interpret scan code                 0x%02x"
	.asciz "bta_hh_parse_mice_rpt:  bta_keybd_rpt_rcvd(report=%p,                 report_len=%d) called"
	.asciz "mice button: 0x%2x"
	.balign 4
	.asciz "mice move: x = %d y = %d"
	.balign 4
	.asciz "bta_hh_trace_dev_db:: Device DB list********************"
	.balign 4
	.asciz "kdev[%d] in_use[%d]  handle[%d] "
	.balign 4
	.asciz "\t\t\t attr_mask[%04x] state [%d] sub_class[%02x] index = %d"
	.balign 4
	.asciz "*********************************************************"
	.balign 4
	.4byte 0
.endobj lbl_80544A24
