.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/math_double.o"

# 0x802C7234 - 0x802C7258
.text
.balign 4

.fn sqrtf, global
/* 802C7234 002907F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C7238 002907F8  7C 08 02 A6 */	mflr r0
/* 802C723C 002907FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7240 00290800  48 00 42 29 */	bl sqrt
/* 802C7244 00290804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C7248 00290808  FC 20 08 18 */	frsp f1, f1
/* 802C724C 0029080C  7C 08 03 A6 */	mtlr r0
/* 802C7250 00290810  38 21 00 10 */	addi r1, r1, 0x10
/* 802C7254 00290814  4E 80 00 20 */	blr
.endfn sqrtf
