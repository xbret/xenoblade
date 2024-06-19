.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CFade, global
/* 802442E0 0020D8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802442E4 0020D8A4  7C 08 02 A6 */	mflr r0
/* 802442E8 0020D8A8  3C 80 80 54 */	lis r4, __vt__5CFade@ha
/* 802442EC 0020D8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802442F0 0020D8B0  38 84 A6 60 */	addi r4, r4, __vt__5CFade@l
/* 802442F4 0020D8B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802442F8 0020D8B8  7C 7F 1B 78 */	mr r31, r3
/* 802442FC 0020D8BC  90 83 00 00 */	stw r4, 0(r3)
/* 80244300 0020D8C0  38 63 00 04 */	addi r3, r3, 4
/* 80244304 0020D8C4  48 21 B2 61 */	bl __ct__17UnkClass_8045F564Fv
/* 80244308 0020D8C8  38 80 00 00 */	li r4, 0
/* 8024430C 0020D8CC  38 00 00 01 */	li r0, 1
/* 80244310 0020D8D0  90 9F 00 14 */	stw r4, 0x14(r31)
/* 80244314 0020D8D4  7F E3 FB 78 */	mr r3, r31
/* 80244318 0020D8D8  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8024431C 0020D8DC  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 80244320 0020D8E0  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80244324 0020D8E4  98 9F 00 24 */	stb r4, 0x24(r31)
/* 80244328 0020D8E8  98 9F 00 25 */	stb r4, 0x25(r31)
/* 8024432C 0020D8EC  98 9F 00 26 */	stb r4, 0x26(r31)
/* 80244330 0020D8F0  98 1F 00 27 */	stb r0, 0x27(r31)
/* 80244334 0020D8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80244338 0020D8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024433C 0020D8FC  7C 08 03 A6 */	mtlr r0
/* 80244340 0020D900  38 21 00 10 */	addi r1, r1, 0x10
/* 80244344 0020D904  4E 80 00 20 */	blr 
.endfn __ct__CFade

.fn __dt__5CFadeFv, global
/* 80244348 0020D908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024434C 0020D90C  7C 08 02 A6 */	mflr r0
/* 80244350 0020D910  2C 03 00 00 */	cmpwi r3, 0
/* 80244354 0020D914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244358 0020D918  BF C1 00 08 */	stmw r30, 8(r1)
/* 8024435C 0020D91C  7C 7E 1B 78 */	mr r30, r3
/* 80244360 0020D920  7C 9F 23 78 */	mr r31, r4
/* 80244364 0020D924  41 82 00 20 */	beq .L_80244384
/* 80244368 0020D928  38 80 FF FF */	li r4, -1
/* 8024436C 0020D92C  38 63 00 04 */	addi r3, r3, 4
/* 80244370 0020D930  48 21 B2 11 */	bl __dt__17UnkClass_8045F564Fv
/* 80244374 0020D934  2C 1F 00 00 */	cmpwi r31, 0
/* 80244378 0020D938  40 81 00 0C */	ble .L_80244384
/* 8024437C 0020D93C  7F C3 F3 78 */	mr r3, r30
/* 80244380 0020D940  48 1F 08 AD */	bl __dl__FPv
.L_80244384:
/* 80244384 0020D944  7F C3 F3 78 */	mr r3, r30
/* 80244388 0020D948  BB C1 00 08 */	lmw r30, 8(r1)
/* 8024438C 0020D94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244390 0020D950  7C 08 03 A6 */	mtlr r0
/* 80244394 0020D954  38 21 00 10 */	addi r1, r1, 0x10
/* 80244398 0020D958  4E 80 00 20 */	blr 
.endfn __dt__5CFadeFv

