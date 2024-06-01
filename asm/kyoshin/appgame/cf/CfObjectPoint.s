.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__Q22cf13CfObjectPointFv, global
/* 800C1274 0008A834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1278 0008A838  7C 08 02 A6 */	mflr r0
/* 800C127C 0008A83C  2C 03 00 00 */	cmpwi r3, 0
/* 800C1280 0008A840  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C1284 0008A844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C1288 0008A848  7C 9F 23 78 */	mr r31, r4
/* 800C128C 0008A84C  93 C1 00 08 */	stw r30, 8(r1)
/* 800C1290 0008A850  7C 7E 1B 78 */	mr r30, r3
/* 800C1294 0008A854  41 82 00 74 */	beq .L_800C1308
/* 800C1298 0008A858  80 03 00 68 */	lwz r0, 0x68(r3)
/* 800C129C 0008A85C  3C 80 80 53 */	lis r4, __vt__Q22cf13CfObjectPoint@ha
/* 800C12A0 0008A860  38 84 DB 80 */	addi r4, r4, __vt__Q22cf13CfObjectPoint@l
/* 800C12A4 0008A864  90 83 00 00 */	stw r4, 0(r3)
/* 800C12A8 0008A868  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800C12AC 0008A86C  41 82 00 10 */	beq .L_800C12BC
/* 800C12B0 0008A870  48 0C 50 11 */	bl func_801862C0
/* 800C12B4 0008A874  7F C4 F3 78 */	mr r4, r30
/* 800C12B8 0008A878  48 0C 51 BD */	bl func_80186474
.L_800C12BC:
/* 800C12BC 0008A87C  81 9E 00 00 */	lwz r12, 0(r30)
/* 800C12C0 0008A880  7F C3 F3 78 */	mr r3, r30
/* 800C12C4 0008A884  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800C12C8 0008A888  7D 89 03 A6 */	mtctr r12
/* 800C12CC 0008A88C  4E 80 04 21 */	bctrl 
/* 800C12D0 0008A890  2C 1E 00 00 */	cmpwi r30, 0
/* 800C12D4 0008A894  41 82 00 24 */	beq .L_800C12F8
/* 800C12D8 0008A898  3C 80 80 53 */	lis r4, __vt__Q22cf8CfObject@ha
/* 800C12DC 0008A89C  7F C3 F3 78 */	mr r3, r30
/* 800C12E0 0008A8A0  38 84 CC B0 */	addi r4, r4, __vt__Q22cf8CfObject@l
/* 800C12E4 0008A8A4  90 9E 00 00 */	stw r4, 0(r30)
/* 800C12E8 0008A8A8  81 9E 00 00 */	lwz r12, 0(r30)
/* 800C12EC 0008A8AC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800C12F0 0008A8B0  7D 89 03 A6 */	mtctr r12
/* 800C12F4 0008A8B4  4E 80 04 21 */	bctrl 
.L_800C12F8:
/* 800C12F8 0008A8B8  2C 1F 00 00 */	cmpwi r31, 0
/* 800C12FC 0008A8BC  40 81 00 0C */	ble .L_800C1308
/* 800C1300 0008A8C0  7F C3 F3 78 */	mr r3, r30
/* 800C1304 0008A8C4  48 37 39 29 */	bl __dl__FPv
.L_800C1308:
/* 800C1308 0008A8C8  7F C3 F3 78 */	mr r3, r30
/* 800C130C 0008A8CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C1310 0008A8D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C1314 0008A8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C1318 0008A8D8  7C 08 03 A6 */	mtlr r0
/* 800C131C 0008A8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C1320 0008A8E0  4E 80 00 20 */	blr 
.endfn __dt__Q22cf13CfObjectPointFv

