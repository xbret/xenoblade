.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8003A05C
func_8003A05C:
/* 8003A05C 0000361C  38 60 00 00 */	li r3, 0
/* 8003A060 00003620  4E 80 00 20 */	blr 

.global func_8003A064
func_8003A064:
/* 8003A064 00003624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A068 00003628  7C 08 02 A6 */	mflr r0
/* 8003A06C 0000362C  38 80 00 01 */	li r4, 1
/* 8003A070 00003630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A074 00003634  48 46 6C 05 */	bl func_804A0C78
/* 8003A078 00003638  7C 64 1B 78 */	mr r4, r3
/* 8003A07C 0000363C  38 60 00 02 */	li r3, 2
/* 8003A080 00003640  48 46 6D ED */	bl func_804A0E6C
/* 8003A084 00003644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A088 00003648  38 60 00 00 */	li r3, 0
/* 8003A08C 0000364C  7C 08 03 A6 */	mtlr r0
/* 8003A090 00003650  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A094 00003654  4E 80 00 20 */	blr 

.global func_8003A098
func_8003A098:
/* 8003A098 00003658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A09C 0000365C  7C 08 02 A6 */	mflr r0
/* 8003A0A0 00003660  38 80 00 01 */	li r4, 1
/* 8003A0A4 00003664  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A0A8 00003668  48 46 6B D1 */	bl func_804A0C78
/* 8003A0AC 0000366C  7C 64 1B 78 */	mr r4, r3
/* 8003A0B0 00003670  38 60 00 02 */	li r3, 2
/* 8003A0B4 00003674  48 46 6D B9 */	bl func_804A0E6C
/* 8003A0B8 00003678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A0BC 0000367C  38 60 00 00 */	li r3, 0
/* 8003A0C0 00003680  7C 08 03 A6 */	mtlr r0
/* 8003A0C4 00003684  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A0C8 00003688  4E 80 00 20 */	blr 

.global func_8003A0CC
func_8003A0CC:
/* 8003A0CC 0000368C  3C 60 80 4F */	lis r3, lbl_804F5D14@ha
/* 8003A0D0 00003690  3C 80 80 53 */	lis r4, lbl_80528458@ha
/* 8003A0D4 00003694  38 63 5D 14 */	addi r3, r3, lbl_804F5D14@l
/* 8003A0D8 00003698  38 84 84 58 */	addi r4, r4, lbl_80528458@l
/* 8003A0DC 0000369C  48 46 6A B4 */	b func_804A0B90


.global func_8003A0E0
func_8003A0E0:
/* 8003A0E0 000036A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A0E4 000036A4  7C 08 02 A6 */	mflr r0
/* 8003A0E8 000036A8  38 80 00 01 */	li r4, 1
/* 8003A0EC 000036AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A0F0 000036B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A0F4 000036B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A0F8 000036B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003A0FC 000036BC  7C 7D 1B 78 */	mr r29, r3
/* 8003A100 000036C0  48 46 6B 79 */	bl func_804A0C78
/* 8003A104 000036C4  7C 64 1B 78 */	mr r4, r3
/* 8003A108 000036C8  38 60 00 02 */	li r3, 2
/* 8003A10C 000036CC  48 46 6C C1 */	bl func_804A0DCC
/* 8003A110 000036D0  7C 7E 1B 78 */	mr r30, r3
/* 8003A114 000036D4  7F A3 EB 78 */	mr r3, r29
/* 8003A118 000036D8  48 46 6E CD */	bl func_804A0FE4
/* 8003A11C 000036DC  2C 03 00 00 */	cmpwi r3, 0
/* 8003A120 000036E0  7C 7F 1B 78 */	mr r31, r3
/* 8003A124 000036E4  40 82 00 30 */	bne .L_8003A154
/* 8003A128 000036E8  7F A3 EB 78 */	mr r3, r29
/* 8003A12C 000036EC  38 80 00 00 */	li r4, 0
/* 8003A130 000036F0  48 46 6E C5 */	bl func_804A0FF4
/* 8003A134 000036F4  57 C0 60 26 */	slwi r0, r30, 0xc
/* 8003A138 000036F8  90 03 00 00 */	stw r0, 0(r3)
/* 8003A13C 000036FC  7F A3 EB 78 */	mr r3, r29
/* 8003A140 00003700  38 9F 00 01 */	addi r4, r31, 1
/* 8003A144 00003704  48 46 6E A9 */	bl func_804A0FEC
/* 8003A148 00003708  7F A3 EB 78 */	mr r3, r29
/* 8003A14C 0000370C  48 46 6E 8D */	bl func_804A0FD8
/* 8003A150 00003710  48 00 00 28 */	b .L_8003A178
.L_8003A154:
/* 8003A154 00003714  7F A3 EB 78 */	mr r3, r29
/* 8003A158 00003718  38 80 00 00 */	li r4, 0
/* 8003A15C 0000371C  48 46 6E 99 */	bl func_804A0FF4
/* 8003A160 00003720  80 83 00 00 */	lwz r4, 0(r3)
/* 8003A164 00003724  34 04 F0 00 */	addic. r0, r4, -4096
/* 8003A168 00003728  90 03 00 00 */	stw r0, 0(r3)
/* 8003A16C 0000372C  40 81 00 0C */	ble .L_8003A178
/* 8003A170 00003730  7F A3 EB 78 */	mr r3, r29
/* 8003A174 00003734  48 46 6E 65 */	bl func_804A0FD8
.L_8003A178:
/* 8003A178 00003738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A17C 0000373C  38 60 00 00 */	li r3, 0
/* 8003A180 00003740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A184 00003744  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003A188 00003748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A18C 0000374C  7C 08 03 A6 */	mtlr r0
/* 8003A190 00003750  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A194 00003754  4E 80 00 20 */	blr 

.global func_8003A198
func_8003A198:
/* 8003A198 00003758  3C 60 80 4F */	lis r3, lbl_804F5D18@ha
/* 8003A19C 0000375C  3C 80 80 53 */	lis r4, lbl_80528478@ha
/* 8003A1A0 00003760  38 63 5D 18 */	addi r3, r3, lbl_804F5D18@l
/* 8003A1A4 00003764  38 84 84 78 */	addi r4, r4, lbl_80528478@l
/* 8003A1A8 00003768  48 46 69 E8 */	b func_804A0B90


.global func_8003A1AC
func_8003A1AC:
/* 8003A1AC 0000376C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A1B0 00003770  7C 08 02 A6 */	mflr r0
/* 8003A1B4 00003774  38 80 00 01 */	li r4, 1
/* 8003A1B8 00003778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A1BC 0000377C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A1C0 00003780  7C BF 2B 78 */	mr r31, r5
/* 8003A1C4 00003784  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A1C8 00003788  7C 7E 1B 78 */	mr r30, r3
/* 8003A1CC 0000378C  48 46 6A AD */	bl func_804A0C78
/* 8003A1D0 00003790  7C 64 1B 78 */	mr r4, r3
/* 8003A1D4 00003794  38 60 00 02 */	li r3, 2
/* 8003A1D8 00003798  48 46 6C 95 */	bl func_804A0E6C
/* 8003A1DC 0000379C  7C 64 1B 78 */	mr r4, r3
/* 8003A1E0 000037A0  7F E3 FB 78 */	mr r3, r31
/* 8003A1E4 000037A4  48 46 76 BD */	bl func_804A18A0
/* 8003A1E8 000037A8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A1EC 000037AC  7F C3 F3 78 */	mr r3, r30
/* 8003A1F0 000037B0  68 00 00 01 */	xori r0, r0, 1
/* 8003A1F4 000037B4  38 81 00 08 */	addi r4, r1, 8
/* 8003A1F8 000037B8  7C 00 00 34 */	cntlzw r0, r0
/* 8003A1FC 000037BC  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A200 000037C0  38 05 00 01 */	addi r0, r5, 1
/* 8003A204 000037C4  98 01 00 08 */	stb r0, 8(r1)
/* 8003A208 000037C8  48 46 6D 95 */	bl func_804A0F9C
/* 8003A20C 000037CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A210 000037D0  38 60 00 01 */	li r3, 1
/* 8003A214 000037D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A218 000037D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A21C 000037DC  7C 08 03 A6 */	mtlr r0
/* 8003A220 000037E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A224 000037E4  4E 80 00 20 */	blr


