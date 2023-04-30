.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CMcaFile, global
/* 80058414 000219D4  3C A0 80 53 */	lis r5, __vt__CMcaFile@ha
/* 80058418 000219D8  38 00 00 00 */	li r0, 0
/* 8005841C 000219DC  38 A5 9B 78 */	addi r5, r5, __vt__CMcaFile@l
/* 80058420 000219E0  90 A3 00 00 */	stw r5, 0(r3)
/* 80058424 000219E4  98 03 00 04 */	stb r0, 4(r3)
/* 80058428 000219E8  90 83 00 08 */	stw r4, 8(r3)
/* 8005842C 000219EC  90 83 00 0C */	stw r4, 0xc(r3)
/* 80058430 000219F0  88 04 00 00 */	lbz r0, 0(r4)
/* 80058434 000219F4  2C 00 00 6D */	cmpwi r0, 0x6d
/* 80058438 000219F8  4C 82 00 20 */	bnelr 
/* 8005843C 000219FC  88 04 00 01 */	lbz r0, 1(r4)
/* 80058440 00021A00  2C 00 00 63 */	cmpwi r0, 0x63
/* 80058444 00021A04  4C 82 00 20 */	bnelr 
/* 80058448 00021A08  88 04 00 02 */	lbz r0, 2(r4)
/* 8005844C 00021A0C  2C 00 00 61 */	cmpwi r0, 0x61
/* 80058450 00021A10  4C 82 00 20 */	bnelr 
/* 80058454 00021A14  88 04 00 03 */	lbz r0, 3(r4)
/* 80058458 00021A18  7C 00 07 75 */	extsb. r0, r0
/* 8005845C 00021A1C  4C 82 00 20 */	bnelr 
/* 80058460 00021A20  38 00 00 01 */	li r0, 1
/* 80058464 00021A24  98 03 00 04 */	stb r0, 4(r3)
/* 80058468 00021A28  80 04 00 04 */	lwz r0, 4(r4)
/* 8005846C 00021A2C  7C 04 02 14 */	add r0, r4, r0
/* 80058470 00021A30  90 03 00 0C */	stw r0, 0xc(r3)
/* 80058474 00021A34  4E 80 00 20 */	blr 
.endfn __ct__CMcaFile

.fn __dt__CMcaFile, global
/* 80058478 00021A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005847C 00021A3C  7C 08 02 A6 */	mflr r0
/* 80058480 00021A40  2C 03 00 00 */	cmpwi r3, 0
/* 80058484 00021A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80058488 00021A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005848C 00021A4C  7C 7F 1B 78 */	mr r31, r3
/* 80058490 00021A50  41 82 00 10 */	beq .L_800584A0
/* 80058494 00021A54  2C 04 00 00 */	cmpwi r4, 0
/* 80058498 00021A58  40 81 00 08 */	ble .L_800584A0
/* 8005849C 00021A5C  48 3D C7 91 */	bl __dl__FPv
.L_800584A0:
/* 800584A0 00021A60  7F E3 FB 78 */	mr r3, r31
/* 800584A4 00021A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800584A8 00021A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800584AC 00021A6C  7C 08 03 A6 */	mtlr r0
/* 800584B0 00021A70  38 21 00 10 */	addi r1, r1, 0x10
/* 800584B4 00021A74  4E 80 00 20 */	blr 
.endfn __dt__CMcaFile

.fn func_800584B8, global
/* 800584B8 00021A78  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800584BC 00021A7C  7C 08 02 A6 */	mflr r0
/* 800584C0 00021A80  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800584C4 00021A84  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 800584C8 00021A88  93 C1 00 98 */	stw r30, 0x98(r1)
/* 800584CC 00021A8C  7C 9E 23 78 */	mr r30, r4
/* 800584D0 00021A90  7F DF F3 78 */	mr r31, r30
/* 800584D4 00021A94  93 A1 00 94 */	stw r29, 0x94(r1)
/* 800584D8 00021A98  7C 7D 1B 78 */	mr r29, r3
/* 800584DC 00021A9C  38 60 00 00 */	li r3, 0
/* 800584E0 00021AA0  88 04 00 00 */	lbz r0, 0(r4)
/* 800584E4 00021AA4  2C 00 00 6D */	cmpwi r0, 0x6d
/* 800584E8 00021AA8  40 82 00 34 */	bne .L_8005851C
/* 800584EC 00021AAC  88 04 00 01 */	lbz r0, 1(r4)
/* 800584F0 00021AB0  2C 00 00 63 */	cmpwi r0, 0x63
/* 800584F4 00021AB4  40 82 00 28 */	bne .L_8005851C
/* 800584F8 00021AB8  88 04 00 02 */	lbz r0, 2(r4)
/* 800584FC 00021ABC  2C 00 00 61 */	cmpwi r0, 0x61
/* 80058500 00021AC0  40 82 00 1C */	bne .L_8005851C
/* 80058504 00021AC4  88 04 00 03 */	lbz r0, 3(r4)
/* 80058508 00021AC8  7C 00 07 75 */	extsb. r0, r0
/* 8005850C 00021ACC  40 82 00 10 */	bne .L_8005851C
/* 80058510 00021AD0  80 04 00 04 */	lwz r0, 4(r4)
/* 80058514 00021AD4  38 60 00 01 */	li r3, 1
/* 80058518 00021AD8  7F E4 02 14 */	add r31, r4, r0
.L_8005851C:
/* 8005851C 00021ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80058520 00021AE0  41 82 00 24 */	beq .L_80058544
/* 80058524 00021AE4  7C A4 2B 78 */	mr r4, r5
/* 80058528 00021AE8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8005852C 00021AEC  48 3D CB 4D */	bl func_80435078__2mmFPQ22mm9UnkStructPCc
/* 80058530 00021AF0  7F A3 EB 78 */	mr r3, r29
/* 80058534 00021AF4  7F E4 FB 78 */	mr r4, r31
/* 80058538 00021AF8  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8005853C 00021AFC  48 43 D9 71 */	bl func_80495EAC
/* 80058540 00021B00  48 00 00 20 */	b .L_80058560
.L_80058544:
/* 80058544 00021B04  7C A4 2B 78 */	mr r4, r5
/* 80058548 00021B08  38 61 00 08 */	addi r3, r1, 8
/* 8005854C 00021B0C  48 3D CB 2D */	bl func_80435078__2mmFPQ22mm9UnkStructPCc
/* 80058550 00021B10  7F A3 EB 78 */	mr r3, r29
/* 80058554 00021B14  7F C4 F3 78 */	mr r4, r30
/* 80058558 00021B18  38 A1 00 08 */	addi r5, r1, 8
/* 8005855C 00021B1C  48 43 D9 51 */	bl func_80495EAC
.L_80058560:
/* 80058560 00021B20  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80058564 00021B24  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80058568 00021B28  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8005856C 00021B2C  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 80058570 00021B30  7C 08 03 A6 */	mtlr r0
/* 80058574 00021B34  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80058578 00021B38  4E 80 00 20 */	blr 
.endfn func_800584B8


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CMcaFile, global
	.4byte __RTTI__CMcaFile
	.4byte 0
	.4byte __dt__CMcaFile
.endobj __vt__CMcaFile


#These are referenced by Scn classes (should be in a separate base class file?)
.obj lbl_80529B84, global
	.asciz "NW4R:Failed assertion !((u32)p & 0x1f)"
	.balign 4
.endobj lbl_80529B84


.obj lbl_80529BAC, global
	.asciz "g3d_resfile_ac.h"
	.balign 4
.endobj lbl_80529BAC


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CMcaFile_typestr, global
	.asciz "CMcaFile"
	.balign 4
	.4byte 0
.endobj CMcaFile_typestr

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CMcaFile, global
	.4byte CMcaFile_typestr
	.4byte 0
.endobj __RTTI__CMcaFile

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80007704", local
.hidden "@etb_80007704"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007704"

.obj "@etb_8000770C", local
.hidden "@etb_8000770C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8000770C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800226C4", local
.hidden "@eti_800226C4"
	.4byte __dt__CMcaFile
	.4byte 0x00000040
	.4byte "@etb_80007704"
.endobj "@eti_800226C4"

.obj "@eti_800226D0", local
.hidden "@eti_800226D0"
	.4byte func_800584B8
	.4byte 0x000000C4
	.4byte "@etb_8000770C"
.endobj "@eti_800226D0"
