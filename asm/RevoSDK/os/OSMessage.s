.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn OSInitMessageQueue, global
/* 803591A0 00322760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803591A4 00322764  7C 08 02 A6 */	mflr r0
/* 803591A8 00322768  90 01 00 24 */	stw r0, 0x24(r1)
/* 803591AC 0032276C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803591B0 00322770  7C BF 2B 78 */	mr r31, r5
/* 803591B4 00322774  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803591B8 00322778  7C 9E 23 78 */	mr r30, r4
/* 803591BC 0032277C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803591C0 00322780  7C 7D 1B 78 */	mr r29, r3
/* 803591C4 00322784  48 00 24 0D */	bl OSInitThreadQueue
/* 803591C8 00322788  38 7D 00 08 */	addi r3, r29, 8
/* 803591CC 0032278C  48 00 24 05 */	bl OSInitThreadQueue
/* 803591D0 00322790  38 00 00 00 */	li r0, 0
/* 803591D4 00322794  93 DD 00 10 */	stw r30, 0x10(r29)
/* 803591D8 00322798  93 FD 00 14 */	stw r31, 0x14(r29)
/* 803591DC 0032279C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 803591E0 003227A0  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 803591E4 003227A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803591E8 003227A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803591EC 003227AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803591F0 003227B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803591F4 003227B4  7C 08 03 A6 */	mtlr r0
/* 803591F8 003227B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803591FC 003227BC  4E 80 00 20 */	blr 
.endfn OSInitMessageQueue

.balign 16, 0
.fn OSSendMessage, global
/* 80359200 003227C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359204 003227C4  7C 08 02 A6 */	mflr r0
/* 80359208 003227C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035920C 003227CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359210 003227D0  7C BF 2B 78 */	mr r31, r5
/* 80359214 003227D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80359218 003227D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035921C 003227DC  7C 9D 23 78 */	mr r29, r4
/* 80359220 003227E0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80359224 003227E4  7C 7C 1B 78 */	mr r28, r3
/* 80359228 003227E8  4B FF F7 89 */	bl OSDisableInterrupts
/* 8035922C 003227EC  7C 7E 1B 78 */	mr r30, r3
/* 80359230 003227F0  57 FF 07 FE */	clrlwi r31, r31, 0x1f
/* 80359234 003227F4  48 00 00 24 */	b .L_80359258
.L_80359238:
/* 80359238 003227F8  2C 1F 00 00 */	cmpwi r31, 0
/* 8035923C 003227FC  40 82 00 14 */	bne .L_80359250
/* 80359240 00322800  7F C3 F3 78 */	mr r3, r30
/* 80359244 00322804  4B FF F7 AD */	bl OSRestoreInterrupts
/* 80359248 00322808  38 60 00 00 */	li r3, 0
/* 8035924C 0032280C  48 00 00 5C */	b .L_803592A8
.L_80359250:
/* 80359250 00322810  7F 83 E3 78 */	mr r3, r28
/* 80359254 00322814  48 00 34 1D */	bl OSSleepThread
.L_80359258:
/* 80359258 00322818  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8035925C 0032281C  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 80359260 00322820  7C 06 20 00 */	cmpw r6, r4
/* 80359264 00322824  40 81 FF D4 */	ble .L_80359238
/* 80359268 00322828  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8035926C 0032282C  38 7C 00 08 */	addi r3, r28, 8
/* 80359270 00322830  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 80359274 00322834  7C 80 22 14 */	add r4, r0, r4
/* 80359278 00322838  7C 04 33 D6 */	divw r0, r4, r6
/* 8035927C 0032283C  7C 00 31 D6 */	mullw r0, r0, r6
/* 80359280 00322840  7C 00 20 50 */	subf r0, r0, r4
/* 80359284 00322844  54 00 10 3A */	slwi r0, r0, 2
/* 80359288 00322848  7F A5 01 2E */	stwx r29, r5, r0
/* 8035928C 0032284C  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 80359290 00322850  38 04 00 01 */	addi r0, r4, 1
/* 80359294 00322854  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 80359298 00322858  48 00 34 C9 */	bl OSWakeupThread
/* 8035929C 0032285C  7F C3 F3 78 */	mr r3, r30
/* 803592A0 00322860  4B FF F7 51 */	bl OSRestoreInterrupts
/* 803592A4 00322864  38 60 00 01 */	li r3, 1
.L_803592A8:
/* 803592A8 00322868  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803592AC 0032286C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803592B0 00322870  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803592B4 00322874  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803592B8 00322878  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803592BC 0032287C  7C 08 03 A6 */	mtlr r0
/* 803592C0 00322880  38 21 00 20 */	addi r1, r1, 0x20
/* 803592C4 00322884  4E 80 00 20 */	blr 
.endfn OSSendMessage

.balign 16, 0
.fn OSReceiveMessage, global
/* 803592D0 00322890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803592D4 00322894  7C 08 02 A6 */	mflr r0
/* 803592D8 00322898  90 01 00 24 */	stw r0, 0x24(r1)
/* 803592DC 0032289C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803592E0 003228A0  7C 7F 1B 78 */	mr r31, r3
/* 803592E4 003228A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803592E8 003228A8  7C BE 2B 78 */	mr r30, r5
/* 803592EC 003228AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803592F0 003228B0  93 81 00 10 */	stw r28, 0x10(r1)
/* 803592F4 003228B4  7C 9C 23 78 */	mr r28, r4
/* 803592F8 003228B8  4B FF F6 B9 */	bl OSDisableInterrupts
/* 803592FC 003228BC  7C 7D 1B 78 */	mr r29, r3
/* 80359300 003228C0  57 DE 07 FE */	clrlwi r30, r30, 0x1f
/* 80359304 003228C4  48 00 00 24 */	b .L_80359328
.L_80359308:
/* 80359308 003228C8  2C 1E 00 00 */	cmpwi r30, 0
/* 8035930C 003228CC  40 82 00 14 */	bne .L_80359320
/* 80359310 003228D0  7F A3 EB 78 */	mr r3, r29
/* 80359314 003228D4  4B FF F6 DD */	bl OSRestoreInterrupts
/* 80359318 003228D8  38 60 00 00 */	li r3, 0
/* 8035931C 003228DC  48 00 00 70 */	b .L_8035938C
.L_80359320:
/* 80359320 003228E0  38 7F 00 08 */	addi r3, r31, 8
/* 80359324 003228E4  48 00 33 4D */	bl OSSleepThread
.L_80359328:
/* 80359328 003228E8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8035932C 003228EC  2C 00 00 00 */	cmpwi r0, 0
/* 80359330 003228F0  41 82 FF D8 */	beq .L_80359308
/* 80359334 003228F4  2C 1C 00 00 */	cmpwi r28, 0
/* 80359338 003228F8  41 82 00 18 */	beq .L_80359350
/* 8035933C 003228FC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80359340 00322900  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80359344 00322904  54 00 10 3A */	slwi r0, r0, 2
/* 80359348 00322908  7C 03 00 2E */	lwzx r0, r3, r0
/* 8035934C 0032290C  90 1C 00 00 */	stw r0, 0(r28)
.L_80359350:
/* 80359350 00322910  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80359354 00322914  7F E3 FB 78 */	mr r3, r31
/* 80359358 00322918  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 8035935C 0032291C  38 E4 00 01 */	addi r7, r4, 1
/* 80359360 00322920  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80359364 00322924  7C A7 33 D6 */	divw r5, r7, r6
/* 80359368 00322928  38 04 FF FF */	addi r0, r4, -1
/* 8035936C 0032292C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80359370 00322930  7C 05 31 D6 */	mullw r0, r5, r6
/* 80359374 00322934  7C 00 38 50 */	subf r0, r0, r7
/* 80359378 00322938  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8035937C 0032293C  48 00 33 E5 */	bl OSWakeupThread
/* 80359380 00322940  7F A3 EB 78 */	mr r3, r29
/* 80359384 00322944  4B FF F6 6D */	bl OSRestoreInterrupts
/* 80359388 00322948  38 60 00 01 */	li r3, 1
.L_8035938C:
/* 8035938C 0032294C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359390 00322950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359394 00322954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80359398 00322958  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035939C 0032295C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803593A0 00322960  7C 08 03 A6 */	mtlr r0
/* 803593A4 00322964  38 21 00 20 */	addi r1, r1, 0x20
/* 803593A8 00322968  4E 80 00 20 */	blr 
.endfn OSReceiveMessage

