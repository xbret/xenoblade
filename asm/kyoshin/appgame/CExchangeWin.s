.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CExchangeWin, global
/* 8022CE70 001F6430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022CE74 001F6434  7C 08 02 A6 */	mflr r0
/* 8022CE78 001F6438  3C 80 80 54 */	lis r4, __vt__CExchangeWin@ha
/* 8022CE7C 001F643C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022CE80 001F6440  38 84 9D F8 */	addi r4, r4, __vt__CExchangeWin@l
/* 8022CE84 001F6444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022CE88 001F6448  7C 7F 1B 78 */	mr r31, r3
/* 8022CE8C 001F644C  90 83 00 00 */	stw r4, 0(r3)
/* 8022CE90 001F6450  38 63 00 04 */	addi r3, r3, 4
/* 8022CE94 001F6454  48 23 26 D1 */	bl __ct__UnkClass_8045F564
/* 8022CE98 001F6458  38 80 00 00 */	li r4, 0
/* 8022CE9C 001F645C  38 00 00 01 */	li r0, 1
/* 8022CEA0 001F6460  90 9F 00 14 */	stw r4, 0x14(r31)
/* 8022CEA4 001F6464  7F E3 FB 78 */	mr r3, r31
/* 8022CEA8 001F6468  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8022CEAC 001F646C  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 8022CEB0 001F6470  90 9F 00 20 */	stw r4, 0x20(r31)
/* 8022CEB4 001F6474  98 9F 00 24 */	stb r4, 0x24(r31)
/* 8022CEB8 001F6478  98 1F 00 25 */	stb r0, 0x25(r31)
/* 8022CEBC 001F647C  98 9F 00 26 */	stb r4, 0x26(r31)
/* 8022CEC0 001F6480  98 1F 00 27 */	stb r0, 0x27(r31)
/* 8022CEC4 001F6484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022CEC8 001F6488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CECC 001F648C  7C 08 03 A6 */	mtlr r0
/* 8022CED0 001F6490  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CED4 001F6494  4E 80 00 20 */	blr 
.endfn __ct__CExchangeWin

.fn __dt__CExchangeWin, global
/* 8022CED8 001F6498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022CEDC 001F649C  7C 08 02 A6 */	mflr r0
/* 8022CEE0 001F64A0  2C 03 00 00 */	cmpwi r3, 0
/* 8022CEE4 001F64A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022CEE8 001F64A8  BF C1 00 08 */	stmw r30, 8(r1)
/* 8022CEEC 001F64AC  7C 7E 1B 78 */	mr r30, r3
/* 8022CEF0 001F64B0  7C 9F 23 78 */	mr r31, r4
/* 8022CEF4 001F64B4  41 82 00 20 */	beq .L_8022CF14
/* 8022CEF8 001F64B8  38 80 FF FF */	li r4, -1
/* 8022CEFC 001F64BC  38 63 00 04 */	addi r3, r3, 4
/* 8022CF00 001F64C0  48 23 26 81 */	bl __dt__UnkClass_8045F564
/* 8022CF04 001F64C4  2C 1F 00 00 */	cmpwi r31, 0
/* 8022CF08 001F64C8  40 81 00 0C */	ble .L_8022CF14
/* 8022CF0C 001F64CC  7F C3 F3 78 */	mr r3, r30
/* 8022CF10 001F64D0  48 20 7D 1D */	bl __dl__FPv
.L_8022CF14:
/* 8022CF14 001F64D4  7F C3 F3 78 */	mr r3, r30
/* 8022CF18 001F64D8  BB C1 00 08 */	lmw r30, 8(r1)
/* 8022CF1C 001F64DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CF20 001F64E0  7C 08 03 A6 */	mtlr r0
/* 8022CF24 001F64E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CF28 001F64E8  4E 80 00 20 */	blr 
.endfn __dt__CExchangeWin

.fn func_8022CF2C, global
/* 8022CF2C 001F64EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022CF30 001F64F0  7C 08 02 A6 */	mflr r0
/* 8022CF34 001F64F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022CF38 001F64F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022CF3C 001F64FC  7C 7F 1B 78 */	mr r31, r3
/* 8022CF40 001F6500  48 20 74 61 */	bl Heap_getRegionIndex2
/* 8022CF44 001F6504  3C 80 80 50 */	lis r4, CExchangeWin_strpool@ha
/* 8022CF48 001F6508  7F E5 FB 78 */	mr r5, r31
/* 8022CF4C 001F650C  38 84 5E 40 */	addi r4, r4, CExchangeWin_strpool@l
/* 8022CF50 001F6510  38 C0 00 00 */	li r6, 0
/* 8022CF54 001F6514  38 E0 00 00 */	li r7, 0
/* 8022CF58 001F6518  48 22 18 3D */	bl CDeviceFile_openFile1
/* 8022CF5C 001F651C  38 00 00 00 */	li r0, 0
/* 8022CF60 001F6520  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8022CF64 001F6524  98 1F 00 25 */	stb r0, 0x25(r31)
/* 8022CF68 001F6528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022CF6C 001F652C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CF70 001F6530  7C 08 03 A6 */	mtlr r0
/* 8022CF74 001F6534  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CF78 001F6538  4E 80 00 20 */	blr 
.endfn func_8022CF2C

.fn func_8022CF7C, global
/* 8022CF7C 001F653C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022CF80 001F6540  7C 08 02 A6 */	mflr r0
/* 8022CF84 001F6544  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022CF88 001F6548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022CF8C 001F654C  7C 7F 1B 78 */	mr r31, r3
/* 8022CF90 001F6550  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8022CF94 001F6554  2C 00 00 00 */	cmpwi r0, 0
/* 8022CF98 001F6558  41 82 00 40 */	beq .L_8022CFD8
/* 8022CF9C 001F655C  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022CFA0 001F6560  2C 00 00 01 */	cmpwi r0, 1
/* 8022CFA4 001F6564  41 82 00 10 */	beq .L_8022CFB4
/* 8022CFA8 001F6568  2C 00 00 03 */	cmpwi r0, 3
/* 8022CFAC 001F656C  41 82 00 10 */	beq .L_8022CFBC
/* 8022CFB0 001F6570  48 00 00 10 */	b .L_8022CFC0
.L_8022CFB4:
/* 8022CFB4 001F6574  48 00 02 45 */	bl func_8022D1F8
/* 8022CFB8 001F6578  48 00 00 08 */	b .L_8022CFC0
.L_8022CFBC:
/* 8022CFBC 001F657C  48 00 02 89 */	bl func_8022D244
.L_8022CFC0:
/* 8022CFC0 001F6580  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CFC4 001F6584  38 80 00 00 */	li r4, 0
/* 8022CFC8 001F6588  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CFCC 001F658C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022CFD0 001F6590  7D 89 03 A6 */	mtctr r12
/* 8022CFD4 001F6594  4E 80 04 21 */	bctrl 
.L_8022CFD8:
/* 8022CFD8 001F6598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CFDC 001F659C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022CFE0 001F65A0  7C 08 03 A6 */	mtlr r0
/* 8022CFE4 001F65A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CFE8 001F65A8  4E 80 00 20 */	blr 
.endfn func_8022CF7C

.fn func_8022CFEC, global
/* 8022CFEC 001F65AC  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8022CFF0 001F65B0  2C 00 00 00 */	cmpwi r0, 0
/* 8022CFF4 001F65B4  4D 82 00 20 */	beqlr 
/* 8022CFF8 001F65B8  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022CFFC 001F65BC  2C 00 00 00 */	cmpwi r0, 0
/* 8022D000 001F65C0  4D 82 00 20 */	beqlr 
/* 8022D004 001F65C4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8022D008 001F65C8  38 A0 00 00 */	li r5, 0
/* 8022D00C 001F65CC  38 C0 00 01 */	li r6, 1
/* 8022D010 001F65D0  4B F0 A0 28 */	b func_80137038
/* 8022D014 001F65D4  4E 80 00 20 */	blr 
.endfn func_8022CFEC

.fn func_8022D018, global
/* 8022D018 001F65D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022D01C 001F65DC  7C 08 02 A6 */	mflr r0
/* 8022D020 001F65E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022D024 001F65E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022D028 001F65E8  7C 7F 1B 78 */	mr r31, r3
/* 8022D02C 001F65EC  38 63 00 14 */	addi r3, r3, 0x14
/* 8022D030 001F65F0  4B F0 C0 B1 */	bl func_801390E0
/* 8022D034 001F65F4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D038 001F65F8  38 00 00 00 */	li r0, 0
/* 8022D03C 001F65FC  98 1F 00 24 */	stb r0, 0x24(r31)
/* 8022D040 001F6600  2C 03 00 00 */	cmpwi r3, 0
/* 8022D044 001F6604  41 82 00 24 */	beq .L_8022D068
/* 8022D048 001F6608  41 82 00 18 */	beq .L_8022D060
/* 8022D04C 001F660C  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D050 001F6610  38 80 00 01 */	li r4, 1
/* 8022D054 001F6614  81 8C 00 08 */	lwz r12, 8(r12)
/* 8022D058 001F6618  7D 89 03 A6 */	mtctr r12
/* 8022D05C 001F661C  4E 80 04 21 */	bctrl 
.L_8022D060:
/* 8022D060 001F6620  38 00 00 00 */	li r0, 0
/* 8022D064 001F6624  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_8022D068:
/* 8022D068 001F6628  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8022D06C 001F662C  4B F0 C0 B9 */	bl func_80139124
/* 8022D070 001F6630  38 7F 00 04 */	addi r3, r31, 4
/* 8022D074 001F6634  48 23 27 05 */	bl func_8045F778
/* 8022D078 001F6638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022D07C 001F663C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022D080 001F6640  7C 08 03 A6 */	mtlr r0
/* 8022D084 001F6644  38 21 00 10 */	addi r1, r1, 0x10
/* 8022D088 001F6648  4E 80 00 20 */	blr 
.endfn func_8022D018

.fn func_8022D08C, global
/* 8022D08C 001F664C  88 63 00 25 */	lbz r3, 0x25(r3)
/* 8022D090 001F6650  4E 80 00 20 */	blr 
.endfn func_8022D08C

.fn func_8022D094, global
/* 8022D094 001F6654  88 63 00 24 */	lbz r3, 0x24(r3)
/* 8022D098 001F6658  4E 80 00 20 */	blr 
.endfn func_8022D094

.fn func_8022D09C, global
/* 8022D09C 001F665C  88 63 00 27 */	lbz r3, 0x27(r3)
/* 8022D0A0 001F6660  4E 80 00 20 */	blr 
.endfn func_8022D09C

.fn func_8022D0A4, global
/* 8022D0A4 001F6664  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022D0A8 001F6668  2C 00 00 00 */	cmpwi r0, 0
/* 8022D0AC 001F666C  4C 82 00 20 */	bnelr 
/* 8022D0B0 001F6670  38 80 00 01 */	li r4, 1
/* 8022D0B4 001F6674  38 00 00 00 */	li r0, 0
/* 8022D0B8 001F6678  98 83 00 26 */	stb r4, 0x26(r3)
/* 8022D0BC 001F667C  98 03 00 27 */	stb r0, 0x27(r3)
/* 8022D0C0 001F6680  98 83 00 24 */	stb r4, 0x24(r3)
/* 8022D0C4 001F6684  38 60 00 0D */	li r3, 0xd
/* 8022D0C8 001F6688  4B F0 AF B0 */	b func_80138078
/* 8022D0CC 001F668C  4E 80 00 20 */	blr 
.endfn func_8022D0A4

.fn func_8022D0D0, global
/* 8022D0D0 001F6690  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022D0D4 001F6694  28 00 00 02 */	cmplwi r0, 2
/* 8022D0D8 001F6698  4C 82 00 20 */	bnelr 
/* 8022D0DC 001F669C  38 80 00 03 */	li r4, 3
/* 8022D0E0 001F66A0  38 00 00 00 */	li r0, 0
/* 8022D0E4 001F66A4  98 83 00 26 */	stb r4, 0x26(r3)
/* 8022D0E8 001F66A8  98 03 00 27 */	stb r0, 0x27(r3)
/* 8022D0EC 001F66AC  38 60 00 0E */	li r3, 0xe
/* 8022D0F0 001F66B0  4B F0 AF 88 */	b func_80138078
/* 8022D0F4 001F66B4  4E 80 00 20 */	blr 
.endfn func_8022D0D0

.fn func_8022D0F8, global
/* 8022D0F8 001F66B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022D0FC 001F66BC  7C 08 02 A6 */	mflr r0
/* 8022D100 001F66C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022D104 001F66C4  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 8022D108 001F66C8  3F E0 80 50 */	lis r31, CExchangeWin_strpool@ha
/* 8022D10C 001F66CC  7C 7C 1B 78 */	mr r28, r3
/* 8022D110 001F66D0  7C 9D 23 78 */	mr r29, r4
/* 8022D114 001F66D4  3B FF 5E 40 */	addi r31, r31, CExchangeWin_strpool@l
/* 8022D118 001F66D8  38 61 00 08 */	addi r3, r1, 8
/* 8022D11C 001F66DC  38 9F 00 16 */	addi r4, r31, 0x16
/* 8022D120 001F66E0  4C C6 31 82 */	crclr 6
/* 8022D124 001F66E4  38 A5 00 01 */	addi r5, r5, 1
/* 8022D128 001F66E8  48 09 3F 11 */	bl sprintf
/* 8022D12C 001F66EC  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8022D130 001F66F0  38 81 00 08 */	addi r4, r1, 8
/* 8022D134 001F66F4  38 A0 00 01 */	li r5, 1
/* 8022D138 001F66F8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8022D13C 001F66FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D140 001F6700  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022D144 001F6704  7D 89 03 A6 */	mtctr r12
/* 8022D148 001F6708  4E 80 04 21 */	bctrl 
/* 8022D14C 001F670C  80 DD 00 1C */	lwz r6, 0x1c(r29)
/* 8022D150 001F6710  7C 7E 1B 78 */	mr r30, r3
/* 8022D154 001F6714  38 9F 00 23 */	addi r4, r31, 0x23
/* 8022D158 001F6718  38 A0 00 01 */	li r5, 1
/* 8022D15C 001F671C  80 66 00 10 */	lwz r3, 0x10(r6)
/* 8022D160 001F6720  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D164 001F6724  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022D168 001F6728  7D 89 03 A6 */	mtctr r12
/* 8022D16C 001F672C  4E 80 04 21 */	bctrl 
/* 8022D170 001F6730  80 DD 00 1C */	lwz r6, 0x1c(r29)
/* 8022D174 001F6734  7C 65 1B 78 */	mr r5, r3
/* 8022D178 001F6738  7F 83 E3 78 */	mr r3, r28
/* 8022D17C 001F673C  7F C4 F3 78 */	mr r4, r30
/* 8022D180 001F6740  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8022D184 001F6744  4B F0 A7 A1 */	bl func_80137924
/* 8022D188 001F6748  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 8022D18C 001F674C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022D190 001F6750  7C 08 03 A6 */	mtlr r0
/* 8022D194 001F6754  38 21 00 40 */	addi r1, r1, 0x40
/* 8022D198 001F6758  4E 80 00 20 */	blr 
.endfn func_8022D0F8

.fn func_8022D19C, global
/* 8022D19C 001F675C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022D1A0 001F6760  7C 08 02 A6 */	mflr r0
/* 8022D1A4 001F6764  38 C0 00 00 */	li r6, 0
/* 8022D1A8 001F6768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022D1AC 001F676C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8022D1B0 001F6770  3F E0 80 50 */	lis r31, CExchangeWin_strpool@ha
/* 8022D1B4 001F6774  7C 7D 1B 78 */	mr r29, r3
/* 8022D1B8 001F6778  7C BE 2B 78 */	mr r30, r5
/* 8022D1BC 001F677C  3B FF 5E 40 */	addi r31, r31, CExchangeWin_strpool@l
/* 8022D1C0 001F6780  7C 85 23 78 */	mr r5, r4
/* 8022D1C4 001F6784  38 9F 00 32 */	addi r4, r31, 0x32
/* 8022D1C8 001F6788  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8022D1CC 001F678C  4B F0 99 81 */	bl func_80136B4C
/* 8022D1D0 001F6790  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8022D1D4 001F6794  7F C5 F3 78 */	mr r5, r30
/* 8022D1D8 001F6798  38 9F 00 3F */	addi r4, r31, 0x3f
/* 8022D1DC 001F679C  38 C0 00 00 */	li r6, 0
/* 8022D1E0 001F67A0  4B F0 99 6D */	bl func_80136B4C
/* 8022D1E4 001F67A4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8022D1E8 001F67A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022D1EC 001F67AC  7C 08 03 A6 */	mtlr r0
/* 8022D1F0 001F67B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8022D1F4 001F67B4  4E 80 00 20 */	blr 
.endfn func_8022D19C

.fn func_8022D1F8, global
/* 8022D1F8 001F67B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022D1FC 001F67BC  7C 08 02 A6 */	mflr r0
/* 8022D200 001F67C0  C0 22 AB 50 */	lfs f1, float_8066AED0@sda21(r2)
/* 8022D204 001F67C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022D208 001F67C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022D20C 001F67CC  7C 7F 1B 78 */	mr r31, r3
/* 8022D210 001F67D0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8022D214 001F67D4  4B F0 A2 31 */	bl func_80137444
/* 8022D218 001F67D8  2C 03 00 00 */	cmpwi r3, 0
/* 8022D21C 001F67DC  41 82 00 14 */	beq .L_8022D230
/* 8022D220 001F67E0  38 60 00 02 */	li r3, 2
/* 8022D224 001F67E4  38 00 00 01 */	li r0, 1
/* 8022D228 001F67E8  98 7F 00 26 */	stb r3, 0x26(r31)
/* 8022D22C 001F67EC  98 1F 00 27 */	stb r0, 0x27(r31)
.L_8022D230:
/* 8022D230 001F67F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022D234 001F67F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022D238 001F67F8  7C 08 03 A6 */	mtlr r0
/* 8022D23C 001F67FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8022D240 001F6800  4E 80 00 20 */	blr 
.endfn func_8022D1F8

.fn func_8022D244, global
/* 8022D244 001F6804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022D248 001F6808  7C 08 02 A6 */	mflr r0
/* 8022D24C 001F680C  C0 22 AB 50 */	lfs f1, float_8066AED0@sda21(r2)
/* 8022D250 001F6810  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022D254 001F6814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022D258 001F6818  7C 7F 1B 78 */	mr r31, r3
/* 8022D25C 001F681C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8022D260 001F6820  4B F0 A2 B1 */	bl func_80137510
/* 8022D264 001F6824  2C 03 00 00 */	cmpwi r3, 0
/* 8022D268 001F6828  41 82 00 18 */	beq .L_8022D280
/* 8022D26C 001F682C  38 60 00 00 */	li r3, 0
/* 8022D270 001F6830  38 00 00 01 */	li r0, 1
/* 8022D274 001F6834  98 7F 00 26 */	stb r3, 0x26(r31)
/* 8022D278 001F6838  98 1F 00 27 */	stb r0, 0x27(r31)
/* 8022D27C 001F683C  98 7F 00 24 */	stb r3, 0x24(r31)
.L_8022D280:
/* 8022D280 001F6840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022D284 001F6844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022D288 001F6848  7C 08 03 A6 */	mtlr r0
/* 8022D28C 001F684C  38 21 00 10 */	addi r1, r1, 0x10
/* 8022D290 001F6850  4E 80 00 20 */	blr 
.endfn func_8022D244