.fn func_800C1324__Q22cf13CfObjectPointFv, global
/* 800C1324 0008A8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1328 0008A8E8  7C 08 02 A6 */	mflr r0
/* 800C132C 0008A8EC  38 80 00 01 */	li r4, 1
/* 800C1330 0008A8F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C1334 0008A8F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C1338 0008A8F8  7C 7F 1B 78 */	mr r31, r3
/* 800C133C 0008A8FC  81 83 00 00 */	lwz r12, 0(r3)
/* 800C1340 0008A900  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 800C1344 0008A904  7D 89 03 A6 */	mtctr r12
/* 800C1348 0008A908  4E 80 04 21 */	bctrl 
/* 800C134C 0008A90C  38 00 00 00 */	li r0, 0
/* 800C1350 0008A910  98 1F 00 91 */	stb r0, 0x91(r31)
/* 800C1354 0008A914  98 1F 00 90 */	stb r0, 0x90(r31)
/* 800C1358 0008A918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C135C 0008A91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C1360 0008A920  7C 08 03 A6 */	mtlr r0
/* 800C1364 0008A924  38 21 00 10 */	addi r1, r1, 0x10
/* 800C1368 0008A928  4E 80 00 20 */	blr 
.endfn func_800C1324__Q22cf13CfObjectPointFv

.fn func_800C136C__Q22cf13CfObjectPointFv, global
/* 800C136C 0008A92C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C1370 0008A930  7C 08 02 A6 */	mflr r0
/* 800C1374 0008A934  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C1378 0008A938  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C137C 0008A93C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C1380 0008A940  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C1384 0008A944  7C 7D 1B 78 */	mr r29, r3
/* 800C1388 0008A948  4B F7 96 AD */	bl func_8003AA34
/* 800C138C 0008A94C  38 7D 00 78 */	addi r3, r29, 0x78
/* 800C1390 0008A950  4B F7 97 15 */	bl func_8003AAA4
/* 800C1394 0008A954  3F E0 80 4F */	lis r31, lbl_804F7E68@ha
/* 800C1398 0008A958  A0 BD 00 8C */	lhz r5, 0x8c(r29)
/* 800C139C 0008A95C  7C 7E 1B 78 */	mr r30, r3
/* 800C13A0 0008A960  38 9F 7E 68 */	addi r4, r31, lbl_804F7E68@l
/* 800C13A4 0008A964  4B F7 97 A5 */	bl func_8003AB48
/* 800C13A8 0008A968  81 9D 00 00 */	lwz r12, 0(r29)
/* 800C13AC 0008A96C  7C 64 1B 78 */	mr r4, r3
/* 800C13B0 0008A970  7F A3 EB 78 */	mr r3, r29
/* 800C13B4 0008A974  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800C13B8 0008A978  7D 89 03 A6 */	mtctr r12
/* 800C13BC 0008A97C  4E 80 04 21 */	bctrl 
/* 800C13C0 0008A980  38 9F 7E 68 */	addi r4, r31, lbl_804F7E68@l
/* 800C13C4 0008A984  A0 BD 00 8C */	lhz r5, 0x8c(r29)
/* 800C13C8 0008A988  7F C3 F3 78 */	mr r3, r30
/* 800C13CC 0008A98C  38 84 00 05 */	addi r4, r4, 5
/* 800C13D0 0008A990  4B F7 97 79 */	bl func_8003AB48
/* 800C13D4 0008A994  90 61 00 08 */	stw r3, 8(r1)
/* 800C13D8 0008A998  88 01 00 08 */	lbz r0, 8(r1)
/* 800C13DC 0008A99C  98 1D 00 91 */	stb r0, 0x91(r29)
/* 800C13E0 0008A9A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C13E4 0008A9A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C13E8 0008A9A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C13EC 0008A9AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C13F0 0008A9B0  7C 08 03 A6 */	mtlr r0
/* 800C13F4 0008A9B4  38 21 00 20 */	addi r1, r1, 0x20
/* 800C13F8 0008A9B8  4E 80 00 20 */	blr 
.endfn func_800C136C__Q22cf13CfObjectPointFv