.balign 16, 0
.fn OSJamMessage, global
/* 803593B0 00322970  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803593B4 00322974  7C 08 02 A6 */	mflr r0
/* 803593B8 00322978  90 01 00 24 */	stw r0, 0x24(r1)
/* 803593BC 0032297C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803593C0 00322980  7C BF 2B 78 */	mr r31, r5
/* 803593C4 00322984  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803593C8 00322988  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803593CC 0032298C  7C 9D 23 78 */	mr r29, r4
/* 803593D0 00322990  93 81 00 10 */	stw r28, 0x10(r1)
/* 803593D4 00322994  7C 7C 1B 78 */	mr r28, r3
/* 803593D8 00322998  4B FF F5 D9 */	bl OSDisableInterrupts
/* 803593DC 0032299C  7C 7E 1B 78 */	mr r30, r3
/* 803593E0 003229A0  57 FF 07 FE */	clrlwi r31, r31, 0x1f
/* 803593E4 003229A4  48 00 00 24 */	b .L_80359408
.L_803593E8:
/* 803593E8 003229A8  2C 1F 00 00 */	cmpwi r31, 0
/* 803593EC 003229AC  40 82 00 14 */	bne .L_80359400
/* 803593F0 003229B0  7F C3 F3 78 */	mr r3, r30
/* 803593F4 003229B4  4B FF F5 FD */	bl OSRestoreInterrupts
/* 803593F8 003229B8  38 60 00 00 */	li r3, 0
/* 803593FC 003229BC  48 00 00 64 */	b .L_80359460
.L_80359400:
/* 80359400 003229C0  7F 83 E3 78 */	mr r3, r28
/* 80359404 003229C4  48 00 32 6D */	bl OSSleepThread
.L_80359408:
/* 80359408 003229C8  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 8035940C 003229CC  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 80359410 003229D0  7C 06 00 00 */	cmpw r6, r0
/* 80359414 003229D4  40 81 FF D4 */	ble .L_803593E8
/* 80359418 003229D8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8035941C 003229DC  38 7C 00 08 */	addi r3, r28, 8
/* 80359420 003229E0  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 80359424 003229E4  7C A6 02 14 */	add r5, r6, r0
/* 80359428 003229E8  38 A5 FF FF */	addi r5, r5, -1
/* 8035942C 003229EC  7C 05 33 D6 */	divw r0, r5, r6
/* 80359430 003229F0  7C 00 31 D6 */	mullw r0, r0, r6
/* 80359434 003229F4  7C 00 28 50 */	subf r0, r0, r5
/* 80359438 003229F8  90 1C 00 18 */	stw r0, 0x18(r28)
/* 8035943C 003229FC  54 00 10 3A */	slwi r0, r0, 2
/* 80359440 00322A00  7F A4 01 2E */	stwx r29, r4, r0
/* 80359444 00322A04  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 80359448 00322A08  38 04 00 01 */	addi r0, r4, 1
/* 8035944C 00322A0C  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 80359450 00322A10  48 00 33 11 */	bl OSWakeupThread
/* 80359454 00322A14  7F C3 F3 78 */	mr r3, r30
/* 80359458 00322A18  4B FF F5 99 */	bl OSRestoreInterrupts
/* 8035945C 00322A1C  38 60 00 01 */	li r3, 1
.L_80359460:
/* 80359460 00322A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359464 00322A24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359468 00322A28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035946C 00322A2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80359470 00322A30  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80359474 00322A34  7C 08 03 A6 */	mtlr r0
/* 80359478 00322A38  38 21 00 20 */	addi r1, r1, 0x20
/* 8035947C 00322A3C  4E 80 00 20 */	blr 
.endfn OSJamMessage
