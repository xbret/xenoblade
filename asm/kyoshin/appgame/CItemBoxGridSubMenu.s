.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80207F40
func_80207F40:
/* 80207F40 001D1500  3C A0 80 54 */	lis r5, __vt__CItemBoxGridSubMenu@ha
/* 80207F44 001D1504  38 80 00 00 */	li r4, 0
/* 80207F48 001D1508  38 A5 8F 08 */	addi r5, r5, __vt__CItemBoxGridSubMenu@l
/* 80207F4C 001D150C  38 00 00 01 */	li r0, 1
/* 80207F50 001D1510  90 A3 00 00 */	stw r5, 0(r3)
/* 80207F54 001D1514  90 83 00 04 */	stw r4, 4(r3)
/* 80207F58 001D1518  90 83 00 08 */	stw r4, 8(r3)
/* 80207F5C 001D151C  90 83 00 0C */	stw r4, 0xc(r3)
/* 80207F60 001D1520  90 83 00 10 */	stw r4, 0x10(r3)
/* 80207F64 001D1524  90 83 00 14 */	stw r4, 0x14(r3)
/* 80207F68 001D1528  90 83 00 18 */	stw r4, 0x18(r3)
/* 80207F6C 001D152C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 80207F70 001D1530  98 83 00 20 */	stb r4, 0x20(r3)
/* 80207F74 001D1534  98 03 00 21 */	stb r0, 0x21(r3)
/* 80207F78 001D1538  98 83 00 22 */	stb r4, 0x22(r3)
/* 80207F7C 001D153C  98 83 00 23 */	stb r4, 0x23(r3)
/* 80207F80 001D1540  98 83 00 24 */	stb r4, 0x24(r3)
/* 80207F84 001D1544  4E 80 00 20 */	blr 

.global func_80207F88
func_80207F88:
/* 80207F88 001D1548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80207F8C 001D154C  7C 08 02 A6 */	mflr r0
/* 80207F90 001D1550  2C 03 00 00 */	cmpwi r3, 0
/* 80207F94 001D1554  90 01 00 14 */	stw r0, 0x14(r1)
/* 80207F98 001D1558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80207F9C 001D155C  7C 7F 1B 78 */	mr r31, r3
/* 80207FA0 001D1560  41 82 00 10 */	beq lbl_80207FB0
/* 80207FA4 001D1564  2C 04 00 00 */	cmpwi r4, 0
/* 80207FA8 001D1568  40 81 00 08 */	ble lbl_80207FB0
/* 80207FAC 001D156C  48 22 CC 81 */	bl __dl__FPv
lbl_80207FB0:
/* 80207FB0 001D1570  7F E3 FB 78 */	mr r3, r31
/* 80207FB4 001D1574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80207FB8 001D1578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80207FBC 001D157C  7C 08 03 A6 */	mtlr r0
/* 80207FC0 001D1580  38 21 00 10 */	addi r1, r1, 0x10
/* 80207FC4 001D1584  4E 80 00 20 */	blr 

.global func_80207FC8
func_80207FC8:
/* 80207FC8 001D1588  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80207FCC 001D158C  7C 08 02 A6 */	mflr r0
/* 80207FD0 001D1590  90 01 00 34 */	stw r0, 0x34(r1)
/* 80207FD4 001D1594  39 61 00 30 */	addi r11, r1, 0x30
/* 80207FD8 001D1598  48 0B 21 85 */	bl _savegpr_29
/* 80207FDC 001D159C  3F E0 80 50 */	lis r31, lbl_80503BDC@ha
/* 80207FE0 001D15A0  90 83 00 04 */	stw r4, 4(r3)
/* 80207FE4 001D15A4  7C 7D 1B 78 */	mr r29, r3
/* 80207FE8 001D15A8  38 63 00 08 */	addi r3, r3, 8
/* 80207FEC 001D15AC  38 BF 3B DC */	addi r5, r31, lbl_80503BDC@l
/* 80207FF0 001D15B0  4B F2 EE 95 */	bl func_80136E84
/* 80207FF4 001D15B4  3B FF 3B DC */	addi r31, r31, lbl_80503BDC@l
/* 80207FF8 001D15B8  80 7D 00 08 */	lwz r3, 8(r29)
/* 80207FFC 001D15BC  80 BD 00 04 */	lwz r5, 4(r29)
/* 80208000 001D15C0  38 9D 00 0C */	addi r4, r29, 0xc
/* 80208004 001D15C4  38 DF 00 19 */	addi r6, r31, 0x19
/* 80208008 001D15C8  4B F2 EF 01 */	bl func_80136F08
/* 8020800C 001D15CC  80 9D 00 08 */	lwz r4, 8(r29)
/* 80208010 001D15D0  38 60 00 01 */	li r3, 1
/* 80208014 001D15D4  83 C4 00 10 */	lwz r30, 0x10(r4)
/* 80208018 001D15D8  48 24 AB F9 */	bl func_80452C10
/* 8020801C 001D15DC  81 83 00 00 */	lwz r12, 0(r3)
/* 80208020 001D15E0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80208024 001D15E4  7D 89 03 A6 */	mtctr r12
/* 80208028 001D15E8  4E 80 04 21 */	bctrl 
/* 8020802C 001D15EC  7C 64 1B 78 */	mr r4, r3
/* 80208030 001D15F0  7F C3 F3 78 */	mr r3, r30
/* 80208034 001D15F4  4B F2 E7 39 */	bl func_8013676C
/* 80208038 001D15F8  4B F2 D5 69 */	bl func_801355A0
/* 8020803C 001D15FC  7C 65 1B 78 */	mr r5, r3
/* 80208040 001D1600  80 7D 00 08 */	lwz r3, 8(r29)
/* 80208044 001D1604  38 9F 00 35 */	addi r4, r31, 0x35
/* 80208048 001D1608  4B F2 E8 79 */	bl func_801368C0
/* 8020804C 001D160C  80 7D 00 08 */	lwz r3, 8(r29)
/* 80208050 001D1610  38 A0 00 01 */	li r5, 1
/* 80208054 001D1614  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 80208058 001D1618  81 83 00 00 */	lwz r12, 0(r3)
/* 8020805C 001D161C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80208060 001D1620  7D 89 03 A6 */	mtctr r12
/* 80208064 001D1624  4E 80 04 21 */	bctrl 
/* 80208068 001D1628  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020806C 001D162C  38 80 00 00 */	li r4, 0
/* 80208070 001D1630  81 83 00 00 */	lwz r12, 0(r3)
/* 80208074 001D1634  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80208078 001D1638  7D 89 03 A6 */	mtctr r12
/* 8020807C 001D163C  4E 80 04 21 */	bctrl 
/* 80208080 001D1640  80 7D 00 08 */	lwz r3, 8(r29)
/* 80208084 001D1644  38 9F 00 3F */	addi r4, r31, 0x3f
/* 80208088 001D1648  38 A0 00 01 */	li r5, 1
/* 8020808C 001D164C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80208090 001D1650  81 83 00 00 */	lwz r12, 0(r3)
/* 80208094 001D1654  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80208098 001D1658  7D 89 03 A6 */	mtctr r12
/* 8020809C 001D165C  4E 80 04 21 */	bctrl 
/* 802080A0 001D1660  90 7D 00 10 */	stw r3, 0x10(r29)
/* 802080A4 001D1664  38 9F 00 4E */	addi r4, r31, 0x4e
/* 802080A8 001D1668  80 7D 00 08 */	lwz r3, 8(r29)
/* 802080AC 001D166C  38 A0 00 01 */	li r5, 1
/* 802080B0 001D1670  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802080B4 001D1674  81 83 00 00 */	lwz r12, 0(r3)
/* 802080B8 001D1678  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802080BC 001D167C  7D 89 03 A6 */	mtctr r12
/* 802080C0 001D1680  4E 80 04 21 */	bctrl 
/* 802080C4 001D1684  90 7D 00 14 */	stw r3, 0x14(r29)
/* 802080C8 001D1688  38 9F 00 59 */	addi r4, r31, 0x59
/* 802080CC 001D168C  80 7D 00 08 */	lwz r3, 8(r29)
/* 802080D0 001D1690  38 A0 00 01 */	li r5, 1
/* 802080D4 001D1694  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802080D8 001D1698  81 83 00 00 */	lwz r12, 0(r3)
/* 802080DC 001D169C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802080E0 001D16A0  7D 89 03 A6 */	mtctr r12
/* 802080E4 001D16A4  4E 80 04 21 */	bctrl 
/* 802080E8 001D16A8  90 7D 00 18 */	stw r3, 0x18(r29)
/* 802080EC 001D16AC  38 9F 00 64 */	addi r4, r31, 0x64
/* 802080F0 001D16B0  80 7D 00 08 */	lwz r3, 8(r29)
/* 802080F4 001D16B4  38 A0 00 01 */	li r5, 1
/* 802080F8 001D16B8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802080FC 001D16BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80208100 001D16C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80208104 001D16C4  7D 89 03 A6 */	mtctr r12
/* 80208108 001D16C8  4E 80 04 21 */	bctrl 
/* 8020810C 001D16CC  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 80208110 001D16D0  38 9F 00 6F */	addi r4, r31, 0x6f
/* 80208114 001D16D4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80208118 001D16D8  38 A0 00 01 */	li r5, 1
/* 8020811C 001D16DC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80208120 001D16E0  81 83 00 00 */	lwz r12, 0(r3)
/* 80208124 001D16E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80208128 001D16E8  7D 89 03 A6 */	mtctr r12
/* 8020812C 001D16EC  4E 80 04 21 */	bctrl 
/* 80208130 001D16F0  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 80208134 001D16F4  38 9F 00 86 */	addi r4, r31, 0x86
/* 80208138 001D16F8  38 A0 00 2B */	li r5, 0x2b
/* 8020813C 001D16FC  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80208140 001D1700  98 03 00 BB */	stb r0, 0xbb(r3)
/* 80208144 001D1704  38 7F 00 78 */	addi r3, r31, 0x78
/* 80208148 001D1708  4B F2 E0 49 */	bl func_80136190
/* 8020814C 001D170C  7C 65 1B 78 */	mr r5, r3
/* 80208150 001D1710  80 7D 00 08 */	lwz r3, 8(r29)
/* 80208154 001D1714  38 9F 00 8B */	addi r4, r31, 0x8b
/* 80208158 001D1718  38 C0 00 00 */	li r6, 0
/* 8020815C 001D171C  4B F2 E9 F1 */	bl func_80136B4C
/* 80208160 001D1720  38 60 FF FF */	li r3, -1
/* 80208164 001D1724  4B E7 EE 39 */	bl func_80086F9C
/* 80208168 001D1728  2C 03 00 00 */	cmpwi r3, 0
/* 8020816C 001D172C  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 80208170 001D1730  41 82 00 08 */	beq lbl_80208178
/* 80208174 001D1734  38 9F 00 97 */	addi r4, r31, 0x97
lbl_80208178:
/* 80208178 001D1738  3F E0 80 50 */	lis r31, lbl_80503BDC@ha
/* 8020817C 001D173C  38 A0 00 2B */	li r5, 0x2b
/* 80208180 001D1740  3B FF 3B DC */	addi r31, r31, lbl_80503BDC@l
/* 80208184 001D1744  38 7F 00 78 */	addi r3, r31, 0x78
/* 80208188 001D1748  4B F2 DE E5 */	bl func_8013606C
/* 8020818C 001D174C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80208190 001D1750  4B F3 0D E9 */	bl func_80138F78
/* 80208194 001D1754  7C 7E 1B 78 */	mr r30, r3
/* 80208198 001D1758  4B F2 D4 5D */	bl func_801355F4
/* 8020819C 001D175C  81 83 00 00 */	lwz r12, 0(r3)
/* 802081A0 001D1760  3C 80 74 69 */	lis r4, 0x74696D67@ha
/* 802081A4 001D1764  7F C5 F3 78 */	mr r5, r30
/* 802081A8 001D1768  38 C0 00 00 */	li r6, 0
/* 802081AC 001D176C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802081B0 001D1770  38 84 6D 67 */	addi r4, r4, 0x74696D67@l
/* 802081B4 001D1774  7D 89 03 A6 */	mtctr r12
/* 802081B8 001D1778  4E 80 04 21 */	bctrl 
/* 802081BC 001D177C  2C 03 00 00 */	cmpwi r3, 0
/* 802081C0 001D1780  7C 7E 1B 78 */	mr r30, r3
/* 802081C4 001D1784  41 82 00 84 */	beq lbl_80208248
/* 802081C8 001D1788  80 7D 00 08 */	lwz r3, 8(r29)
/* 802081CC 001D178C  7F C5 F3 78 */	mr r5, r30
/* 802081D0 001D1790  38 9F 00 A9 */	addi r4, r31, 0xa9
/* 802081D4 001D1794  4B F2 FC A9 */	bl func_80137E7C
/* 802081D8 001D1798  80 7D 00 08 */	lwz r3, 8(r29)
/* 802081DC 001D179C  38 9F 00 A9 */	addi r4, r31, 0xa9
/* 802081E0 001D17A0  80 DE 00 08 */	lwz r6, 8(r30)
/* 802081E4 001D17A4  38 A0 00 01 */	li r5, 1
/* 802081E8 001D17A8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802081EC 001D17AC  80 C6 00 00 */	lwz r6, 0(r6)
/* 802081F0 001D17B0  81 83 00 00 */	lwz r12, 0(r3)
/* 802081F4 001D17B4  A3 C6 00 02 */	lhz r30, 2(r6)
/* 802081F8 001D17B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802081FC 001D17BC  A3 E6 00 00 */	lhz r31, 0(r6)
/* 80208200 001D17C0  7D 89 03 A6 */	mtctr r12
/* 80208204 001D17C4  4E 80 04 21 */	bctrl 
/* 80208208 001D17C8  2C 03 00 00 */	cmpwi r3, 0
/* 8020820C 001D17CC  41 82 00 3C */	beq lbl_80208248
/* 80208210 001D17D0  3C 00 43 30 */	lis r0, 0x4330
/* 80208214 001D17D4  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80208218 001D17D8  C8 42 A8 38 */	lfd f2, lbl_8066ABB8@sda21(r2)
/* 8020821C 001D17DC  38 81 00 08 */	addi r4, r1, 8
/* 80208220 001D17E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80208224 001D17E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80208228 001D17E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020822C 001D17EC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80208230 001D17F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80208234 001D17F4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80208238 001D17F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8020823C 001D17FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80208240 001D1800  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80208244 001D1804  4B F1 C0 45 */	bl func_80124288
lbl_80208248:
/* 80208248 001D1808  39 61 00 30 */	addi r11, r1, 0x30
/* 8020824C 001D180C  48 0B 1F 5D */	bl _restgpr_29
/* 80208250 001D1810  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80208254 001D1814  7C 08 03 A6 */	mtlr r0
/* 80208258 001D1818  38 21 00 30 */	addi r1, r1, 0x30
/* 8020825C 001D181C  4E 80 00 20 */	blr 