.global func_8003A228
func_8003A228:
/* 8003A228 000037E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A22C 000037EC  7C 08 02 A6 */	mflr r0
/* 8003A230 000037F0  38 80 00 01 */	li r4, 1
/* 8003A234 000037F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A238 000037F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A23C 000037FC  7C BF 2B 78 */	mr r31, r5
/* 8003A240 00003800  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A244 00003804  7C 7E 1B 78 */	mr r30, r3
/* 8003A248 00003808  48 46 6A 31 */	bl func_804A0C78
/* 8003A24C 0000380C  7C 64 1B 78 */	mr r4, r3
/* 8003A250 00003810  38 60 00 02 */	li r3, 2
/* 8003A254 00003814  48 46 6C 19 */	bl func_804A0E6C
/* 8003A258 00003818  7C 64 1B 78 */	mr r4, r3
/* 8003A25C 0000381C  7F E3 FB 78 */	mr r3, r31
/* 8003A260 00003820  48 46 76 DD */	bl func_804A193C
/* 8003A264 00003824  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A268 00003828  7F C3 F3 78 */	mr r3, r30
/* 8003A26C 0000382C  68 00 00 01 */	xori r0, r0, 1
/* 8003A270 00003830  38 81 00 08 */	addi r4, r1, 8
/* 8003A274 00003834  7C 00 00 34 */	cntlzw r0, r0
/* 8003A278 00003838  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A27C 0000383C  38 05 00 01 */	addi r0, r5, 1
/* 8003A280 00003840  98 01 00 08 */	stb r0, 8(r1)
/* 8003A284 00003844  48 46 6D 19 */	bl func_804A0F9C
/* 8003A288 00003848  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A28C 0000384C  38 60 00 01 */	li r3, 1
/* 8003A290 00003850  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A294 00003854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A298 00003858  7C 08 03 A6 */	mtlr r0
/* 8003A29C 0000385C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A2A0 00003860  4E 80 00 20 */	blr


.global func_8003A2A4
func_8003A2A4:
/* 8003A2A4 00003864  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A2A8 00003868  7C 08 02 A6 */	mflr r0
/* 8003A2AC 0000386C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A2B0 00003870  38 00 00 05 */	li r0, 5
/* 8003A2B4 00003874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A2B8 00003878  7C BF 2B 78 */	mr r31, r5
/* 8003A2BC 0000387C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A2C0 00003880  7C 7E 1B 78 */	mr r30, r3
/* 8003A2C4 00003884  98 01 00 08 */	stb r0, 8(r1)
/* 8003A2C8 00003888  80 65 00 00 */	lwz r3, 0(r5)
/* 8003A2CC 0000388C  48 27 F2 ED */	bl strlen
/* 8003A2D0 00003890  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8003A2D4 00003894  7F C3 F3 78 */	mr r3, r30
/* 8003A2D8 00003898  38 81 00 08 */	addi r4, r1, 8
/* 8003A2DC 0000389C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8003A2E0 000038A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A2E4 000038A4  48 46 6C B9 */	bl func_804A0F9C
/* 8003A2E8 000038A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A2EC 000038AC  38 60 00 01 */	li r3, 1
/* 8003A2F0 000038B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A2F4 000038B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A2F8 000038B8  7C 08 03 A6 */	mtlr r0
/* 8003A2FC 000038BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A300 000038C0  4E 80 00 20 */	blr 

.global func_8003A304
func_8003A304:
/* 8003A304 000038C4  3C 60 80 53 */	lis r3, lbl_805284B8@ha
/* 8003A308 000038C8  38 63 84 B8 */	addi r3, r3, lbl_805284B8@l
/* 8003A30C 000038CC  48 46 6D 0C */	b func_804A1018


.global func_8003A310
func_8003A310:
/* 8003A310 000038D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A314 000038D4  7C 08 02 A6 */	mflr r0
/* 8003A318 000038D8  38 80 00 01 */	li r4, 1
/* 8003A31C 000038DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A320 000038E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A324 000038E4  7C BF 2B 78 */	mr r31, r5
/* 8003A328 000038E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A32C 000038EC  7C 7E 1B 78 */	mr r30, r3
/* 8003A330 000038F0  48 46 69 49 */	bl func_804A0C78
/* 8003A334 000038F4  7C 64 1B 78 */	mr r4, r3
/* 8003A338 000038F8  38 60 00 02 */	li r3, 2
/* 8003A33C 000038FC  48 46 6B 6D */	bl func_804A0EA8
/* 8003A340 00003900  7C 64 1B 78 */	mr r4, r3
/* 8003A344 00003904  7F C3 F3 78 */	mr r3, r30
/* 8003A348 00003908  38 A1 00 08 */	addi r5, r1, 8
/* 8003A34C 0000390C  48 46 6F A5 */	bl func_804A12F0
/* 8003A350 00003910  2C 03 00 00 */	cmpwi r3, 0
/* 8003A354 00003914  40 82 00 14 */	bne .L_8003A368
/* 8003A358 00003918  7F C3 F3 78 */	mr r3, r30
/* 8003A35C 0000391C  48 46 6E 59 */	bl func_804A11B4
/* 8003A360 00003920  38 60 00 00 */	li r3, 0
/* 8003A364 00003924  48 00 00 28 */	b .L_8003A38C
.L_8003A368:
/* 8003A368 00003928  80 01 00 08 */	lwz r0, 8(r1)
/* 8003A36C 0000392C  38 60 00 09 */	li r3, 9
/* 8003A370 00003930  98 61 00 10 */	stb r3, 0x10(r1)
/* 8003A374 00003934  7F C3 F3 78 */	mr r3, r30
/* 8003A378 00003938  38 81 00 10 */	addi r4, r1, 0x10
/* 8003A37C 0000393C  B3 E1 00 12 */	sth r31, 0x12(r1)
/* 8003A380 00003940  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A384 00003944  48 46 6C 19 */	bl func_804A0F9C
/* 8003A388 00003948  38 60 00 01 */	li r3, 1
.L_8003A38C:
/* 8003A38C 0000394C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A390 00003950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A394 00003954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A398 00003958  7C 08 03 A6 */	mtlr r0
/* 8003A39C 0000395C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A3A0 00003960  4E 80 00 20 */	blr


.global func_8003A3A4
func_8003A3A4:
/* 8003A3A4 00003964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3A8 00003968  7C 08 02 A6 */	mflr r0
/* 8003A3AC 0000396C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3B0 00003970  48 46 6F AD */	bl func_804A135C
/* 8003A3B4 00003974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3B8 00003978  38 60 00 00 */	li r3, 0
/* 8003A3BC 0000397C  7C 08 03 A6 */	mtlr r0
/* 8003A3C0 00003980  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3C4 00003984  4E 80 00 20 */	blr 

.global func_8003A3C8
func_8003A3C8:
/* 8003A3C8 00003988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3CC 0000398C  7C 08 02 A6 */	mflr r0
/* 8003A3D0 00003990  7C 83 23 78 */	mr r3, r4
/* 8003A3D4 00003994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3D8 00003998  48 46 70 89 */	bl func_804A1460
/* 8003A3DC 0000399C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3E0 000039A0  38 60 00 00 */	li r3, 0
/* 8003A3E4 000039A4  7C 08 03 A6 */	mtlr r0
/* 8003A3E8 000039A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3EC 000039AC  4E 80 00 20 */	blr


.global func_8003A3F0
func_8003A3F0:
/* 8003A3F0 000039B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A3F4 000039B4  7C 08 02 A6 */	mflr r0
/* 8003A3F8 000039B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A3FC 000039BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A400 000039C0  7C 7F 1B 78 */	mr r31, r3
/* 8003A404 000039C4  7C 83 23 78 */	mr r3, r4
/* 8003A408 000039C8  48 46 70 CD */	bl func_804A14D4
/* 8003A40C 000039CC  7C 60 00 34 */	cntlzw r0, r3
/* 8003A410 000039D0  7F E3 FB 78 */	mr r3, r31
/* 8003A414 000039D4  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A418 000039D8  38 81 00 08 */	addi r4, r1, 8
/* 8003A41C 000039DC  38 05 00 01 */	addi r0, r5, 1
/* 8003A420 000039E0  98 01 00 08 */	stb r0, 8(r1)
/* 8003A424 000039E4  48 46 6B 79 */	bl func_804A0F9C
/* 8003A428 000039E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A42C 000039EC  38 60 00 01 */	li r3, 1
/* 8003A430 000039F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A434 000039F4  7C 08 03 A6 */	mtlr r0
/* 8003A438 000039F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A43C 000039FC  4E 80 00 20 */	blr


.global func_8003A440
func_8003A440:
/* 8003A440 00003A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A444 00003A04  7C 08 02 A6 */	mflr r0
/* 8003A448 00003A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A44C 00003A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A450 00003A10  7C 7F 1B 78 */	mr r31, r3
/* 8003A454 00003A14  7C 83 23 78 */	mr r3, r4
/* 8003A458 00003A18  48 46 70 7D */	bl func_804A14D4
/* 8003A45C 00003A1C  2C 03 00 00 */	cmpwi r3, 0
/* 8003A460 00003A20  41 82 00 0C */	beq .L_8003A46C
/* 8003A464 00003A24  7F E3 FB 78 */	mr r3, r31
/* 8003A468 00003A28  48 46 6B 71 */	bl func_804A0FD8
.L_8003A46C:
/* 8003A46C 00003A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A470 00003A30  38 60 00 00 */	li r3, 0
/* 8003A474 00003A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A478 00003A38  7C 08 03 A6 */	mtlr r0
/* 8003A47C 00003A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A480 00003A40  4E 80 00 20 */	blr


.global func_8003A484
func_8003A484:
/* 8003A484 00003A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A488 00003A48  7C 08 02 A6 */	mflr r0
/* 8003A48C 00003A4C  7C 83 23 78 */	mr r3, r4
/* 8003A490 00003A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A494 00003A54  48 46 70 AD */	bl func_804A1540
/* 8003A498 00003A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A49C 00003A5C  38 60 00 00 */	li r3, 0
/* 8003A4A0 00003A60  7C 08 03 A6 */	mtlr r0
/* 8003A4A4 00003A64  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4A8 00003A68  4E 80 00 20 */	blr


.global func_8003A4AC
func_8003A4AC:
/* 8003A4AC 00003A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A4B0 00003A70  7C 08 02 A6 */	mflr r0
/* 8003A4B4 00003A74  7C 83 23 78 */	mr r3, r4
/* 8003A4B8 00003A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A4BC 00003A7C  48 46 70 FD */	bl func_804A15B8
/* 8003A4C0 00003A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A4C4 00003A84  38 60 00 00 */	li r3, 0
/* 8003A4C8 00003A88  7C 08 03 A6 */	mtlr r0
/* 8003A4CC 00003A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4D0 00003A90  4E 80 00 20 */	blr 

.global func_8003A4D4
func_8003A4D4:
/* 8003A4D4 00003A94  3C 60 80 53 */	lis r3, lbl_80528520@ha
/* 8003A4D8 00003A98  38 63 85 20 */	addi r3, r3, lbl_80528520@l
/* 8003A4DC 00003A9C  48 46 6B A0 */	b func_804A107C

.global func_8003A4E0
func_8003A4E0:
/* 8003A4E0 00003AA0  3C 60 80 57 */	lis r3, lbl_80573CC8@ha
/* 8003A4E4 00003AA4  38 63 3C C8 */	addi r3, r3, lbl_80573CC8@l
/* 8003A4E8 00003AA8  4E 80 00 20 */	blr 

.global func_8003A4EC
func_8003A4EC:
/* 8003A4EC 00003AAC  3C 60 80 57 */	lis r3, lbl_80573D38@ha
/* 8003A4F0 00003AB0  38 63 3D 38 */	addi r3, r3, lbl_80573D38@l
/* 8003A4F4 00003AB4  4E 80 00 20 */	blr

