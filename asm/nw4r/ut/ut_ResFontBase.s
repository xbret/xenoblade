.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8042C074
func_8042C074:
/* 8042C074 003F5634  3C 80 80 57 */	lis r4, lbl_8056E740@ha
/* 8042C078 003F5638  3C A0 80 57 */	lis r5, lbl_8056E7AC@ha
/* 8042C07C 003F563C  38 84 E7 40 */	addi r4, r4, lbl_8056E740@l
/* 8042C080 003F5640  3D 00 80 57 */	lis r8, lbl_8056E7A0@ha
/* 8042C084 003F5644  90 83 00 00 */	stw r4, 0(r3)
/* 8042C088 003F5648  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8042C08C 003F564C  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8042C090 003F5650  38 A5 E7 AC */	addi r5, r5, lbl_8056E7AC@l
/* 8042C094 003F5654  84 E8 E7 A0 */	lwzu r7, lbl_8056E7A0@l(r8)
/* 8042C098 003F5658  38 80 00 00 */	li r4, 0
/* 8042C09C 003F565C  80 C8 00 04 */	lwz r6, 4(r8)
/* 8042C0A0 003F5660  90 E3 00 04 */	stw r7, 4(r3)
/* 8042C0A4 003F5664  90 C3 00 08 */	stw r6, 8(r3)
/* 8042C0A8 003F5668  80 C8 00 08 */	lwz r6, 8(r8)
/* 8042C0AC 003F566C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8042C0B0 003F5670  90 A3 00 00 */	stw r5, 0(r3)
/* 8042C0B4 003F5674  90 83 00 10 */	stw r4, 0x10(r3)
/* 8042C0B8 003F5678  90 83 00 14 */	stw r4, 0x14(r3)
/* 8042C0BC 003F567C  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8042C0C0 003F5680  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8042C0C4 003F5684  4E 80 00 20 */	blr 

.global func_8042C0C8
func_8042C0C8:
/* 8042C0C8 003F5688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C0CC 003F568C  7C 08 02 A6 */	mflr r0
/* 8042C0D0 003F5690  2C 03 00 00 */	cmpwi r3, 0
/* 8042C0D4 003F5694  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C0D8 003F5698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C0DC 003F569C  7C 7F 1B 78 */	mr r31, r3
/* 8042C0E0 003F56A0  41 82 00 10 */	beq lbl_8042C0F0
/* 8042C0E4 003F56A4  2C 04 00 00 */	cmpwi r4, 0
/* 8042C0E8 003F56A8  40 81 00 08 */	ble lbl_8042C0F0
/* 8042C0EC 003F56AC  48 00 8B 41 */	bl __dl__FPv
lbl_8042C0F0:
/* 8042C0F0 003F56B0  7F E3 FB 78 */	mr r3, r31
/* 8042C0F4 003F56B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C0F8 003F56B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C0FC 003F56BC  7C 08 03 A6 */	mtlr r0
/* 8042C100 003F56C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C104 003F56C4  4E 80 00 20 */	blr 

.global func_8042C108
func_8042C108:
/* 8042C108 003F56C8  90 83 00 10 */	stw r4, 0x10(r3)
/* 8042C10C 003F56CC  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8042C110 003F56D0  4E 80 00 20 */	blr

.global func_8042C114
func_8042C114:
/* 8042C114 003F56D4  7C 64 1B 78 */	mr r4, r3
/* 8042C118 003F56D8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8042C11C 003F56DC  38 00 00 00 */	li r0, 0
/* 8042C120 003F56E0  90 04 00 10 */	stw r0, 0x10(r4)
/* 8042C124 003F56E4  90 04 00 14 */	stw r0, 0x14(r4)
/* 8042C128 003F56E8  4E 80 00 20 */	blr

.global func_8042C12C
func_8042C12C:
/* 8042C12C 003F56EC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C130 003F56F0  88 63 00 15 */	lbz r3, 0x15(r3)
/* 8042C134 003F56F4  4E 80 00 20 */	blr

.global func_8042C138
func_8042C138:
/* 8042C138 003F56F8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C13C 003F56FC  88 63 00 14 */	lbz r3, 0x14(r3)
/* 8042C140 003F5700  4E 80 00 20 */	blr

.global func_8042C144
func_8042C144:
/* 8042C144 003F5704  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C148 003F5708  88 63 00 16 */	lbz r3, 0x16(r3)
/* 8042C14C 003F570C  4E 80 00 20 */	blr

.global func_8042C150
func_8042C150:
/* 8042C150 003F5710  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8042C154 003F5714  88 64 00 16 */	lbz r3, 0x16(r4)
/* 8042C158 003F5718  88 04 00 14 */	lbz r0, 0x14(r4)
/* 8042C15C 003F571C  7C 63 00 50 */	subf r3, r3, r0
/* 8042C160 003F5720  4E 80 00 20 */	blr

.global func_8042C164
func_8042C164:
/* 8042C164 003F5724  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C168 003F5728  80 63 00 08 */	lwz r3, 8(r3)
/* 8042C16C 003F572C  88 63 00 02 */	lbz r3, 2(r3)
/* 8042C170 003F5730  7C 63 07 74 */	extsb r3, r3
/* 8042C174 003F5734  4E 80 00 20 */	blr

.global func_8042C178
func_8042C178:
/* 8042C178 003F5738  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C17C 003F573C  80 63 00 08 */	lwz r3, 8(r3)
/* 8042C180 003F5740  88 63 00 01 */	lbz r3, 1(r3)
/* 8042C184 003F5744  4E 80 00 20 */	blr