.fn func_800C13FC, global
/* 800C13FC 0008A9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1400 0008A9C0  7C 08 02 A6 */	mflr r0
/* 800C1404 0008A9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C1408 0008A9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C140C 0008A9CC  7C BF 2B 78 */	mr r31, r5
/* 800C1410 0008A9D0  93 C1 00 08 */	stw r30, 8(r1)
/* 800C1414 0008A9D4  7C 7E 1B 78 */	mr r30, r3
/* 800C1418 0008A9D8  81 83 00 00 */	lwz r12, 0(r3)
/* 800C141C 0008A9DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800C1420 0008A9E0  7D 89 03 A6 */	mtctr r12
/* 800C1424 0008A9E4  4E 80 04 21 */	bctrl 
/* 800C1428 0008A9E8  9B FE 00 91 */	stb r31, 0x91(r30)
/* 800C142C 0008A9EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C1430 0008A9F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C1434 0008A9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C1438 0008A9F8  7C 08 03 A6 */	mtlr r0
/* 800C143C 0008A9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C1440 0008AA00  4E 80 00 20 */	blr 
.endfn func_800C13FC

.fn func_800C1444__Q22cf13CfObjectPointFv, global
/* 800C1444 0008AA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1448 0008AA08  7C 08 02 A6 */	mflr r0
/* 800C144C 0008AA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C1450 0008AA10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C1454 0008AA14  7C 7F 1B 78 */	mr r31, r3
/* 800C1458 0008AA18  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800C145C 0008AA1C  2C 00 00 00 */	cmpwi r0, 0
/* 800C1460 0008AA20  41 82 00 44 */	beq .L_800C14A4
/* 800C1464 0008AA24  7C 03 03 78 */	mr r3, r0
/* 800C1468 0008AA28  81 83 00 00 */	lwz r12, 0(r3)
/* 800C146C 0008AA2C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 800C1470 0008AA30  7D 89 03 A6 */	mtctr r12
/* 800C1474 0008AA34  4E 80 04 21 */	bctrl 
/* 800C1478 0008AA38  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 800C147C 0008AA3C  2C 03 00 00 */	cmpwi r3, 0
/* 800C1480 0008AA40  41 82 00 24 */	beq .L_800C14A4
/* 800C1484 0008AA44  41 82 00 18 */	beq .L_800C149C
/* 800C1488 0008AA48  81 83 00 00 */	lwz r12, 0(r3)
/* 800C148C 0008AA4C  38 80 00 01 */	li r4, 1
/* 800C1490 0008AA50  81 8C 00 08 */	lwz r12, 8(r12)
/* 800C1494 0008AA54  7D 89 03 A6 */	mtctr r12
/* 800C1498 0008AA58  4E 80 04 21 */	bctrl 
.L_800C149C:
/* 800C149C 0008AA5C  38 00 00 00 */	li r0, 0
/* 800C14A0 0008AA60  90 1F 00 38 */	stw r0, 0x38(r31)
.L_800C14A4:
/* 800C14A4 0008AA64  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 800C14A8 0008AA68  38 60 00 00 */	li r3, 0
/* 800C14AC 0008AA6C  90 7F 00 70 */	stw r3, 0x70(r31)
/* 800C14B0 0008AA70  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 800C14B4 0008AA74  90 1F 00 68 */	stw r0, 0x68(r31)
/* 800C14B8 0008AA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C14BC 0008AA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C14C0 0008AA80  7C 08 03 A6 */	mtlr r0
/* 800C14C4 0008AA84  38 21 00 10 */	addi r1, r1, 0x10
/* 800C14C8 0008AA88  4E 80 00 20 */	blr 
.endfn func_800C1444__Q22cf13CfObjectPointFv

