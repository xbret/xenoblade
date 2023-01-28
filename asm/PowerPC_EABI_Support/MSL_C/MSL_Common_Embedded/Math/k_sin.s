.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/k_sin.o"

# 0x802CA4FC - 0x802CA5BC
.text
.balign 4

.fn __kernel_sin, global
/* 802CA4FC 00293ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CA500 00293AC0  3C 00 3E 40 */	lis r0, 0x3e40
/* 802CA504 00293AC4  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802CA508 00293AC8  80 81 00 08 */	lwz r4, 0x8(r1)
/* 802CA50C 00293ACC  54 84 00 7E */	clrlwi r4, r4, 1
/* 802CA510 00293AD0  7C 04 00 00 */	cmpw r4, r0
/* 802CA514 00293AD4  40 80 00 1C */	bge .L_802CA530
/* 802CA518 00293AD8  FC 00 08 1E */	fctiwz f0, f1
/* 802CA51C 00293ADC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802CA520 00293AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CA524 00293AE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802CA528 00293AE8  40 82 00 08 */	bne .L_802CA530
/* 802CA52C 00293AEC  48 00 00 88 */	b .L_802CA5B4
.L_802CA530:
/* 802CA530 00293AF0  FC E1 00 72 */	fmul f7, f1, f1
/* 802CA534 00293AF4  C8 02 B9 48 */	lfd f0, "@23"@sda21(r2)
/* 802CA538 00293AF8  C8 A2 B9 40 */	lfd f5, "@22"@sda21(r2)
/* 802CA53C 00293AFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CA540 00293B00  C8 82 B9 38 */	lfd f4, "@21"@sda21(r2)
/* 802CA544 00293B04  C8 62 B9 30 */	lfd f3, "@20"@sda21(r2)
/* 802CA548 00293B08  FC C0 01 F2 */	fmul f6, f0, f7
/* 802CA54C 00293B0C  C8 02 B9 28 */	lfd f0, "@19"@sda21(r2)
/* 802CA550 00293B10  FD 07 00 72 */	fmul f8, f7, f1
/* 802CA554 00293B14  FC A5 30 2A */	fadd f5, f5, f6
/* 802CA558 00293B18  FC A7 01 72 */	fmul f5, f7, f5
/* 802CA55C 00293B1C  FC 84 28 2A */	fadd f4, f4, f5
/* 802CA560 00293B20  FC 87 01 32 */	fmul f4, f7, f4
/* 802CA564 00293B24  FC 63 20 2A */	fadd f3, f3, f4
/* 802CA568 00293B28  FC 67 00 F2 */	fmul f3, f7, f3
/* 802CA56C 00293B2C  FC 00 18 2A */	fadd f0, f0, f3
/* 802CA570 00293B30  40 82 00 1C */	bne .L_802CA58C
/* 802CA574 00293B34  FC 47 00 32 */	fmul f2, f7, f0
/* 802CA578 00293B38  C8 02 B9 50 */	lfd f0, "@24"@sda21(r2)
/* 802CA57C 00293B3C  FC 00 10 2A */	fadd f0, f0, f2
/* 802CA580 00293B40  FC 08 00 32 */	fmul f0, f8, f0
/* 802CA584 00293B44  FC 21 00 2A */	fadd f1, f1, f0
/* 802CA588 00293B48  48 00 00 2C */	b .L_802CA5B4
.L_802CA58C:
/* 802CA58C 00293B4C  C8 82 B9 58 */	lfd f4, "@25"@sda21(r2)
/* 802CA590 00293B50  FC 68 00 32 */	fmul f3, f8, f0
/* 802CA594 00293B54  C8 02 B9 50 */	lfd f0, "@24"@sda21(r2)
/* 802CA598 00293B58  FC 84 00 B2 */	fmul f4, f4, f2
/* 802CA59C 00293B5C  FC 00 02 32 */	fmul f0, f0, f8
/* 802CA5A0 00293B60  FC 64 18 28 */	fsub f3, f4, f3
/* 802CA5A4 00293B64  FC 67 00 F2 */	fmul f3, f7, f3
/* 802CA5A8 00293B68  FC 43 10 28 */	fsub f2, f3, f2
/* 802CA5AC 00293B6C  FC 02 00 28 */	fsub f0, f2, f0
/* 802CA5B0 00293B70  FC 21 00 28 */	fsub f1, f1, f0
.L_802CA5B4:
/* 802CA5B4 00293B74  38 21 00 20 */	addi r1, r1, 0x20
/* 802CA5B8 00293B78  4E 80 00 20 */	blr
.endfn __kernel_sin

# 0x8066BCA8 - 0x8066BCE0
.section .sdata2, "a"
.balign 8

.obj "@19", local
	.4byte 0x3F811111
	.4byte 0x1110F8A6
.endobj "@19"

.obj "@20", local
	.4byte 0xBF2A01A0
	.4byte 0x19C161D5
.endobj "@20"

.obj "@21", local
	.4byte 0x3EC71DE3
	.4byte 0x57B1FE7D
.endobj "@21"

.obj "@22", local
	.4byte 0xBE5AE5E6
	.4byte 0x8A2B9CEB
.endobj "@22"

.obj "@23", local
	.4byte 0x3DE5D93A
	.4byte 0x5ACFD57C
.endobj "@23"

.obj "@24", local
	.4byte 0xBFC55555
	.4byte 0x55555549
.endobj "@24"

.obj "@25", local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj "@25"
