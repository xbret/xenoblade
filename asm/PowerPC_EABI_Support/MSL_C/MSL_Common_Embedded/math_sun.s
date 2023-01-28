.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/math_sun.o"

# 0x802C7258 - 0x802C7298
.text
.balign 4

.fn scalbn, global
/* 802C7258 00290818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C725C 0029081C  7C 08 02 A6 */	mflr r0
/* 802C7260 00290820  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C7264 00290824  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C7268 00290828  7C 7F 1B 78 */	mr r31, r3
/* 802C726C 0029082C  38 61 00 08 */	addi r3, r1, 0x8
/* 802C7270 00290830  48 00 3B 5D */	bl frexp
/* 802C7274 00290834  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802C7278 00290838  7C 60 FA 14 */	add r3, r0, r31
/* 802C727C 0029083C  90 61 00 08 */	stw r3, 0x8(r1)
/* 802C7280 00290840  48 00 3B D5 */	bl ldexp
/* 802C7284 00290844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C7288 00290848  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C728C 0029084C  7C 08 03 A6 */	mtlr r0
/* 802C7290 00290850  38 21 00 20 */	addi r1, r1, 0x20
/* 802C7294 00290854  4E 80 00 20 */	blr
.endfn scalbn
