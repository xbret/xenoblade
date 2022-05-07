.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_803102D0
func_803102D0:
/* 803102D0 002D9890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803102D4 002D9894  7C 08 02 A6 */	mflr r0
/* 803102D8 002D9898  90 01 00 14 */	stw r0, 0x14(r1)
/* 803102DC 002D989C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803102E0 002D98A0  7C 7F 1B 78 */	mr r31, r3
/* 803102E4 002D98A4  48 04 86 CD */	bl OSDisableInterrupts
/* 803102E8 002D98A8  80 AD B7 08 */	lwz r5, lbl_80667888@sda21(r13)
/* 803102EC 002D98AC  2C 1F 00 00 */	cmpwi r31, 0
/* 803102F0 002D98B0  38 80 00 00 */	li r4, 0
/* 803102F4 002D98B4  7C 05 00 D0 */	neg r0, r5
/* 803102F8 002D98B8  7C 00 2B 78 */	or r0, r0, r5
/* 803102FC 002D98BC  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 80310300 002D98C0  41 82 00 0C */	beq lbl_8031030C
/* 80310304 002D98C4  3C 80 80 31 */	lis r4, func_80310200@ha
/* 80310308 002D98C8  38 84 02 00 */	addi r4, r4, func_80310200@l
lbl_8031030C:
/* 8031030C 002D98CC  90 8D B7 08 */	stw r4, lbl_80667888@sda21(r13)
/* 80310310 002D98D0  48 04 86 E1 */	bl OSRestoreInterrupts
/* 80310314 002D98D4  7F E3 FB 78 */	mr r3, r31
/* 80310318 002D98D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031031C 002D98DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310320 002D98E0  7C 08 03 A6 */	mtlr r0
/* 80310324 002D98E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80310328 002D98E8  4E 80 00 20 */	blr 
/* 8031032C 002D98EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_80310330
func_80310330:
/* 80310330 002D98F0  80 6D B7 08 */	lwz r3, lbl_80667888@sda21(r13)
/* 80310334 002D98F4  7C 03 00 D0 */	neg r0, r3
/* 80310338 002D98F8  7C 00 1B 78 */	or r0, r0, r3
/* 8031033C 002D98FC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80310340 002D9900  4E 80 00 20 */	blr 
/* 80310344 002D9904  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80310348 002D9908  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8031034C 002D990C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global lbl_80310350
lbl_80310350:
/* 80310350 002D9910  81 8D B7 08 */	lwz r12, lbl_80667888@sda21(r13)
/* 80310354 002D9914  2C 0C 00 00 */	cmpwi r12, 0
/* 80310358 002D9918  4D 82 00 20 */	beqlr 
/* 8031035C 002D991C  7D 89 03 A6 */	mtctr r12
/* 80310360 002D9920  4E 80 04 20 */	bctr 
/* 80310364 002D9924  4E 80 00 20 */	blr 
/* 80310368 002D9928  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8031036C 002D992C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */