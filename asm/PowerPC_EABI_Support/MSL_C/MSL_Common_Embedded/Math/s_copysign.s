.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/s_copysign.o"

# 0x802CAB88 - 0x802CABB4
.text
.balign 4

.fn copysign, global
/* 802CAB88 00294148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CAB8C 0029414C  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802CAB90 00294150  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 802CAB94 00294154  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802CAB98 00294158  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802CAB9C 0029415C  54 00 00 00 */	clrrwi r0, r0, 31
/* 802CABA0 00294160  50 60 00 7E */	rlwimi r0, r3, 0, 1, 31
/* 802CABA4 00294164  90 01 00 08 */	stw r0, 0x8(r1)
/* 802CABA8 00294168  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 802CABAC 0029416C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CABB0 00294170  4E 80 00 20 */	blr
.endfn copysign
