.include "macros.inc"
.file "CriWare/adx/adxt/adx_sfa.o"

# 0x8037F994 - 0x8037F9BC
.text
.balign 4

.fn SFA_Init, global
/* 8037F994 00348F54  3C 80 80 5E */	lis r4, lbl_805E69B8@ha
/* 8037F998 00348F58  80 64 69 B8 */	lwz r3, lbl_805E69B8@l(r4)
/* 8037F99C 00348F5C  38 03 00 01 */	addi r0, r3, 0x1
/* 8037F9A0 00348F60  90 04 69 B8 */	stw r0, lbl_805E69B8@l(r4)
/* 8037F9A4 00348F64  4E 80 00 20 */	blr
.endfn SFA_Init

.fn SFA_Finish, global
/* 8037F9A8 00348F68  3C 80 80 5E */	lis r4, lbl_805E69B8@ha
/* 8037F9AC 00348F6C  80 64 69 B8 */	lwz r3, lbl_805E69B8@l(r4)
/* 8037F9B0 00348F70  38 03 FF FF */	addi r0, r3, -0x1
/* 8037F9B4 00348F74  90 04 69 B8 */	stw r0, lbl_805E69B8@l(r4)
/* 8037F9B8 00348F78  4E 80 00 20 */	blr
.endfn SFA_Finish

# 0x805E69B8 - 0x805E69C0
.section .bss, "wa", @nobits
.balign 8
.sym lbl_805E69B8, global
	.skip 0x8
