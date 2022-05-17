.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802BDC5C
func_802BDC5C:
/* 802BDC5C 0028721C  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 802BDC60 00287220  7C 80 1A 78 */	xor r0, r4, r3
/* 802BDC64 00287224  7C 64 00 50 */	subf r3, r4, r0
/* 802BDC68 00287228  4E 80 00 20 */	blr 

.global func_802BDC6C
func_802BDC6C:
/* 802BDC6C 0028722C  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 802BDC70 00287230  7C 80 1A 78 */	xor r0, r4, r3
/* 802BDC74 00287234  7C 64 00 50 */	subf r3, r4, r0
/* 802BDC78 00287238  4E 80 00 20 */	blr 