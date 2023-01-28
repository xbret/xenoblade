.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/arith.o"

# 0x802BDC5C - 0x802BDC7C
.text
.balign 4

.fn abs, global
/* 802BDC5C 0028721C  7C 64 FE 70 */	srawi r4, r3, 31
/* 802BDC60 00287220  7C 80 1A 78 */	xor r0, r4, r3
/* 802BDC64 00287224  7C 64 00 50 */	subf r3, r4, r0
/* 802BDC68 00287228  4E 80 00 20 */	blr
.endfn abs

.fn labs, global
/* 802BDC6C 0028722C  7C 64 FE 70 */	srawi r4, r3, 31
/* 802BDC70 00287230  7C 80 1A 78 */	xor r0, r4, r3
/* 802BDC74 00287234  7C 64 00 50 */	subf r3, r4, r0
/* 802BDC78 00287238  4E 80 00 20 */	blr
.endfn labs