.fn func_800C14CC__Q22cf13CfObjectPointFv, global
/* 800C14CC 0008AA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C14D0 0008AA90  7C 08 02 A6 */	mflr r0
/* 800C14D4 0008AA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C14D8 0008AA98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C14DC 0008AA9C  7C 7F 1B 78 */	mr r31, r3
/* 800C14E0 0008AAA0  81 83 00 00 */	lwz r12, 0(r3)
/* 800C14E4 0008AAA4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800C14E8 0008AAA8  7D 89 03 A6 */	mtctr r12
/* 800C14EC 0008AAAC  4E 80 04 21 */	bctrl 
/* 800C14F0 0008AAB0  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 800C14F4 0008AAB4  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800C14F8 0008AAB8  41 82 00 44 */	beq .L_800C153C
/* 800C14FC 0008AABC  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C1500 0008AAC0  7F E3 FB 78 */	mr r3, r31
/* 800C1504 0008AAC4  38 80 00 01 */	li r4, 1
/* 800C1508 0008AAC8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800C150C 0008AACC  7D 89 03 A6 */	mtctr r12
/* 800C1510 0008AAD0  4E 80 04 21 */	bctrl 
/* 800C1514 0008AAD4  2C 03 00 00 */	cmpwi r3, 0
/* 800C1518 0008AAD8  40 82 00 24 */	bne .L_800C153C
/* 800C151C 0008AADC  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C1520 0008AAE0  7F E3 FB 78 */	mr r3, r31
/* 800C1524 0008AAE4  38 80 00 01 */	li r4, 1
/* 800C1528 0008AAE8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800C152C 0008AAEC  7D 89 03 A6 */	mtctr r12
/* 800C1530 0008AAF0  4E 80 04 21 */	bctrl 
/* 800C1534 0008AAF4  2C 03 00 00 */	cmpwi r3, 0
/* 800C1538 0008AAF8  41 82 00 EC */	beq .L_800C1624
.L_800C153C:
/* 800C153C 0008AAFC  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 800C1540 0008AB00  48 3D 4D 49 */	bl func_80496288
/* 800C1544 0008AB04  C0 02 90 90 */	lfs f0, float_80669410@sda21(r2)
/* 800C1548 0008AB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C154C 0008AB0C  40 81 00 6C */	ble .L_800C15B8
/* 800C1550 0008AB10  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C1554 0008AB14  7F E3 FB 78 */	mr r3, r31
/* 800C1558 0008AB18  38 80 00 01 */	li r4, 1
/* 800C155C 0008AB1C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800C1560 0008AB20  7D 89 03 A6 */	mtctr r12
/* 800C1564 0008AB24  4E 80 04 21 */	bctrl 
/* 800C1568 0008AB28  2C 03 00 00 */	cmpwi r3, 0
/* 800C156C 0008AB2C  41 82 00 4C */	beq .L_800C15B8
/* 800C1570 0008AB30  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C1574 0008AB34  7F E3 FB 78 */	mr r3, r31
/* 800C1578 0008AB38  38 80 00 01 */	li r4, 1
/* 800C157C 0008AB3C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800C1580 0008AB40  7D 89 03 A6 */	mtctr r12
/* 800C1584 0008AB44  4E 80 04 21 */	bctrl 
/* 800C1588 0008AB48  2C 03 00 00 */	cmpwi r3, 0
/* 800C158C 0008AB4C  40 82 00 2C */	bne .L_800C15B8
/* 800C1590 0008AB50  38 60 00 01 */	li r3, 1
/* 800C1594 0008AB54  48 07 D5 FD */	bl func_8013EB90
/* 800C1598 0008AB58  2C 03 00 00 */	cmpwi r3, 0
/* 800C159C 0008AB5C  40 82 00 1C */	bne .L_800C15B8
/* 800C15A0 0008AB60  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C15A4 0008AB64  7F E3 FB 78 */	mr r3, r31
/* 800C15A8 0008AB68  38 80 00 01 */	li r4, 1
/* 800C15AC 0008AB6C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800C15B0 0008AB70  7D 89 03 A6 */	mtctr r12
/* 800C15B4 0008AB74  4E 80 04 21 */	bctrl 
.L_800C15B8:
/* 800C15B8 0008AB78  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C15BC 0008AB7C  7F E3 FB 78 */	mr r3, r31
/* 800C15C0 0008AB80  38 80 00 01 */	li r4, 1
/* 800C15C4 0008AB84  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800C15C8 0008AB88  7D 89 03 A6 */	mtctr r12
/* 800C15CC 0008AB8C  4E 80 04 21 */	bctrl 
/* 800C15D0 0008AB90  2C 03 00 00 */	cmpwi r3, 0
/* 800C15D4 0008AB94  41 82 00 34 */	beq .L_800C1608
/* 800C15D8 0008AB98  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C15DC 0008AB9C  7F E3 FB 78 */	mr r3, r31
/* 800C15E0 0008ABA0  38 80 00 01 */	li r4, 1
/* 800C15E4 0008ABA4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800C15E8 0008ABA8  7D 89 03 A6 */	mtctr r12
/* 800C15EC 0008ABAC  4E 80 04 21 */	bctrl 
/* 800C15F0 0008ABB0  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C15F4 0008ABB4  7F E3 FB 78 */	mr r3, r31
/* 800C15F8 0008ABB8  38 80 00 01 */	li r4, 1
/* 800C15FC 0008ABBC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800C1600 0008ABC0  7D 89 03 A6 */	mtctr r12
/* 800C1604 0008ABC4  4E 80 04 21 */	bctrl 
.L_800C1608:
/* 800C1608 0008ABC8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 800C160C 0008ABCC  2C 03 00 00 */	cmpwi r3, 0
/* 800C1610 0008ABD0  41 82 00 14 */	beq .L_800C1624
/* 800C1614 0008ABD4  81 83 00 00 */	lwz r12, 0(r3)
/* 800C1618 0008ABD8  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 800C161C 0008ABDC  7D 89 03 A6 */	mtctr r12
/* 800C1620 0008ABE0  4E 80 04 21 */	bctrl 
.L_800C1624:
/* 800C1624 0008ABE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C1628 0008ABE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C162C 0008ABEC  7C 08 03 A6 */	mtlr r0
/* 800C1630 0008ABF0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C1634 0008ABF4  4E 80 00 20 */	blr
.endfn func_800C14CC__Q22cf13CfObjectPointFv