.global func_80208260
func_80208260:
/* 80208260 001D1820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208264 001D1824  7C 08 02 A6 */	mflr r0
/* 80208268 001D1828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020826C 001D182C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208270 001D1830  7C 7F 1B 78 */	mr r31, r3
/* 80208274 001D1834  88 03 00 20 */	lbz r0, 0x20(r3)
/* 80208278 001D1838  2C 00 00 00 */	cmpwi r0, 0
/* 8020827C 001D183C  41 82 00 40 */	beq lbl_802082BC
/* 80208280 001D1840  88 03 00 22 */	lbz r0, 0x22(r3)
/* 80208284 001D1844  2C 00 00 01 */	cmpwi r0, 1
/* 80208288 001D1848  41 82 00 10 */	beq lbl_80208298
/* 8020828C 001D184C  2C 00 00 03 */	cmpwi r0, 3
/* 80208290 001D1850  41 82 00 10 */	beq lbl_802082A0
/* 80208294 001D1854  48 00 00 10 */	b lbl_802082A4
lbl_80208298:
/* 80208298 001D1858  48 00 05 AD */	bl func_80208844
/* 8020829C 001D185C  48 00 00 08 */	b lbl_802082A4
lbl_802082A0:
/* 802082A0 001D1860  48 00 05 F1 */	bl func_80208890
lbl_802082A4:
/* 802082A4 001D1864  80 7F 00 08 */	lwz r3, 8(r31)
/* 802082A8 001D1868  38 80 00 00 */	li r4, 0
/* 802082AC 001D186C  81 83 00 00 */	lwz r12, 0(r3)
/* 802082B0 001D1870  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802082B4 001D1874  7D 89 03 A6 */	mtctr r12
/* 802082B8 001D1878  4E 80 04 21 */	bctrl 
lbl_802082BC:
/* 802082BC 001D187C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802082C0 001D1880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802082C4 001D1884  7C 08 03 A6 */	mtlr r0
/* 802082C8 001D1888  38 21 00 10 */	addi r1, r1, 0x10
/* 802082CC 001D188C  4E 80 00 20 */	blr 

.global func_802082D0
func_802082D0:
/* 802082D0 001D1890  88 03 00 20 */	lbz r0, 0x20(r3)
/* 802082D4 001D1894  2C 00 00 00 */	cmpwi r0, 0
/* 802082D8 001D1898  4D 82 00 20 */	beqlr 
/* 802082DC 001D189C  80 63 00 08 */	lwz r3, 8(r3)
/* 802082E0 001D18A0  38 A0 00 00 */	li r5, 0
/* 802082E4 001D18A4  38 C0 00 01 */	li r6, 1
/* 802082E8 001D18A8  4B F2 ED 50 */	b func_80137038
/* 802082EC 001D18AC  4E 80 00 20 */	blr 

.global func_802082F0
func_802082F0:
/* 802082F0 001D18B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802082F4 001D18B4  7C 08 02 A6 */	mflr r0
/* 802082F8 001D18B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802082FC 001D18BC  38 00 00 00 */	li r0, 0
/* 80208300 001D18C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208304 001D18C4  7C 7F 1B 78 */	mr r31, r3
/* 80208308 001D18C8  80 83 00 08 */	lwz r4, 8(r3)
/* 8020830C 001D18CC  98 03 00 20 */	stb r0, 0x20(r3)
/* 80208310 001D18D0  2C 04 00 00 */	cmpwi r4, 0
/* 80208314 001D18D4  41 82 00 28 */	beq lbl_8020833C
/* 80208318 001D18D8  41 82 00 1C */	beq lbl_80208334
/* 8020831C 001D18DC  7C 83 23 78 */	mr r3, r4
/* 80208320 001D18E0  38 80 00 01 */	li r4, 1
/* 80208324 001D18E4  81 83 00 00 */	lwz r12, 0(r3)
/* 80208328 001D18E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020832C 001D18EC  7D 89 03 A6 */	mtctr r12
/* 80208330 001D18F0  4E 80 04 21 */	bctrl 
lbl_80208334:
/* 80208334 001D18F4  38 00 00 00 */	li r0, 0
/* 80208338 001D18F8  90 1F 00 08 */	stw r0, 8(r31)
lbl_8020833C:
/* 8020833C 001D18FC  38 00 00 00 */	li r0, 0
/* 80208340 001D1900  90 1F 00 04 */	stw r0, 4(r31)
/* 80208344 001D1904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208348 001D1908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020834C 001D190C  7C 08 03 A6 */	mtlr r0
/* 80208350 001D1910  38 21 00 10 */	addi r1, r1, 0x10
/* 80208354 001D1914  4E 80 00 20 */	blr 

.global func_80208358
func_80208358:
/* 80208358 001D1918  88 63 00 20 */	lbz r3, 0x20(r3)
/* 8020835C 001D191C  4E 80 00 20 */	blr 

.global func_80208360
func_80208360:
/* 80208360 001D1920  88 63 00 21 */	lbz r3, 0x21(r3)
/* 80208364 001D1924  4E 80 00 20 */	blr 

.global func_80208368
func_80208368:
/* 80208368 001D1928  88 03 00 22 */	lbz r0, 0x22(r3)
/* 8020836C 001D192C  2C 00 00 00 */	cmpwi r0, 0
/* 80208370 001D1930  4C 82 00 20 */	bnelr 
/* 80208374 001D1934  88 03 00 23 */	lbz r0, 0x23(r3)
/* 80208378 001D1938  2C 00 00 00 */	cmpwi r0, 0
/* 8020837C 001D193C  4D 82 00 20 */	beqlr 
/* 80208380 001D1940  38 80 00 01 */	li r4, 1
/* 80208384 001D1944  38 00 00 00 */	li r0, 0
/* 80208388 001D1948  98 83 00 22 */	stb r4, 0x22(r3)
/* 8020838C 001D194C  98 03 00 21 */	stb r0, 0x21(r3)
/* 80208390 001D1950  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208394 001D1954  98 83 00 20 */	stb r4, 0x20(r3)
/* 80208398 001D1958  38 60 00 0D */	li r3, 0xd
/* 8020839C 001D195C  4B F2 FC DC */	b func_80138078
/* 802083A0 001D1960  4E 80 00 20 */	blr 

.global func_802083A4
func_802083A4:
/* 802083A4 001D1964  88 03 00 22 */	lbz r0, 0x22(r3)
/* 802083A8 001D1968  28 00 00 02 */	cmplwi r0, 2
/* 802083AC 001D196C  4C 82 00 20 */	bnelr 
/* 802083B0 001D1970  38 80 00 03 */	li r4, 3
/* 802083B4 001D1974  38 00 00 00 */	li r0, 0
/* 802083B8 001D1978  98 83 00 22 */	stb r4, 0x22(r3)
/* 802083BC 001D197C  98 03 00 21 */	stb r0, 0x21(r3)
/* 802083C0 001D1980  38 60 00 0E */	li r3, 0xe
/* 802083C4 001D1984  4B F2 FC B4 */	b func_80138078
/* 802083C8 001D1988  4E 80 00 20 */	blr 

.global func_802083CC
func_802083CC:
/* 802083CC 001D198C  88 03 00 22 */	lbz r0, 0x22(r3)
/* 802083D0 001D1990  28 00 00 02 */	cmplwi r0, 2
/* 802083D4 001D1994  4C 82 00 20 */	bnelr 
/* 802083D8 001D1998  88 03 00 23 */	lbz r0, 0x23(r3)
/* 802083DC 001D199C  2C 00 00 01 */	cmpwi r0, 1
/* 802083E0 001D19A0  41 82 00 18 */	beq lbl_802083F8
/* 802083E4 001D19A4  2C 00 00 02 */	cmpwi r0, 2
/* 802083E8 001D19A8  41 82 00 1C */	beq lbl_80208404
/* 802083EC 001D19AC  2C 00 00 03 */	cmpwi r0, 3
/* 802083F0 001D19B0  41 82 00 38 */	beq lbl_80208428
/* 802083F4 001D19B4  4E 80 00 20 */	blr
lbl_802083F8:
/* 802083F8 001D19B8  38 00 00 00 */	li r0, 0
/* 802083FC 001D19BC  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208400 001D19C0  4E 80 00 20 */	blr
lbl_80208404:
/* 80208404 001D19C4  88 83 00 24 */	lbz r4, 0x24(r3)
/* 80208408 001D19C8  38 04 FF FF */	addi r0, r4, -1
/* 8020840C 001D19CC  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208410 001D19D0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80208414 001D19D4  7C 00 07 75 */	extsb. r0, r0
/* 80208418 001D19D8  4C 80 00 20 */	bgelr 
/* 8020841C 001D19DC  38 00 00 01 */	li r0, 1
/* 80208420 001D19E0  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208424 001D19E4  4E 80 00 20 */	blr
lbl_80208428:
/* 80208428 001D19E8  88 83 00 24 */	lbz r4, 0x24(r3)
/* 8020842C 001D19EC  38 04 FF FF */	addi r0, r4, -1
/* 80208430 001D19F0  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208434 001D19F4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80208438 001D19F8  7C 00 07 75 */	extsb. r0, r0
/* 8020843C 001D19FC  4C 80 00 20 */	bgelr 
/* 80208440 001D1A00  38 00 00 02 */	li r0, 2
/* 80208444 001D1A04  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208448 001D1A08  4E 80 00 20 */	blr 

.global func_8020844C
func_8020844C:
/* 8020844C 001D1A0C  88 03 00 22 */	lbz r0, 0x22(r3)
/* 80208450 001D1A10  28 00 00 02 */	cmplwi r0, 2
/* 80208454 001D1A14  4C 82 00 20 */	bnelr 
/* 80208458 001D1A18  88 03 00 23 */	lbz r0, 0x23(r3)
/* 8020845C 001D1A1C  2C 00 00 01 */	cmpwi r0, 1
/* 80208460 001D1A20  41 82 00 18 */	beq lbl_80208478
/* 80208464 001D1A24  2C 00 00 02 */	cmpwi r0, 2
/* 80208468 001D1A28  41 82 00 1C */	beq lbl_80208484
/* 8020846C 001D1A2C  2C 00 00 03 */	cmpwi r0, 3
/* 80208470 001D1A30  41 82 00 3C */	beq lbl_802084AC
/* 80208474 001D1A34  4E 80 00 20 */	blr
lbl_80208478:
/* 80208478 001D1A38  38 00 00 00 */	li r0, 0
/* 8020847C 001D1A3C  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208480 001D1A40  4E 80 00 20 */	blr
lbl_80208484:
/* 80208484 001D1A44  88 83 00 24 */	lbz r4, 0x24(r3)
/* 80208488 001D1A48  38 04 00 01 */	addi r0, r4, 1
/* 8020848C 001D1A4C  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208490 001D1A50  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80208494 001D1A54  7C 00 07 74 */	extsb r0, r0
/* 80208498 001D1A58  2C 00 00 01 */	cmpwi r0, 1
/* 8020849C 001D1A5C  4C 81 00 20 */	blelr 
/* 802084A0 001D1A60  38 00 00 00 */	li r0, 0
/* 802084A4 001D1A64  98 03 00 24 */	stb r0, 0x24(r3)
/* 802084A8 001D1A68  4E 80 00 20 */	blr
lbl_802084AC:
/* 802084AC 001D1A6C  88 83 00 24 */	lbz r4, 0x24(r3)
/* 802084B0 001D1A70  38 04 00 01 */	addi r0, r4, 1
/* 802084B4 001D1A74  98 03 00 24 */	stb r0, 0x24(r3)
/* 802084B8 001D1A78  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802084BC 001D1A7C  7C 00 07 74 */	extsb r0, r0
/* 802084C0 001D1A80  2C 00 00 02 */	cmpwi r0, 2
/* 802084C4 001D1A84  4C 81 00 20 */	blelr 
/* 802084C8 001D1A88  38 00 00 00 */	li r0, 0
/* 802084CC 001D1A8C  98 03 00 24 */	stb r0, 0x24(r3)
/* 802084D0 001D1A90  4E 80 00 20 */	blr 