.global func_8042C188
func_8042C188:
/* 8042C188 003F5748  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C18C 003F574C  80 63 00 08 */	lwz r3, 8(r3)
/* 8042C190 003F5750  88 63 00 00 */	lbz r3, 0(r3)
/* 8042C194 003F5754  4E 80 00 20 */	blr

.global func_8042C198
func_8042C198:
/* 8042C198 003F5758  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C19C 003F575C  80 63 00 08 */	lwz r3, 8(r3)
/* 8042C1A0 003F5760  88 63 00 03 */	lbz r3, 3(r3)
/* 8042C1A4 003F5764  4E 80 00 20 */	blr

.global func_8042C1A8
func_8042C1A8:
/* 8042C1A8 003F5768  38 60 00 02 */	li r3, 2
/* 8042C1AC 003F576C  4E 80 00 20 */	blr

.global func_8042C1B0
func_8042C1B0:
/* 8042C1B0 003F5770  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C1B4 003F5774  80 63 00 08 */	lwz r3, 8(r3)
/* 8042C1B8 003F5778  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 8042C1BC 003F577C  4E 80 00 20 */	blr

.global func_8042C1C0
func_8042C1C0:
/* 8042C1C0 003F5780  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C1C4 003F5784  88 63 00 01 */	lbz r3, 1(r3)
/* 8042C1C8 003F5788  7C 63 07 74 */	extsb r3, r3
/* 8042C1CC 003F578C  4E 80 00 20 */	blr

.global func_8042C1D0
func_8042C1D0:
/* 8042C1D0 003F5790  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8042C1D4 003F5794  A0 04 00 04 */	lhz r0, 4(r4)
/* 8042C1D8 003F5798  54 03 80 1E */	slwi r3, r0, 0x10
/* 8042C1DC 003F579C  88 04 00 06 */	lbz r0, 6(r4)
/* 8042C1E0 003F57A0  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 8042C1E4 003F57A4  4E 80 00 20 */	blr

.global func_8042C1E8
func_8042C1E8:
/* 8042C1E8 003F57A8  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8042C1EC 003F57AC  88 04 00 00 */	lbz r0, 0(r4)
/* 8042C1F0 003F57B0  88 64 00 01 */	lbz r3, 1(r4)
/* 8042C1F4 003F57B4  98 05 00 04 */	stb r0, 4(r5)
/* 8042C1F8 003F57B8  88 04 00 02 */	lbz r0, 2(r4)
/* 8042C1FC 003F57BC  98 65 00 05 */	stb r3, 5(r5)
/* 8042C200 003F57C0  98 05 00 06 */	stb r0, 6(r5)
/* 8042C204 003F57C4  4E 80 00 20 */	blr


.global func_8042C208
func_8042C208:
/* 8042C208 003F57C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C20C 003F57CC  7C 08 02 A6 */	mflr r0
/* 8042C210 003F57D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C214 003F57D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C218 003F57D8  7C 7F 1B 78 */	mr r31, r3
/* 8042C21C 003F57DC  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 8042C220 003F57E0  7C 04 00 40 */	cmplw r4, r0
/* 8042C224 003F57E4  40 82 00 0C */	bne lbl_8042C230
/* 8042C228 003F57E8  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 8042C22C 003F57EC  48 00 00 64 */	b lbl_8042C290
lbl_8042C230:
/* 8042C230 003F57F0  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8042C234 003F57F4  7C 85 23 78 */	mr r5, r4
/* 8042C238 003F57F8  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8042C23C 003F57FC  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8042C240 003F5800  48 00 00 38 */	b lbl_8042C278
lbl_8042C244:
/* 8042C244 003F5804  A0 06 00 00 */	lhz r0, 0(r6)
/* 8042C248 003F5808  7C 00 20 40 */	cmplw r0, r4
/* 8042C24C 003F580C  41 81 00 28 */	bgt lbl_8042C274
/* 8042C250 003F5810  A0 06 00 02 */	lhz r0, 2(r6)
/* 8042C254 003F5814  7C 04 00 40 */	cmplw r4, r0
/* 8042C258 003F5818  41 81 00 1C */	bgt lbl_8042C274
/* 8042C25C 003F581C  7F E3 FB 78 */	mr r3, r31
/* 8042C260 003F5820  7C C4 33 78 */	mr r4, r6
/* 8042C264 003F5824  48 00 04 99 */	bl func_8042C6FC
/* 8042C268 003F5828  B0 7F 00 1A */	sth r3, 0x1a(r31)
/* 8042C26C 003F582C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8042C270 003F5830  48 00 00 20 */	b lbl_8042C290
lbl_8042C274:
/* 8042C274 003F5834  80 C6 00 08 */	lwz r6, 8(r6)
lbl_8042C278:
/* 8042C278 003F5838  2C 06 00 00 */	cmpwi r6, 0
/* 8042C27C 003F583C  40 82 FF C8 */	bne lbl_8042C244
/* 8042C280 003F5840  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8042C284 003F5844  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8042C288 003F5848  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8042C28C 003F584C  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8042C290:
/* 8042C290 003F5850  28 00 FF FF */	cmplwi r0, 0xffff
/* 8042C294 003F5854  41 82 00 14 */	beq lbl_8042C2A8
/* 8042C298 003F5858  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8042C29C 003F585C  38 60 00 01 */	li r3, 1
/* 8042C2A0 003F5860  B0 04 00 02 */	sth r0, 2(r4)
/* 8042C2A4 003F5864  48 00 00 08 */	b lbl_8042C2AC
lbl_8042C2A8:
/* 8042C2A8 003F5868  38 60 00 00 */	li r3, 0
lbl_8042C2AC:
/* 8042C2AC 003F586C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C2B0 003F5870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C2B4 003F5874  7C 08 03 A6 */	mtlr r0
/* 8042C2B8 003F5878  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C2BC 003F587C  4E 80 00 20 */	blr 