.fn func_8024439C, global
/* 8024439C 0020D95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802443A0 0020D960  7C 08 02 A6 */	mflr r0
/* 802443A4 0020D964  90 01 00 14 */	stw r0, 0x14(r1)
/* 802443A8 0020D968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802443AC 0020D96C  7C 7F 1B 78 */	mr r31, r3
/* 802443B0 0020D970  48 1E FF F1 */	bl Heap_getRegionIndex2
/* 802443B4 0020D974  3C 80 80 50 */	lis r4, CFade_strpool@ha
/* 802443B8 0020D978  7F E5 FB 78 */	mr r5, r31
/* 802443BC 0020D97C  38 84 6C A0 */	addi r4, r4, CFade_strpool@l
/* 802443C0 0020D980  38 C0 00 00 */	li r6, 0
/* 802443C4 0020D984  38 E0 00 00 */	li r7, 0
/* 802443C8 0020D988  48 20 A3 CD */	bl CDeviceFile_openFile1__FiPCcPvii
/* 802443CC 0020D98C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 802443D0 0020D990  48 20 B0 45 */	bl CDeviceFile_8044F414__FP17UnkClass_80451720
/* 802443D4 0020D994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802443D8 0020D998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802443DC 0020D99C  7C 08 03 A6 */	mtlr r0
/* 802443E0 0020D9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802443E4 0020D9A4  4E 80 00 20 */	blr 
.endfn func_8024439C

.fn func_802443E8, global
/* 802443E8 0020D9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802443EC 0020D9AC  7C 08 02 A6 */	mflr r0
/* 802443F0 0020D9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802443F4 0020D9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802443F8 0020D9B8  7C 7F 1B 78 */	mr r31, r3
/* 802443FC 0020D9BC  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80244400 0020D9C0  2C 00 00 00 */	cmpwi r0, 0
/* 80244404 0020D9C4  41 82 00 48 */	beq .L_8024444C
/* 80244408 0020D9C8  88 03 00 25 */	lbz r0, 0x25(r3)
/* 8024440C 0020D9CC  2C 00 00 00 */	cmpwi r0, 0
/* 80244410 0020D9D0  41 82 00 3C */	beq .L_8024444C
/* 80244414 0020D9D4  2C 00 00 01 */	cmpwi r0, 1
/* 80244418 0020D9D8  41 82 00 10 */	beq .L_80244428
/* 8024441C 0020D9DC  2C 00 00 03 */	cmpwi r0, 3
/* 80244420 0020D9E0  41 82 00 10 */	beq .L_80244430
/* 80244424 0020D9E4  48 00 00 10 */	b .L_80244434
.L_80244428:
/* 80244428 0020D9E8  48 00 01 31 */	bl func_80244558
/* 8024442C 0020D9EC  48 00 00 08 */	b .L_80244434
.L_80244430:
/* 80244430 0020D9F0  48 00 01 75 */	bl func_802445A4
.L_80244434:
/* 80244434 0020D9F4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80244438 0020D9F8  38 80 00 00 */	li r4, 0
/* 8024443C 0020D9FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80244440 0020DA00  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80244444 0020DA04  7D 89 03 A6 */	mtctr r12
/* 80244448 0020DA08  4E 80 04 21 */	bctrl 
.L_8024444C:
/* 8024444C 0020DA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244450 0020DA10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80244454 0020DA14  7C 08 03 A6 */	mtlr r0
/* 80244458 0020DA18  38 21 00 10 */	addi r1, r1, 0x10
/* 8024445C 0020DA1C  4E 80 00 20 */	blr 
.endfn func_802443E8

.fn func_80244460, global
/* 80244460 0020DA20  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80244464 0020DA24  2C 00 00 00 */	cmpwi r0, 0
/* 80244468 0020DA28  4D 82 00 20 */	beqlr 
/* 8024446C 0020DA2C  88 03 00 25 */	lbz r0, 0x25(r3)
/* 80244470 0020DA30  2C 00 00 00 */	cmpwi r0, 0
/* 80244474 0020DA34  4D 82 00 20 */	beqlr 
/* 80244478 0020DA38  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8024447C 0020DA3C  38 A0 00 00 */	li r5, 0
/* 80244480 0020DA40  38 C0 00 01 */	li r6, 1
/* 80244484 0020DA44  4B EF 2B B4 */	b func_80137038__FPQ34nw4r3lyt6LayoutPvii
/* 80244488 0020DA48  4E 80 00 20 */	blr 
.endfn func_80244460

