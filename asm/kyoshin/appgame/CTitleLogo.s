.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802B632C
func_802B632C:
/* 802B632C 0027F8EC  3C A0 80 54 */	lis r5, __vt__CTitleLogo@ha
/* 802B6330 0027F8F0  38 80 00 00 */	li r4, 0
/* 802B6334 0027F8F4  38 A5 EA 80 */	addi r5, r5, __vt__CTitleLogo@l
/* 802B6338 0027F8F8  38 00 00 01 */	li r0, 1
/* 802B633C 0027F8FC  90 A3 00 00 */	stw r5, 0(r3)
/* 802B6340 0027F900  90 83 00 04 */	stw r4, 4(r3)
/* 802B6344 0027F904  90 83 00 08 */	stw r4, 8(r3)
/* 802B6348 0027F908  90 83 00 0C */	stw r4, 0xc(r3)
/* 802B634C 0027F90C  90 83 00 10 */	stw r4, 0x10(r3)
/* 802B6350 0027F910  90 83 00 14 */	stw r4, 0x14(r3)
/* 802B6354 0027F914  98 83 00 18 */	stb r4, 0x18(r3)
/* 802B6358 0027F918  98 03 00 19 */	stb r0, 0x19(r3)
/* 802B635C 0027F91C  98 83 00 1A */	stb r4, 0x1a(r3)
/* 802B6360 0027F920  4E 80 00 20 */	blr 

.global func_802B6364
func_802B6364:
/* 802B6364 0027F924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6368 0027F928  7C 08 02 A6 */	mflr r0
/* 802B636C 0027F92C  2C 03 00 00 */	cmpwi r3, 0
/* 802B6370 0027F930  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6374 0027F934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6378 0027F938  7C 7F 1B 78 */	mr r31, r3
/* 802B637C 0027F93C  41 82 00 10 */	beq lbl_802B638C
/* 802B6380 0027F940  2C 04 00 00 */	cmpwi r4, 0
/* 802B6384 0027F944  40 81 00 08 */	ble lbl_802B638C
/* 802B6388 0027F948  48 17 E8 A5 */	bl __dl__FPv
lbl_802B638C:
/* 802B638C 0027F94C  7F E3 FB 78 */	mr r3, r31
/* 802B6390 0027F950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6394 0027F954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6398 0027F958  7C 08 03 A6 */	mtlr r0
/* 802B639C 0027F95C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B63A0 0027F960  4E 80 00 20 */	blr 

.global func_802B63A4
func_802B63A4:
/* 802B63A4 0027F964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B63A8 0027F968  7C 08 02 A6 */	mflr r0
/* 802B63AC 0027F96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B63B0 0027F970  BF C1 00 08 */	stmw r30, 8(r1)
/* 802B63B4 0027F974  3F E0 80 51 */	lis r31, lbl_8050CA50@ha
/* 802B63B8 0027F978  7C 7E 1B 78 */	mr r30, r3
/* 802B63BC 0027F97C  38 BF CA 50 */	addi r5, r31, lbl_8050CA50@l
/* 802B63C0 0027F980  90 83 00 04 */	stw r4, 4(r3)
/* 802B63C4 0027F984  38 63 00 08 */	addi r3, r3, 8
/* 802B63C8 0027F988  4B E8 0A BD */	bl func_80136E84
/* 802B63CC 0027F98C  3B FF CA 50 */	addi r31, r31, lbl_8050CA50@l
/* 802B63D0 0027F990  80 7E 00 08 */	lwz r3, 8(r30)
/* 802B63D4 0027F994  80 BE 00 04 */	lwz r5, 4(r30)
/* 802B63D8 0027F998  38 9E 00 0C */	addi r4, r30, 0xc
/* 802B63DC 0027F99C  38 DF 00 13 */	addi r6, r31, 0x13
/* 802B63E0 0027F9A0  4B E8 0B 29 */	bl func_80136F08
/* 802B63E4 0027F9A4  80 7E 00 08 */	lwz r3, 8(r30)
/* 802B63E8 0027F9A8  38 9E 00 10 */	addi r4, r30, 0x10
/* 802B63EC 0027F9AC  80 BE 00 04 */	lwz r5, 4(r30)
/* 802B63F0 0027F9B0  38 DF 00 29 */	addi r6, r31, 0x29
/* 802B63F4 0027F9B4  4B E8 0B 15 */	bl func_80136F08
/* 802B63F8 0027F9B8  80 7E 00 08 */	lwz r3, 8(r30)
/* 802B63FC 0027F9BC  38 9E 00 14 */	addi r4, r30, 0x14
/* 802B6400 0027F9C0  80 BE 00 04 */	lwz r5, 4(r30)
/* 802B6404 0027F9C4  38 DF 00 41 */	addi r6, r31, 0x41
/* 802B6408 0027F9C8  4B E8 0B 01 */	bl func_80136F08
/* 802B640C 0027F9CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 802B6410 0027F9D0  81 83 00 00 */	lwz r12, 0(r3)
/* 802B6414 0027F9D4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802B6418 0027F9D8  7D 89 03 A6 */	mtctr r12
/* 802B641C 0027F9DC  4E 80 04 21 */	bctrl 
/* 802B6420 0027F9E0  BB C1 00 08 */	lmw r30, 8(r1)
/* 802B6424 0027F9E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6428 0027F9E8  7C 08 03 A6 */	mtlr r0
/* 802B642C 0027F9EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6430 0027F9F0  4E 80 00 20 */	blr 

