.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


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


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


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
