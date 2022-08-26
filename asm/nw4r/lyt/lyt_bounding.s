.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q34nw4r3lyt8BoundingFPCQ44nw4r3lyt3res8BoundingRCQ34nw4r3lyt11ResBlockSet
__ct__Q34nw4r3lyt8BoundingFPCQ44nw4r3lyt3res8BoundingRCQ34nw4r3lyt11ResBlockSet:
/* 804053DC 003CE99C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804053E0 003CE9A0  7C 08 02 A6 */	mflr r0
/* 804053E4 003CE9A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804053E8 003CE9A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804053EC 003CE9AC  7C 7F 1B 78 */	mr r31, r3
/* 804053F0 003CE9B0  4B FF 96 41 */	bl __ct__Q34nw4r3lyt4PaneFPCQ44nw4r3lyt3res4Pane
/* 804053F4 003CE9B4  3C 80 80 57 */	lis r4, lbl_8056D460@ha
/* 804053F8 003CE9B8  7F E3 FB 78 */	mr r3, r31
/* 804053FC 003CE9BC  38 84 D4 60 */	addi r4, r4, lbl_8056D460@l
/* 80405400 003CE9C0  90 9F 00 00 */	stw r4, 0(r31)
/* 80405404 003CE9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405408 003CE9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040540C 003CE9CC  7C 08 03 A6 */	mtlr r0
/* 80405410 003CE9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80405414 003CE9D4  4E 80 00 20 */	blr

.global __dt__Q34nw4r3lyt8BoundingFv
__dt__Q34nw4r3lyt8BoundingFv:
/* 80405418 003CE9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040541C 003CE9DC  7C 08 02 A6 */	mflr r0
/* 80405420 003CE9E0  2C 03 00 00 */	cmpwi r3, 0
/* 80405424 003CE9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405428 003CE9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040542C 003CE9EC  7C 9F 23 78 */	mr r31, r4
/* 80405430 003CE9F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80405434 003CE9F4  7C 7E 1B 78 */	mr r30, r3
/* 80405438 003CE9F8  41 82 00 1C */	beq lbl_80405454
/* 8040543C 003CE9FC  38 80 00 00 */	li r4, 0
/* 80405440 003CEA00  4B FF 97 29 */	bl __dt__Q34nw4r3lyt4PaneFv
/* 80405444 003CEA04  2C 1F 00 00 */	cmpwi r31, 0
/* 80405448 003CEA08  40 81 00 0C */	ble lbl_80405454
/* 8040544C 003CEA0C  7F C3 F3 78 */	mr r3, r30
/* 80405450 003CEA10  48 02 F7 DD */	bl __dl__FPv
lbl_80405454:
/* 80405454 003CEA14  7F C3 F3 78 */	mr r3, r30
/* 80405458 003CEA18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040545C 003CEA1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80405460 003CEA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405464 003CEA24  7C 08 03 A6 */	mtlr r0
/* 80405468 003CEA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8040546C 003CEA2C  4E 80 00 20 */	blr 

.global DrawSelf__Q34nw4r3lyt8BoundingFRCQ34nw4r3lyt8DrawInfo
DrawSelf__Q34nw4r3lyt8BoundingFRCQ34nw4r3lyt8DrawInfo:
/* 80405470 003CEA30  4E 80 00 20 */	blr

.global GetRuntimeTypeInfo__Q34nw4r3lyt8BoundingCFv
GetRuntimeTypeInfo__Q34nw4r3lyt8BoundingCFv:
/* 80405474 003CEA34  38 6D BB F8 */	addi r3, r13, lbl_80667D78@sda21
/* 80405478 003CEA38  4E 80 00 20 */	blr


.global sinit_8040547C
sinit_8040547C:
/* 8040547C 003CEA3C  38 0D BB D0 */	addi r0, r13, lbl_80667D50@sda21
/* 80405480 003CEA40  90 0D BB F8 */	stw r0, lbl_80667D78@sda21(r13)
/* 80405484 003CEA44  4E 80 00 20 */	blr 