.fn CExchangeWin_OnFileEvent, global
/* 8022D294 001F6854  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022D298 001F6858  7C 08 02 A6 */	mflr r0
/* 8022D29C 001F685C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022D2A0 001F6860  39 61 00 40 */	addi r11, r1, 0x40
/* 8022D2A4 001F6864  48 08 CE B9 */	bl _savegpr_29
/* 8022D2A8 001F6868  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8022D2AC 001F686C  7C 7F 1B 78 */	mr r31, r3
/* 8022D2B0 001F6870  80 04 00 04 */	lwz r0, 4(r4)
/* 8022D2B4 001F6874  7C 05 00 40 */	cmplw r5, r0
/* 8022D2B8 001F6878  40 82 02 98 */	bne .L_8022D550
/* 8022D2BC 001F687C  48 20 70 E5 */	bl Heap_getRegionIndex2
/* 8022D2C0 001F6880  3F C0 80 50 */	lis r30, CExchangeWin_strpool@ha
/* 8022D2C4 001F6884  3C A0 00 01 */	lis r5, 1
/* 8022D2C8 001F6888  3B DE 5E 40 */	addi r30, r30, CExchangeWin_strpool@l
/* 8022D2CC 001F688C  7C 64 1B 78 */	mr r4, r3
/* 8022D2D0 001F6890  38 7F 00 04 */	addi r3, r31, 4
/* 8022D2D4 001F6894  38 A5 80 00 */	addi r5, r5, -0x8000
/* 8022D2D8 001F6898  38 DE 00 4C */	addi r6, r30, 0x4c
/* 8022D2DC 001F689C  38 E0 00 00 */	li r7, 0
/* 8022D2E0 001F68A0  48 23 23 A1 */	bl func_8045F680
/* 8022D2E4 001F68A4  38 61 00 08 */	addi r3, r1, 8
/* 8022D2E8 001F68A8  38 9F 00 04 */	addi r4, r31, 4
/* 8022D2EC 001F68AC  48 23 25 6D */	bl func_8045F858
/* 8022D2F0 001F68B0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8022D2F4 001F68B4  38 00 00 00 */	li r0, 0
/* 8022D2F8 001F68B8  38 60 00 00 */	li r3, 0
/* 8022D2FC 001F68BC  83 A4 00 04 */	lwz r29, 4(r4)
/* 8022D300 001F68C0  90 04 00 04 */	stw r0, 4(r4)
/* 8022D304 001F68C4  48 20 77 49 */	bl func_80434A4C
/* 8022D308 001F68C8  48 23 1E AD */	bl CLibLayout_getArcResourceAccessorInstance
/* 8022D30C 001F68CC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8022D310 001F68D0  7F A4 EB 78 */	mr r4, r29
/* 8022D314 001F68D4  38 BE 00 59 */	addi r5, r30, 0x59
/* 8022D318 001F68D8  48 1D CB F1 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 8022D31C 001F68DC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8022D320 001F68E0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8022D324 001F68E4  38 BE 00 5D */	addi r5, r30, 0x5d
/* 8022D328 001F68E8  4B F0 9B 5D */	bl func_80136E84
/* 8022D32C 001F68EC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D330 001F68F0  38 9F 00 20 */	addi r4, r31, 0x20
/* 8022D334 001F68F4  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8022D338 001F68F8  38 DE 00 76 */	addi r6, r30, 0x76
/* 8022D33C 001F68FC  4B F0 9B CD */	bl func_80136F08
/* 8022D340 001F6900  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8022D344 001F6904  38 60 00 01 */	li r3, 1
/* 8022D348 001F6908  83 A4 00 10 */	lwz r29, 0x10(r4)
/* 8022D34C 001F690C  48 22 58 C5 */	bl func_80452C10
/* 8022D350 001F6910  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D354 001F6914  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8022D358 001F6918  7D 89 03 A6 */	mtctr r12
/* 8022D35C 001F691C  4E 80 04 21 */	bctrl 
/* 8022D360 001F6920  7C 64 1B 78 */	mr r4, r3
/* 8022D364 001F6924  7F A3 EB 78 */	mr r3, r29
/* 8022D368 001F6928  4B F0 94 05 */	bl func_8013676C
/* 8022D36C 001F692C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D370 001F6930  38 A0 00 01 */	li r5, 1
/* 8022D374 001F6934  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8022D378 001F6938  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D37C 001F693C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022D380 001F6940  7D 89 03 A6 */	mtctr r12
/* 8022D384 001F6944  4E 80 04 21 */	bctrl 
/* 8022D388 001F6948  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D38C 001F694C  38 80 00 00 */	li r4, 0
/* 8022D390 001F6950  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D394 001F6954  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022D398 001F6958  7D 89 03 A6 */	mtctr r12
/* 8022D39C 001F695C  4E 80 04 21 */	bctrl 
/* 8022D3A0 001F6960  38 7E 00 92 */	addi r3, r30, 0x92
/* 8022D3A4 001F6964  38 9E 00 9B */	addi r4, r30, 0x9b
/* 8022D3A8 001F6968  38 A0 00 24 */	li r5, 0x24
/* 8022D3AC 001F696C  4B F0 8D E5 */	bl func_80136190
/* 8022D3B0 001F6970  7C 65 1B 78 */	mr r5, r3
/* 8022D3B4 001F6974  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D3B8 001F6978  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 8022D3BC 001F697C  38 C0 00 00 */	li r6, 0
/* 8022D3C0 001F6980  4B F0 97 8D */	bl func_80136B4C
/* 8022D3C4 001F6984  38 7E 00 92 */	addi r3, r30, 0x92
/* 8022D3C8 001F6988  38 9E 00 9B */	addi r4, r30, 0x9b
/* 8022D3CC 001F698C  38 A0 00 25 */	li r5, 0x25
/* 8022D3D0 001F6990  4B F0 8D C1 */	bl func_80136190
/* 8022D3D4 001F6994  7C 65 1B 78 */	mr r5, r3
/* 8022D3D8 001F6998  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D3DC 001F699C  38 9E 00 AD */	addi r4, r30, 0xad
/* 8022D3E0 001F69A0  38 C0 00 00 */	li r6, 0
/* 8022D3E4 001F69A4  4B F0 97 69 */	bl func_80136B4C
/* 8022D3E8 001F69A8  38 7E 00 92 */	addi r3, r30, 0x92
/* 8022D3EC 001F69AC  38 9E 00 9B */	addi r4, r30, 0x9b
/* 8022D3F0 001F69B0  38 A0 00 26 */	li r5, 0x26
/* 8022D3F4 001F69B4  4B F0 8D 9D */	bl func_80136190
/* 8022D3F8 001F69B8  7C 65 1B 78 */	mr r5, r3
/* 8022D3FC 001F69BC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D400 001F69C0  38 9E 00 B8 */	addi r4, r30, 0xb8
/* 8022D404 001F69C4  38 C0 00 00 */	li r6, 0
/* 8022D408 001F69C8  4B F0 97 45 */	bl func_80136B4C
/* 8022D40C 001F69CC  38 7E 00 C3 */	addi r3, r30, 0xc3
/* 8022D410 001F69D0  38 9E 00 D1 */	addi r4, r30, 0xd1
/* 8022D414 001F69D4  38 A0 00 2B */	li r5, 0x2b
/* 8022D418 001F69D8  4B F0 8D 79 */	bl func_80136190
/* 8022D41C 001F69DC  7C 65 1B 78 */	mr r5, r3
/* 8022D420 001F69E0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D424 001F69E4  38 9E 00 D6 */	addi r4, r30, 0xd6
/* 8022D428 001F69E8  38 C0 00 00 */	li r6, 0
/* 8022D42C 001F69EC  4B F0 97 21 */	bl func_80136B4C
/* 8022D430 001F69F0  38 60 FF FF */	li r3, -1
/* 8022D434 001F69F4  4B E5 9B 69 */	bl func_80086F9C
/* 8022D438 001F69F8  2C 03 00 00 */	cmpwi r3, 0
/* 8022D43C 001F69FC  38 9E 00 EB */	addi r4, r30, 0xeb
/* 8022D440 001F6A00  41 82 00 08 */	beq .L_8022D448
/* 8022D444 001F6A04  38 9E 00 E2 */	addi r4, r30, 0xe2
.L_8022D448:
/* 8022D448 001F6A08  3F C0 80 50 */	lis r30, CExchangeWin_strpool@ha
/* 8022D44C 001F6A0C  38 A0 00 2B */	li r5, 0x2b
/* 8022D450 001F6A10  3B DE 5E 40 */	addi r30, r30, CExchangeWin_strpool@l
/* 8022D454 001F6A14  38 7E 00 C3 */	addi r3, r30, 0xc3
/* 8022D458 001F6A18  4B F0 8C 15 */	bl func_8013606C
/* 8022D45C 001F6A1C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022D460 001F6A20  4B F0 BB 19 */	bl func_80138F78
/* 8022D464 001F6A24  7C 7D 1B 78 */	mr r29, r3
/* 8022D468 001F6A28  4B F0 81 8D */	bl func_801355F4
/* 8022D46C 001F6A2C  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D470 001F6A30  3C 80 74 69 */	lis r4, 0x74696D67@ha
/* 8022D474 001F6A34  7F A5 EB 78 */	mr r5, r29
/* 8022D478 001F6A38  38 C0 00 00 */	li r6, 0
/* 8022D47C 001F6A3C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8022D480 001F6A40  38 84 6D 67 */	addi r4, r4, 0x74696D67@l
/* 8022D484 001F6A44  7D 89 03 A6 */	mtctr r12
/* 8022D488 001F6A48  4E 80 04 21 */	bctrl 
/* 8022D48C 001F6A4C  2C 03 00 00 */	cmpwi r3, 0
/* 8022D490 001F6A50  7C 7D 1B 78 */	mr r29, r3
/* 8022D494 001F6A54  41 82 00 84 */	beq .L_8022D518
/* 8022D498 001F6A58  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D49C 001F6A5C  7F A5 EB 78 */	mr r5, r29
/* 8022D4A0 001F6A60  38 9E 00 F4 */	addi r4, r30, 0xf4
/* 8022D4A4 001F6A64  4B F0 A9 D9 */	bl func_80137E7C
/* 8022D4A8 001F6A68  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022D4AC 001F6A6C  38 9E 00 F4 */	addi r4, r30, 0xf4
/* 8022D4B0 001F6A70  80 DD 00 08 */	lwz r6, 8(r29)
/* 8022D4B4 001F6A74  38 A0 00 01 */	li r5, 1
/* 8022D4B8 001F6A78  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8022D4BC 001F6A7C  80 C6 00 00 */	lwz r6, 0(r6)
/* 8022D4C0 001F6A80  81 83 00 00 */	lwz r12, 0(r3)
/* 8022D4C4 001F6A84  A3 A6 00 02 */	lhz r29, 2(r6)
/* 8022D4C8 001F6A88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022D4CC 001F6A8C  A3 C6 00 00 */	lhz r30, 0(r6)
/* 8022D4D0 001F6A90  7D 89 03 A6 */	mtctr r12
/* 8022D4D4 001F6A94  4E 80 04 21 */	bctrl 
/* 8022D4D8 001F6A98  2C 03 00 00 */	cmpwi r3, 0
/* 8022D4DC 001F6A9C  41 82 00 3C */	beq .L_8022D518
/* 8022D4E0 001F6AA0  3C 00 43 30 */	lis r0, 0x4330
/* 8022D4E4 001F6AA4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8022D4E8 001F6AA8  C8 42 AB 58 */	lfd f2, double_8066AED8@sda21(r2)
/* 8022D4EC 001F6AAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022D4F0 001F6AB0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022D4F4 001F6AB4  93 C1 00 24 */	stw r30, 0x24(r1)
/* 8022D4F8 001F6AB8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8022D4FC 001F6ABC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8022D500 001F6AC0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8022D504 001F6AC4  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 8022D508 001F6AC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022D50C 001F6ACC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8022D510 001F6AD0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022D514 001F6AD4  D0 03 00 50 */	stfs f0, 0x50(r3)
.L_8022D518:
/* 8022D518 001F6AD8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8022D51C 001F6ADC  2C 00 00 00 */	cmpwi r0, 0
/* 8022D520 001F6AE0  41 82 00 0C */	beq .L_8022D52C
/* 8022D524 001F6AE4  38 00 00 01 */	li r0, 1
/* 8022D528 001F6AE8  98 1F 00 25 */	stb r0, 0x25(r31)
.L_8022D52C:
/* 8022D52C 001F6AEC  38 00 00 00 */	li r0, 0
/* 8022D530 001F6AF0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8022D534 001F6AF4  38 7F 00 04 */	addi r3, r31, 4
/* 8022D538 001F6AF8  48 23 22 D9 */	bl func_8045F810
/* 8022D53C 001F6AFC  38 61 00 08 */	addi r3, r1, 8
/* 8022D540 001F6B00  38 80 FF FF */	li r4, -1
/* 8022D544 001F6B04  48 23 23 85 */	bl __dt__8045F8C8
/* 8022D548 001F6B08  38 60 00 01 */	li r3, 1
/* 8022D54C 001F6B0C  48 00 00 08 */	b .L_8022D554
.L_8022D550:
/* 8022D550 001F6B10  38 60 00 00 */	li r3, 0
.L_8022D554:
/* 8022D554 001F6B14  39 61 00 40 */	addi r11, r1, 0x40
/* 8022D558 001F6B18  48 08 CC 51 */	bl _restgpr_29
/* 8022D55C 001F6B1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022D560 001F6B20  7C 08 03 A6 */	mtlr r0
/* 8022D564 001F6B24  38 21 00 40 */	addi r1, r1, 0x40
/* 8022D568 001F6B28  4E 80 00 20 */	blr 
.endfn CExchangeWin_OnFileEvent

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CExchangeWin_typestr, global
	.asciz "CExchangeWin"
	.balign 4
