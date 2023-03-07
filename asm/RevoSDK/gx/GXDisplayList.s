.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn GXCallDisplayList, global
/* 8031E470 002E7A30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031E474 002E7A34  7C 08 02 A6 */	mflr r0
/* 8031E478 002E7A38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031E47C 002E7A3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031E480 002E7A40  83 E2 BC 20 */	lwz r31, __GXData@sda21(r2)
/* 8031E484 002E7A44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031E488 002E7A48  7C 9E 23 78 */	mr r30, r4
/* 8031E48C 002E7A4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031E490 002E7A50  7C 7D 1B 78 */	mr r29, r3
/* 8031E494 002E7A54  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 8031E498 002E7A58  2C 00 00 00 */	cmpwi r0, 0
/* 8031E49C 002E7A5C  41 82 00 08 */	beq .L_8031E4A4
/* 8031E4A0 002E7A60  4B FF C2 C1 */	bl __GXSetDirtyState
.L_8031E4A4:
/* 8031E4A4 002E7A64  80 1F 00 00 */	lwz r0, 0(r31)
/* 8031E4A8 002E7A68  2C 00 00 00 */	cmpwi r0, 0
/* 8031E4AC 002E7A6C  40 82 00 08 */	bne .L_8031E4B4
/* 8031E4B0 002E7A70  4B FF C6 81 */	bl __GXSendFlushPrim
.L_8031E4B4:
/* 8031E4B4 002E7A74  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031E4B8 002E7A78  38 00 00 40 */	li r0, 0x40
/* 8031E4BC 002E7A7C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031E4C0 002E7A80  93 A3 80 00 */	stw r29, -0x8000(r3)
/* 8031E4C4 002E7A84  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 8031E4C8 002E7A88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031E4CC 002E7A8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031E4D0 002E7A90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031E4D4 002E7A94  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031E4D8 002E7A98  7C 08 03 A6 */	mtlr r0
/* 8031E4DC 002E7A9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8031E4E0 002E7AA0  4E 80 00 20 */	blr 
.endfn GXCallDisplayList
