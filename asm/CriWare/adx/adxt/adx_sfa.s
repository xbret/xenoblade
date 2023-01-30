.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFA_Init, global
/* 8037F994 00348F54  3C 80 80 5E */	lis r4, lbl_805E69B8@ha
/* 8037F998 00348F58  80 64 69 B8 */	lwz r3, lbl_805E69B8@l(r4)
/* 8037F99C 00348F5C  38 03 00 01 */	addi r0, r3, 1
/* 8037F9A0 00348F60  90 04 69 B8 */	stw r0, lbl_805E69B8@l(r4)
/* 8037F9A4 00348F64  4E 80 00 20 */	blr 
.endfn SFA_Init

.fn SFA_Finish, global
/* 8037F9A8 00348F68  3C 80 80 5E */	lis r4, lbl_805E69B8@ha
/* 8037F9AC 00348F6C  80 64 69 B8 */	lwz r3, lbl_805E69B8@l(r4)
/* 8037F9B0 00348F70  38 03 FF FF */	addi r0, r3, -1
/* 8037F9B4 00348F74  90 04 69 B8 */	stw r0, lbl_805E69B8@l(r4)
/* 8037F9B8 00348F78  4E 80 00 20 */	blr 
.endfn SFA_Finish

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_805E69B8
lbl_805E69B8:
	.skip 0x8