.endobj CExchangeWin_typestr


.obj CExchangeWin_strpool, global
	.asciz "/menu/ExchangeWin.arc"
	.asciz "txt_slct%02d"
	.asciz "nul_proportion"
	.asciz "txt_sysmes00"
	.asciz "txt_sysmes01"
	.asciz "CExchangeWin"
	.asciz "arc"
	.asciz "mf70_cf60_syswin06.brlyt"
	.asciz "mf70_cf60_syswin06_in.brlan"
	.asciz "MNU_shop"
	.asciz "name"
	.asciz "txt_sysmes02"
	.asciz "txt_slct01"
	.asciz "txt_slct02"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.balign 4
.endobj CExchangeWin_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CExchangeWin, global
	.4byte __RTTI__CExchangeWin
	.4byte 0
	.4byte __dt__CExchangeWin
	.4byte IWorkEvent_WorkEvent1
	.4byte CExchangeWin_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
.endobj __vt__CExchangeWin

.obj CExchangeWin_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CExchangeWin_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CExchangeWin, global
	.4byte CExchangeWin_typestr
	.4byte CExchangeWin_hierarchy
.endobj __RTTI__CExchangeWin

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066AED0, global
	.float 1.0
	.4byte 0
.endobj float_8066AED0


.obj double_8066AED8, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_8066AED8


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800156E8", local
.hidden "@etb_800156E8"
	.4byte 0x08080000
	.4byte 0x00000028
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_800156E8"