.global func_8042C2C0
func_8042C2C0:
/* 8042C2C0 003F5880  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C2C4 003F5884  98 83 00 01 */	stb r4, 1(r3)
/* 8042C2C8 003F5888  4E 80 00 20 */	blr 

.global func_8042C2CC
func_8042C2CC:
/* 8042C2CC 003F588C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C2D0 003F5890  7C 08 02 A6 */	mflr r0
/* 8042C2D4 003F5894  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C2D8 003F5898  81 83 00 00 */	lwz r12, 0(r3)
/* 8042C2DC 003F589C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8042C2E0 003F58A0  7D 89 03 A6 */	mtctr r12
/* 8042C2E4 003F58A4  4E 80 04 21 */	bctrl 
/* 8042C2E8 003F58A8  54 60 46 3E */	srwi r0, r3, 0x18
/* 8042C2EC 003F58AC  98 01 00 08 */	stb r0, 8(r1)
/* 8042C2F0 003F58B0  54 60 86 3E */	rlwinm r0, r3, 0x10, 0x18, 0x1f
/* 8042C2F4 003F58B4  98 01 00 09 */	stb r0, 9(r1)
/* 8042C2F8 003F58B8  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 8042C2FC 003F58BC  7C 03 03 78 */	mr r3, r0
/* 8042C300 003F58C0  98 01 00 0A */	stb r0, 0xa(r1)
/* 8042C304 003F58C4  7C 63 07 74 */	extsb r3, r3
/* 8042C308 003F58C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C30C 003F58CC  7C 08 03 A6 */	mtlr r0
/* 8042C310 003F58D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C314 003F58D4  4E 80 00 20 */	blr 

.global func_8042C318
func_8042C318:
/* 8042C318 003F58D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C31C 003F58DC  7C 08 02 A6 */	mflr r0
/* 8042C320 003F58E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C324 003F58E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C328 003F58E8  7C 7F 1B 78 */	mr r31, r3
/* 8042C32C 003F58EC  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 8042C330 003F58F0  7C 04 00 40 */	cmplw r4, r0
/* 8042C334 003F58F4  40 82 00 0C */	bne lbl_8042C340
/* 8042C338 003F58F8  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 8042C33C 003F58FC  48 00 00 64 */	b lbl_8042C3A0
lbl_8042C340:
/* 8042C340 003F5900  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8042C344 003F5904  7C 85 23 78 */	mr r5, r4
/* 8042C348 003F5908  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8042C34C 003F590C  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8042C350 003F5910  48 00 00 38 */	b lbl_8042C388
lbl_8042C354:
/* 8042C354 003F5914  A0 06 00 00 */	lhz r0, 0(r6)
/* 8042C358 003F5918  7C 00 20 40 */	cmplw r0, r4
/* 8042C35C 003F591C  41 81 00 28 */	bgt lbl_8042C384
/* 8042C360 003F5920  A0 06 00 02 */	lhz r0, 2(r6)
/* 8042C364 003F5924  7C 04 00 40 */	cmplw r4, r0
/* 8042C368 003F5928  41 81 00 1C */	bgt lbl_8042C384
/* 8042C36C 003F592C  7F E3 FB 78 */	mr r3, r31
/* 8042C370 003F5930  7C C4 33 78 */	mr r4, r6
/* 8042C374 003F5934  48 00 03 89 */	bl func_8042C6FC
/* 8042C378 003F5938  B0 7F 00 1A */	sth r3, 0x1a(r31)
/* 8042C37C 003F593C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8042C380 003F5940  48 00 00 20 */	b lbl_8042C3A0
lbl_8042C384:
/* 8042C384 003F5944  80 C6 00 08 */	lwz r6, 8(r6)
lbl_8042C388:
/* 8042C388 003F5948  2C 06 00 00 */	cmpwi r6, 0
/* 8042C38C 003F594C  40 82 FF C8 */	bne lbl_8042C354
/* 8042C390 003F5950  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8042C394 003F5954  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8042C398 003F5958  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8042C39C 003F595C  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8042C3A0:
/* 8042C3A0 003F5960  28 00 FF FF */	cmplwi r0, 0xffff
/* 8042C3A4 003F5964  41 82 00 08 */	beq lbl_8042C3AC
/* 8042C3A8 003F5968  48 00 00 0C */	b lbl_8042C3B4
lbl_8042C3AC:
/* 8042C3AC 003F596C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8042C3B0 003F5970  A0 03 00 02 */	lhz r0, 2(r3)
lbl_8042C3B4:
/* 8042C3B4 003F5974  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 8042C3B8 003F5978  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8042C3BC 003F597C  80 86 00 0C */	lwz r4, 0xc(r6)
/* 8042C3C0 003F5980  48 00 00 38 */	b lbl_8042C3F8
lbl_8042C3C4:
/* 8042C3C4 003F5984  A0 A4 00 00 */	lhz r5, 0(r4)
/* 8042C3C8 003F5988  7C 05 18 40 */	cmplw r5, r3
/* 8042C3CC 003F598C  41 81 00 28 */	bgt lbl_8042C3F4
/* 8042C3D0 003F5990  A0 04 00 02 */	lhz r0, 2(r4)
/* 8042C3D4 003F5994  7C 03 00 40 */	cmplw r3, r0
/* 8042C3D8 003F5998  41 81 00 1C */	bgt lbl_8042C3F4
/* 8042C3DC 003F599C  7C 65 18 50 */	subf r3, r5, r3
/* 8042C3E0 003F59A0  54 60 10 3A */	slwi r0, r3, 2
/* 8042C3E4 003F59A4  7C 03 00 50 */	subf r0, r3, r0
/* 8042C3E8 003F59A8  7C 64 02 14 */	add r3, r4, r0
/* 8042C3EC 003F59AC  38 83 00 08 */	addi r4, r3, 8
/* 8042C3F0 003F59B0  48 00 00 14 */	b lbl_8042C404
lbl_8042C3F4:
/* 8042C3F4 003F59B4  80 84 00 04 */	lwz r4, 4(r4)
lbl_8042C3F8:
/* 8042C3F8 003F59B8  2C 04 00 00 */	cmpwi r4, 0
/* 8042C3FC 003F59BC  40 82 FF C8 */	bne lbl_8042C3C4
/* 8042C400 003F59C0  38 86 00 04 */	addi r4, r6, 4
lbl_8042C404:
/* 8042C404 003F59C4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8042C408 003F59C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C40C 003F59CC  54 03 80 1E */	slwi r3, r0, 0x10
/* 8042C410 003F59D0  88 04 00 02 */	lbz r0, 2(r4)
/* 8042C414 003F59D4  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 8042C418 003F59D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C41C 003F59DC  7C 08 03 A6 */	mtlr r0
/* 8042C420 003F59E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C424 003F59E4  4E 80 00 20 */	blr 

.global func_8042C428
func_8042C428:
/* 8042C428 003F59E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C42C 003F59EC  7C 08 02 A6 */	mflr r0
/* 8042C430 003F59F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C434 003F59F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C438 003F59F8  7C 9F 23 78 */	mr r31, r4
/* 8042C43C 003F59FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8042C440 003F5A00  7C 7E 1B 78 */	mr r30, r3
/* 8042C444 003F5A04  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 8042C448 003F5A08  7C 05 00 40 */	cmplw r5, r0
/* 8042C44C 003F5A0C  40 82 00 0C */	bne lbl_8042C458
/* 8042C450 003F5A10  A0 A3 00 1A */	lhz r5, 0x1a(r3)
/* 8042C454 003F5A14  48 00 00 5C */	b lbl_8042C4B0
lbl_8042C458:
/* 8042C458 003F5A18  B0 A3 00 18 */	sth r5, 0x18(r3)
/* 8042C45C 003F5A1C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8042C460 003F5A20  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8042C464 003F5A24  48 00 00 34 */	b lbl_8042C498
lbl_8042C468:
/* 8042C468 003F5A28  A0 04 00 00 */	lhz r0, 0(r4)
/* 8042C46C 003F5A2C  7C 00 28 40 */	cmplw r0, r5
/* 8042C470 003F5A30  41 81 00 24 */	bgt lbl_8042C494
/* 8042C474 003F5A34  A0 04 00 02 */	lhz r0, 2(r4)
/* 8042C478 003F5A38  7C 05 00 40 */	cmplw r5, r0
/* 8042C47C 003F5A3C  41 81 00 18 */	bgt lbl_8042C494
/* 8042C480 003F5A40  7F C3 F3 78 */	mr r3, r30
/* 8042C484 003F5A44  48 00 02 79 */	bl func_8042C6FC
/* 8042C488 003F5A48  B0 7E 00 1A */	sth r3, 0x1a(r30)
/* 8042C48C 003F5A4C  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8042C490 003F5A50  48 00 00 20 */	b lbl_8042C4B0
lbl_8042C494:
/* 8042C494 003F5A54  80 84 00 08 */	lwz r4, 8(r4)
lbl_8042C498:
/* 8042C498 003F5A58  2C 04 00 00 */	cmpwi r4, 0
/* 8042C49C 003F5A5C  40 82 FF CC */	bne lbl_8042C468
/* 8042C4A0 003F5A60  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8042C4A4 003F5A64  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8042C4A8 003F5A68  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8042C4AC 003F5A6C  54 05 04 3E */	clrlwi r5, r0, 0x10
lbl_8042C4B0:
/* 8042C4B0 003F5A70  28 05 FF FF */	cmplwi r5, 0xffff
/* 8042C4B4 003F5A74  7F C3 F3 78 */	mr r3, r30
/* 8042C4B8 003F5A78  7F E4 FB 78 */	mr r4, r31
/* 8042C4BC 003F5A7C  41 82 00 08 */	beq lbl_8042C4C4
/* 8042C4C0 003F5A80  48 00 00 0C */	b lbl_8042C4CC
lbl_8042C4C4:
/* 8042C4C4 003F5A84  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8042C4C8 003F5A88  A0 A5 00 02 */	lhz r5, 2(r5)
lbl_8042C4CC:
/* 8042C4CC 003F5A8C  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 8042C4D0 003F5A90  48 00 03 51 */	bl func_8042C820
/* 8042C4D4 003F5A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C4D8 003F5A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C4DC 003F5A9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042C4E0 003F5AA0  7C 08 03 A6 */	mtlr r0
/* 8042C4E4 003F5AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C4E8 003F5AA8  4E 80 00 20 */	blr 