.global func_802B6434
func_802B6434:
/* 802B6434 0027F9F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6438 0027F9F8  7C 08 02 A6 */	mflr r0
/* 802B643C 0027F9FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6440 0027FA00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6444 0027FA04  7C 7F 1B 78 */	mr r31, r3
/* 802B6448 0027FA08  80 03 00 08 */	lwz r0, 8(r3)
/* 802B644C 0027FA0C  2C 00 00 00 */	cmpwi r0, 0
/* 802B6450 0027FA10  41 82 00 48 */	beq lbl_802B6498
/* 802B6454 0027FA14  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802B6458 0027FA18  2C 00 00 00 */	cmpwi r0, 0
/* 802B645C 0027FA1C  40 82 00 08 */	bne lbl_802B6464
/* 802B6460 0027FA20  48 00 00 38 */	b lbl_802B6498
lbl_802B6464:
/* 802B6464 0027FA24  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 802B6468 0027FA28  3C 80 80 54 */	lis r4, lbl_8053E908@ha
/* 802B646C 0027FA2C  38 84 E9 08 */	addi r4, r4, lbl_8053E908@l
/* 802B6470 0027FA30  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802B6474 0027FA34  7D 84 02 14 */	add r12, r4, r0
/* 802B6478 0027FA38  48 00 38 E5 */	bl __ptmf_scall
/* 802B647C 0027FA3C  60 00 00 00 */	nop 
/* 802B6480 0027FA40  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B6484 0027FA44  38 80 00 00 */	li r4, 0
/* 802B6488 0027FA48  81 83 00 00 */	lwz r12, 0(r3)
/* 802B648C 0027FA4C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802B6490 0027FA50  7D 89 03 A6 */	mtctr r12
/* 802B6494 0027FA54  4E 80 04 21 */	bctrl 
lbl_802B6498:
/* 802B6498 0027FA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B649C 0027FA5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B64A0 0027FA60  7C 08 03 A6 */	mtlr r0
/* 802B64A4 0027FA64  38 21 00 10 */	addi r1, r1, 0x10
/* 802B64A8 0027FA68  4E 80 00 20 */	blr 

.global func_802B64AC
func_802B64AC:
/* 802B64AC 0027FA6C  80 A3 00 08 */	lwz r5, 8(r3)
/* 802B64B0 0027FA70  2C 05 00 00 */	cmpwi r5, 0
/* 802B64B4 0027FA74  4D 82 00 20 */	beqlr 
/* 802B64B8 0027FA78  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802B64BC 0027FA7C  2C 00 00 00 */	cmpwi r0, 0
/* 802B64C0 0027FA80  40 82 00 08 */	bne lbl_802B64C8
/* 802B64C4 0027FA84  4E 80 00 20 */	blr
lbl_802B64C8:
/* 802B64C8 0027FA88  7C A3 2B 78 */	mr r3, r5
/* 802B64CC 0027FA8C  38 A0 00 00 */	li r5, 0
/* 802B64D0 0027FA90  38 C0 00 01 */	li r6, 1
/* 802B64D4 0027FA94  4B E8 0B 64 */	b func_80137038
/* 802B64D8 0027FA98  4E 80 00 20 */	blr 

.global func_802B64DC
func_802B64DC:
/* 802B64DC 0027FA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B64E0 0027FAA0  7C 08 02 A6 */	mflr r0
/* 802B64E4 0027FAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B64E8 0027FAA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B64EC 0027FAAC  7C 7F 1B 78 */	mr r31, r3
/* 802B64F0 0027FAB0  80 03 00 08 */	lwz r0, 8(r3)
/* 802B64F4 0027FAB4  2C 00 00 00 */	cmpwi r0, 0
/* 802B64F8 0027FAB8  41 82 00 28 */	beq lbl_802B6520
/* 802B64FC 0027FABC  41 82 00 1C */	beq lbl_802B6518
/* 802B6500 0027FAC0  7C 03 03 78 */	mr r3, r0
/* 802B6504 0027FAC4  38 80 00 01 */	li r4, 1
/* 802B6508 0027FAC8  81 83 00 00 */	lwz r12, 0(r3)
/* 802B650C 0027FACC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B6510 0027FAD0  7D 89 03 A6 */	mtctr r12
/* 802B6514 0027FAD4  4E 80 04 21 */	bctrl 
lbl_802B6518:
/* 802B6518 0027FAD8  38 00 00 00 */	li r0, 0
/* 802B651C 0027FADC  90 1F 00 08 */	stw r0, 8(r31)
lbl_802B6520:
/* 802B6520 0027FAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6524 0027FAE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6528 0027FAE8  7C 08 03 A6 */	mtlr r0
/* 802B652C 0027FAEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6530 0027FAF0  4E 80 00 20 */	blr 

.global func_802B6534
func_802B6534:
/* 802B6534 0027FAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6538 0027FAF8  7C 08 02 A6 */	mflr r0
/* 802B653C 0027FAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6540 0027FB00  BF C1 00 08 */	stmw r30, 8(r1)
/* 802B6544 0027FB04  7C 7E 1B 78 */	mr r30, r3
/* 802B6548 0027FB08  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 802B654C 0027FB0C  2C 00 00 00 */	cmpwi r0, 0
/* 802B6550 0027FB10  40 82 00 1C */	bne lbl_802B656C
/* 802B6554 0027FB14  3B E0 00 01 */	li r31, 1
/* 802B6558 0027FB18  9B E3 00 1A */	stb r31, 0x1a(r3)
/* 802B655C 0027FB1C  48 00 01 C9 */	bl func_802B6724
/* 802B6560 0027FB20  38 00 00 00 */	li r0, 0
/* 802B6564 0027FB24  9B FE 00 18 */	stb r31, 0x18(r30)
/* 802B6568 0027FB28  98 1E 00 19 */	stb r0, 0x19(r30)
lbl_802B656C:
/* 802B656C 0027FB2C  BB C1 00 08 */	lmw r30, 8(r1)
/* 802B6570 0027FB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6574 0027FB34  7C 08 03 A6 */	mtlr r0
/* 802B6578 0027FB38  38 21 00 10 */	addi r1, r1, 0x10
/* 802B657C 0027FB3C  4E 80 00 20 */	blr 

.global func_802B6580
func_802B6580:
/* 802B6580 0027FB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6584 0027FB44  7C 08 02 A6 */	mflr r0
/* 802B6588 0027FB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B658C 0027FB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6590 0027FB50  7C 7F 1B 78 */	mr r31, r3
/* 802B6594 0027FB54  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 802B6598 0027FB58  28 00 00 02 */	cmplwi r0, 2
/* 802B659C 0027FB5C  40 82 00 18 */	bne lbl_802B65B4
/* 802B65A0 0027FB60  38 00 00 03 */	li r0, 3
/* 802B65A4 0027FB64  98 03 00 1A */	stb r0, 0x1a(r3)
/* 802B65A8 0027FB68  48 00 02 AD */	bl func_802B6854
/* 802B65AC 0027FB6C  38 00 00 00 */	li r0, 0
/* 802B65B0 0027FB70  98 1F 00 19 */	stb r0, 0x19(r31)
lbl_802B65B4:
/* 802B65B4 0027FB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B65B8 0027FB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B65BC 0027FB7C  7C 08 03 A6 */	mtlr r0
/* 802B65C0 0027FB80  38 21 00 10 */	addi r1, r1, 0x10
/* 802B65C4 0027FB84  4E 80 00 20 */	blr 

.global func_802B65C8
func_802B65C8:
/* 802B65C8 0027FB88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B65CC 0027FB8C  7C 08 02 A6 */	mflr r0
/* 802B65D0 0027FB90  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B65D4 0027FB94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B65D8 0027FB98  7C 7F 1B 78 */	mr r31, r3
/* 802B65DC 0027FB9C  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 802B65E0 0027FBA0  28 00 00 01 */	cmplwi r0, 1
/* 802B65E4 0027FBA4  40 82 00 68 */	bne lbl_802B664C
/* 802B65E8 0027FBA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802B65EC 0027FBAC  48 15 23 D5 */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 802B65F0 0027FBB0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802B65F4 0027FBB4  3C 00 43 30 */	lis r0, 0x4330
/* 802B65F8 0027FBB8  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B65FC 0027FBBC  38 80 00 00 */	li r4, 0
/* 802B6600 0027FBC0  C8 42 B4 68 */	lfd f2, lbl_8066B7E8@sda21(r2)
/* 802B6604 0027FBC4  90 01 00 08 */	stw r0, 8(r1)
/* 802B6608 0027FBC8  C0 02 B4 60 */	lfs f0, lbl_8066B7E0@sda21(r2)
/* 802B660C 0027FBCC  C8 21 00 08 */	lfd f1, 8(r1)
/* 802B6610 0027FBD0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802B6614 0027FBD4  EC 21 10 28 */	fsubs f1, f1, f2
/* 802B6618 0027FBD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802B661C 0027FBDC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802B6620 0027FBE0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B6624 0027FBE4  81 83 00 00 */	lwz r12, 0(r3)
/* 802B6628 0027FBE8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802B662C 0027FBEC  7D 89 03 A6 */	mtctr r12
/* 802B6630 0027FBF0  4E 80 04 21 */	bctrl 
/* 802B6634 0027FBF4  38 00 00 02 */	li r0, 2
/* 802B6638 0027FBF8  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 802B663C 0027FBFC  7F E3 FB 78 */	mr r3, r31
/* 802B6640 0027FC00  48 00 01 7D */	bl func_802B67BC
/* 802B6644 0027FC04  38 00 00 01 */	li r0, 1
/* 802B6648 0027FC08  98 1F 00 19 */	stb r0, 0x19(r31)
lbl_802B664C:
/* 802B664C 0027FC0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6650 0027FC10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B6654 0027FC14  7C 08 03 A6 */	mtlr r0
/* 802B6658 0027FC18  38 21 00 20 */	addi r1, r1, 0x20
/* 802B665C 0027FC1C  4E 80 00 20 */	blr 

.global func_802B6660
func_802B6660:
/* 802B6660 0027FC20  4E 80 00 20 */	blr 

.global func_802B6664
func_802B6664:
/* 802B6664 0027FC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6668 0027FC28  7C 08 02 A6 */	mflr r0
/* 802B666C 0027FC2C  C0 22 B4 60 */	lfs f1, lbl_8066B7E0@sda21(r2)
/* 802B6670 0027FC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6674 0027FC34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6678 0027FC38  7C 7F 1B 78 */	mr r31, r3
/* 802B667C 0027FC3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802B6680 0027FC40  4B E8 0D C5 */	bl func_80137444
/* 802B6684 0027FC44  2C 03 00 00 */	cmpwi r3, 0
/* 802B6688 0027FC48  41 82 00 1C */	beq lbl_802B66A4
/* 802B668C 0027FC4C  38 00 00 02 */	li r0, 2
/* 802B6690 0027FC50  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 802B6694 0027FC54  7F E3 FB 78 */	mr r3, r31
/* 802B6698 0027FC58  48 00 01 25 */	bl func_802B67BC
/* 802B669C 0027FC5C  38 00 00 01 */	li r0, 1
/* 802B66A0 0027FC60  98 1F 00 19 */	stb r0, 0x19(r31)
lbl_802B66A4:
/* 802B66A4 0027FC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B66A8 0027FC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B66AC 0027FC6C  7C 08 03 A6 */	mtlr r0
/* 802B66B0 0027FC70  38 21 00 10 */	addi r1, r1, 0x10
/* 802B66B4 0027FC74  4E 80 00 20 */	blr 

.global func_802B66B8
func_802B66B8:
/* 802B66B8 0027FC78  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802B66BC 0027FC7C  C0 22 B4 60 */	lfs f1, lbl_8066B7E0@sda21(r2)
/* 802B66C0 0027FC80  4B E8 0D 84 */	b func_80137444

