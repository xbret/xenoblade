.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn btu_init_core, global
/* 802EFBAC 002B916C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EFBB0 002B9170  7C 08 02 A6 */	mflr r0
/* 802EFBB4 002B9174  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EFBB8 002B9178  4B FF A2 AD */	bl btm_init
/* 802EFBBC 002B917C  48 00 9F 7D */	bl l2c_init
/* 802EFBC0 002B9180  48 01 60 A9 */	bl sdp_init
/* 802EFBC4 002B9184  4B FF 86 D5 */	bl btm_discovery_db_init
/* 802EFBC8 002B9188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EFBCC 002B918C  7C 08 03 A6 */	mtlr r0
/* 802EFBD0 002B9190  38 21 00 10 */	addi r1, r1, 0x10
/* 802EFBD4 002B9194  4E 80 00 20 */	blr 
.endfn btu_init_core

.fn BTE_Init, global
/* 802EFBD8 002B9198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EFBDC 002B919C  7C 08 02 A6 */	mflr r0
/* 802EFBE0 002B91A0  38 80 00 00 */	li r4, 0
/* 802EFBE4 002B91A4  38 A0 00 84 */	li r5, 0x84
/* 802EFBE8 002B91A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EFBEC 002B91AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EFBF0 002B91B0  3F E0 80 5C */	lis r31, btu_cb@ha
/* 802EFBF4 002B91B4  38 7F F4 D0 */	addi r3, r31, btu_cb@l
/* 802EFBF8 002B91B8  4B D1 47 59 */	bl memset
/* 802EFBFC 002B91BC  38 7F F4 D0 */	addi r3, r31, btu_cb@l
/* 802EFC00 002B91C0  38 80 02 A4 */	li r4, 0x2a4
/* 802EFC04 002B91C4  38 00 00 01 */	li r0, 1
/* 802EFC08 002B91C8  B0 83 00 7E */	sth r4, 0x7e(r3)
/* 802EFC0C 002B91CC  B0 03 00 80 */	sth r0, 0x80(r3)
/* 802EFC10 002B91D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EFC14 002B91D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EFC18 002B91D8  7C 08 03 A6 */	mtlr r0
/* 802EFC1C 002B91DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802EFC20 002B91E0  4E 80 00 20 */	blr
.endfn BTE_Init

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global BT_BD_ANY
BT_BD_ANY:
	.4byte 0xFFFFFFFF
	.4byte 0xFFFF0000