.global func_8042C4EC
func_8042C4EC:
/* 8042C4EC 003F5AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C4F0 003F5AB0  7C 08 02 A6 */	mflr r0
/* 8042C4F4 003F5AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C4F8 003F5AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C4FC 003F5ABC  7C 7F 1B 78 */	mr r31, r3
/* 8042C500 003F5AC0  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 8042C504 003F5AC4  7C 04 00 40 */	cmplw r4, r0
/* 8042C508 003F5AC8  40 82 00 0C */	bne lbl_8042C514
/* 8042C50C 003F5ACC  A0 83 00 1A */	lhz r4, 0x1a(r3)
/* 8042C510 003F5AD0  48 00 00 64 */	b lbl_8042C574
lbl_8042C514:
/* 8042C514 003F5AD4  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8042C518 003F5AD8  7C 85 23 78 */	mr r5, r4
/* 8042C51C 003F5ADC  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8042C520 003F5AE0  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8042C524 003F5AE4  48 00 00 38 */	b lbl_8042C55C
lbl_8042C528:
/* 8042C528 003F5AE8  A0 06 00 00 */	lhz r0, 0(r6)
/* 8042C52C 003F5AEC  7C 00 20 40 */	cmplw r0, r4
/* 8042C530 003F5AF0  41 81 00 28 */	bgt lbl_8042C558
/* 8042C534 003F5AF4  A0 06 00 02 */	lhz r0, 2(r6)
/* 8042C538 003F5AF8  7C 04 00 40 */	cmplw r4, r0
/* 8042C53C 003F5AFC  41 81 00 1C */	bgt lbl_8042C558
/* 8042C540 003F5B00  7F E3 FB 78 */	mr r3, r31
/* 8042C544 003F5B04  7C C4 33 78 */	mr r4, r6
/* 8042C548 003F5B08  48 00 01 B5 */	bl func_8042C6FC
/* 8042C54C 003F5B0C  B0 7F 00 1A */	sth r3, 0x1a(r31)
/* 8042C550 003F5B10  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8042C554 003F5B14  48 00 00 20 */	b lbl_8042C574
lbl_8042C558:
/* 8042C558 003F5B18  80 C6 00 08 */	lwz r6, 8(r6)
lbl_8042C55C:
/* 8042C55C 003F5B1C  2C 06 00 00 */	cmpwi r6, 0
/* 8042C560 003F5B20  40 82 FF C8 */	bne lbl_8042C528
/* 8042C564 003F5B24  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8042C568 003F5B28  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8042C56C 003F5B2C  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8042C570 003F5B30  54 04 04 3E */	clrlwi r4, r0, 0x10
lbl_8042C574:
/* 8042C574 003F5B34  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8042C578 003F5B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C57C 003F5B3C  38 03 FF FF */	addi r0, r3, 0x0000FFFF@l
/* 8042C580 003F5B40  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8042C584 003F5B44  7C 64 00 50 */	subf r3, r4, r0
/* 8042C588 003F5B48  7C 00 20 50 */	subf r0, r0, r4
/* 8042C58C 003F5B4C  7C 60 03 78 */	or r0, r3, r0
/* 8042C590 003F5B50  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8042C594 003F5B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C598 003F5B58  7C 08 03 A6 */	mtlr r0
/* 8042C59C 003F5B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C5A0 003F5B60  4E 80 00 20 */	blr 

.global func_8042C5A4
func_8042C5A4:
/* 8042C5A4 003F5B64  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042C5A8 003F5B68  88 63 00 07 */	lbz r3, 7(r3)
/* 8042C5AC 003F5B6C  4E 80 00 20 */	blr 

.global func_8042C5B0
func_8042C5B0:
/* 8042C5B0 003F5B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C5B4 003F5B74  7C 08 02 A6 */	mflr r0
/* 8042C5B8 003F5B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C5BC 003F5B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C5C0 003F5B80  7C 7F 1B 78 */	mr r31, r3
/* 8042C5C4 003F5B84  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 8042C5C8 003F5B88  7C 04 00 40 */	cmplw r4, r0
/* 8042C5CC 003F5B8C  40 82 00 0C */	bne lbl_8042C5D8
/* 8042C5D0 003F5B90  A0 63 00 1A */	lhz r3, 0x1a(r3)
/* 8042C5D4 003F5B94  48 00 00 64 */	b lbl_8042C638
lbl_8042C5D8:
/* 8042C5D8 003F5B98  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8042C5DC 003F5B9C  7C 85 23 78 */	mr r5, r4
/* 8042C5E0 003F5BA0  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8042C5E4 003F5BA4  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8042C5E8 003F5BA8  48 00 00 38 */	b lbl_8042C620
lbl_8042C5EC:
/* 8042C5EC 003F5BAC  A0 06 00 00 */	lhz r0, 0(r6)
/* 8042C5F0 003F5BB0  7C 00 20 40 */	cmplw r0, r4
/* 8042C5F4 003F5BB4  41 81 00 28 */	bgt lbl_8042C61C
/* 8042C5F8 003F5BB8  A0 06 00 02 */	lhz r0, 2(r6)
/* 8042C5FC 003F5BBC  7C 04 00 40 */	cmplw r4, r0
/* 8042C600 003F5BC0  41 81 00 1C */	bgt lbl_8042C61C
/* 8042C604 003F5BC4  7F E3 FB 78 */	mr r3, r31
/* 8042C608 003F5BC8  7C C4 33 78 */	mr r4, r6
/* 8042C60C 003F5BCC  48 00 00 F1 */	bl func_8042C6FC
/* 8042C610 003F5BD0  B0 7F 00 1A */	sth r3, 0x1a(r31)
/* 8042C614 003F5BD4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8042C618 003F5BD8  48 00 00 20 */	b lbl_8042C638
lbl_8042C61C:
/* 8042C61C 003F5BDC  80 C6 00 08 */	lwz r6, 8(r6)
lbl_8042C620:
/* 8042C620 003F5BE0  2C 06 00 00 */	cmpwi r6, 0
/* 8042C624 003F5BE4  40 82 FF C8 */	bne lbl_8042C5EC
/* 8042C628 003F5BE8  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8042C62C 003F5BEC  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8042C630 003F5BF0  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8042C634 003F5BF4  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_8042C638:
/* 8042C638 003F5BF8  28 03 FF FF */	cmplwi r3, 0xffff
/* 8042C63C 003F5BFC  41 82 00 08 */	beq lbl_8042C644
/* 8042C640 003F5C00  48 00 00 0C */	b lbl_8042C64C
lbl_8042C644:
/* 8042C644 003F5C04  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8042C648 003F5C08  A0 63 00 02 */	lhz r3, 2(r3)
lbl_8042C64C:
/* 8042C64C 003F5C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C650 003F5C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C654 003F5C14  7C 08 03 A6 */	mtlr r0
/* 8042C658 003F5C18  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C65C 003F5C1C  4E 80 00 20 */	blr 