.global func_802B66C4
func_802B66C4:
/* 802B66C4 0027FC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B66C8 0027FC88  7C 08 02 A6 */	mflr r0
/* 802B66CC 0027FC8C  C0 22 B4 60 */	lfs f1, lbl_8066B7E0@sda21(r2)
/* 802B66D0 0027FC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B66D4 0027FC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B66D8 0027FC98  93 C1 00 08 */	stw r30, 8(r1)
/* 802B66DC 0027FC9C  7C 7E 1B 78 */	mr r30, r3
/* 802B66E0 0027FCA0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802B66E4 0027FCA4  4B E8 0D 61 */	bl func_80137444
/* 802B66E8 0027FCA8  2C 03 00 00 */	cmpwi r3, 0
/* 802B66EC 0027FCAC  41 82 00 20 */	beq lbl_802B670C
/* 802B66F0 0027FCB0  3B E0 00 00 */	li r31, 0
/* 802B66F4 0027FCB4  9B FE 00 1A */	stb r31, 0x1a(r30)
/* 802B66F8 0027FCB8  7F C3 F3 78 */	mr r3, r30
/* 802B66FC 0027FCBC  48 00 00 29 */	bl func_802B6724
/* 802B6700 0027FCC0  38 00 00 01 */	li r0, 1
/* 802B6704 0027FCC4  9B FE 00 18 */	stb r31, 0x18(r30)
/* 802B6708 0027FCC8  98 1E 00 19 */	stb r0, 0x19(r30)
lbl_802B670C:
/* 802B670C 0027FCCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6710 0027FCD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6714 0027FCD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B6718 0027FCD8  7C 08 03 A6 */	mtlr r0
/* 802B671C 0027FCDC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6720 0027FCE0  4E 80 00 20 */	blr 

.global func_802B6724
func_802B6724:
/* 802B6724 0027FCE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6728 0027FCE8  7C 08 02 A6 */	mflr r0
/* 802B672C 0027FCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6730 0027FCF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6734 0027FCF4  7C 7F 1B 78 */	mr r31, r3
/* 802B6738 0027FCF8  80 63 00 08 */	lwz r3, 8(r3)
/* 802B673C 0027FCFC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802B6740 0027FD00  81 83 00 00 */	lwz r12, 0(r3)
/* 802B6744 0027FD04  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802B6748 0027FD08  7D 89 03 A6 */	mtctr r12
/* 802B674C 0027FD0C  4E 80 04 21 */	bctrl 
/* 802B6750 0027FD10  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B6754 0027FD14  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802B6758 0027FD18  81 83 00 00 */	lwz r12, 0(r3)
/* 802B675C 0027FD1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B6760 0027FD20  7D 89 03 A6 */	mtctr r12
/* 802B6764 0027FD24  4E 80 04 21 */	bctrl 
/* 802B6768 0027FD28  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B676C 0027FD2C  38 A0 00 01 */	li r5, 1
/* 802B6770 0027FD30  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802B6774 0027FD34  81 83 00 00 */	lwz r12, 0(r3)
/* 802B6778 0027FD38  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802B677C 0027FD3C  7D 89 03 A6 */	mtctr r12
/* 802B6780 0027FD40  4E 80 04 21 */	bctrl 
/* 802B6784 0027FD44  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802B6788 0027FD48  38 80 00 00 */	li r4, 0
/* 802B678C 0027FD4C  C0 02 B4 70 */	lfs f0, lbl_8066B7F0@sda21(r2)
/* 802B6790 0027FD50  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802B6794 0027FD54  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B6798 0027FD58  81 83 00 00 */	lwz r12, 0(r3)
/* 802B679C 0027FD5C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802B67A0 0027FD60  7D 89 03 A6 */	mtctr r12
/* 802B67A4 0027FD64  4E 80 04 21 */	bctrl 
/* 802B67A8 0027FD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B67AC 0027FD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B67B0 0027FD70  7C 08 03 A6 */	mtlr r0
/* 802B67B4 0027FD74  38 21 00 10 */	addi r1, r1, 0x10
/* 802B67B8 0027FD78  4E 80 00 20 */	blr 

.global func_802B67BC
func_802B67BC:
/* 802B67BC 0027FD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B67C0 0027FD80  7C 08 02 A6 */	mflr r0
/* 802B67C4 0027FD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B67C8 0027FD88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B67CC 0027FD8C  7C 7F 1B 78 */	mr r31, r3
/* 802B67D0 0027FD90  80 63 00 08 */	lwz r3, 8(r3)
/* 802B67D4 0027FD94  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802B67D8 0027FD98  81 83 00 00 */	lwz r12, 0(r3)
/* 802B67DC 0027FD9C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802B67E0 0027FDA0  7D 89 03 A6 */	mtctr r12
/* 802B67E4 0027FDA4  4E 80 04 21 */	bctrl 
/* 802B67E8 0027FDA8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B67EC 0027FDAC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802B67F0 0027FDB0  81 83 00 00 */	lwz r12, 0(r3)
/* 802B67F4 0027FDB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B67F8 0027FDB8  7D 89 03 A6 */	mtctr r12
/* 802B67FC 0027FDBC  4E 80 04 21 */	bctrl 
/* 802B6800 0027FDC0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B6804 0027FDC4  38 A0 00 01 */	li r5, 1
/* 802B6808 0027FDC8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802B680C 0027FDCC  81 83 00 00 */	lwz r12, 0(r3)
/* 802B6810 0027FDD0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802B6814 0027FDD4  7D 89 03 A6 */	mtctr r12
/* 802B6818 0027FDD8  4E 80 04 21 */	bctrl 
/* 802B681C 0027FDDC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802B6820 0027FDE0  38 80 00 00 */	li r4, 0
/* 802B6824 0027FDE4  C0 02 B4 70 */	lfs f0, lbl_8066B7F0@sda21(r2)
/* 802B6828 0027FDE8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802B682C 0027FDEC  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B6830 0027FDF0  81 83 00 00 */	lwz r12, 0(r3)
/* 802B6834 0027FDF4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802B6838 0027FDF8  7D 89 03 A6 */	mtctr r12
/* 802B683C 0027FDFC  4E 80 04 21 */	bctrl 
/* 802B6840 0027FE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6844 0027FE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6848 0027FE08  7C 08 03 A6 */	mtlr r0
/* 802B684C 0027FE0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6850 0027FE10  4E 80 00 20 */	blr 

.global func_802B6854
func_802B6854:
/* 802B6854 0027FE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6858 0027FE18  7C 08 02 A6 */	mflr r0
/* 802B685C 0027FE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6860 0027FE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6864 0027FE24  7C 7F 1B 78 */	mr r31, r3
/* 802B6868 0027FE28  80 63 00 08 */	lwz r3, 8(r3)
/* 802B686C 0027FE2C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802B6870 0027FE30  81 83 00 00 */	lwz r12, 0(r3)
/* 802B6874 0027FE34  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802B6878 0027FE38  7D 89 03 A6 */	mtctr r12
/* 802B687C 0027FE3C  4E 80 04 21 */	bctrl 
/* 802B6880 0027FE40  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B6884 0027FE44  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802B6888 0027FE48  81 83 00 00 */	lwz r12, 0(r3)
/* 802B688C 0027FE4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B6890 0027FE50  7D 89 03 A6 */	mtctr r12
/* 802B6894 0027FE54  4E 80 04 21 */	bctrl 
/* 802B6898 0027FE58  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B689C 0027FE5C  38 A0 00 01 */	li r5, 1
/* 802B68A0 0027FE60  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802B68A4 0027FE64  81 83 00 00 */	lwz r12, 0(r3)
/* 802B68A8 0027FE68  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802B68AC 0027FE6C  7D 89 03 A6 */	mtctr r12
/* 802B68B0 0027FE70  4E 80 04 21 */	bctrl 
/* 802B68B4 0027FE74  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802B68B8 0027FE78  38 80 00 00 */	li r4, 0
/* 802B68BC 0027FE7C  C0 02 B4 70 */	lfs f0, lbl_8066B7F0@sda21(r2)
/* 802B68C0 0027FE80  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802B68C4 0027FE84  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B68C8 0027FE88  81 83 00 00 */	lwz r12, 0(r3)
/* 802B68CC 0027FE8C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802B68D0 0027FE90  7D 89 03 A6 */	mtctr r12
/* 802B68D4 0027FE94  4E 80 04 21 */	bctrl 
/* 802B68D8 0027FE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B68DC 0027FE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B68E0 0027FEA0  7C 08 03 A6 */	mtlr r0
/* 802B68E4 0027FEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B68E8 0027FEA8  4E 80 00 20 */	blr 