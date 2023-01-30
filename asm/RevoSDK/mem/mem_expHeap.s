.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn AllocUsedBlockFromFreeBlock_, global
/* 80348FC0 00312580  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348FC4 00312584  7C 08 02 A6 */	mflr r0
/* 80348FC8 00312588  90 01 00 24 */	stw r0, 0x24(r1)
/* 80348FCC 0031258C  39 61 00 20 */	addi r11, r1, 0x20
/* 80348FD0 00312590  4B F7 11 81 */	bl _savegpr_26
/* 80348FD4 00312594  81 04 00 08 */	lwz r8, 8(r4)
/* 80348FD8 00312598  7F C6 2A 14 */	add r30, r6, r5
/* 80348FDC 0031259C  A0 C4 00 02 */	lhz r6, 2(r4)
/* 80348FE0 003125A0  3B A5 FF F0 */	addi r29, r5, -16
/* 80348FE4 003125A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80348FE8 003125A8  2C 08 00 00 */	cmpwi r8, 0
/* 80348FEC 003125AC  54 C9 C6 7E */	rlwinm r9, r6, 0x18, 0x19, 0x1f
/* 80348FF0 003125B0  81 44 00 0C */	lwz r10, 0xc(r4)
/* 80348FF4 003125B4  7C C4 02 14 */	add r6, r4, r0
/* 80348FF8 003125B8  7C BB 2B 78 */	mr r27, r5
/* 80348FFC 003125BC  7C 7A 1B 78 */	mr r26, r3
/* 80349000 003125C0  7C FC 3B 78 */	mr r28, r7
/* 80349004 003125C4  7F BF EB 78 */	mr r31, r29
/* 80349008 003125C8  7C A9 20 50 */	subf r5, r9, r4
/* 8034900C 003125CC  38 C6 00 10 */	addi r6, r6, 0x10
/* 80349010 003125D0  41 82 00 0C */	beq .L_8034901C
/* 80349014 003125D4  91 48 00 0C */	stw r10, 0xc(r8)
/* 80349018 003125D8  48 00 00 08 */	b .L_80349020
.L_8034901C:
/* 8034901C 003125DC  91 43 00 00 */	stw r10, 0(r3)
.L_80349020:
/* 80349020 003125E0  2C 0A 00 00 */	cmpwi r10, 0
/* 80349024 003125E4  41 82 00 0C */	beq .L_80349030
/* 80349028 003125E8  91 0A 00 08 */	stw r8, 8(r10)
/* 8034902C 003125EC  48 00 00 08 */	b .L_80349034
.L_80349030:
/* 80349030 003125F0  91 03 00 04 */	stw r8, 4(r3)
.L_80349034:
/* 80349034 003125F4  7C 05 E8 50 */	subf r0, r5, r29
/* 80349038 003125F8  28 00 00 14 */	cmplwi r0, 0x14
/* 8034903C 003125FC  41 80 00 18 */	blt .L_80349054
/* 80349040 00312600  2C 07 00 00 */	cmpwi r7, 0
/* 80349044 00312604  40 82 00 18 */	bne .L_8034905C
/* 80349048 00312608  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 8034904C 0031260C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80349050 00312610  40 82 00 0C */	bne .L_8034905C
.L_80349054:
/* 80349054 00312614  7C BF 2B 78 */	mr r31, r5
/* 80349058 00312618  48 00 00 60 */	b .L_803490B8
.L_8034905C:
/* 8034905C 0031261C  38 00 46 52 */	li r0, 0x4652
/* 80349060 00312620  B0 05 00 00 */	sth r0, 0(r5)
/* 80349064 00312624  38 80 00 00 */	li r4, 0
/* 80349068 00312628  2C 08 00 00 */	cmpwi r8, 0
/* 8034906C 0031262C  B0 85 00 02 */	sth r4, 2(r5)
/* 80349070 00312630  38 05 00 10 */	addi r0, r5, 0x10
/* 80349074 00312634  7C 00 E8 50 */	subf r0, r0, r29
/* 80349078 00312638  90 05 00 04 */	stw r0, 4(r5)
/* 8034907C 0031263C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80349080 00312640  91 05 00 08 */	stw r8, 8(r5)
/* 80349084 00312644  41 82 00 10 */	beq .L_80349094
/* 80349088 00312648  80 88 00 0C */	lwz r4, 0xc(r8)
/* 8034908C 0031264C  90 A8 00 0C */	stw r5, 0xc(r8)
/* 80349090 00312650  48 00 00 0C */	b .L_8034909C
.L_80349094:
/* 80349094 00312654  80 83 00 00 */	lwz r4, 0(r3)
/* 80349098 00312658  90 A3 00 00 */	stw r5, 0(r3)
.L_8034909C:
/* 8034909C 0031265C  2C 04 00 00 */	cmpwi r4, 0
/* 803490A0 00312660  90 85 00 0C */	stw r4, 0xc(r5)
/* 803490A4 00312664  41 82 00 0C */	beq .L_803490B0
/* 803490A8 00312668  90 A4 00 08 */	stw r5, 8(r4)
/* 803490AC 0031266C  48 00 00 08 */	b .L_803490B4
.L_803490B0:
/* 803490B0 00312670  90 A3 00 04 */	stw r5, 4(r3)
.L_803490B4:
/* 803490B4 00312674  7C A8 2B 78 */	mr r8, r5
.L_803490B8:
/* 803490B8 00312678  7C 1E 30 50 */	subf r0, r30, r6
/* 803490BC 0031267C  28 00 00 14 */	cmplwi r0, 0x14
/* 803490C0 00312680  41 80 00 18 */	blt .L_803490D8
/* 803490C4 00312684  28 07 00 01 */	cmplwi r7, 1
/* 803490C8 00312688  40 82 00 18 */	bne .L_803490E0
/* 803490CC 0031268C  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 803490D0 00312690  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 803490D4 00312694  40 82 00 0C */	bne .L_803490E0
.L_803490D8:
/* 803490D8 00312698  7C DE 33 78 */	mr r30, r6
/* 803490DC 0031269C  48 00 00 5C */	b .L_80349138
.L_803490E0:
/* 803490E0 003126A0  38 00 46 52 */	li r0, 0x4652
/* 803490E4 003126A4  B0 1E 00 00 */	sth r0, 0(r30)
/* 803490E8 003126A8  38 80 00 00 */	li r4, 0
/* 803490EC 003126AC  2C 08 00 00 */	cmpwi r8, 0
/* 803490F0 003126B0  B0 9E 00 02 */	sth r4, 2(r30)
/* 803490F4 003126B4  38 1E 00 10 */	addi r0, r30, 0x10
/* 803490F8 003126B8  7C 00 30 50 */	subf r0, r0, r6
/* 803490FC 003126BC  90 1E 00 04 */	stw r0, 4(r30)
/* 80349100 003126C0  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80349104 003126C4  91 1E 00 08 */	stw r8, 8(r30)
/* 80349108 003126C8  41 82 00 10 */	beq .L_80349118
/* 8034910C 003126CC  80 88 00 0C */	lwz r4, 0xc(r8)
/* 80349110 003126D0  93 C8 00 0C */	stw r30, 0xc(r8)
/* 80349114 003126D4  48 00 00 0C */	b .L_80349120
.L_80349118:
/* 80349118 003126D8  80 83 00 00 */	lwz r4, 0(r3)
/* 8034911C 003126DC  93 C3 00 00 */	stw r30, 0(r3)
.L_80349120:
/* 80349120 003126E0  2C 04 00 00 */	cmpwi r4, 0
/* 80349124 003126E4  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80349128 003126E8  41 82 00 0C */	beq .L_80349134
/* 8034912C 003126EC  93 C4 00 08 */	stw r30, 8(r4)
/* 80349130 003126F0  48 00 00 08 */	b .L_80349138
.L_80349134:
/* 80349134 003126F4  93 C3 00 04 */	stw r30, 4(r3)
.L_80349138:
/* 80349138 003126F8  80 03 FF FC */	lwz r0, -4(r3)
/* 8034913C 003126FC  7C BF F0 50 */	subf r5, r31, r30
/* 80349140 00312700  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80349144 00312704  41 82 00 10 */	beq .L_80349154
/* 80349148 00312708  7F E3 FB 78 */	mr r3, r31
/* 8034914C 0031270C  38 80 00 00 */	li r4, 0
/* 80349150 00312710  4B CB B2 01 */	bl memset
.L_80349154:
/* 80349154 00312714  38 A0 00 00 */	li r5, 0
/* 80349158 00312718  38 9D 00 10 */	addi r4, r29, 0x10
/* 8034915C 0031271C  7C A3 2B 78 */	mr r3, r5
/* 80349160 00312720  38 C0 55 44 */	li r6, 0x5544
/* 80349164 00312724  7C 84 F0 50 */	subf r4, r4, r30
/* 80349168 00312728  7C 1F E8 50 */	subf r0, r31, r29
/* 8034916C 0031272C  53 83 7C 20 */	rlwimi r3, r28, 0xf, 0x10, 0x10
/* 80349170 00312730  B0 DD 00 00 */	sth r6, 0(r29)
/* 80349174 00312734  50 03 44 6E */	rlwimi r3, r0, 8, 0x11, 0x17
/* 80349178 00312738  90 9D 00 04 */	stw r4, 4(r29)
/* 8034917C 0031273C  90 BD 00 08 */	stw r5, 8(r29)
/* 80349180 00312740  90 BD 00 0C */	stw r5, 0xc(r29)
/* 80349184 00312744  B0 7D 00 02 */	sth r3, 2(r29)
/* 80349188 00312748  A0 1A 00 10 */	lhz r0, 0x10(r26)
/* 8034918C 0031274C  50 03 06 3E */	rlwimi r3, r0, 0, 0x18, 0x1f
/* 80349190 00312750  B0 7D 00 02 */	sth r3, 2(r29)
/* 80349194 00312754  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 80349198 00312758  90 9D 00 08 */	stw r4, 8(r29)
/* 8034919C 0031275C  2C 04 00 00 */	cmpwi r4, 0
/* 803491A0 00312760  41 82 00 10 */	beq .L_803491B0
/* 803491A4 00312764  80 64 00 0C */	lwz r3, 0xc(r4)
/* 803491A8 00312768  93 A4 00 0C */	stw r29, 0xc(r4)
/* 803491AC 0031276C  48 00 00 0C */	b .L_803491B8
.L_803491B0:
/* 803491B0 00312770  80 7A 00 08 */	lwz r3, 8(r26)
/* 803491B4 00312774  93 BA 00 08 */	stw r29, 8(r26)
.L_803491B8:
/* 803491B8 00312778  2C 03 00 00 */	cmpwi r3, 0
/* 803491BC 0031277C  90 7D 00 0C */	stw r3, 0xc(r29)
/* 803491C0 00312780  41 82 00 0C */	beq .L_803491CC
/* 803491C4 00312784  93 A3 00 08 */	stw r29, 8(r3)
/* 803491C8 00312788  48 00 00 08 */	b .L_803491D0
.L_803491CC:
/* 803491CC 0031278C  93 BA 00 0C */	stw r29, 0xc(r26)
.L_803491D0:
/* 803491D0 00312790  39 61 00 20 */	addi r11, r1, 0x20
/* 803491D4 00312794  7F 63 DB 78 */	mr r3, r27
/* 803491D8 00312798  4B F7 0F C5 */	bl _restgpr_26
/* 803491DC 0031279C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803491E0 003127A0  7C 08 03 A6 */	mtlr r0
/* 803491E4 003127A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803491E8 003127A8  4E 80 00 20 */	blr 
.endfn AllocUsedBlockFromFreeBlock_