.global func_802084D4
func_802084D4:
/* 802084D4 001D1A94  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802084D8 001D1A98  7C 08 02 A6 */	mflr r0
/* 802084DC 001D1A9C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802084E0 001D1AA0  39 61 00 60 */	addi r11, r1, 0x60
/* 802084E4 001D1AA4  48 0B 1C 79 */	bl _savegpr_29
/* 802084E8 001D1AA8  88 03 00 22 */	lbz r0, 0x22(r3)
/* 802084EC 001D1AAC  38 A0 00 00 */	li r5, 0
/* 802084F0 001D1AB0  98 A3 00 23 */	stb r5, 0x23(r3)
/* 802084F4 001D1AB4  7C 7D 1B 78 */	mr r29, r3
/* 802084F8 001D1AB8  2C 00 00 00 */	cmpwi r0, 0
/* 802084FC 001D1ABC  7C 9E 23 78 */	mr r30, r4
/* 80208500 001D1AC0  40 82 02 48 */	bne lbl_80208748
/* 80208504 001D1AC4  3F E0 80 50 */	lis r31, lbl_80503BDC@ha
/* 80208508 001D1AC8  38 00 00 01 */	li r0, 1
/* 8020850C 001D1ACC  98 03 00 23 */	stb r0, 0x23(r3)
/* 80208510 001D1AD0  3B FF 3B DC */	addi r31, r31, lbl_80503BDC@l
/* 80208514 001D1AD4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80208518 001D1AD8  38 9F 00 B3 */	addi r4, r31, 0xb3
/* 8020851C 001D1ADC  38 A0 00 00 */	li r5, 0
/* 80208520 001D1AE0  4B F2 E8 55 */	bl func_80136D74
/* 80208524 001D1AE4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80208528 001D1AE8  38 9F 00 B3 */	addi r4, r31, 0xb3
/* 8020852C 001D1AEC  38 A0 00 00 */	li r5, 0
/* 80208530 001D1AF0  4B F2 E8 45 */	bl func_80136D74
/* 80208534 001D1AF4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80208538 001D1AF8  38 9F 00 B3 */	addi r4, r31, 0xb3
/* 8020853C 001D1AFC  38 A0 00 00 */	li r5, 0
/* 80208540 001D1B00  4B F2 E8 35 */	bl func_80136D74
/* 80208544 001D1B04  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80208548 001D1B08  41 82 00 10 */	beq lbl_80208558
/* 8020854C 001D1B0C  2C 1E 00 0D */	cmpwi r30, 0xd
/* 80208550 001D1B10  41 82 00 54 */	beq lbl_802085A4
/* 80208554 001D1B14  48 00 00 9C */	b lbl_802085F0
lbl_80208558:
/* 80208558 001D1B18  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8020855C 001D1B1C  38 9F 00 BD */	addi r4, r31, 0xbd
/* 80208560 001D1B20  38 A0 00 41 */	li r5, 0x41
/* 80208564 001D1B24  4B F2 DC 2D */	bl func_80136190
/* 80208568 001D1B28  7C 64 1B 78 */	mr r4, r3
/* 8020856C 001D1B2C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80208570 001D1B30  38 A0 00 00 */	li r5, 0
/* 80208574 001D1B34  4B F2 E8 01 */	bl func_80136D74
/* 80208578 001D1B38  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8020857C 001D1B3C  38 9F 00 BD */	addi r4, r31, 0xbd
/* 80208580 001D1B40  38 A0 00 43 */	li r5, 0x43
/* 80208584 001D1B44  4B F2 DC 0D */	bl func_80136190
/* 80208588 001D1B48  7C 64 1B 78 */	mr r4, r3
/* 8020858C 001D1B4C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80208590 001D1B50  38 A0 00 00 */	li r5, 0
/* 80208594 001D1B54  4B F2 E7 E1 */	bl func_80136D74
/* 80208598 001D1B58  38 00 00 02 */	li r0, 2
/* 8020859C 001D1B5C  98 1D 00 23 */	stb r0, 0x23(r29)
/* 802085A0 001D1B60  48 00 00 70 */	b lbl_80208610
lbl_802085A4:
/* 802085A4 001D1B64  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 802085A8 001D1B68  38 9F 00 BD */	addi r4, r31, 0xbd
/* 802085AC 001D1B6C  38 A0 00 40 */	li r5, 0x40
/* 802085B0 001D1B70  4B F2 DB E1 */	bl func_80136190
/* 802085B4 001D1B74  7C 64 1B 78 */	mr r4, r3
/* 802085B8 001D1B78  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 802085BC 001D1B7C  38 A0 00 00 */	li r5, 0
/* 802085C0 001D1B80  4B F2 E7 B5 */	bl func_80136D74
/* 802085C4 001D1B84  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 802085C8 001D1B88  38 9F 00 BD */	addi r4, r31, 0xbd
/* 802085CC 001D1B8C  38 A0 00 43 */	li r5, 0x43
/* 802085D0 001D1B90  4B F2 DB C1 */	bl func_80136190
/* 802085D4 001D1B94  7C 64 1B 78 */	mr r4, r3
/* 802085D8 001D1B98  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 802085DC 001D1B9C  38 A0 00 00 */	li r5, 0
/* 802085E0 001D1BA0  4B F2 E7 95 */	bl func_80136D74
/* 802085E4 001D1BA4  38 00 00 02 */	li r0, 2
/* 802085E8 001D1BA8  98 1D 00 23 */	stb r0, 0x23(r29)
/* 802085EC 001D1BAC  48 00 00 24 */	b lbl_80208610
lbl_802085F0:
/* 802085F0 001D1BB0  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 802085F4 001D1BB4  38 9F 00 BD */	addi r4, r31, 0xbd
/* 802085F8 001D1BB8  38 A0 00 43 */	li r5, 0x43
/* 802085FC 001D1BBC  4B F2 DB 95 */	bl func_80136190
/* 80208600 001D1BC0  7C 64 1B 78 */	mr r4, r3
/* 80208604 001D1BC4  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80208608 001D1BC8  38 A0 00 00 */	li r5, 0
/* 8020860C 001D1BCC  4B F2 E7 69 */	bl func_80136D74
lbl_80208610:
/* 80208610 001D1BD0  80 7D 00 08 */	lwz r3, 8(r29)
/* 80208614 001D1BD4  3F E0 80 50 */	lis r31, lbl_80503BDC@ha
/* 80208618 001D1BD8  3B FF 3B DC */	addi r31, r31, lbl_80503BDC@l
/* 8020861C 001D1BDC  38 A0 00 01 */	li r5, 1
/* 80208620 001D1BE0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80208624 001D1BE4  38 9F 00 C2 */	addi r4, r31, 0xc2
/* 80208628 001D1BE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020862C 001D1BEC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80208630 001D1BF0  7D 89 03 A6 */	mtctr r12
/* 80208634 001D1BF4  4E 80 04 21 */	bctrl 
/* 80208638 001D1BF8  80 DD 00 08 */	lwz r6, 8(r29)
/* 8020863C 001D1BFC  7C 7E 1B 78 */	mr r30, r3
/* 80208640 001D1C00  38 9F 00 CB */	addi r4, r31, 0xcb
/* 80208644 001D1C04  38 A0 00 01 */	li r5, 1
/* 80208648 001D1C08  80 66 00 10 */	lwz r3, 0x10(r6)
/* 8020864C 001D1C0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80208650 001D1C10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80208654 001D1C14  7D 89 03 A6 */	mtctr r12
/* 80208658 001D1C18  4E 80 04 21 */	bctrl 
/* 8020865C 001D1C1C  88 1D 00 23 */	lbz r0, 0x23(r29)
/* 80208660 001D1C20  7C 7F 1B 78 */	mr r31, r3
/* 80208664 001D1C24  2C 00 00 01 */	cmpwi r0, 1
/* 80208668 001D1C28  41 82 00 18 */	beq lbl_80208680
/* 8020866C 001D1C2C  2C 00 00 02 */	cmpwi r0, 2
/* 80208670 001D1C30  41 82 00 54 */	beq lbl_802086C4
/* 80208674 001D1C34  2C 00 00 03 */	cmpwi r0, 3
/* 80208678 001D1C38  41 82 00 90 */	beq lbl_80208708
/* 8020867C 001D1C3C  48 00 00 CC */	b lbl_80208748
lbl_80208680:
/* 80208680 001D1C40  38 61 00 18 */	addi r3, r1, 0x18
/* 80208684 001D1C44  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80208688 001D1C48  4B F1 F5 3D */	bl func_80127BC4
/* 8020868C 001D1C4C  C0 02 A8 40 */	lfs f0, lbl_8066ABC0@sda21(r2)
/* 80208690 001D1C50  7F C3 F3 78 */	mr r3, r30
/* 80208694 001D1C54  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80208698 001D1C58  38 81 00 18 */	addi r4, r1, 0x18
/* 8020869C 001D1C5C  4B F1 BB ED */	bl func_80124288
/* 802086A0 001D1C60  C0 22 A8 44 */	lfs f1, lbl_8066ABC4@sda21(r2)
/* 802086A4 001D1C64  38 61 00 38 */	addi r3, r1, 0x38
/* 802086A8 001D1C68  C0 42 A8 48 */	lfs f2, lbl_8066ABC8@sda21(r2)
/* 802086AC 001D1C6C  FC 60 08 90 */	fmr f3, f1
/* 802086B0 001D1C70  4B F2 F0 79 */	bl func_80137728
/* 802086B4 001D1C74  7C 64 1B 78 */	mr r4, r3
/* 802086B8 001D1C78  7F E3 FB 78 */	mr r3, r31
/* 802086BC 001D1C7C  4B FC 9A 95 */	bl func_801D2150
/* 802086C0 001D1C80  48 00 00 88 */	b lbl_80208748
lbl_802086C4:
/* 802086C4 001D1C84  38 61 00 10 */	addi r3, r1, 0x10
/* 802086C8 001D1C88  38 9E 00 4C */	addi r4, r30, 0x4c
/* 802086CC 001D1C8C  4B F1 F4 F9 */	bl func_80127BC4
/* 802086D0 001D1C90  C0 02 A8 4C */	lfs f0, lbl_8066ABCC@sda21(r2)
/* 802086D4 001D1C94  7F C3 F3 78 */	mr r3, r30
/* 802086D8 001D1C98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802086DC 001D1C9C  38 81 00 10 */	addi r4, r1, 0x10
/* 802086E0 001D1CA0  4B F1 BB A9 */	bl func_80124288
/* 802086E4 001D1CA4  C0 22 A8 44 */	lfs f1, lbl_8066ABC4@sda21(r2)
/* 802086E8 001D1CA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 802086EC 001D1CAC  C0 42 A8 50 */	lfs f2, lbl_8066ABD0@sda21(r2)
/* 802086F0 001D1CB0  FC 60 08 90 */	fmr f3, f1
/* 802086F4 001D1CB4  4B F2 F0 35 */	bl func_80137728
/* 802086F8 001D1CB8  7C 64 1B 78 */	mr r4, r3
/* 802086FC 001D1CBC  7F E3 FB 78 */	mr r3, r31
/* 80208700 001D1CC0  4B FC 9A 51 */	bl func_801D2150
/* 80208704 001D1CC4  48 00 00 44 */	b lbl_80208748
lbl_80208708:
/* 80208708 001D1CC8  38 61 00 08 */	addi r3, r1, 8
/* 8020870C 001D1CCC  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80208710 001D1CD0  4B F1 F4 B5 */	bl func_80127BC4
/* 80208714 001D1CD4  C0 02 A8 54 */	lfs f0, lbl_8066ABD4@sda21(r2)
/* 80208718 001D1CD8  7F C3 F3 78 */	mr r3, r30
/* 8020871C 001D1CDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80208720 001D1CE0  38 81 00 08 */	addi r4, r1, 8
/* 80208724 001D1CE4  4B F1 BB 65 */	bl func_80124288
/* 80208728 001D1CE8  C0 22 A8 44 */	lfs f1, lbl_8066ABC4@sda21(r2)
/* 8020872C 001D1CEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80208730 001D1CF0  C0 42 A8 58 */	lfs f2, lbl_8066ABD8@sda21(r2)
/* 80208734 001D1CF4  FC 60 08 90 */	fmr f3, f1
/* 80208738 001D1CF8  4B F2 EF F1 */	bl func_80137728
/* 8020873C 001D1CFC  7C 64 1B 78 */	mr r4, r3
/* 80208740 001D1D00  7F E3 FB 78 */	mr r3, r31
/* 80208744 001D1D04  4B FC 9A 0D */	bl func_801D2150
lbl_80208748:
/* 80208748 001D1D08  39 61 00 60 */	addi r11, r1, 0x60
/* 8020874C 001D1D0C  48 0B 1A 5D */	bl _restgpr_29
/* 80208750 001D1D10  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80208754 001D1D14  7C 08 03 A6 */	mtlr r0
/* 80208758 001D1D18  38 21 00 60 */	addi r1, r1, 0x60
/* 8020875C 001D1D1C  4E 80 00 20 */	blr 

