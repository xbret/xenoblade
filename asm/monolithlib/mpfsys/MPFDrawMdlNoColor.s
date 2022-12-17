.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80479844
func_80479844:
/* 80479844 00442E04  88 0D BF E8 */	lbz r0, lbl_80668168@sda21(r13)
/* 80479848 00442E08  7C 00 07 75 */	extsb. r0, r0
/* 8047984C 00442E0C  40 82 00 18 */	bne lbl_80479864
/* 80479850 00442E10  3C 60 80 57 */	lis r3, __vt__mpfsys_MPFDrawMdlNoColor@ha
/* 80479854 00442E14  38 00 00 01 */	li r0, 1
/* 80479858 00442E18  38 63 14 28 */	addi r3, r3, __vt__mpfsys_MPFDrawMdlNoColor@l
/* 8047985C 00442E1C  90 6D BF EC */	stw r3, lbl_8066816C@sda21(r13)
/* 80479860 00442E20  98 0D BF E8 */	stb r0, lbl_80668168@sda21(r13)
lbl_80479864:
/* 80479864 00442E24  38 6D BF EC */	addi r3, r13, lbl_8066816C@sda21
/* 80479868 00442E28  4E 80 00 20 */	blr 