.fn func_8024448C, global
/* 8024448C 0020DA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244490 0020DA50  7C 08 02 A6 */	mflr r0
/* 80244494 0020DA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244498 0020DA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024449C 0020DA5C  7C 7F 1B 78 */	mr r31, r3
/* 802444A0 0020DA60  38 63 00 14 */	addi r3, r3, 0x14
/* 802444A4 0020DA64  4B EF 4C 3D */	bl func_801390E0__FPP17UnkClass_80451720
/* 802444A8 0020DA68  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802444AC 0020DA6C  38 00 00 00 */	li r0, 0
/* 802444B0 0020DA70  98 1F 00 24 */	stb r0, 0x24(r31)
/* 802444B4 0020DA74  2C 03 00 00 */	cmpwi r3, 0
/* 802444B8 0020DA78  41 82 00 24 */	beq .L_802444DC
/* 802444BC 0020DA7C  41 82 00 18 */	beq .L_802444D4
/* 802444C0 0020DA80  81 83 00 00 */	lwz r12, 0(r3)
/* 802444C4 0020DA84  38 80 00 01 */	li r4, 1
/* 802444C8 0020DA88  81 8C 00 08 */	lwz r12, 8(r12)
/* 802444CC 0020DA8C  7D 89 03 A6 */	mtctr r12
/* 802444D0 0020DA90  4E 80 04 21 */	bctrl 
.L_802444D4:
/* 802444D4 0020DA94  38 00 00 00 */	li r0, 0
/* 802444D8 0020DA98  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_802444DC:
/* 802444DC 0020DA9C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802444E0 0020DAA0  4B EF 4C 45 */	bl func_80139124__FPQ34nw4r3lyt19ArcResourceAccessor
/* 802444E4 0020DAA4  38 00 00 00 */	li r0, 0
/* 802444E8 0020DAA8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802444EC 0020DAAC  38 7F 00 04 */	addi r3, r31, 4
/* 802444F0 0020DAB0  48 21 B2 89 */	bl func_8045F778__FP17UnkClass_8045F564
/* 802444F4 0020DAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802444F8 0020DAB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802444FC 0020DABC  7C 08 03 A6 */	mtlr r0
/* 80244500 0020DAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80244504 0020DAC4  4E 80 00 20 */	blr 
.endfn func_8024448C

.fn func_80244508, global
/* 80244508 0020DAC8  88 63 00 26 */	lbz r3, 0x26(r3)
/* 8024450C 0020DACC  4E 80 00 20 */	blr 
.endfn func_80244508

.fn func_80244510, global
/* 80244510 0020DAD0  88 63 00 27 */	lbz r3, 0x27(r3)
/* 80244514 0020DAD4  4E 80 00 20 */	blr 
.endfn func_80244510

.fn func_80244518, global
/* 80244518 0020DAD8  88 03 00 25 */	lbz r0, 0x25(r3)
/* 8024451C 0020DADC  2C 00 00 00 */	cmpwi r0, 0
/* 80244520 0020DAE0  4C 82 00 20 */	bnelr 
/* 80244524 0020DAE4  38 80 00 01 */	li r4, 1
/* 80244528 0020DAE8  38 00 00 00 */	li r0, 0
/* 8024452C 0020DAEC  98 83 00 25 */	stb r4, 0x25(r3)
/* 80244530 0020DAF0  98 03 00 27 */	stb r0, 0x27(r3)
/* 80244534 0020DAF4  4E 80 00 20 */	blr 
.endfn func_80244518

.fn func_80244538, global
/* 80244538 0020DAF8  88 03 00 25 */	lbz r0, 0x25(r3)
/* 8024453C 0020DAFC  28 00 00 02 */	cmplwi r0, 2
/* 80244540 0020DB00  4C 82 00 20 */	bnelr 
/* 80244544 0020DB04  38 80 00 03 */	li r4, 3
/* 80244548 0020DB08  38 00 00 00 */	li r0, 0
/* 8024454C 0020DB0C  98 83 00 25 */	stb r4, 0x25(r3)
/* 80244550 0020DB10  98 03 00 27 */	stb r0, 0x27(r3)
/* 80244554 0020DB14  4E 80 00 20 */	blr 
.endfn func_80244538

.fn func_80244558, global
/* 80244558 0020DB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024455C 0020DB1C  7C 08 02 A6 */	mflr r0
/* 80244560 0020DB20  C0 22 AC 88 */	lfs f1, float_8066B008@sda21(r2)
/* 80244564 0020DB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244568 0020DB28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024456C 0020DB2C  7C 7F 1B 78 */	mr r31, r3
/* 80244570 0020DB30  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80244574 0020DB34  4B EF 2E D1 */	bl func_80137444
/* 80244578 0020DB38  2C 03 00 00 */	cmpwi r3, 0
/* 8024457C 0020DB3C  41 82 00 14 */	beq .L_80244590
/* 80244580 0020DB40  38 60 00 02 */	li r3, 2
/* 80244584 0020DB44  38 00 00 01 */	li r0, 1
/* 80244588 0020DB48  98 7F 00 25 */	stb r3, 0x25(r31)
/* 8024458C 0020DB4C  98 1F 00 27 */	stb r0, 0x27(r31)
.L_80244590:
/* 80244590 0020DB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244594 0020DB54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80244598 0020DB58  7C 08 03 A6 */	mtlr r0
/* 8024459C 0020DB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802445A0 0020DB60  4E 80 00 20 */	blr 
.endfn func_80244558

.fn func_802445A4, global
/* 802445A4 0020DB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802445A8 0020DB68  7C 08 02 A6 */	mflr r0
/* 802445AC 0020DB6C  C0 22 AC 88 */	lfs f1, float_8066B008@sda21(r2)
/* 802445B0 0020DB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802445B4 0020DB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802445B8 0020DB78  7C 7F 1B 78 */	mr r31, r3
/* 802445BC 0020DB7C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802445C0 0020DB80  4B EF 2F 51 */	bl func_80137510
/* 802445C4 0020DB84  2C 03 00 00 */	cmpwi r3, 0
/* 802445C8 0020DB88  41 82 00 14 */	beq .L_802445DC
/* 802445CC 0020DB8C  38 60 00 00 */	li r3, 0
/* 802445D0 0020DB90  38 00 00 01 */	li r0, 1
/* 802445D4 0020DB94  98 7F 00 25 */	stb r3, 0x25(r31)
/* 802445D8 0020DB98  98 1F 00 27 */	stb r0, 0x27(r31)
.L_802445DC:
/* 802445DC 0020DB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802445E0 0020DBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802445E4 0020DBA4  7C 08 03 A6 */	mtlr r0
/* 802445E8 0020DBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802445EC 0020DBAC  4E 80 00 20 */	blr 
.endfn func_802445A4

.fn func_802445F0, global
/* 802445F0 0020DBB0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802445F4 0020DBB4  2C 00 00 00 */	cmpwi r0, 0
/* 802445F8 0020DBB8  4D 82 00 20 */	beqlr 
/* 802445FC 0020DBBC  38 00 00 01 */	li r0, 1
/* 80244600 0020DBC0  98 03 00 26 */	stb r0, 0x26(r3)
/* 80244604 0020DBC4  98 03 00 24 */	stb r0, 0x24(r3)
/* 80244608 0020DBC8  4E 80 00 20 */	blr 
.endfn func_802445F0