.global func_80208760
func_80208760:
/* 80208760 001D1D20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80208764 001D1D24  7C 08 02 A6 */	mflr r0
/* 80208768 001D1D28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020876C 001D1D2C  38 E1 00 08 */	addi r7, r1, 8
/* 80208770 001D1D30  88 04 00 24 */	lbz r0, 0x24(r4)
/* 80208774 001D1D34  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 80208778 001D1D38  81 24 00 18 */	lwz r9, 0x18(r4)
/* 8020877C 001D1D3C  7C 00 07 74 */	extsb r0, r0
/* 80208780 001D1D40  81 04 00 1C */	lwz r8, 0x1c(r4)
/* 80208784 001D1D44  54 00 10 3A */	slwi r0, r0, 2
/* 80208788 001D1D48  80 C4 00 08 */	lwz r6, 8(r4)
/* 8020878C 001D1D4C  90 A1 00 08 */	stw r5, 8(r1)
/* 80208790 001D1D50  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 80208794 001D1D54  91 21 00 0C */	stw r9, 0xc(r1)
/* 80208798 001D1D58  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8020879C 001D1D5C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802087A0 001D1D60  7C 87 00 2E */	lwzx r4, r7, r0
/* 802087A4 001D1D64  4B F2 F1 81 */	bl func_80137924
/* 802087A8 001D1D68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802087AC 001D1D6C  7C 08 03 A6 */	mtlr r0
/* 802087B0 001D1D70  38 21 00 20 */	addi r1, r1, 0x20
/* 802087B4 001D1D74  4E 80 00 20 */	blr 