.fn func_800C1638__Q22cf13CfObjectPointFv, global
/* 800C1638 0008ABF8  80 63 00 38 */	lwz r3, 0x38(r3)
/* 800C163C 0008ABFC  2C 03 00 00 */	cmpwi r3, 0
/* 800C1640 0008AC00  4D 82 00 20 */	beqlr 
/* 800C1644 0008AC04  81 83 00 00 */	lwz r12, 0(r3)
/* 800C1648 0008AC08  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 800C164C 0008AC0C  7D 89 03 A6 */	mtctr r12
/* 800C1650 0008AC10  4E 80 04 20 */	bctr 
/* 800C1654 0008AC14  4E 80 00 20 */	blr 
.endfn func_800C1638__Q22cf13CfObjectPointFv

.fn func_800C1658__Q22cf13CfObjectPointFv, global
/* 800C1658 0008AC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C165C 0008AC1C  7C 08 02 A6 */	mflr r0
/* 800C1660 0008AC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C1664 0008AC24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C1668 0008AC28  7C 9F 23 78 */	mr r31, r4
/* 800C166C 0008AC2C  93 C1 00 08 */	stw r30, 8(r1)
/* 800C1670 0008AC30  7C 7E 1B 78 */	mr r30, r3
/* 800C1674 0008AC34  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800C1678 0008AC38  2C 00 00 00 */	cmpwi r0, 0
/* 800C167C 0008AC3C  41 82 00 28 */	beq .L_800C16A4
/* 800C1680 0008AC40  41 82 00 1C */	beq .L_800C169C
/* 800C1684 0008AC44  7C 03 03 78 */	mr r3, r0
/* 800C1688 0008AC48  38 80 00 01 */	li r4, 1
/* 800C168C 0008AC4C  81 83 00 00 */	lwz r12, 0(r3)
/* 800C1690 0008AC50  81 8C 00 08 */	lwz r12, 8(r12)
/* 800C1694 0008AC54  7D 89 03 A6 */	mtctr r12
/* 800C1698 0008AC58  4E 80 04 21 */	bctrl 
.L_800C169C:
/* 800C169C 0008AC5C  38 00 00 00 */	li r0, 0
/* 800C16A0 0008AC60  90 1E 00 38 */	stw r0, 0x38(r30)
.L_800C16A4:
/* 800C16A4 0008AC64  2C 1F 00 00 */	cmpwi r31, 0
/* 800C16A8 0008AC68  93 FE 00 38 */	stw r31, 0x38(r30)
/* 800C16AC 0008AC6C  41 82 00 30 */	beq .L_800C16DC
/* 800C16B0 0008AC70  81 9F 00 00 */	lwz r12, 0(r31)
/* 800C16B4 0008AC74  7F E3 FB 78 */	mr r3, r31
/* 800C16B8 0008AC78  7F C4 F3 78 */	mr r4, r30
/* 800C16BC 0008AC7C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800C16C0 0008AC80  7D 89 03 A6 */	mtctr r12
/* 800C16C4 0008AC84  4E 80 04 21 */	bctrl 
/* 800C16C8 0008AC88  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 800C16CC 0008AC8C  81 83 00 00 */	lwz r12, 0(r3)
/* 800C16D0 0008AC90  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 800C16D4 0008AC94  7D 89 03 A6 */	mtctr r12
/* 800C16D8 0008AC98  4E 80 04 21 */	bctrl 
.L_800C16DC:
/* 800C16DC 0008AC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C16E0 0008ACA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C16E4 0008ACA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C16E8 0008ACA8  7C 08 03 A6 */	mtlr r0
/* 800C16EC 0008ACAC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C16F0 0008ACB0  4E 80 00 20 */	blr 
.endfn func_800C1658__Q22cf13CfObjectPointFv

.fn func_800C16F4__Q22cf13CfObjectPointFv, global
/* 800C16F4 0008ACB4  2C 04 00 00 */	cmpwi r4, 0
/* 800C16F8 0008ACB8  41 82 00 14 */	beq .L_800C170C
/* 800C16FC 0008ACBC  80 03 00 68 */	lwz r0, 0x68(r3)
/* 800C1700 0008ACC0  64 00 00 10 */	oris r0, r0, 0x10
/* 800C1704 0008ACC4  90 03 00 68 */	stw r0, 0x68(r3)
/* 800C1708 0008ACC8  4E 80 00 20 */	blr
.L_800C170C:
/* 800C170C 0008ACCC  80 03 00 68 */	lwz r0, 0x68(r3)
/* 800C1710 0008ACD0  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 800C1714 0008ACD4  90 03 00 68 */	stw r0, 0x68(r3)
/* 800C1718 0008ACD8  4E 80 00 20 */	blr 
.endfn func_800C16F4__Q22cf13CfObjectPointFv

.fn func_800C171C__Q22cf13CfObjectPointFv, global
/* 800C171C 0008ACDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800C1720 0008ACE0  7C 08 02 A6 */	mflr r0
/* 800C1724 0008ACE4  C0 02 90 94 */	lfs f0, float_80669414@sda21(r2)
/* 800C1728 0008ACE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800C172C 0008ACEC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800C1730 0008ACF0  7C 7F 1B 78 */	mr r31, r3
/* 800C1734 0008ACF4  80 8D A5 94 */	lwz r4, lbl_80666714@sda21(r13)
/* 800C1738 0008ACF8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800C173C 0008ACFC  2C 04 00 00 */	cmpwi r4, 0
/* 800C1740 0008AD00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800C1744 0008AD04  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800C1748 0008AD08  40 82 00 68 */	bne .L_800C17B0
/* 800C174C 0008AD0C  80 64 00 74 */	lwz r3, 0x74(r4)
/* 800C1750 0008AD10  48 3D CD CD */	bl func_8049E51C
/* 800C1754 0008AD14  2C 03 00 00 */	cmpwi r3, 0
/* 800C1758 0008AD18  41 82 00 58 */	beq .L_800C17B0
/* 800C175C 0008AD1C  C0 22 90 98 */	lfs f1, float_80669418@sda21(r2)
/* 800C1760 0008AD20  38 61 00 20 */	addi r3, r1, 0x20
/* 800C1764 0008AD24  C0 42 90 90 */	lfs f2, float_80669410@sda21(r2)
/* 800C1768 0008AD28  38 80 00 00 */	li r4, 0
/* 800C176C 0008AD2C  38 A0 00 00 */	li r5, 0
/* 800C1770 0008AD30  38 C0 00 00 */	li r6, 0
/* 800C1774 0008AD34  48 3F CC 25 */	bl func_804BE398
/* 800C1778 0008AD38  2C 03 00 00 */	cmpwi r3, 0
/* 800C177C 0008AD3C  41 82 00 34 */	beq .L_800C17B0
/* 800C1780 0008AD40  38 61 00 14 */	addi r3, r1, 0x14
/* 800C1784 0008AD44  38 80 00 00 */	li r4, 0
/* 800C1788 0008AD48  48 3F CD 2D */	bl func_804BE4B4
/* 800C178C 0008AD4C  38 61 00 08 */	addi r3, r1, 8
/* 800C1790 0008AD50  38 80 00 00 */	li r4, 0
/* 800C1794 0008AD54  48 3F CD 4D */	bl func_804BE4E0
/* 800C1798 0008AD58  80 81 00 14 */	lwz r4, 0x14(r1)
/* 800C179C 0008AD5C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800C17A0 0008AD60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C17A4 0008AD64  90 81 00 20 */	stw r4, 0x20(r1)
/* 800C17A8 0008AD68  90 61 00 24 */	stw r3, 0x24(r1)
/* 800C17AC 0008AD6C  90 01 00 28 */	stw r0, 0x28(r1)
.L_800C17B0:
/* 800C17B0 0008AD70  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800C17B4 0008AD74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C17B8 0008AD78  90 1F 00 40 */	stw r0, 0x40(r31)
/* 800C17BC 0008AD7C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 800C17C0 0008AD80  80 01 00 28 */	lwz r0, 0x28(r1)
/* 800C17C4 0008AD84  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800C17C8 0008AD88  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800C17CC 0008AD8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800C17D0 0008AD90  7C 08 03 A6 */	mtlr r0
/* 800C17D4 0008AD94  38 21 00 40 */	addi r1, r1, 0x40
/* 800C17D8 0008AD98  4E 80 00 20 */	blr 
.endfn func_800C171C__Q22cf13CfObjectPointFv


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804F7E68, global
	.asciz "name"
	.asciz "icon_type"
	.balign 4
.endobj lbl_804F7E68


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf13CfObjectPoint, global
	.4byte __RTTI__Q22cf13CfObjectPoint
	.4byte 0
	.4byte CObjectState_virtualFunc1__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc2__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc3__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc4__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc5__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc6__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc7__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc8__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc9__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc10__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc11__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc12__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc13__Q22cf12CObjectStateFv
	.4byte CObjectParam_virtualFunc1__Q22cf12CObjectParamFv
	.4byte CObjectParam_virtualFunc2__Q22cf12CObjectParamFv
	.4byte CObjectParam_virtualFunc3__Q22cf12CObjectParamFv
	.4byte func_800C136C__Q22cf13CfObjectPointFv
	.4byte CObjectParam_virtualFunc5__Q22cf12CObjectParamFv
	.4byte CObjectParam_virtualFunc6__Q22cf12CObjectParamFv
	.4byte __dt__Q22cf13CfObjectPointFv
	.4byte func_800C1244__Q22cf13CfObjectPointFv
	.4byte func_800C1324__Q22cf13CfObjectPointFv
	.4byte func_800C14CC__Q22cf13CfObjectPointFv
	.4byte CfObject_vtableFunc5__Q22cf8CfObjectFv
	.4byte func_800C1444__Q22cf13CfObjectPointFv
	.4byte func_800C1638__Q22cf13CfObjectPointFv
	.4byte func_800C1658__Q22cf13CfObjectPointFv
	.4byte CfObject_vtableFunc9__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc10__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc11__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc12__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc13__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc14__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc15__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc16__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc17__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc18__Q22cf8CfObjectFv
	.4byte func_80047814__Q22cf13CfObjectPointFv
	.4byte func_800C171C__Q22cf13CfObjectPointFv
	.4byte CfObject_vtableFunc21__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc22__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc23__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc24__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc25__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc26__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc27__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc28__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc29__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc30__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc31__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc32__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc33__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc34__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc35__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc36__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc37__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc38__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc39__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc40__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc41__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc42__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc43__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc44__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc45__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc46__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc47__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc48__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc49__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc50__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc51__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc52__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc53__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc54__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc55__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc56__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc57__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc58__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc59__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc60__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc61__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc62__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc63__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc64__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc65__Q22cf8CfObjectFv
	.4byte func_800C16F4__Q22cf13CfObjectPointFv
	.4byte CfObject_vtableFunc67__Q22cf8CfObjectFv
	.4byte func_800AC604__Q22cf13CfObjectPointFv
	.4byte CfObject_vtableFunc69__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc70__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc71__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc72__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc73__Q22cf8CfObjectFv