.fn CFade_OnFileEvent, global
/* 8024460C 0020DBCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244610 0020DBD0  7C 08 02 A6 */	mflr r0
/* 80244614 0020DBD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80244618 0020DBD8  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 8024461C 0020DBDC  7C 7C 1B 78 */	mr r28, r3
/* 80244620 0020DBE0  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80244624 0020DBE4  80 04 00 04 */	lwz r0, 4(r4)
/* 80244628 0020DBE8  7C 05 00 40 */	cmplw r5, r0
/* 8024462C 0020DBEC  40 82 00 E0 */	bne .L_8024470C
/* 80244630 0020DBF0  48 1E FD 71 */	bl Heap_getRegionIndex2
/* 80244634 0020DBF4  3F C0 80 50 */	lis r30, CFade_strpool@ha
/* 80244638 0020DBF8  7C 64 1B 78 */	mr r4, r3
/* 8024463C 0020DBFC  3B DE 6C A0 */	addi r30, r30, CFade_strpool@l
/* 80244640 0020DC00  38 7C 00 04 */	addi r3, r28, 4
/* 80244644 0020DC04  38 DE 00 0F */	addi r6, r30, 0xf
/* 80244648 0020DC08  38 A0 04 00 */	li r5, 0x400
/* 8024464C 0020DC0C  38 E0 00 00 */	li r7, 0
/* 80244650 0020DC10  48 21 B0 31 */	bl CLibLayout_addLayoutHeapEntry__FP17UnkClass_8045F564iiPCci
/* 80244654 0020DC14  38 61 00 08 */	addi r3, r1, 8
/* 80244658 0020DC18  38 9C 00 04 */	addi r4, r28, 4
/* 8024465C 0020DC1C  48 21 B1 FD */	bl __ct__14Class_8045F858FP17UnkClass_8045F564
/* 80244660 0020DC20  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 80244664 0020DC24  3B E0 00 00 */	li r31, 0
/* 80244668 0020DC28  38 60 00 00 */	li r3, 0
/* 8024466C 0020DC2C  83 A4 00 04 */	lwz r29, 4(r4)
/* 80244670 0020DC30  93 E4 00 04 */	stw r31, 4(r4)
/* 80244674 0020DC34  48 1F 03 D9 */	bl MemManager_80434A4C__FUc
/* 80244678 0020DC38  48 21 AB 3D */	bl CLibLayout_getArcResourceAccessorInstance__Fv
/* 8024467C 0020DC3C  90 7C 00 18 */	stw r3, 0x18(r28)
/* 80244680 0020DC40  7F A4 EB 78 */	mr r4, r29
/* 80244684 0020DC44  38 BE 00 15 */	addi r5, r30, 0x15
/* 80244688 0020DC48  48 1C 58 81 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 8024468C 0020DC4C  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 80244690 0020DC50  38 7C 00 1C */	addi r3, r28, 0x1c
/* 80244694 0020DC54  38 BE 00 19 */	addi r5, r30, 0x19
/* 80244698 0020DC58  4B EF 27 ED */	bl func_80136E84__FPPQ34nw4r3lyt6LayoutPQ34nw4r3lyt19ArcResourceAccessorPCc
/* 8024469C 0020DC5C  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 802446A0 0020DC60  38 9C 00 20 */	addi r4, r28, 0x20
/* 802446A4 0020DC64  80 BC 00 18 */	lwz r5, 0x18(r28)
/* 802446A8 0020DC68  38 DE 00 29 */	addi r6, r30, 0x29
/* 802446AC 0020DC6C  4B EF 28 5D */	bl func_80136F08
/* 802446B0 0020DC70  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 802446B4 0020DC74  38 A0 00 01 */	li r5, 1
/* 802446B8 0020DC78  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 802446BC 0020DC7C  81 83 00 00 */	lwz r12, 0(r3)
/* 802446C0 0020DC80  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802446C4 0020DC84  7D 89 03 A6 */	mtctr r12
/* 802446C8 0020DC88  4E 80 04 21 */	bctrl 
/* 802446CC 0020DC8C  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 802446D0 0020DC90  38 80 00 00 */	li r4, 0
/* 802446D4 0020DC94  81 83 00 00 */	lwz r12, 0(r3)
/* 802446D8 0020DC98  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802446DC 0020DC9C  7D 89 03 A6 */	mtctr r12
/* 802446E0 0020DCA0  4E 80 04 21 */	bctrl 
/* 802446E4 0020DCA4  7F 83 E3 78 */	mr r3, r28
/* 802446E8 0020DCA8  4B FF FF 09 */	bl func_802445F0
/* 802446EC 0020DCAC  93 FC 00 14 */	stw r31, 0x14(r28)
/* 802446F0 0020DCB0  38 7C 00 04 */	addi r3, r28, 4
/* 802446F4 0020DCB4  48 21 B1 1D */	bl func_8045F810__FP17UnkClass_8045F564
/* 802446F8 0020DCB8  38 61 00 08 */	addi r3, r1, 8
/* 802446FC 0020DCBC  38 80 FF FF */	li r4, -1
/* 80244700 0020DCC0  48 21 B1 C9 */	bl __dt__14Class_8045F858Fv
/* 80244704 0020DCC4  38 60 00 01 */	li r3, 1
/* 80244708 0020DCC8  48 00 00 08 */	b .L_80244710
.L_8024470C:
/* 8024470C 0020DCCC  38 60 00 00 */	li r3, 0
.L_80244710:
/* 80244710 0020DCD0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 80244714 0020DCD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244718 0020DCD8  7C 08 03 A6 */	mtlr r0
/* 8024471C 0020DCDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80244720 0020DCE0  4E 80 00 20 */	blr 
.endfn CFade_OnFileEvent


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CFade_strpool, global
	.asciz "/menu/Fade.arc"
	.asciz "CFade"
	.asciz "arc"
	.asciz "mf00_fade.brlyt"
	.asciz "mf00_fade_fade_in.brlan"
	.balign 4
	.4byte 0
