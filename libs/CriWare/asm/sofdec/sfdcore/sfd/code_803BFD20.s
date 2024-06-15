.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn criware_803BFD20, global
/* 803BFD20 003892E0  3C 80 80 61 */	lis r4, lbl_8060A2D0@ha
/* 803BFD24 003892E4  80 64 A2 D0 */	lwz r3, lbl_8060A2D0@l(r4)
/* 803BFD28 003892E8  38 03 00 01 */	addi r0, r3, 1
/* 803BFD2C 003892EC  90 04 A2 D0 */	stw r0, lbl_8060A2D0@l(r4)
/* 803BFD30 003892F0  80 04 A2 D0 */	lwz r0, lbl_8060A2D0@l(r4)
/* 803BFD34 003892F4  4E 80 00 20 */	blr 
.endfn criware_803BFD20

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj lbl_8060A2D0, global
	.skip 0x8
.endobj lbl_8060A2D0