.global sinit_8003A4F8
sinit_8003A4F8:
/* 8003A4F8 00003AB8  3C C0 80 57 */	lis r6, lbl_80573CC8@ha
/* 8003A4FC 00003ABC  3C 80 80 57 */	lis r4, lbl_80573D38@ha
/* 8003A500 00003AC0  38 A6 3C C8 */	addi r5, r6, lbl_80573CC8@l
/* 8003A504 00003AC4  38 E0 00 00 */	li r7, 0
/* 8003A508 00003AC8  38 64 3D 38 */	addi r3, r4, lbl_80573D38@l
/* 8003A50C 00003ACC  38 00 00 09 */	li r0, 9
/* 8003A510 00003AD0  90 E5 00 10 */	stw r7, 0x10(r5)
/* 8003A514 00003AD4  90 E6 3C C8 */	stw r7, lbl_80573CC8@l(r6)
/* 8003A518 00003AD8  90 E5 00 0C */	stw r7, 0xc(r5)
/* 8003A51C 00003ADC  90 E5 00 08 */	stw r7, 8(r5)
/* 8003A520 00003AE0  90 05 00 04 */	stw r0, 4(r5)
/* 8003A524 00003AE4  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8003A528 00003AE8  90 E4 3D 38 */	stw r7, lbl_80573D38@l(r4)
/* 8003A52C 00003AEC  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8003A530 00003AF0  90 E3 00 08 */	stw r7, 8(r3)
/* 8003A534 00003AF4  90 03 00 04 */	stw r0, 4(r3)
/* 8003A538 00003AF8  4E 80 00 20 */	blr

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_8003A4F8


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_80528380
lbl_80528380:
	# ROM: 0x524480
	.4byte lbl_804F5B88
	.4byte GameMain
	.4byte 0
	.4byte 0

.global lbl_80528390
lbl_80528390:
	# ROM: 0x524490
	.4byte lbl_806683E0
	.4byte lbl_804F5C14
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte lbl_806683E4
	.4byte lbl_804F5C2C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte lbl_806683E8
	.4byte lbl_804F5C40
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte lbl_806683EC
	.4byte lbl_804F5C54
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte lbl_806683F4
	.4byte lbl_804F5C70
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte lbl_806683F8
	.4byte lbl_804F5C88
	.4byte 0x00000001
	.4byte func_80039EFC
	.4byte func_80039F34
	.4byte lbl_80668400
	.4byte lbl_804F5CA4
	.4byte 0x00000001
	.4byte func_80039F5C
	.4byte func_80039F60
	.4byte lbl_80668408
	.4byte lbl_804F5CB8
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte lbl_80668410
	.4byte lbl_804F5CD8
	.4byte 0x00000001
	.4byte func_80039F64
	.4byte func_80039F68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80528458
lbl_80528458:
	# ROM: 0x524558
	.4byte lbl_80668418
	.4byte func_8003A05C
	.4byte lbl_804F5CF0
	.4byte func_8003A064
	.4byte lbl_804F5D04
	.4byte func_8003A098
	.4byte 0
	.4byte 0


.global lbl_80528478
lbl_80528478:
	# ROM: 0x524578
	.4byte lbl_80668420
	.4byte func_8003A0E0
	.4byte 0
	.4byte 0

.global lbl_80528488
lbl_80528488:
	.4byte lbl_804F5D20
	.4byte func_8003A1AC
	.4byte 0
	.4byte lbl_804F5D30
	.4byte func_8003A228
	.4byte 0
	.4byte lbl_804F5D40
	.4byte func_8003A2A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_805284B8
lbl_805284B8:
	# ROM: 0x5245B8
	.4byte lbl_80668428
	.4byte 0
	.4byte 0
	.4byte lbl_80528488

.global lbl_805284C8
lbl_805284C8:
	.4byte lbl_80668430
	.4byte func_8003A3A4
	.4byte 0
	.4byte lbl_80668438
	.4byte func_8003A3C8
	.4byte 0
	.4byte lbl_80668440
	.4byte func_8003A3F0
	.4byte 0
	.4byte lbl_80668448
	.4byte func_8003A440
	.4byte 0
	.4byte lbl_80668450
	.4byte func_8003A484
	.4byte 0
	.4byte lbl_80668458
	.4byte func_8003A4AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80528520
lbl_80528520:
	# ROM: 0x524620
	.4byte lbl_80668460
	.4byte func_8003A310
	.4byte 0
	.4byte lbl_805284C8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_804F5BA4
lbl_804F5BA4:
	.asciz "common.pkh"
	.balign 4

.global lbl_804F5BB0
lbl_804F5BB0:
	.asciz "font.pkh"
	.balign 4

.global lbl_804F5BBC
lbl_804F5BBC:
	.asciz "menu.pkh"
	.balign 4

.global lbl_804F5BC8
lbl_804F5BC8:
	.asciz "script.pkh"
	.balign 4

.global lbl_804F5BD4
lbl_804F5BD4:
	.asciz "work.pkh"
	.balign 4


.global pkhFilenames
pkhFilenames:
	# ROM: 0x4F1CE0
	.4byte lbl_806683A8
	.4byte lbl_806683B0
	.4byte lbl_806683B8
	.4byte lbl_804F5BA4
	.4byte lbl_806683C0
	.4byte lbl_804F5BB0
	.4byte lbl_806683C8
	.4byte lbl_804F5BBC
	.4byte lbl_806683D0
	.4byte lbl_804F5BC8
	.4byte lbl_806683D8
	.4byte lbl_804F5BD4
	.4byte 0


.global lbl_804F5C14
lbl_804F5C14:
	.asciz "dvddata/etc/shadow.sha"
	.balign 4

.global lbl_804F5C2C
lbl_804F5C2C:
	.asciz "dvddata/etc/cam.chr"

.global lbl_804F5C40
lbl_804F5C40:
	.asciz "dvddata/etc/eff.chr"

.global lbl_804F5C54
lbl_804F5C54:
	.asciz "dvddata/etc/arrow.mdo"
	.balign 4
	.4byte 0

.global lbl_804F5C70
lbl_804F5C70:
	.asciz "dvddata/menu/Mode43.arc"

.global lbl_804F5C88
lbl_804F5C88:
	.asciz "dvddata/common/jp/bdat.bin"
	.balign 4

.global lbl_804F5CA4
lbl_804F5CA4:
	.asciz "dvddata/etc/ai.bin"
	.balign 4

.global lbl_804F5CB8
lbl_804F5CB8:
	.asciz "dvddata/etc/hikari.brres"
	.balign 4
	.4byte 0

.global lbl_804F5CD8
lbl_804F5CD8:
	.asciz "dvddata/etc/hbmstop.tpl"

.global lbl_804F5CF0
lbl_804F5CF0:
	.asciz "performanceStart"
	.balign 4

.global lbl_804F5D04
lbl_804F5D04:
	.asciz "performanceEnd"
	.balign 4


.global lbl_804F5D14
lbl_804F5D14:
	.asciz "deb"


.global lbl_804F5D18
lbl_804F5D18:
	.asciz "wait"
	.balign 4

.global lbl_804F5D20
lbl_804F5D20:
	.asciz "isExistProperty"

.global lbl_804F5D30
lbl_804F5D30:
	.asciz "isExistSelector"

.global lbl_804F5D40
lbl_804F5D40:
	.asciz "getOCName"
	.balign 4
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B


.global lbl_80573CC8
lbl_80573CC8:
	.skip 0x70
.global lbl_80573D38
lbl_80573D38:
	.skip 0x98


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_806683A8
lbl_806683A8:
	.asciz "ahx.pkh"

.global lbl_806683B0
lbl_806683B0:
	.asciz "adx.pkh"

.global lbl_806683B8
lbl_806683B8:
	.asciz "chr.pkh"

.global lbl_806683C0
lbl_806683C0:
	.asciz "eff.pkh"

.global lbl_806683C8
lbl_806683C8:
	.asciz "map.pkh"

.global lbl_806683D0
lbl_806683D0:
	.asciz "obj.pkh"

.global lbl_806683D8
lbl_806683D8:
	.asciz "snd.pkh"

.global lbl_806683E0
lbl_806683E0:
	.asciz "SHA"

.global lbl_806683E4
lbl_806683E4:
	.asciz "CAM"

.global lbl_806683E8
lbl_806683E8:
	.asciz "EFF"

.global lbl_806683EC
lbl_806683EC:
	.asciz "ARROW"
	.balign 4

.global lbl_806683F4
lbl_806683F4:
	.asciz "43"
	.byte 0x00
.global lbl_806683F8
lbl_806683F8:
	.asciz "BDAT"
	.balign 4

.global lbl_80668400
lbl_80668400:
	.asciz "AIDAT"
	.balign 4

.global lbl_80668408
lbl_80668408:
	.asciz "HIKARI"
	.balign 4

.global lbl_80668410
lbl_80668410:
	.asciz "HBMSTOP"

.global lbl_80668418
lbl_80668418:
	.asciz "put"
	.4byte 0

.global lbl_80668420
lbl_80668420:
	.asciz "frame"
	.balign 4

.global lbl_80668428
lbl_80668428:
	.asciz "builtin"

.global lbl_80668430
lbl_80668430:
	.asciz "start"
	.balign 4

.global lbl_80668438
lbl_80668438:
	.asciz "end"
	.4byte 0

.global lbl_80668440
lbl_80668440:
	.asciz "isAlive"

.global lbl_80668448
lbl_80668448:
	.asciz "join"
	.balign 4

.global lbl_80668450
lbl_80668450:
	.asciz "sleep"
	.balign 4

.global lbl_80668458
lbl_80668458:
	.asciz "wakeup"
	.balign 4

.global lbl_80668460
lbl_80668460:
	.asciz "thread"
	.balign 4

.section extab, "wa"  # 0x800066E0 - 0x80021020


.global lbl_800067E4
lbl_800067E4:
	.4byte 0x00080000
	.4byte 0

.global lbl_800067EC
lbl_800067EC:
	.4byte 0x00080000
	.4byte 0

.global lbl_800067F4
lbl_800067F4:
	.4byte 0x18080000
	.4byte 0

.global lbl_800067FC
lbl_800067FC:
	.4byte 0x10080000
	.4byte 0

.global lbl_80006804
lbl_80006804:
	.4byte 0x10080000
	.4byte 0

.global lbl_8000680C
lbl_8000680C:
	.4byte 0x10080000
	.4byte 0

.global lbl_80006814
lbl_80006814:
	.4byte 0x10080000
	.4byte 0

.global lbl_8000681C
lbl_8000681C:
	.4byte 0x00080000
	.4byte 0

.global lbl_80006824
lbl_80006824:
	.4byte 0x00080000
	.4byte 0

.global lbl_8000682C
lbl_8000682C:
	.4byte 0x08080000
	.4byte 0

.global lbl_80006834
lbl_80006834:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000683C
lbl_8000683C:
	.4byte 0x00080000
	.4byte 0

.global lbl_80006844
lbl_80006844:
	.4byte 0x00080000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220


	.4byte func_8003A064
	.4byte 0x00000034
	.4byte lbl_800067E4
	.4byte func_8003A098
	.4byte 0x00000034
	.4byte lbl_800067EC
	.4byte func_8003A0E0
	.4byte 0x000000B8
	.4byte lbl_800067F4
	.4byte func_8003A1AC
	.4byte 0x0000007C
	.4byte lbl_800067FC
	.4byte func_8003A228
	.4byte 0x0000007C
	.4byte lbl_80006804
	.4byte func_8003A2A4
	.4byte 0x00000060
	.4byte lbl_8000680C
	.4byte func_8003A310
	.4byte 0x00000094
	.4byte lbl_80006814
	.4byte func_8003A3A4
	.4byte 0x00000024
	.4byte lbl_8000681C
	.4byte func_8003A3C8
	.4byte 0x00000028
	.4byte lbl_80006824
	.4byte func_8003A3F0
	.4byte 0x00000050
	.4byte lbl_8000682C
	.4byte func_8003A440
	.4byte 0x00000044
	.4byte lbl_80006834
	.4byte func_8003A484
	.4byte 0x00000028
	.4byte lbl_8000683C
	.4byte func_8003A4AC
	.4byte 0x00000028
	.4byte lbl_80006844