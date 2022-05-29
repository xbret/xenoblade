.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global SystemCallVector
SystemCallVector:
/* 8035B2B0 00324870  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 8035B2B4 00324874  61 2A 00 08 */	ori r10, r9, 8
/* 8035B2B8 00324878  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 8035B2BC 0032487C  4C 00 01 2C */	isync 
/* 8035B2C0 00324880  7C 00 04 AC */	sync 0
/* 8035B2C4 00324884  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 8035B2C8 00324888  4C 00 00 64 */	rfi 

.global __OSSystemCallVectorEnd
__OSSystemCallVectorEnd:
/* 8035B2CC 0032488C  60 00 00 00 */	nop 

.global __OSInitSystemCall
__OSInitSystemCall:
/* 8035B2D0 00324890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035B2D4 00324894  7C 08 02 A6 */	mflr r0
/* 8035B2D8 00324898  3C 80 80 36 */	lis r4, SystemCallVector@ha
/* 8035B2DC 0032489C  3C A0 80 36 */	lis r5, __OSSystemCallVectorEnd@ha
/* 8035B2E0 003248A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035B2E4 003248A4  38 84 B2 B0 */	addi r4, r4, SystemCallVector@l
/* 8035B2E8 003248A8  38 A5 B2 CC */	addi r5, r5, __OSSystemCallVectorEnd@l
/* 8035B2EC 003248AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035B2F0 003248B0  3F E0 80 00 */	lis r31, 0x80000C00@ha
/* 8035B2F4 003248B4  38 7F 0C 00 */	addi r3, r31, 0x80000C00@l
/* 8035B2F8 003248B8  7C A4 28 50 */	subf r5, r4, r5
/* 8035B2FC 003248BC  4B CA 8D 05 */	bl memcpy
/* 8035B300 003248C0  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 8035B304 003248C4  38 80 01 00 */	li r4, 0x100
/* 8035B308 003248C8  4B FF 8D 09 */	bl DCFlushRangeNoSync
/* 8035B30C 003248CC  7C 00 04 AC */	sync 0
/* 8035B310 003248D0  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 8035B314 003248D4  38 80 01 00 */	li r4, 0x100
/* 8035B318 003248D8  4B FF 8D 89 */	bl ICInvalidateRange
/* 8035B31C 003248DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035B320 003248E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035B324 003248E4  7C 08 03 A6 */	mtlr r0
/* 8035B328 003248E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8035B32C 003248EC  4E 80 00 20 */	blr 