.obj "@etb_80015704", local
.hidden "@etb_80015704"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80015704"

.obj "@etb_8001570C", local
.hidden "@etb_8001570C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001570C"

.obj "@etb_80015714", local
.hidden "@etb_80015714"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015714"

.obj "@etb_8001571C", local
.hidden "@etb_8001571C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001571C"

.obj "@etb_80015724", local
.hidden "@etb_80015724"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80015724"

.obj "@etb_8001572C", local
.hidden "@etb_8001572C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001572C"

.obj "@etb_80015734", local
.hidden "@etb_80015734"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80015734"

.obj "@etb_8001573C", local
.hidden "@etb_8001573C"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001573C"

.obj "@etb_80015744", local
.hidden "@etb_80015744"
	.4byte 0x180A0000
	.4byte 0x00000074
	.4byte 0x008D0010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_80015744"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002E604", local
.hidden "@eti_8002E604"
	.4byte __ct__CExchangeWin
	.4byte 0x00000068
	.4byte "@etb_800156E8"
.endobj "@eti_8002E604"

.obj "@eti_8002E610", local
.hidden "@eti_8002E610"
	.4byte __dt__CExchangeWin
	.4byte 0x00000054
	.4byte "@etb_80015704"
.endobj "@eti_8002E610"

.obj "@eti_8002E61C", local
.hidden "@eti_8002E61C"
	.4byte func_8022CF2C
	.4byte 0x00000050
	.4byte "@etb_8001570C"
