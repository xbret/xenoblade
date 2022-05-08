.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8034DDF0
func_8034DDF0:
/* 8034DDF0 003173B0  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 8034DDF4 003173B4  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8034DDF8 003173B8  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 8034DDFC 003173BC  10 82 00 32 */	ps_mul f4, f2, f0
/* 8034DE00 003173C0  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 8034DE04 003173C4  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8034DE08 003173C8  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 8034DE0C 003173CC  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8034DE10 003173D0  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 8034DE14 003173D4  11 48 00 32 */	ps_mul f10, f8, f0
/* 8034DE18 003173D8  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 8034DE1C 003173DC  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8034DE20 003173E0  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 8034DE24 003173E4  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 8034DE28 003173E8  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 8034DE2C 003173EC  10 82 00 32 */	ps_mul f4, f2, f0
/* 8034DE30 003173F0  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 8034DE34 003173F4  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8034DE38 003173F8  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8034DE3C 003173FC  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 8034DE40 00317400  4E 80 00 20 */	blr 
/* 8034DE44 00317404  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8034DE48 00317408  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8034DE4C 0031740C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */