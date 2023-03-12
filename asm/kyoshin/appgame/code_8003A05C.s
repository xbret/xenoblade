.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn put, global
/* 8003A05C 0000361C  38 60 00 00 */	li r3, 0
/* 8003A060 00003620  4E 80 00 20 */	blr 
.endfn put

.fn performanceStart, global
/* 8003A064 00003624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A068 00003628  7C 08 02 A6 */	mflr r0
/* 8003A06C 0000362C  38 80 00 01 */	li r4, 1
/* 8003A070 00003630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A074 00003634  48 46 6C 05 */	bl vmArgPtrGet
/* 8003A078 00003638  7C 64 1B 78 */	mr r4, r3
/* 8003A07C 0000363C  38 60 00 02 */	li r3, 2
/* 8003A080 00003640  48 46 6D ED */	bl vmArgStringGet
/* 8003A084 00003644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A088 00003648  38 60 00 00 */	li r3, 0
/* 8003A08C 0000364C  7C 08 03 A6 */	mtlr r0
/* 8003A090 00003650  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A094 00003654  4E 80 00 20 */	blr 
.endfn performanceStart

.fn performanceEnd, global
/* 8003A098 00003658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A09C 0000365C  7C 08 02 A6 */	mflr r0
/* 8003A0A0 00003660  38 80 00 01 */	li r4, 1
/* 8003A0A4 00003664  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A0A8 00003668  48 46 6B D1 */	bl vmArgPtrGet
/* 8003A0AC 0000366C  7C 64 1B 78 */	mr r4, r3
/* 8003A0B0 00003670  38 60 00 02 */	li r3, 2
/* 8003A0B4 00003674  48 46 6D B9 */	bl vmArgStringGet
/* 8003A0B8 00003678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A0BC 0000367C  38 60 00 00 */	li r3, 0
/* 8003A0C0 00003680  7C 08 03 A6 */	mtlr r0
/* 8003A0C4 00003684  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A0C8 00003688  4E 80 00 20 */	blr 
.endfn performanceEnd

.fn pluginDebRegist, global
/* 8003A0CC 0000368C  3C 60 80 4F */	lis r3, lbl_804F5D14@ha
/* 8003A0D0 00003690  3C 80 80 53 */	lis r4, lbl_80528458@ha
/* 8003A0D4 00003694  38 63 5D 14 */	addi r3, r3, lbl_804F5D14@l
/* 8003A0D8 00003698  38 84 84 58 */	addi r4, r4, lbl_80528458@l
/* 8003A0DC 0000369C  48 46 6A B4 */	b vmPluginRegist
.endfn pluginDebRegist


.fn frame, global
/* 8003A0E0 000036A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A0E4 000036A4  7C 08 02 A6 */	mflr r0
/* 8003A0E8 000036A8  38 80 00 01 */	li r4, 1
/* 8003A0EC 000036AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A0F0 000036B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A0F4 000036B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A0F8 000036B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003A0FC 000036BC  7C 7D 1B 78 */	mr r29, r3
/* 8003A100 000036C0  48 46 6B 79 */	bl vmArgPtrGet
/* 8003A104 000036C4  7C 64 1B 78 */	mr r4, r3
/* 8003A108 000036C8  38 60 00 02 */	li r3, 2
/* 8003A10C 000036CC  48 46 6C C1 */	bl vmArgIntGet
/* 8003A110 000036D0  7C 7E 1B 78 */	mr r30, r3
/* 8003A114 000036D4  7F A3 EB 78 */	mr r3, r29
/* 8003A118 000036D8  48 46 6E CD */	bl vmWkIdxGet
/* 8003A11C 000036DC  2C 03 00 00 */	cmpwi r3, 0
/* 8003A120 000036E0  7C 7F 1B 78 */	mr r31, r3
/* 8003A124 000036E4  40 82 00 30 */	bne .L_8003A154
/* 8003A128 000036E8  7F A3 EB 78 */	mr r3, r29
/* 8003A12C 000036EC  38 80 00 00 */	li r4, 0
/* 8003A130 000036F0  48 46 6E C5 */	bl vmWkGet
/* 8003A134 000036F4  57 C0 60 26 */	slwi r0, r30, 0xc
/* 8003A138 000036F8  90 03 00 00 */	stw r0, 0(r3)
/* 8003A13C 000036FC  7F A3 EB 78 */	mr r3, r29
/* 8003A140 00003700  38 9F 00 01 */	addi r4, r31, 1
/* 8003A144 00003704  48 46 6E A9 */	bl vmWkIdxSet
/* 8003A148 00003708  7F A3 EB 78 */	mr r3, r29
/* 8003A14C 0000370C  48 46 6E 8D */	bl vmWaitModeSet
/* 8003A150 00003710  48 00 00 28 */	b .L_8003A178
.L_8003A154:
/* 8003A154 00003714  7F A3 EB 78 */	mr r3, r29
/* 8003A158 00003718  38 80 00 00 */	li r4, 0
/* 8003A15C 0000371C  48 46 6E 99 */	bl vmWkGet
/* 8003A160 00003720  80 83 00 00 */	lwz r4, 0(r3)
/* 8003A164 00003724  34 04 F0 00 */	addic. r0, r4, -4096
/* 8003A168 00003728  90 03 00 00 */	stw r0, 0(r3)
/* 8003A16C 0000372C  40 81 00 0C */	ble .L_8003A178
/* 8003A170 00003730  7F A3 EB 78 */	mr r3, r29
/* 8003A174 00003734  48 46 6E 65 */	bl vmWaitModeSet
.L_8003A178:
/* 8003A178 00003738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A17C 0000373C  38 60 00 00 */	li r3, 0
/* 8003A180 00003740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A184 00003744  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003A188 00003748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A18C 0000374C  7C 08 03 A6 */	mtlr r0
/* 8003A190 00003750  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A194 00003754  4E 80 00 20 */	blr 
.endfn frame

.fn pluginWaitRegist, global
/* 8003A198 00003758  3C 60 80 4F */	lis r3, lbl_804F5D18@ha
/* 8003A19C 0000375C  3C 80 80 53 */	lis r4, lbl_80528478@ha
/* 8003A1A0 00003760  38 63 5D 18 */	addi r3, r3, lbl_804F5D18@l
/* 8003A1A4 00003764  38 84 84 78 */	addi r4, r4, lbl_80528478@l
/* 8003A1A8 00003768  48 46 69 E8 */	b vmPluginRegist
.endfn pluginWaitRegist


.fn isExistProperty, global
/* 8003A1AC 0000376C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A1B0 00003770  7C 08 02 A6 */	mflr r0
/* 8003A1B4 00003774  38 80 00 01 */	li r4, 1
/* 8003A1B8 00003778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A1BC 0000377C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A1C0 00003780  7C BF 2B 78 */	mr r31, r5
/* 8003A1C4 00003784  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A1C8 00003788  7C 7E 1B 78 */	mr r30, r3
/* 8003A1CC 0000378C  48 46 6A AD */	bl vmArgPtrGet
/* 8003A1D0 00003790  7C 64 1B 78 */	mr r4, r3
/* 8003A1D4 00003794  38 60 00 02 */	li r3, 2
/* 8003A1D8 00003798  48 46 6C 95 */	bl vmArgStringGet
/* 8003A1DC 0000379C  7C 64 1B 78 */	mr r4, r3
/* 8003A1E0 000037A0  7F E3 FB 78 */	mr r3, r31
/* 8003A1E4 000037A4  48 46 76 BD */	bl vmPropertySearch
/* 8003A1E8 000037A8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A1EC 000037AC  7F C3 F3 78 */	mr r3, r30
/* 8003A1F0 000037B0  68 00 00 01 */	xori r0, r0, 1
/* 8003A1F4 000037B4  38 81 00 08 */	addi r4, r1, 8
/* 8003A1F8 000037B8  7C 00 00 34 */	cntlzw r0, r0
/* 8003A1FC 000037BC  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A200 000037C0  38 05 00 01 */	addi r0, r5, 1
/* 8003A204 000037C4  98 01 00 08 */	stb r0, 8(r1)
/* 8003A208 000037C8  48 46 6D 95 */	bl vmRetValSet
/* 8003A20C 000037CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A210 000037D0  38 60 00 01 */	li r3, 1
/* 8003A214 000037D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A218 000037D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A21C 000037DC  7C 08 03 A6 */	mtlr r0
/* 8003A220 000037E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A224 000037E4  4E 80 00 20 */	blr
.endfn isExistProperty


.fn isExistSelector, global
/* 8003A228 000037E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A22C 000037EC  7C 08 02 A6 */	mflr r0
/* 8003A230 000037F0  38 80 00 01 */	li r4, 1
/* 8003A234 000037F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A238 000037F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A23C 000037FC  7C BF 2B 78 */	mr r31, r5
/* 8003A240 00003800  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A244 00003804  7C 7E 1B 78 */	mr r30, r3
/* 8003A248 00003808  48 46 6A 31 */	bl vmArgPtrGet
/* 8003A24C 0000380C  7C 64 1B 78 */	mr r4, r3
/* 8003A250 00003810  38 60 00 02 */	li r3, 2
/* 8003A254 00003814  48 46 6C 19 */	bl vmArgStringGet
/* 8003A258 00003818  7C 64 1B 78 */	mr r4, r3
/* 8003A25C 0000381C  7F E3 FB 78 */	mr r3, r31
/* 8003A260 00003820  48 46 76 DD */	bl vmSelectorSearch
/* 8003A264 00003824  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A268 00003828  7F C3 F3 78 */	mr r3, r30
/* 8003A26C 0000382C  68 00 00 01 */	xori r0, r0, 1
/* 8003A270 00003830  38 81 00 08 */	addi r4, r1, 8
/* 8003A274 00003834  7C 00 00 34 */	cntlzw r0, r0
/* 8003A278 00003838  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A27C 0000383C  38 05 00 01 */	addi r0, r5, 1
/* 8003A280 00003840  98 01 00 08 */	stb r0, 8(r1)
/* 8003A284 00003844  48 46 6D 19 */	bl vmRetValSet
/* 8003A288 00003848  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A28C 0000384C  38 60 00 01 */	li r3, 1
/* 8003A290 00003850  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A294 00003854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A298 00003858  7C 08 03 A6 */	mtlr r0
/* 8003A29C 0000385C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A2A0 00003860  4E 80 00 20 */	blr
.endfn isExistSelector


.fn getOCName, global
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
/* 8003A2E4 000038A4  48 46 6C B9 */	bl vmRetValSet
/* 8003A2E8 000038A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A2EC 000038AC  38 60 00 01 */	li r3, 1
/* 8003A2F0 000038B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A2F4 000038B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A2F8 000038B8  7C 08 03 A6 */	mtlr r0
/* 8003A2FC 000038BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A300 000038C0  4E 80 00 20 */	blr 
.endfn getOCName

.fn ocBuiltinRegist, global
/* 8003A304 000038C4  3C 60 80 53 */	lis r3, lbl_805284B8@ha
/* 8003A308 000038C8  38 63 84 B8 */	addi r3, r3, lbl_805284B8@l
/* 8003A30C 000038CC  48 46 6D 0C */	b vmBuiltinOCRegist
.endfn ocBuiltinRegist


.fn thread, global
/* 8003A310 000038D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A314 000038D4  7C 08 02 A6 */	mflr r0
/* 8003A318 000038D8  38 80 00 01 */	li r4, 1
/* 8003A31C 000038DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A320 000038E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A324 000038E4  7C BF 2B 78 */	mr r31, r5
/* 8003A328 000038E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A32C 000038EC  7C 7E 1B 78 */	mr r30, r3
/* 8003A330 000038F0  48 46 69 49 */	bl vmArgPtrGet
/* 8003A334 000038F4  7C 64 1B 78 */	mr r4, r3
/* 8003A338 000038F8  38 60 00 02 */	li r3, 2
/* 8003A33C 000038FC  48 46 6B 6D */	bl vmArgFunctionGet
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
/* 8003A384 00003944  48 46 6C 19 */	bl vmRetValSet
/* 8003A388 00003948  38 60 00 01 */	li r3, 1
.L_8003A38C:
/* 8003A38C 0000394C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A390 00003950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A394 00003954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A398 00003958  7C 08 03 A6 */	mtlr r0
/* 8003A39C 0000395C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A3A0 00003960  4E 80 00 20 */	blr
.endfn thread


.fn start, local
/* 8003A3A4 00003964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3A8 00003968  7C 08 02 A6 */	mflr r0
/* 8003A3AC 0000396C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3B0 00003970  48 46 6F AD */	bl vmThreadStart
/* 8003A3B4 00003974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3B8 00003978  38 60 00 00 */	li r3, 0
/* 8003A3BC 0000397C  7C 08 03 A6 */	mtlr r0
/* 8003A3C0 00003980  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3C4 00003984  4E 80 00 20 */	blr 
.endfn start

.fn end, local
/* 8003A3C8 00003988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3CC 0000398C  7C 08 02 A6 */	mflr r0
/* 8003A3D0 00003990  7C 83 23 78 */	mr r3, r4
/* 8003A3D4 00003994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3D8 00003998  48 46 70 89 */	bl vmThreadEnd
/* 8003A3DC 0000399C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3E0 000039A0  38 60 00 00 */	li r3, 0
/* 8003A3E4 000039A4  7C 08 03 A6 */	mtlr r0
/* 8003A3E8 000039A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3EC 000039AC  4E 80 00 20 */	blr
.endfn end


.fn isAlive, global
/* 8003A3F0 000039B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A3F4 000039B4  7C 08 02 A6 */	mflr r0
/* 8003A3F8 000039B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A3FC 000039BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A400 000039C0  7C 7F 1B 78 */	mr r31, r3
/* 8003A404 000039C4  7C 83 23 78 */	mr r3, r4
/* 8003A408 000039C8  48 46 70 CD */	bl vmThreadIsAlive
/* 8003A40C 000039CC  7C 60 00 34 */	cntlzw r0, r3
/* 8003A410 000039D0  7F E3 FB 78 */	mr r3, r31
/* 8003A414 000039D4  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A418 000039D8  38 81 00 08 */	addi r4, r1, 8
/* 8003A41C 000039DC  38 05 00 01 */	addi r0, r5, 1
/* 8003A420 000039E0  98 01 00 08 */	stb r0, 8(r1)
/* 8003A424 000039E4  48 46 6B 79 */	bl vmRetValSet
/* 8003A428 000039E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A42C 000039EC  38 60 00 01 */	li r3, 1
/* 8003A430 000039F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A434 000039F4  7C 08 03 A6 */	mtlr r0
/* 8003A438 000039F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A43C 000039FC  4E 80 00 20 */	blr
.endfn isAlive


.fn join, global
/* 8003A440 00003A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A444 00003A04  7C 08 02 A6 */	mflr r0
/* 8003A448 00003A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A44C 00003A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A450 00003A10  7C 7F 1B 78 */	mr r31, r3
/* 8003A454 00003A14  7C 83 23 78 */	mr r3, r4
/* 8003A458 00003A18  48 46 70 7D */	bl vmThreadIsAlive
/* 8003A45C 00003A1C  2C 03 00 00 */	cmpwi r3, 0
/* 8003A460 00003A20  41 82 00 0C */	beq .L_8003A46C
/* 8003A464 00003A24  7F E3 FB 78 */	mr r3, r31
/* 8003A468 00003A28  48 46 6B 71 */	bl vmWaitModeSet
.L_8003A46C:
/* 8003A46C 00003A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A470 00003A30  38 60 00 00 */	li r3, 0
/* 8003A474 00003A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A478 00003A38  7C 08 03 A6 */	mtlr r0
/* 8003A47C 00003A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A480 00003A40  4E 80 00 20 */	blr
.endfn join


.fn sleep, global
/* 8003A484 00003A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A488 00003A48  7C 08 02 A6 */	mflr r0
/* 8003A48C 00003A4C  7C 83 23 78 */	mr r3, r4
/* 8003A490 00003A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A494 00003A54  48 46 70 AD */	bl vmThreadSleep
/* 8003A498 00003A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A49C 00003A5C  38 60 00 00 */	li r3, 0
/* 8003A4A0 00003A60  7C 08 03 A6 */	mtlr r0
/* 8003A4A4 00003A64  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4A8 00003A68  4E 80 00 20 */	blr
.endfn sleep


.fn wakeup, global
/* 8003A4AC 00003A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A4B0 00003A70  7C 08 02 A6 */	mflr r0
/* 8003A4B4 00003A74  7C 83 23 78 */	mr r3, r4
/* 8003A4B8 00003A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A4BC 00003A7C  48 46 70 FD */	bl vmThreadWakeup
/* 8003A4C0 00003A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A4C4 00003A84  38 60 00 00 */	li r3, 0
/* 8003A4C8 00003A88  7C 08 03 A6 */	mtlr r0
/* 8003A4CC 00003A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4D0 00003A90  4E 80 00 20 */	blr 
.endfn wakeup

.fn ocThreadRegist, global
/* 8003A4D4 00003A94  3C 60 80 53 */	lis r3, lbl_80528520@ha
/* 8003A4D8 00003A98  38 63 85 20 */	addi r3, r3, lbl_80528520@l
/* 8003A4DC 00003A9C  48 46 6B A0 */	b vmOCRegist
.endfn ocThreadRegist

.fn func_8003A4E0, global
/* 8003A4E0 00003AA0  3C 60 80 57 */	lis r3, lbl_80573CC8@ha
/* 8003A4E4 00003AA4  38 63 3C C8 */	addi r3, r3, lbl_80573CC8@l
/* 8003A4E8 00003AA8  4E 80 00 20 */	blr 
.endfn func_8003A4E0

.fn func_8003A4EC, global
/* 8003A4EC 00003AAC  3C 60 80 57 */	lis r3, lbl_80573D38@ha
/* 8003A4F0 00003AB0  38 63 3D 38 */	addi r3, r3, lbl_80573D38@l
/* 8003A4F4 00003AB4  4E 80 00 20 */	blr
.endfn func_8003A4EC

.fn sinit_8003A4F8, local
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
.endfn sinit_8003A4F8


.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_8003A4F8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804F5CF0, global
	.asciz "performanceStart"
	.balign 4
.endobj lbl_804F5CF0

.obj lbl_804F5D04, global
	.asciz "performanceEnd"
	.balign 4
.endobj lbl_804F5D04


.obj lbl_804F5D14, global
	.asciz "deb"
.endobj lbl_804F5D14


.obj lbl_804F5D18, global
	.asciz "wait"
	.balign 4
.endobj lbl_804F5D18

.obj lbl_804F5D20, global
	.asciz "isExistProperty"
.endobj lbl_804F5D20

.obj lbl_804F5D30, global
	.asciz "isExistSelector"
.endobj lbl_804F5D30

.obj lbl_804F5D40, global
	.asciz "getOCName"
	.balign 4
	.4byte 0
.endobj lbl_804F5D40

.section .data, "wa"  # 0x805281E0 - 0x80573C60

#.balign 8

#padding?
.4byte 0
.4byte 0
.4byte 0
.4byte 0
.4byte 0

.obj lbl_80528458, global
	.4byte lbl_80668418
	.4byte put
	.4byte lbl_804F5CF0
	.4byte performanceStart
	.4byte lbl_804F5D04
	.4byte performanceEnd
	.4byte 0
	.4byte 0
.endobj lbl_80528458


.obj lbl_80528478, global
	.4byte lbl_80668420
	.4byte frame
	.4byte 0
	.4byte 0
.endobj lbl_80528478

.obj lbl_80528488, global
	.4byte lbl_804F5D20
	.4byte isExistProperty
	.4byte 0
	.4byte lbl_804F5D30
	.4byte isExistSelector
	.4byte 0
	.4byte lbl_804F5D40
	.4byte getOCName
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_80528488


.obj lbl_805284B8, global
	.4byte lbl_80668428
	.4byte 0
	.4byte 0
	.4byte lbl_80528488
.endobj lbl_805284B8

.obj lbl_805284C8, global
	.4byte lbl_80668430
	.4byte start
	.4byte 0
	.4byte lbl_80668438
	.4byte end
	.4byte 0
	.4byte lbl_80668440
	.4byte isAlive
	.4byte 0
	.4byte lbl_80668448
	.4byte join
	.4byte 0
	.4byte lbl_80668450
	.4byte sleep
	.4byte 0
	.4byte lbl_80668458
	.4byte wakeup
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_805284C8


.obj lbl_80528520, global
	.4byte lbl_80668460
	.4byte thread
	.4byte 0
	.4byte lbl_805284C8
.endobj lbl_80528520


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_80668418, global
	.asciz "put"
	.4byte 0
.endobj lbl_80668418

.obj lbl_80668420, global
	.asciz "frame"
	.balign 4
.endobj lbl_80668420

.obj lbl_80668428, global
	.asciz "builtin"
.endobj lbl_80668428

.obj lbl_80668430, global
	.asciz "start"
	.balign 4
.endobj lbl_80668430

.obj lbl_80668438, global
	.asciz "end"
	.4byte 0
.endobj lbl_80668438

.obj lbl_80668440, global
	.asciz "isAlive"
.endobj lbl_80668440

.obj lbl_80668448, global
	.asciz "join"
	.balign 4
.endobj lbl_80668448

.obj lbl_80668450, global
	.asciz "sleep"
	.balign 4
.endobj lbl_80668450

.obj lbl_80668458, global
	.asciz "wakeup"
	.balign 4
.endobj lbl_80668458

.obj lbl_80668460, global
	.asciz "thread"
	.balign 4
.endobj lbl_80668460

.section .bss, "wa"  # 0x80573C80 - 0x8066417B


.obj lbl_80573CC8, global
	.skip 0x70
.endobj lbl_80573CC8

.obj lbl_80573D38, global
	.skip 0x98
.endobj lbl_80573D38



.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800067E4", local
.hidden "@etb_800067E4"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067E4"

.obj "@etb_800067EC", local
.hidden "@etb_800067EC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067EC"

.obj "@etb_800067F4", local
.hidden "@etb_800067F4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800067F4"

.obj "@etb_800067FC", local
.hidden "@etb_800067FC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800067FC"

.obj "@etb_80006804", local
.hidden "@etb_80006804"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006804"

.obj "@etb_8000680C", local
.hidden "@etb_8000680C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000680C"

.obj "@etb_80006814", local
.hidden "@etb_80006814"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006814"

.obj "@etb_8000681C", local
.hidden "@etb_8000681C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000681C"

.obj "@etb_80006824", local
.hidden "@etb_80006824"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006824"

.obj "@etb_8000682C", local
.hidden "@etb_8000682C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000682C"

.obj "@etb_80006834", local
.hidden "@etb_80006834"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006834"

.obj "@etb_8000683C", local
.hidden "@etb_8000683C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000683C"

.obj "@etb_80006844", local
.hidden "@etb_80006844"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006844"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80021134", local
.hidden "@eti_80021134"
	.4byte performanceStart
	.4byte 0x00000034
	.4byte "@etb_800067E4"
.endobj "@eti_80021134"

.obj "@eti_80021140", local
.hidden "@eti_80021140"
	.4byte performanceEnd
	.4byte 0x00000034
	.4byte "@etb_800067EC"
.endobj "@eti_80021140"

.obj "@eti_8002114C", local
.hidden "@eti_8002114C"
	.4byte frame
	.4byte 0x000000B8
	.4byte "@etb_800067F4"
.endobj "@eti_8002114C"

.obj "@eti_80021158", local
.hidden "@eti_80021158"
	.4byte isExistProperty
	.4byte 0x0000007C
	.4byte "@etb_800067FC"
.endobj "@eti_80021158"

.obj "@eti_80021164", local
.hidden "@eti_80021164"
	.4byte isExistSelector
	.4byte 0x0000007C
	.4byte "@etb_80006804"
.endobj "@eti_80021164"

.obj "@eti_80021170", local
.hidden "@eti_80021170"
	.4byte getOCName
	.4byte 0x00000060
	.4byte "@etb_8000680C"
.endobj "@eti_80021170"

.obj "@eti_8002117C", local
.hidden "@eti_8002117C"
	.4byte thread
	.4byte 0x00000094
	.4byte "@etb_80006814"
.endobj "@eti_8002117C"

.obj "@eti_80021188", local
.hidden "@eti_80021188"
	.4byte start
	.4byte 0x00000024
	.4byte "@etb_8000681C"
.endobj "@eti_80021188"

.obj "@eti_80021194", local
.hidden "@eti_80021194"
	.4byte end
	.4byte 0x00000028
	.4byte "@etb_80006824"
.endobj "@eti_80021194"

.obj "@eti_800211A0", local
.hidden "@eti_800211A0"
	.4byte isAlive
	.4byte 0x00000050
	.4byte "@etb_8000682C"
.endobj "@eti_800211A0"

.obj "@eti_800211AC", local
.hidden "@eti_800211AC"
	.4byte join
	.4byte 0x00000044
	.4byte "@etb_80006834"
.endobj "@eti_800211AC"

.obj "@eti_800211B8", local
.hidden "@eti_800211B8"
	.4byte sleep
	.4byte 0x00000028
	.4byte "@etb_8000683C"
.endobj "@eti_800211B8"

.obj "@eti_800211C4", local
.hidden "@eti_800211C4"
	.4byte wakeup
	.4byte 0x00000028
	.4byte "@etb_80006844"
.endobj "@eti_800211C4"