.endobj "@eti_8002E61C"

.obj "@eti_8002E628", local
.hidden "@eti_8002E628"
	.4byte func_8022CF7C
	.4byte 0x00000070
	.4byte "@etb_80015714"
.endobj "@eti_8002E628"

.obj "@eti_8002E634", local
.hidden "@eti_8002E634"
	.4byte func_8022D018
	.4byte 0x00000074
	.4byte "@etb_8001571C"
.endobj "@eti_8002E634"

.obj "@eti_8002E640", local
.hidden "@eti_8002E640"
	.4byte func_8022D0F8
	.4byte 0x000000A4
	.4byte "@etb_80015724"
.endobj "@eti_8002E640"

.obj "@eti_8002E64C", local
.hidden "@eti_8002E64C"
	.4byte func_8022D19C
	.4byte 0x0000005C
	.4byte "@etb_8001572C"
.endobj "@eti_8002E64C"

.obj "@eti_8002E658", local
.hidden "@eti_8002E658"
	.4byte func_8022D1F8
	.4byte 0x0000004C
	.4byte "@etb_80015734"
.endobj "@eti_8002E658"

.obj "@eti_8002E664", local
.hidden "@eti_8002E664"
	.4byte func_8022D244
	.4byte 0x00000050
	.4byte "@etb_8001573C"
.endobj "@eti_8002E664"

.obj "@eti_8002E670", local
.hidden "@eti_8002E670"
	.4byte CExchangeWin_OnFileEvent
	.4byte 0x000002D8
	.4byte "@etb_80015744"
.endobj "@eti_8002E670"