.global func_8042C660
func_8042C660:
/* 8042C660 003F5C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C664 003F5C24  7C 08 02 A6 */	mflr r0
/* 8042C668 003F5C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C66C 003F5C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C670 003F5C30  7C 7F 1B 78 */	mr r31, r3
/* 8042C674 003F5C34  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 8042C678 003F5C38  7C 04 00 40 */	cmplw r4, r0
/* 8042C67C 003F5C3C  40 82 00 0C */	bne lbl_8042C688
/* 8042C680 003F5C40  A0 63 00 1A */	lhz r3, 0x1a(r3)
/* 8042C684 003F5C44  48 00 00 64 */	b lbl_8042C6E8
lbl_8042C688:
/* 8042C688 003F5C48  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8042C68C 003F5C4C  7C 85 23 78 */	mr r5, r4
/* 8042C690 003F5C50  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8042C694 003F5C54  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8042C698 003F5C58  48 00 00 38 */	b lbl_8042C6D0
lbl_8042C69C:
/* 8042C69C 003F5C5C  A0 06 00 00 */	lhz r0, 0(r6)
/* 8042C6A0 003F5C60  7C 00 20 40 */	cmplw r0, r4
/* 8042C6A4 003F5C64  41 81 00 28 */	bgt lbl_8042C6CC
/* 8042C6A8 003F5C68  A0 06 00 02 */	lhz r0, 2(r6)
/* 8042C6AC 003F5C6C  7C 04 00 40 */	cmplw r4, r0
/* 8042C6B0 003F5C70  41 81 00 1C */	bgt lbl_8042C6CC
/* 8042C6B4 003F5C74  7F E3 FB 78 */	mr r3, r31
/* 8042C6B8 003F5C78  7C C4 33 78 */	mr r4, r6
/* 8042C6BC 003F5C7C  48 00 00 41 */	bl func_8042C6FC
/* 8042C6C0 003F5C80  B0 7F 00 1A */	sth r3, 0x1a(r31)
/* 8042C6C4 003F5C84  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8042C6C8 003F5C88  48 00 00 20 */	b lbl_8042C6E8
lbl_8042C6CC:
/* 8042C6CC 003F5C8C  80 C6 00 08 */	lwz r6, 8(r6)
lbl_8042C6D0:
/* 8042C6D0 003F5C90  2C 06 00 00 */	cmpwi r6, 0
/* 8042C6D4 003F5C94  40 82 FF C8 */	bne lbl_8042C69C
/* 8042C6D8 003F5C98  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8042C6DC 003F5C9C  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8042C6E0 003F5CA0  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8042C6E4 003F5CA4  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_8042C6E8:
/* 8042C6E8 003F5CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C6EC 003F5CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C6F0 003F5CB0  7C 08 03 A6 */	mtlr r0
/* 8042C6F4 003F5CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C6F8 003F5CB8  4E 80 00 20 */	blr 

.global func_8042C6FC
func_8042C6FC:
/* 8042C6FC 003F5CBC  A0 04 00 04 */	lhz r0, 4(r4)
/* 8042C700 003F5CC0  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8042C704 003F5CC4  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 8042C708 003F5CC8  2C 00 00 01 */	cmpwi r0, 1
/* 8042C70C 003F5CCC  41 82 00 38 */	beq lbl_8042C744
/* 8042C710 003F5CD0  40 80 00 10 */	bge lbl_8042C720
/* 8042C714 003F5CD4  2C 00 00 00 */	cmpwi r0, 0
/* 8042C718 003F5CD8  40 80 00 14 */	bge lbl_8042C72C
/* 8042C71C 003F5CDC  4E 80 00 20 */	blr

.global lbl_8042C720
lbl_8042C720:
/* 8042C720 003F5CE0  2C 00 00 03 */	cmpwi r0, 3
/* 8042C724 003F5CE4  4C 80 00 20 */	bgelr 
/* 8042C728 003F5CE8  48 00 00 34 */	b func_8042C75C
lbl_8042C72C:
/* 8042C72C 003F5CEC  A0 04 00 00 */	lhz r0, 0(r4)
/* 8042C730 003F5CF0  A0 64 00 0C */	lhz r3, 0xc(r4)
/* 8042C734 003F5CF4  7C 00 28 50 */	subf r0, r0, r5
/* 8042C738 003F5CF8  7C 03 02 14 */	add r0, r3, r0
/* 8042C73C 003F5CFC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8042C740 003F5D00  4E 80 00 20 */	blr

.global lbl_8042C744
lbl_8042C744:
/* 8042C744 003F5D04  A0 04 00 00 */	lhz r0, 0(r4)
/* 8042C748 003F5D08  7C 00 28 50 */	subf r0, r0, r5
/* 8042C74C 003F5D0C  54 00 08 3C */	slwi r0, r0, 1
/* 8042C750 003F5D10  7C 64 02 14 */	add r3, r4, r0
/* 8042C754 003F5D14  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 8042C758 003F5D18  4E 80 00 20 */	blr

.global func_8042C75C
func_8042C75C:
/* 8042C75C 003F5D1C  38 C4 00 0C */	addi r6, r4, 0xc
/* 8042C760 003F5D20  A0 84 00 0C */	lhz r4, 0xc(r4)
/* 8042C764 003F5D24  38 E6 00 02 */	addi r7, r6, 2
/* 8042C768 003F5D28  38 04 FF FF */	addi r0, r4, -1
/* 8042C76C 003F5D2C  54 00 10 3A */	slwi r0, r0, 2
/* 8042C770 003F5D30  7C 86 02 14 */	add r4, r6, r0
/* 8042C774 003F5D34  38 C4 00 02 */	addi r6, r4, 2
/* 8042C778 003F5D38  48 00 00 4C */	b func_8042C7C4
lbl_8042C77C:
/* 8042C77C 003F5D3C  7C 07 30 50 */	subf r0, r7, r6
/* 8042C780 003F5D40  7C 00 16 70 */	srawi r0, r0, 2
/* 8042C784 003F5D44  7C 80 01 94 */	addze r4, r0
/* 8042C788 003F5D48  54 80 0F FE */	srwi r0, r4, 0x1f
/* 8042C78C 003F5D4C  7C 00 22 14 */	add r0, r0, r4
/* 8042C790 003F5D50  54 00 08 3A */	rlwinm r0, r0, 1, 0, 0x1d
/* 8042C794 003F5D54  7C 87 02 14 */	add r4, r7, r0
/* 8042C798 003F5D58  7C 07 02 2E */	lhzx r0, r7, r0
/* 8042C79C 003F5D5C  7C 00 28 40 */	cmplw r0, r5
/* 8042C7A0 003F5D60  40 80 00 0C */	bge lbl_8042C7AC
/* 8042C7A4 003F5D64  38 E4 00 04 */	addi r7, r4, 4
/* 8042C7A8 003F5D68  48 00 00 1C */	b func_8042C7C4
lbl_8042C7AC:
/* 8042C7AC 003F5D6C  7C 05 00 40 */	cmplw r5, r0
/* 8042C7B0 003F5D70  40 80 00 0C */	bge lbl_8042C7BC
/* 8042C7B4 003F5D74  38 C4 FF FC */	addi r6, r4, -4
/* 8042C7B8 003F5D78  48 00 00 0C */	b func_8042C7C4
lbl_8042C7BC:
/* 8042C7BC 003F5D7C  A0 64 00 02 */	lhz r3, 2(r4)
/* 8042C7C0 003F5D80  4E 80 00 20 */	blr

.global func_8042C7C4
func_8042C7C4:
/* 8042C7C4 003F5D84  7C 07 30 40 */	cmplw r7, r6
/* 8042C7C8 003F5D88  40 81 FF B4 */	ble lbl_8042C77C
/* 8042C7CC 003F5D8C  4E 80 00 20 */	blr 

.global func_8042C7D0
func_8042C7D0:
/* 8042C7D0 003F5D90  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8042C7D4 003F5D94  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 8042C7D8 003F5D98  48 00 00 38 */	b lbl_8042C810
lbl_8042C7DC:
/* 8042C7DC 003F5D9C  A0 66 00 00 */	lhz r3, 0(r6)
/* 8042C7E0 003F5DA0  7C 03 20 40 */	cmplw r3, r4
/* 8042C7E4 003F5DA4  41 81 00 28 */	bgt lbl_8042C80C
/* 8042C7E8 003F5DA8  A0 06 00 02 */	lhz r0, 2(r6)
/* 8042C7EC 003F5DAC  7C 04 00 40 */	cmplw r4, r0
/* 8042C7F0 003F5DB0  41 81 00 1C */	bgt lbl_8042C80C
/* 8042C7F4 003F5DB4  7C 63 20 50 */	subf r3, r3, r4
/* 8042C7F8 003F5DB8  54 60 10 3A */	slwi r0, r3, 2
/* 8042C7FC 003F5DBC  7C 03 00 50 */	subf r0, r3, r0
/* 8042C800 003F5DC0  7C 66 02 14 */	add r3, r6, r0
/* 8042C804 003F5DC4  38 63 00 08 */	addi r3, r3, 8
/* 8042C808 003F5DC8  4E 80 00 20 */	blr

.global lbl_8042C80C
lbl_8042C80C:
/* 8042C80C 003F5DCC  80 C6 00 04 */	lwz r6, 4(r6)
lbl_8042C810:
/* 8042C810 003F5DD0  2C 06 00 00 */	cmpwi r6, 0
/* 8042C814 003F5DD4  40 82 FF C8 */	bne lbl_8042C7DC
/* 8042C818 003F5DD8  38 65 00 04 */	addi r3, r5, 4
/* 8042C81C 003F5DDC  4E 80 00 20 */	blr 

.global func_8042C820
func_8042C820:
/* 8042C820 003F5DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C824 003F5DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C828 003F5DE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8042C82C 003F5DEC  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8042C830 003F5DF0  80 C6 00 08 */	lwz r6, 8(r6)
/* 8042C834 003F5DF4  A3 E6 00 0C */	lhz r31, 0xc(r6)
/* 8042C838 003F5DF8  A0 06 00 0E */	lhz r0, 0xe(r6)
/* 8042C83C 003F5DFC  88 E6 00 00 */	lbz r7, 0(r6)
/* 8042C840 003F5E00  7D 5F 01 D6 */	mullw r10, r31, r0
/* 8042C844 003F5E04  89 06 00 01 */	lbz r8, 1(r6)
/* 8042C848 003F5E08  39 27 00 01 */	addi r9, r7, 1
/* 8042C84C 003F5E0C  80 06 00 04 */	lwz r0, 4(r6)
/* 8042C850 003F5E10  80 E6 00 14 */	lwz r7, 0x14(r6)
/* 8042C854 003F5E14  39 08 00 01 */	addi r8, r8, 1
/* 8042C858 003F5E18  7D 85 53 96 */	divwu r12, r5, r10
/* 8042C85C 003F5E1C  7D 4C 51 D6 */	mullw r10, r12, r10
/* 8042C860 003F5E20  7F CA 28 50 */	subf r30, r10, r5
/* 8042C864 003F5E24  7D 7E FB 96 */	divwu r11, r30, r31
/* 8042C868 003F5E28  7C 0C 01 D6 */	mullw r0, r12, r0
/* 8042C86C 003F5E2C  7C 07 02 14 */	add r0, r7, r0
/* 8042C870 003F5E30  90 04 00 00 */	stw r0, 0(r4)
/* 8042C874 003F5E34  7D 4B F9 D6 */	mullw r10, r11, r31
/* 8042C878 003F5E38  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8042C87C 003F5E3C  80 EC 00 0C */	lwz r7, 0xc(r12)
/* 8042C880 003F5E40  7C 0A F0 50 */	subf r0, r10, r30
/* 8042C884 003F5E44  7D 20 49 D6 */	mullw r9, r0, r9
/* 8042C888 003F5E48  7D 0B 41 D6 */	mullw r8, r11, r8
/* 8042C88C 003F5E4C  48 00 00 38 */	b lbl_8042C8C4
lbl_8042C890:
/* 8042C890 003F5E50  A0 67 00 00 */	lhz r3, 0(r7)
/* 8042C894 003F5E54  7C 03 28 40 */	cmplw r3, r5
/* 8042C898 003F5E58  41 81 00 28 */	bgt lbl_8042C8C0
/* 8042C89C 003F5E5C  A0 07 00 02 */	lhz r0, 2(r7)
/* 8042C8A0 003F5E60  7C 05 00 40 */	cmplw r5, r0
/* 8042C8A4 003F5E64  41 81 00 1C */	bgt lbl_8042C8C0
/* 8042C8A8 003F5E68  7C 63 28 50 */	subf r3, r3, r5
/* 8042C8AC 003F5E6C  54 60 10 3A */	slwi r0, r3, 2
/* 8042C8B0 003F5E70  7C 03 00 50 */	subf r0, r3, r0
/* 8042C8B4 003F5E74  7C 67 02 14 */	add r3, r7, r0
/* 8042C8B8 003F5E78  38 E3 00 08 */	addi r7, r3, 8
/* 8042C8BC 003F5E7C  48 00 00 14 */	b lbl_8042C8D0
lbl_8042C8C0:
/* 8042C8C0 003F5E80  80 E7 00 04 */	lwz r7, 4(r7)
lbl_8042C8C4:
/* 8042C8C4 003F5E84  2C 07 00 00 */	cmpwi r7, 0
/* 8042C8C8 003F5E88  40 82 FF C8 */	bne lbl_8042C890
/* 8042C8CC 003F5E8C  38 EC 00 04 */	addi r7, r12, 4
lbl_8042C8D0:
/* 8042C8D0 003F5E90  88 A7 00 00 */	lbz r5, 0(r7)
/* 8042C8D4 003F5E94  38 69 00 01 */	addi r3, r9, 1
/* 8042C8D8 003F5E98  38 08 00 01 */	addi r0, r8, 1
/* 8042C8DC 003F5E9C  98 A4 00 04 */	stb r5, 4(r4)
/* 8042C8E0 003F5EA0  88 A7 00 01 */	lbz r5, 1(r7)
/* 8042C8E4 003F5EA4  98 A4 00 05 */	stb r5, 5(r4)
/* 8042C8E8 003F5EA8  88 A7 00 02 */	lbz r5, 2(r7)
/* 8042C8EC 003F5EAC  98 A4 00 06 */	stb r5, 6(r4)
/* 8042C8F0 003F5EB0  88 A6 00 01 */	lbz r5, 1(r6)
/* 8042C8F4 003F5EB4  98 A4 00 07 */	stb r5, 7(r4)
/* 8042C8F8 003F5EB8  A0 A6 00 0A */	lhz r5, 0xa(r6)
/* 8042C8FC 003F5EBC  90 A4 00 08 */	stw r5, 8(r4)
/* 8042C900 003F5EC0  A0 A6 00 10 */	lhz r5, 0x10(r6)
/* 8042C904 003F5EC4  B0 A4 00 0C */	sth r5, 0xc(r4)
/* 8042C908 003F5EC8  A0 A6 00 12 */	lhz r5, 0x12(r6)
/* 8042C90C 003F5ECC  B0 A4 00 0E */	sth r5, 0xe(r4)
/* 8042C910 003F5ED0  B0 64 00 10 */	sth r3, 0x10(r4)
/* 8042C914 003F5ED4  B0 04 00 12 */	sth r0, 0x12(r4)
/* 8042C918 003F5ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C91C 003F5EDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042C920 003F5EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C924 003F5EE4  4E 80 00 20 */	blr 
