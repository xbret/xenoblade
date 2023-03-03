.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __OSReboot, global
/* 80359E80 00323440  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359E84 00323444  7C 08 02 A6 */	mflr r0
/* 80359E88 00323448  90 01 00 24 */	stw r0, 0x24(r1)
/* 80359E8C 0032344C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359E90 00323450  7C 9F 23 78 */	mr r31, r4
/* 80359E94 00323454  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80359E98 00323458  7C 7E 1B 78 */	mr r30, r3
/* 80359E9C 0032345C  4B FF EB 15 */	bl OSDisableInterrupts
/* 80359EA0 00323460  3C 60 81 28 */	lis r3, 0x8128
/* 80359EA4 00323464  4B FF 9B AD */	bl OSSetArenaLo
/* 80359EA8 00323468  3C 60 81 2F */	lis r3, 0x812f
/* 80359EAC 0032346C  4B FF 9B 75 */	bl OSSetArenaHi
/* 80359EB0 00323470  38 00 00 00 */	li r0, 0
/* 80359EB4 00323474  90 01 00 08 */	stw r0, 8(r1)
/* 80359EB8 00323478  3C 80 80 00 */	lis r4, 0x80003194@ha
/* 80359EBC 0032347C  7F E3 FB 78 */	mr r3, r31
/* 80359EC0 00323480  80 04 31 94 */	lwz r0, 0x80003194@l(r4)
/* 80359EC4 00323484  67 C4 80 00 */	oris r4, r30, 0x8000
/* 80359EC8 00323488  90 0D B8 E8 */	stw r0, __OSNextPartitionType@sda21(r13)
/* 80359ECC 0032348C  38 A1 00 08 */	addi r5, r1, 8
/* 80359ED0 00323490  4B FF CA 41 */	bl __OSBootDol
/* 80359ED4 00323494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359ED8 00323498  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359EDC 0032349C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80359EE0 003234A0  7C 08 03 A6 */	mtlr r0
/* 80359EE4 003234A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80359EE8 003234A8  4E 80 00 20 */	blr 
.endfn __OSReboot

.balign 16, 0
.fn OSGetSaveRegion, global
/* 80359EF0 003234B0  80 0D B9 30 */	lwz r0, SaveStart@sda21(r13)
/* 80359EF4 003234B4  90 03 00 00 */	stw r0, 0(r3)
/* 80359EF8 003234B8  80 0D B9 34 */	lwz r0, SaveEnd@sda21(r13)
/* 80359EFC 003234BC  90 04 00 00 */	stw r0, 0(r4)
/* 80359F00 003234C0  4E 80 00 20 */	blr 
.endfn OSGetSaveRegion

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

SaveStart:
	.skip 0x4

SaveEnd:
	.skip 0x4