.endobj CFade_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__5CFade, global
	.4byte __RTTI__5CFade
	.4byte 0
	.4byte __dt__5CFadeFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte CFade_OnFileEvent
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
.endobj __vt__5CFade

.obj CFade_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CFade_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__5CFade, global
	.4byte CFade_typestr
	.4byte CFade_hierarchy
.endobj __RTTI__5CFade

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B008, global
	.float 1.0
	
.endobj float_8066B008

.obj CFade_typestr, global
	.asciz "CFade"
	.balign 4
	.4byte 0
.endobj CFade_typestr

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80016474", local
.hidden "@etb_80016474"
	.4byte 0x08080000
	.4byte 0x00000028
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__10IWorkEventFv
.endobj "@etb_80016474"

.obj "@etb_80016490", local
.hidden "@etb_80016490"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80016490"

.obj "@etb_80016498", local
.hidden "@etb_80016498"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80016498"

.obj "@etb_800164A0", local
.hidden "@etb_800164A0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800164A0"

.obj "@etb_800164A8", local
.hidden "@etb_800164A8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800164A8"

.obj "@etb_800164B0", local
.hidden "@etb_800164B0"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_800164B0"

.obj "@etb_800164B8", local
.hidden "@etb_800164B8"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_800164B8"

.obj "@etb_800164C0", local
.hidden "@etb_800164C0"
	.4byte 0x20080000
	.4byte 0x0000006C
	.4byte 0x00200010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__14Class_8045F858Fv
.endobj "@etb_800164C0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002F2A0", local
.hidden "@eti_8002F2A0"
	.4byte __ct__CFade
	.4byte 0x00000068
	.4byte "@etb_80016474"
.endobj "@eti_8002F2A0"

.obj "@eti_8002F2AC", local
.hidden "@eti_8002F2AC"
	.4byte __dt__5CFadeFv
	.4byte 0x00000054
	.4byte "@etb_80016490"
.endobj "@eti_8002F2AC"

.obj "@eti_8002F2B8", local
.hidden "@eti_8002F2B8"
	.4byte func_8024439C
	.4byte 0x0000004C
	.4byte "@etb_80016498"
.endobj "@eti_8002F2B8"

.obj "@eti_8002F2C4", local
.hidden "@eti_8002F2C4"
	.4byte func_802443E8
	.4byte 0x00000078
	.4byte "@etb_800164A0"
.endobj "@eti_8002F2C4"

.obj "@eti_8002F2D0", local
.hidden "@eti_8002F2D0"
	.4byte func_8024448C
	.4byte 0x0000007C
	.4byte "@etb_800164A8"
.endobj "@eti_8002F2D0"

.obj "@eti_8002F2DC", local
.hidden "@eti_8002F2DC"
	.4byte func_80244558
	.4byte 0x0000004C
	.4byte "@etb_800164B0"
.endobj "@eti_8002F2DC"

.obj "@eti_8002F2E8", local
.hidden "@eti_8002F2E8"
	.4byte func_802445A4
	.4byte 0x0000004C
	.4byte "@etb_800164B8"
.endobj "@eti_8002F2E8"

.obj "@eti_8002F2F4", local
.hidden "@eti_8002F2F4"
	.4byte CFade_OnFileEvent
	.4byte 0x00000118
	.4byte "@etb_800164C0"
.endobj "@eti_8002F2F4"