.balign 16, 0
.fn AllocFromHead_, global
/* 803491F0 003127B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803491F4 003127B4  7C 08 02 A6 */	mflr r0
/* 803491F8 003127B8  38 63 00 3C */	addi r3, r3, 0x3c
/* 803491FC 003127BC  7C 86 23 78 */	mr r6, r4
/* 80349200 003127C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80349204 003127C4  38 05 FF FF */	addi r0, r5, -1
/* 80349208 003127C8  7C 09 00 F8 */	nor r9, r0, r0
/* 8034920C 003127CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80349210 003127D0  3B E0 00 00 */	li r31, 0
/* 80349214 003127D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80349218 003127D8  3B C0 FF FF */	li r30, -1
/* 8034921C 003127DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80349220 003127E0  3B A0 00 00 */	li r29, 0
/* 80349224 003127E4  A0 E3 00 12 */	lhz r7, 0x12(r3)
/* 80349228 003127E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8034922C 003127EC  54 E0 07 FE */	clrlwi r0, r7, 0x1f
/* 80349230 003127F0  7C 00 00 34 */	cntlzw r0, r0
/* 80349234 003127F4  54 0B D9 7E */	srwi r11, r0, 5
/* 80349238 003127F8  48 00 00 50 */	b .L_80349288
.L_8034923C:
/* 8034923C 003127FC  39 0C 00 10 */	addi r8, r12, 0x10
/* 80349240 00312800  81 4C 00 04 */	lwz r10, 4(r12)
/* 80349244 00312804  7C E5 42 14 */	add r7, r5, r8
/* 80349248 00312808  38 07 FF FF */	addi r0, r7, -1
/* 8034924C 0031280C  7D 27 00 38 */	and r7, r9, r0
/* 80349250 00312810  7C 08 38 50 */	subf r0, r8, r7
/* 80349254 00312814  7C 04 02 14 */	add r0, r4, r0
/* 80349258 00312818  7C 0A 00 40 */	cmplw r10, r0
/* 8034925C 0031281C  41 80 00 28 */	blt .L_80349284
/* 80349260 00312820  7C 1E 50 40 */	cmplw r30, r10
/* 80349264 00312824  40 81 00 20 */	ble .L_80349284
/* 80349268 00312828  2C 0B 00 00 */	cmpwi r11, 0
/* 8034926C 0031282C  7D 9F 63 78 */	mr r31, r12
/* 80349270 00312830  7D 5E 53 78 */	mr r30, r10
/* 80349274 00312834  7C FD 3B 78 */	mr r29, r7
/* 80349278 00312838  40 82 00 18 */	bne .L_80349290
/* 8034927C 0031283C  7C 0A 20 40 */	cmplw r10, r4
/* 80349280 00312840  41 82 00 10 */	beq .L_80349290
.L_80349284:
/* 80349284 00312844  81 8C 00 0C */	lwz r12, 0xc(r12)
.L_80349288:
/* 80349288 00312848  2C 0C 00 00 */	cmpwi r12, 0
/* 8034928C 0031284C  40 82 FF B0 */	bne .L_8034923C
.L_80349290:
/* 80349290 00312850  2C 1F 00 00 */	cmpwi r31, 0
/* 80349294 00312854  41 82 00 18 */	beq .L_803492AC
/* 80349298 00312858  7F E4 FB 78 */	mr r4, r31
/* 8034929C 0031285C  7F A5 EB 78 */	mr r5, r29
/* 803492A0 00312860  38 E0 00 00 */	li r7, 0
/* 803492A4 00312864  4B FF FD 1D */	bl AllocUsedBlockFromFreeBlock_
/* 803492A8 00312868  48 00 00 08 */	b .L_803492B0
.L_803492AC:
/* 803492AC 0031286C  38 60 00 00 */	li r3, 0
.L_803492B0:
/* 803492B0 00312870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803492B4 00312874  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803492B8 00312878  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803492BC 0031287C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803492C0 00312880  7C 08 03 A6 */	mtlr r0
/* 803492C4 00312884  38 21 00 20 */	addi r1, r1, 0x20
/* 803492C8 00312888  4E 80 00 20 */	blr 
.endfn AllocFromHead_

.balign 16, 0
.fn AllocFromTail_, global
/* 803492D0 00312890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803492D4 00312894  7C 08 02 A6 */	mflr r0
/* 803492D8 00312898  38 63 00 3C */	addi r3, r3, 0x3c
/* 803492DC 0031289C  7C 86 23 78 */	mr r6, r4
/* 803492E0 003128A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803492E4 003128A4  38 05 FF FF */	addi r0, r5, -1
/* 803492E8 003128A8  7C 08 00 F8 */	nor r8, r0, r0
/* 803492EC 003128AC  39 80 00 00 */	li r12, 0
/* 803492F0 003128B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803492F4 003128B4  3B E0 FF FF */	li r31, -1
/* 803492F8 003128B8  93 C1 00 08 */	stw r30, 8(r1)
/* 803492FC 003128BC  A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 80349300 003128C0  81 63 00 04 */	lwz r11, 4(r3)
/* 80349304 003128C4  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 80349308 003128C8  38 A0 00 00 */	li r5, 0
/* 8034930C 003128CC  7C 00 00 34 */	cntlzw r0, r0
/* 80349310 003128D0  54 0A D9 7E */	srwi r10, r0, 5
/* 80349314 003128D4  48 00 00 48 */	b .L_8034935C
.L_80349318:
/* 80349318 003128D8  81 2B 00 04 */	lwz r9, 4(r11)
/* 8034931C 003128DC  38 EB 00 10 */	addi r7, r11, 0x10
/* 80349320 003128E0  7C 09 3A 14 */	add r0, r9, r7
/* 80349324 003128E4  7C 04 00 50 */	subf r0, r4, r0
/* 80349328 003128E8  7D 1E 00 38 */	and r30, r8, r0
/* 8034932C 003128EC  7C 07 F0 51 */	subf. r0, r7, r30
/* 80349330 003128F0  41 80 00 28 */	blt .L_80349358
/* 80349334 003128F4  7C 1F 48 40 */	cmplw r31, r9
/* 80349338 003128F8  40 81 00 20 */	ble .L_80349358
/* 8034933C 003128FC  2C 0A 00 00 */	cmpwi r10, 0
/* 80349340 00312900  7D 6C 5B 78 */	mr r12, r11
/* 80349344 00312904  7D 3F 4B 78 */	mr r31, r9
/* 80349348 00312908  7F C5 F3 78 */	mr r5, r30
/* 8034934C 0031290C  40 82 00 18 */	bne .L_80349364
/* 80349350 00312910  7C 09 20 40 */	cmplw r9, r4
/* 80349354 00312914  41 82 00 10 */	beq .L_80349364
.L_80349358:
/* 80349358 00312918  81 6B 00 08 */	lwz r11, 8(r11)
.L_8034935C:
/* 8034935C 0031291C  2C 0B 00 00 */	cmpwi r11, 0
/* 80349360 00312920  40 82 FF B8 */	bne .L_80349318
.L_80349364:
/* 80349364 00312924  2C 0C 00 00 */	cmpwi r12, 0
/* 80349368 00312928  41 82 00 14 */	beq .L_8034937C
/* 8034936C 0031292C  7D 84 63 78 */	mr r4, r12
/* 80349370 00312930  38 E0 00 01 */	li r7, 1
/* 80349374 00312934  4B FF FC 4D */	bl AllocUsedBlockFromFreeBlock_
/* 80349378 00312938  48 00 00 08 */	b .L_80349380
.L_8034937C:
/* 8034937C 0031293C  38 60 00 00 */	li r3, 0
.L_80349380:
/* 80349380 00312940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80349384 00312944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80349388 00312948  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034938C 0031294C  7C 08 03 A6 */	mtlr r0
/* 80349390 00312950  38 21 00 10 */	addi r1, r1, 0x10
/* 80349394 00312954  4E 80 00 20 */	blr 
.endfn AllocFromTail_

.balign 16, 0
.fn RecycleRegion_, global
/* 803493A0 00312960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803493A4 00312964  39 00 00 00 */	li r8, 0
/* 803493A8 00312968  80 A4 00 00 */	lwz r5, 0(r4)
/* 803493AC 0031296C  80 04 00 04 */	lwz r0, 4(r4)
/* 803493B0 00312970  90 A1 00 08 */	stw r5, 8(r1)
/* 803493B4 00312974  80 C3 00 00 */	lwz r6, 0(r3)
/* 803493B8 00312978  90 01 00 0C */	stw r0, 0xc(r1)
/* 803493BC 0031297C  48 00 00 6C */	b .L_80349428
.L_803493C0:
/* 803493C0 00312980  80 04 00 00 */	lwz r0, 0(r4)
/* 803493C4 00312984  7C 06 00 40 */	cmplw r6, r0
/* 803493C8 00312988  40 80 00 0C */	bge .L_803493D4
/* 803493CC 0031298C  7C C8 33 78 */	mr r8, r6
/* 803493D0 00312990  48 00 00 54 */	b .L_80349424
.L_803493D4:
/* 803493D4 00312994  80 04 00 04 */	lwz r0, 4(r4)
/* 803493D8 00312998  7C 06 00 40 */	cmplw r6, r0
/* 803493DC 0031299C  40 82 00 54 */	bne .L_80349430
/* 803493E0 003129A0  80 06 00 04 */	lwz r0, 4(r6)
/* 803493E4 003129A4  80 E6 00 08 */	lwz r7, 8(r6)
/* 803493E8 003129A8  7C A6 02 14 */	add r5, r6, r0
/* 803493EC 003129AC  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 803493F0 003129B0  38 05 00 10 */	addi r0, r5, 0x10
/* 803493F4 003129B4  2C 07 00 00 */	cmpwi r7, 0
/* 803493F8 003129B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803493FC 003129BC  41 82 00 0C */	beq .L_80349408
/* 80349400 003129C0  90 C7 00 0C */	stw r6, 0xc(r7)
/* 80349404 003129C4  48 00 00 08 */	b .L_8034940C
.L_80349408:
/* 80349408 003129C8  90 C3 00 00 */	stw r6, 0(r3)
.L_8034940C:
/* 8034940C 003129CC  2C 06 00 00 */	cmpwi r6, 0
/* 80349410 003129D0  41 82 00 0C */	beq .L_8034941C
/* 80349414 003129D4  90 E6 00 08 */	stw r7, 8(r6)
/* 80349418 003129D8  48 00 00 18 */	b .L_80349430
.L_8034941C:
/* 8034941C 003129DC  90 E3 00 04 */	stw r7, 4(r3)
/* 80349420 003129E0  48 00 00 10 */	b .L_80349430
.L_80349424:
/* 80349424 003129E4  80 C6 00 0C */	lwz r6, 0xc(r6)
.L_80349428:
/* 80349428 003129E8  2C 06 00 00 */	cmpwi r6, 0
/* 8034942C 003129EC  40 82 FF 94 */	bne .L_803493C0
.L_80349430:
/* 80349430 003129F0  2C 08 00 00 */	cmpwi r8, 0
/* 80349434 003129F4  41 82 00 54 */	beq .L_80349488
/* 80349438 003129F8  80 A8 00 04 */	lwz r5, 4(r8)
/* 8034943C 003129FC  80 04 00 00 */	lwz r0, 0(r4)
/* 80349440 00312A00  7C 88 2A 14 */	add r4, r8, r5
/* 80349444 00312A04  38 84 00 10 */	addi r4, r4, 0x10
/* 80349448 00312A08  7C 04 00 40 */	cmplw r4, r0
/* 8034944C 00312A0C  40 82 00 3C */	bne .L_80349488
/* 80349450 00312A10  80 A8 00 08 */	lwz r5, 8(r8)
/* 80349454 00312A14  91 01 00 08 */	stw r8, 8(r1)
/* 80349458 00312A18  2C 05 00 00 */	cmpwi r5, 0
/* 8034945C 00312A1C  80 88 00 0C */	lwz r4, 0xc(r8)
/* 80349460 00312A20  41 82 00 0C */	beq .L_8034946C
/* 80349464 00312A24  90 85 00 0C */	stw r4, 0xc(r5)
/* 80349468 00312A28  48 00 00 08 */	b .L_80349470
.L_8034946C:
/* 8034946C 00312A2C  90 83 00 00 */	stw r4, 0(r3)
.L_80349470:
/* 80349470 00312A30  2C 04 00 00 */	cmpwi r4, 0
/* 80349474 00312A34  41 82 00 0C */	beq .L_80349480
/* 80349478 00312A38  90 A4 00 08 */	stw r5, 8(r4)
/* 8034947C 00312A3C  48 00 00 08 */	b .L_80349484
.L_80349480:
/* 80349480 00312A40  90 A3 00 04 */	stw r5, 4(r3)
.L_80349484:
/* 80349484 00312A44  7C A8 2B 78 */	mr r8, r5
.L_80349488:
/* 80349488 00312A48  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8034948C 00312A4C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80349490 00312A50  7C 05 30 50 */	subf r0, r5, r6
/* 80349494 00312A54  28 00 00 10 */	cmplwi r0, 0x10
/* 80349498 00312A58  40 80 00 0C */	bge .L_803494A4
/* 8034949C 00312A5C  38 60 00 00 */	li r3, 0
/* 803494A0 00312A60  48 00 00 60 */	b .L_80349500
.L_803494A4:
/* 803494A4 00312A64  38 00 46 52 */	li r0, 0x4652
/* 803494A8 00312A68  B0 05 00 00 */	sth r0, 0(r5)
/* 803494AC 00312A6C  38 80 00 00 */	li r4, 0
/* 803494B0 00312A70  2C 08 00 00 */	cmpwi r8, 0
/* 803494B4 00312A74  B0 85 00 02 */	sth r4, 2(r5)
/* 803494B8 00312A78  38 05 00 10 */	addi r0, r5, 0x10
/* 803494BC 00312A7C  7C 00 30 50 */	subf r0, r0, r6
/* 803494C0 00312A80  90 05 00 04 */	stw r0, 4(r5)
/* 803494C4 00312A84  90 85 00 0C */	stw r4, 0xc(r5)
/* 803494C8 00312A88  91 05 00 08 */	stw r8, 8(r5)
/* 803494CC 00312A8C  41 82 00 10 */	beq .L_803494DC
/* 803494D0 00312A90  80 88 00 0C */	lwz r4, 0xc(r8)
/* 803494D4 00312A94  90 A8 00 0C */	stw r5, 0xc(r8)
/* 803494D8 00312A98  48 00 00 0C */	b .L_803494E4
.L_803494DC:
/* 803494DC 00312A9C  80 83 00 00 */	lwz r4, 0(r3)
/* 803494E0 00312AA0  90 A3 00 00 */	stw r5, 0(r3)
.L_803494E4:
/* 803494E4 00312AA4  2C 04 00 00 */	cmpwi r4, 0
/* 803494E8 00312AA8  90 85 00 0C */	stw r4, 0xc(r5)
/* 803494EC 00312AAC  41 82 00 0C */	beq .L_803494F8
/* 803494F0 00312AB0  90 A4 00 08 */	stw r5, 8(r4)
/* 803494F4 00312AB4  48 00 00 08 */	b .L_803494FC
.L_803494F8:
/* 803494F8 00312AB8  90 A3 00 04 */	stw r5, 4(r3)
.L_803494FC:
/* 803494FC 00312ABC  38 60 00 01 */	li r3, 1
.L_80349500:
/* 80349500 00312AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80349504 00312AC4  4E 80 00 20 */	blr 
.endfn RecycleRegion_

.balign 16, 0
.fn MEMCreateExpHeapEx, global
/* 80349510 00312AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80349514 00312AD4  7C 08 02 A6 */	mflr r0
/* 80349518 00312AD8  7C 84 1A 14 */	add r4, r4, r3
/* 8034951C 00312ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80349520 00312AE0  38 03 00 03 */	addi r0, r3, 3
/* 80349524 00312AE4  54 86 00 3A */	rlwinm r6, r4, 0, 0, 0x1d
/* 80349528 00312AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034952C 00312AEC  54 1F 00 3A */	rlwinm r31, r0, 0, 0, 0x1d
/* 80349530 00312AF0  7C 1F 30 40 */	cmplw r31, r6
/* 80349534 00312AF4  41 81 00 10 */	bgt .L_80349544
/* 80349538 00312AF8  7C 1F 30 50 */	subf r0, r31, r6
/* 8034953C 00312AFC  28 00 00 64 */	cmplwi r0, 0x64
/* 80349540 00312B00  40 80 00 0C */	bge .L_8034954C
.L_80349544:
/* 80349544 00312B04  38 60 00 00 */	li r3, 0
/* 80349548 00312B08  48 00 00 64 */	b .L_803495AC
.L_8034954C:
/* 8034954C 00312B0C  3C 80 45 58 */	lis r4, 0x45585048@ha
/* 80349550 00312B10  7C A7 2B 78 */	mr r7, r5
/* 80349554 00312B14  7F E3 FB 78 */	mr r3, r31
/* 80349558 00312B18  38 BF 00 50 */	addi r5, r31, 0x50
/* 8034955C 00312B1C  38 84 50 48 */	addi r4, r4, 0x45585048@l
/* 80349560 00312B20  4B FF F7 31 */	bl MEMiInitHeapHead
/* 80349564 00312B24  38 A0 00 00 */	li r5, 0
/* 80349568 00312B28  B0 BF 00 4C */	sth r5, 0x4c(r31)
/* 8034956C 00312B2C  38 80 46 52 */	li r4, 0x4652
/* 80349570 00312B30  7F E3 FB 78 */	mr r3, r31
/* 80349574 00312B34  B0 BF 00 4E */	sth r5, 0x4e(r31)
/* 80349578 00312B38  80 DF 00 18 */	lwz r6, 0x18(r31)
/* 8034957C 00312B3C  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 80349580 00312B40  38 06 00 10 */	addi r0, r6, 0x10
/* 80349584 00312B44  B0 86 00 00 */	sth r4, 0(r6)
/* 80349588 00312B48  7C 00 38 50 */	subf r0, r0, r7
/* 8034958C 00312B4C  B0 A6 00 02 */	sth r5, 2(r6)
/* 80349590 00312B50  90 06 00 04 */	stw r0, 4(r6)
/* 80349594 00312B54  90 A6 00 08 */	stw r5, 8(r6)
/* 80349598 00312B58  90 A6 00 0C */	stw r5, 0xc(r6)
/* 8034959C 00312B5C  90 DF 00 3C */	stw r6, 0x3c(r31)
/* 803495A0 00312B60  90 DF 00 40 */	stw r6, 0x40(r31)
/* 803495A4 00312B64  90 BF 00 44 */	stw r5, 0x44(r31)
/* 803495A8 00312B68  90 BF 00 48 */	stw r5, 0x48(r31)
.L_803495AC:
/* 803495AC 00312B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803495B0 00312B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803495B4 00312B74  7C 08 03 A6 */	mtlr r0
/* 803495B8 00312B78  38 21 00 10 */	addi r1, r1, 0x10
/* 803495BC 00312B7C  4E 80 00 20 */	blr 
.endfn MEMCreateExpHeapEx

.balign 16, 0
.fn MEMDestroyExpHeap, global
/* 803495C0 00312B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803495C4 00312B84  7C 08 02 A6 */	mflr r0
/* 803495C8 00312B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803495CC 00312B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803495D0 00312B90  7C 7F 1B 78 */	mr r31, r3
/* 803495D4 00312B94  4B FF F8 7D */	bl MEMiFinalizeHeap
/* 803495D8 00312B98  7F E3 FB 78 */	mr r3, r31
/* 803495DC 00312B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803495E0 00312BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803495E4 00312BA4  7C 08 03 A6 */	mtlr r0
/* 803495E8 00312BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803495EC 00312BAC  4E 80 00 20 */	blr
.endfn MEMDestroyExpHeap

.balign 16, 0
.fn MEMAllocFromExpHeapEx, global
/* 803495F0 00312BB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803495F4 00312BB4  7C 08 02 A6 */	mflr r0
/* 803495F8 00312BB8  2C 04 00 00 */	cmpwi r4, 0
/* 803495FC 00312BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80349600 00312BC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80349604 00312BC4  7C BF 2B 78 */	mr r31, r5
/* 80349608 00312BC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034960C 00312BCC  7C 9E 23 78 */	mr r30, r4
/* 80349610 00312BD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80349614 00312BD4  7C 7D 1B 78 */	mr r29, r3
/* 80349618 00312BD8  40 82 00 08 */	bne .L_80349620
/* 8034961C 00312BDC  3B C0 00 01 */	li r30, 1
.L_80349620:
/* 80349620 00312BE0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80349624 00312BE4  38 9E 00 03 */	addi r4, r30, 3
/* 80349628 00312BE8  54 9E 00 3A */	rlwinm r30, r4, 0, 0, 0x1d
/* 8034962C 00312BEC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80349630 00312BF0  41 82 00 0C */	beq .L_8034963C
/* 80349634 00312BF4  38 63 00 20 */	addi r3, r3, 0x20
/* 80349638 00312BF8  48 01 06 29 */	bl OSLockMutex
.L_8034963C:
/* 8034963C 00312BFC  2C 1F 00 00 */	cmpwi r31, 0
/* 80349640 00312C00  41 80 00 18 */	blt .L_80349658
/* 80349644 00312C04  7F A3 EB 78 */	mr r3, r29
/* 80349648 00312C08  7F C4 F3 78 */	mr r4, r30
/* 8034964C 00312C0C  7F E5 FB 78 */	mr r5, r31
/* 80349650 00312C10  4B FF FB A1 */	bl AllocFromHead_
/* 80349654 00312C14  48 00 00 14 */	b .L_80349668
.L_80349658:
/* 80349658 00312C18  7F A3 EB 78 */	mr r3, r29
/* 8034965C 00312C1C  7F C4 F3 78 */	mr r4, r30
/* 80349660 00312C20  7C BF 00 D0 */	neg r5, r31
/* 80349664 00312C24  4B FF FC 6D */	bl AllocFromTail_
.L_80349668:
/* 80349668 00312C28  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 8034966C 00312C2C  7C 7F 1B 78 */	mr r31, r3
/* 80349670 00312C30  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80349674 00312C34  41 82 00 0C */	beq .L_80349680
/* 80349678 00312C38  38 7D 00 20 */	addi r3, r29, 0x20
/* 8034967C 00312C3C  48 01 06 C5 */	bl OSUnlockMutex
.L_80349680:
/* 80349680 00312C40  7F E3 FB 78 */	mr r3, r31
/* 80349684 00312C44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80349688 00312C48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034968C 00312C4C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80349690 00312C50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80349694 00312C54  7C 08 03 A6 */	mtlr r0
/* 80349698 00312C58  38 21 00 20 */	addi r1, r1, 0x20
/* 8034969C 00312C5C  4E 80 00 20 */	blr
.endfn MEMAllocFromExpHeapEx

.balign 16, 0
.fn MEMFreeToExpHeap, global
/* 803496A0 00312C60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803496A4 00312C64  7C 08 02 A6 */	mflr r0
/* 803496A8 00312C68  2C 04 00 00 */	cmpwi r4, 0
/* 803496AC 00312C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803496B0 00312C70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803496B4 00312C74  7C 9F 23 78 */	mr r31, r4
/* 803496B8 00312C78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803496BC 00312C7C  7C 7E 1B 78 */	mr r30, r3
/* 803496C0 00312C80  41 82 00 8C */	beq .L_8034974C
/* 803496C4 00312C84  80 03 00 38 */	lwz r0, 0x38(r3)
/* 803496C8 00312C88  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803496CC 00312C8C  41 82 00 0C */	beq .L_803496D8
/* 803496D0 00312C90  38 63 00 20 */	addi r3, r3, 0x20
/* 803496D4 00312C94  48 01 05 8D */	bl OSLockMutex
.L_803496D8:
/* 803496D8 00312C98  A0 1F FF F2 */	lhz r0, -0xe(r31)
/* 803496DC 00312C9C  38 DF FF F0 */	addi r6, r31, -16
/* 803496E0 00312CA0  38 7E 00 3C */	addi r3, r30, 0x3c
/* 803496E4 00312CA4  54 00 C6 7E */	rlwinm r0, r0, 0x18, 0x19, 0x1f
/* 803496E8 00312CA8  7C 00 30 50 */	subf r0, r0, r6
/* 803496EC 00312CAC  90 01 00 08 */	stw r0, 8(r1)
/* 803496F0 00312CB0  80 1F FF F4 */	lwz r0, -0xc(r31)
/* 803496F4 00312CB4  7C 86 02 14 */	add r4, r6, r0
/* 803496F8 00312CB8  38 04 00 10 */	addi r0, r4, 0x10
/* 803496FC 00312CBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80349700 00312CC0  80 BF FF F8 */	lwz r5, -8(r31)
/* 80349704 00312CC4  80 9F FF FC */	lwz r4, -4(r31)
/* 80349708 00312CC8  2C 05 00 00 */	cmpwi r5, 0
/* 8034970C 00312CCC  41 82 00 0C */	beq .L_80349718
/* 80349710 00312CD0  90 85 00 0C */	stw r4, 0xc(r5)
/* 80349714 00312CD4  48 00 00 08 */	b .L_8034971C
.L_80349718:
/* 80349718 00312CD8  90 83 00 08 */	stw r4, 8(r3)
.L_8034971C:
/* 8034971C 00312CDC  2C 04 00 00 */	cmpwi r4, 0
/* 80349720 00312CE0  41 82 00 0C */	beq .L_8034972C
/* 80349724 00312CE4  90 A4 00 08 */	stw r5, 8(r4)
/* 80349728 00312CE8  48 00 00 08 */	b .L_80349730
.L_8034972C:
/* 8034972C 00312CEC  90 A3 00 0C */	stw r5, 0xc(r3)
.L_80349730:
/* 80349730 00312CF0  38 81 00 08 */	addi r4, r1, 8
/* 80349734 00312CF4  4B FF FC 6D */	bl RecycleRegion_
/* 80349738 00312CF8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8034973C 00312CFC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80349740 00312D00  41 82 00 0C */	beq .L_8034974C
/* 80349744 00312D04  38 7E 00 20 */	addi r3, r30, 0x20
/* 80349748 00312D08  48 01 05 F9 */	bl OSUnlockMutex
.L_8034974C:
/* 8034974C 00312D0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80349750 00312D10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80349754 00312D14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80349758 00312D18  7C 08 03 A6 */	mtlr r0
/* 8034975C 00312D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80349760 00312D20  4E 80 00 20 */	blr 
.endfn MEMFreeToExpHeap