.global func_802087B8
func_802087B8:
/* 802087B8 001D1D78  88 03 00 23 */	lbz r0, 0x23(r3)
/* 802087BC 001D1D7C  38 80 00 00 */	li r4, 0
/* 802087C0 001D1D80  2C 00 00 01 */	cmpwi r0, 1
/* 802087C4 001D1D84  41 82 00 18 */	beq lbl_802087DC
/* 802087C8 001D1D88  2C 00 00 02 */	cmpwi r0, 2
/* 802087CC 001D1D8C  41 82 00 18 */	beq lbl_802087E4
/* 802087D0 001D1D90  2C 00 00 03 */	cmpwi r0, 3
/* 802087D4 001D1D94  41 82 00 38 */	beq lbl_8020880C
/* 802087D8 001D1D98  48 00 00 58 */	b lbl_80208830
lbl_802087DC:
/* 802087DC 001D1D9C  38 80 00 01 */	li r4, 1
/* 802087E0 001D1DA0  48 00 00 50 */	b lbl_80208830
lbl_802087E4:
/* 802087E4 001D1DA4  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802087E8 001D1DA8  7C 00 07 75 */	extsb. r0, r0
/* 802087EC 001D1DAC  41 82 00 10 */	beq lbl_802087FC
/* 802087F0 001D1DB0  2C 00 00 01 */	cmpwi r0, 1
/* 802087F4 001D1DB4  41 82 00 10 */	beq lbl_80208804
/* 802087F8 001D1DB8  48 00 00 38 */	b lbl_80208830
lbl_802087FC:
/* 802087FC 001D1DBC  38 80 00 02 */	li r4, 2
/* 80208800 001D1DC0  48 00 00 30 */	b lbl_80208830
lbl_80208804:
/* 80208804 001D1DC4  38 80 00 01 */	li r4, 1
/* 80208808 001D1DC8  48 00 00 28 */	b lbl_80208830
lbl_8020880C:
/* 8020880C 001D1DCC  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80208810 001D1DD0  7C 00 07 75 */	extsb. r0, r0
/* 80208814 001D1DD4  41 82 00 10 */	beq lbl_80208824
/* 80208818 001D1DD8  2C 00 00 02 */	cmpwi r0, 2
/* 8020881C 001D1DDC  41 82 00 10 */	beq lbl_8020882C
/* 80208820 001D1DE0  48 00 00 10 */	b lbl_80208830
lbl_80208824:
/* 80208824 001D1DE4  38 80 00 02 */	li r4, 2
/* 80208828 001D1DE8  48 00 00 08 */	b lbl_80208830
lbl_8020882C:
/* 8020882C 001D1DEC  38 80 00 01 */	li r4, 1
lbl_80208830:
/* 80208830 001D1DF0  7C 83 23 78 */	mr r3, r4
/* 80208834 001D1DF4  4E 80 00 20 */	blr 

.global func_80208838
func_80208838:
/* 80208838 001D1DF8  38 00 FF FF */	li r0, -1
/* 8020883C 001D1DFC  98 03 00 24 */	stb r0, 0x24(r3)
/* 80208840 001D1E00  4E 80 00 20 */	blr 

.global func_80208844
func_80208844:
/* 80208844 001D1E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208848 001D1E08  7C 08 02 A6 */	mflr r0
/* 8020884C 001D1E0C  C0 22 A8 5C */	lfs f1, lbl_8066ABDC@sda21(r2)
/* 80208850 001D1E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80208854 001D1E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208858 001D1E18  7C 7F 1B 78 */	mr r31, r3
/* 8020885C 001D1E1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80208860 001D1E20  4B F2 EB E5 */	bl func_80137444
/* 80208864 001D1E24  2C 03 00 00 */	cmpwi r3, 0
/* 80208868 001D1E28  41 82 00 14 */	beq lbl_8020887C
/* 8020886C 001D1E2C  38 60 00 02 */	li r3, 2
/* 80208870 001D1E30  38 00 00 01 */	li r0, 1
/* 80208874 001D1E34  98 7F 00 22 */	stb r3, 0x22(r31)
/* 80208878 001D1E38  98 1F 00 21 */	stb r0, 0x21(r31)
lbl_8020887C:
/* 8020887C 001D1E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208880 001D1E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208884 001D1E44  7C 08 03 A6 */	mtlr r0
/* 80208888 001D1E48  38 21 00 10 */	addi r1, r1, 0x10
/* 8020888C 001D1E4C  4E 80 00 20 */	blr 

.global func_80208890
func_80208890:
/* 80208890 001D1E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208894 001D1E54  7C 08 02 A6 */	mflr r0
/* 80208898 001D1E58  C0 22 A8 5C */	lfs f1, lbl_8066ABDC@sda21(r2)
/* 8020889C 001D1E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802088A0 001D1E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802088A4 001D1E64  7C 7F 1B 78 */	mr r31, r3
/* 802088A8 001D1E68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802088AC 001D1E6C  4B F2 EC 65 */	bl func_80137510
/* 802088B0 001D1E70  2C 03 00 00 */	cmpwi r3, 0
/* 802088B4 001D1E74  41 82 00 18 */	beq lbl_802088CC
/* 802088B8 001D1E78  38 60 00 00 */	li r3, 0
/* 802088BC 001D1E7C  38 00 00 01 */	li r0, 1
/* 802088C0 001D1E80  98 7F 00 22 */	stb r3, 0x22(r31)
/* 802088C4 001D1E84  98 1F 00 21 */	stb r0, 0x21(r31)
/* 802088C8 001D1E88  98 7F 00 20 */	stb r3, 0x20(r31)
lbl_802088CC:
/* 802088CC 001D1E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802088D0 001D1E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802088D4 001D1E94  7C 08 03 A6 */	mtlr r0
/* 802088D8 001D1E98  38 21 00 10 */	addi r1, r1, 0x10
/* 802088DC 001D1E9C  4E 80 00 20 */	blr 