.endobj __vt__Q22cf13CfObjectPoint

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_80669410, global
	.float 0
.endobj float_80669410


.obj float_80669414, global
	.float -1.0
.endobj float_80669414


.obj float_80669418, global
	.float 5
.endobj float_80669418


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000A058", local
.hidden "@etb_8000A058"
	.4byte 0x10080000
	.4byte 0x00000040
	.4byte 0x00070010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__Q22cf8CfObjectFv
.endobj "@etb_8000A058"

.obj "@etb_8000A074", local
.hidden "@etb_8000A074"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000A074"

.obj "@etb_8000A07C", local
.hidden "@etb_8000A07C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8000A07C"

.obj "@etb_8000A084", local
.hidden "@etb_8000A084"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000A084"

.obj "@etb_8000A08C", local
.hidden "@etb_8000A08C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000A08C"

.obj "@etb_8000A094", local
.hidden "@etb_8000A094"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8000A094"

.obj "@etb_8000A09C", local
.hidden "@etb_8000A09C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000A09C"

.obj "@etb_8000A0A4", local
.hidden "@etb_8000A0A4"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8000A0A4"


.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80025B98", local
.hidden "@eti_80025B98"
	.4byte __dt__Q22cf13CfObjectPointFv
	.4byte 0x000000B0
	.4byte "@etb_8000A058"
.endobj "@eti_80025B98"

.obj "@eti_80025BA4", local
.hidden "@eti_80025BA4"
	.4byte func_800C1324__Q22cf13CfObjectPointFv
	.4byte 0x00000048
	.4byte "@etb_8000A074"
.endobj "@eti_80025BA4"

.obj "@eti_80025BB0", local
.hidden "@eti_80025BB0"
	.4byte func_800C136C__Q22cf13CfObjectPointFv
	.4byte 0x00000090
	.4byte "@etb_8000A07C"
.endobj "@eti_80025BB0"

.obj "@eti_80025BBC", local
.hidden "@eti_80025BBC"
	.4byte func_800C13FC
	.4byte 0x00000048
	.4byte "@etb_8000A084"
.endobj "@eti_80025BBC"

.obj "@eti_80025BC8", local
.hidden "@eti_80025BC8"
	.4byte func_800C1444__Q22cf13CfObjectPointFv
	.4byte 0x00000088
	.4byte "@etb_8000A08C"
.endobj "@eti_80025BC8"

.obj "@eti_80025BD4", local
.hidden "@eti_80025BD4"
	.4byte func_800C14CC__Q22cf13CfObjectPointFv
	.4byte 0x0000016C
	.4byte "@etb_8000A094"
.endobj "@eti_80025BD4"

.obj "@eti_80025BE0", local
.hidden "@eti_80025BE0"
	.4byte func_800C1658__Q22cf13CfObjectPointFv
	.4byte 0x0000009C
	.4byte "@etb_8000A09C"
.endobj "@eti_80025BE0"

.obj "@eti_80025BEC", local
.hidden "@eti_80025BEC"
	.4byte func_800C171C__Q22cf13CfObjectPointFv
	.4byte 0x000000C0
	.4byte "@etb_8000A0A4"
.endobj "@eti_80025BEC"
