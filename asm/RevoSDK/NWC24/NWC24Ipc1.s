.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global CallbackAsyncIpc
CallbackAsyncIpc:
/* 8035E5F0 00327BB0  2C 04 00 00 */	cmpwi r4, 0
/* 8035E5F4 00327BB4  41 82 00 08 */	beq lbl_8035E5FC
/* 8035E5F8 00327BB8  90 64 00 00 */	stw r3, 0(r4)
lbl_8035E5FC:
/* 8035E5FC 00327BBC  38 00 00 00 */	li r0, 0
/* 8035E600 00327BC0  90 0D B9 AC */	stw r0, lbl_80667B2C@sda21(r13)
/* 8035E604 00327BC4  38 60 00 00 */	li r3, 0
/* 8035E608 00327BC8  4E 80 00 20 */	blr 
.balign 16, 0