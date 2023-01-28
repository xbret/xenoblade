.include "macros.inc"
.file "RevoSDK/db/db.o"

# 0x80309110 - 0x80309210
.text
.balign 4

.fn DBInit, global
/* 80309110 002D26D0  3C 80 80 00 */	lis r4, 0x8000
/* 80309114 002D26D4  3C 60 80 31 */	lis r3, __DBExceptionDestination@ha
/* 80309118 002D26D8  38 04 00 40 */	addi r0, r4, 0x40
/* 8030911C 002D26DC  90 0D B6 00 */	stw r0, __DBInterface@sda21(r13)
/* 80309120 002D26E0  38 63 91 90 */	addi r3, r3, __DBExceptionDestination@l
/* 80309124 002D26E4  3C 63 80 00 */	addis r3, r3, 0x8000
/* 80309128 002D26E8  90 64 00 48 */	stw r3, 0x48(r4)
/* 8030912C 002D26EC  38 00 00 01 */	li r0, 0x1
/* 80309130 002D26F0  90 0D B6 04 */	stw r0, DBVerbose@sda21(r13)
/* 80309134 002D26F4  4E 80 00 20 */	blr
.endfn DBInit
/* 80309138 002D26F8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8030913C 002D26FC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn __DBExceptionDestinationAux, local
/* 80309140 002D2700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309144 002D2704  7C 08 02 A6 */	mflr r0
/* 80309148 002D2708  3C 60 80 55 */	lis r3, lbl_805495E0@ha
/* 8030914C 002D270C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309150 002D2710  38 63 95 E0 */	addi r3, r3, lbl_805495E0@l
/* 80309154 002D2714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309158 002D2718  80 80 00 C0 */	lwz r4, 0xc0(r0)
/* 8030915C 002D271C  3F E4 80 00 */	addis r31, r4, 0x8000
/* 80309160 002D2720  4C C6 31 82 */	crclr 4*cr1+eq
/* 80309164 002D2724  48 04 BD 8D */	bl OSReport
/* 80309168 002D2728  7F E3 FB 78 */	mr r3, r31
/* 8030916C 002D272C  48 04 BA 45 */	bl OSDumpContext
/* 80309170 002D2730  4B FD 1A 61 */	bl PPCHalt
/* 80309174 002D2734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309178 002D2738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030917C 002D273C  7C 08 03 A6 */	mtlr r0
/* 80309180 002D2740  38 21 00 10 */	addi r1, r1, 0x10
/* 80309184 002D2744  4E 80 00 20 */	blr
.endfn __DBExceptionDestinationAux
/* 80309188 002D2748  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8030918C 002D274C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn __DBExceptionDestination, global
/* 80309190 002D2750  7C 60 00 A6 */	mfmsr r3
/* 80309194 002D2754  60 63 00 30 */	ori r3, r3, 0x30
/* 80309198 002D2758  7C 60 01 24 */	mtmsr r3
/* 8030919C 002D275C  4B FF FF A4 */	b __DBExceptionDestinationAux
.endfn __DBExceptionDestination

.fn __DBIsExceptionMarked, global
/* 803091A0 002D2760  80 8D B6 00 */	lwz r4, __DBInterface@sda21(r13)
/* 803091A4 002D2764  38 00 00 01 */	li r0, 0x1
/* 803091A8 002D2768  7C 00 18 30 */	slw r0, r0, r3
/* 803091AC 002D276C  80 64 00 04 */	lwz r3, 0x4(r4)
/* 803091B0 002D2770  7C 63 00 38 */	and r3, r3, r0
/* 803091B4 002D2774  4E 80 00 20 */	blr
.endfn __DBIsExceptionMarked
/* 803091B8 002D2778  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803091BC 002D277C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn DBPrintf, global
/* 803091C0 002D2780  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803091C4 002D2784  40 86 00 24 */	bne cr1, .L_803091E8
/* 803091C8 002D2788  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803091CC 002D278C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803091D0 002D2790  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803091D4 002D2794  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803091D8 002D2798  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803091DC 002D279C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803091E0 002D27A0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803091E4 002D27A4  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803091E8:
/* 803091E8 002D27A8  90 61 00 08 */	stw r3, 0x8(r1)
/* 803091EC 002D27AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 803091F0 002D27B0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803091F4 002D27B4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803091F8 002D27B8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803091FC 002D27BC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80309200 002D27C0  91 21 00 20 */	stw r9, 0x20(r1)
/* 80309204 002D27C4  91 41 00 24 */	stw r10, 0x24(r1)
/* 80309208 002D27C8  38 21 00 70 */	addi r1, r1, 0x70
/* 8030920C 002D27CC  4E 80 00 20 */	blr
.endfn DBPrintf

# 0x805495E0 - 0x805495F8
.data
.balign 8
.sym lbl_805495E0, local
	.4byte 0x44424578
	.4byte 0x63657074
	.4byte 0x696F6E44
	.4byte 0x65737469
	.4byte 0x6E617469
	.4byte 0x6F6E0A00

# 0x80667780 - 0x80667788
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80667780, local

.obj __DBInterface, global
	.skip 0x4
.endobj __DBInterface
.sym lbl_80667784, local

.obj DBVerbose, global
	.skip 0x4
.endobj DBVerbose
