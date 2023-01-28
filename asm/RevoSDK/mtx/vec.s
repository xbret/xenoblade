.include "macros.inc"
.file "RevoSDK/mtx/vec.o"

# 0x8034E080 - 0x8034E2C0
.text
.balign 4

.fn PSVECAdd, global
/* 8034E080 00317640  E0 43 00 00 */	psq_l f2, 0x0(r3), 0, qr0
/* 8034E084 00317644  E0 84 00 00 */	psq_l f4, 0x0(r4), 0, qr0
/* 8034E088 00317648  10 C2 20 2A */	ps_add f6, f2, f4
/* 8034E08C 0031764C  F0 C5 00 00 */	psq_st f6, 0x0(r5), 0, qr0
/* 8034E090 00317650  E0 63 80 08 */	psq_l f3, 0x8(r3), 1, qr0
/* 8034E094 00317654  E0 A4 80 08 */	psq_l f5, 0x8(r4), 1, qr0
/* 8034E098 00317658  10 E3 28 2A */	ps_add f7, f3, f5
/* 8034E09C 0031765C  F0 E5 80 08 */	psq_st f7, 0x8(r5), 1, qr0
/* 8034E0A0 00317660  4E 80 00 20 */	blr
.endfn PSVECAdd
/* 8034E0A4 00317664  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E0A8 00317668  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E0AC 0031766C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PSVECNormalize, global
/* 8034E0B0 00317670  E0 43 00 00 */	psq_l f2, 0x0(r3), 0, qr0
/* 8034E0B4 00317674  E0 63 80 08 */	psq_l f3, 0x8(r3), 1, qr0
/* 8034E0B8 00317678  10 A2 00 B2 */	ps_mul f5, f2, f2
/* 8034E0BC 0031767C  C0 02 BD E0 */	lfs f0, lbl_8066C160@sda21(r2)
/* 8034E0C0 00317680  C0 22 BD E4 */	lfs f1, lbl_8066C164@sda21(r2)
/* 8034E0C4 00317684  10 83 28 FA */	ps_madd f4, f3, f3, f5
/* 8034E0C8 00317688  10 84 28 D4 */	ps_sum0 f4, f4, f3, f5
/* 8034E0CC 0031768C  FC A0 20 34 */	frsqrte f5, f4
/* 8034E0D0 00317690  EC C5 01 72 */	fmuls f6, f5, f5
/* 8034E0D4 00317694  EC 05 00 32 */	fmuls f0, f5, f0
/* 8034E0D8 00317698  EC C6 09 3C */	fnmsubs f6, f6, f4, f1
/* 8034E0DC 0031769C  EC A6 00 32 */	fmuls f5, f6, f0
/* 8034E0E0 003176A0  10 42 01 58 */	ps_muls0 f2, f2, f5
/* 8034E0E4 003176A4  10 63 01 58 */	ps_muls0 f3, f3, f5
/* 8034E0E8 003176A8  F0 44 00 00 */	psq_st f2, 0x0(r4), 0, qr0
/* 8034E0EC 003176AC  F0 64 80 08 */	psq_st f3, 0x8(r4), 1, qr0
/* 8034E0F0 003176B0  4E 80 00 20 */	blr
.endfn PSVECNormalize
/* 8034E0F4 003176B4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E0F8 003176B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E0FC 003176BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PSVECMag, global
/* 8034E100 003176C0  E0 03 00 00 */	psq_l f0, 0x0(r3), 0, qr0
/* 8034E104 003176C4  C0 82 BD E0 */	lfs f4, lbl_8066C160@sda21(r2)
/* 8034E108 003176C8  10 00 00 32 */	ps_mul f0, f0, f0
/* 8034E10C 003176CC  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8034E110 003176D0  EC 44 20 28 */	fsubs f2, f4, f4
/* 8034E114 003176D4  10 21 00 7A */	ps_madd f1, f1, f1, f0
/* 8034E118 003176D8  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 8034E11C 003176DC  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 8034E120 003176E0  4D 82 00 20 */	beqlr
/* 8034E124 003176E4  FC 00 08 34 */	frsqrte f0, f1
/* 8034E128 003176E8  C0 62 BD E4 */	lfs f3, lbl_8066C164@sda21(r2)
/* 8034E12C 003176EC  EC 40 00 32 */	fmuls f2, f0, f0
/* 8034E130 003176F0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8034E134 003176F4  EC 42 18 7C */	fnmsubs f2, f2, f1, f3
/* 8034E138 003176F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8034E13C 003176FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8034E140 00317700  4E 80 00 20 */	blr
.endfn PSVECMag
/* 8034E144 00317704  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E148 00317708  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E14C 0031770C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PSVECDotProduct, global
/* 8034E150 00317710  E0 43 00 04 */	psq_l f2, 0x4(r3), 0, qr0
/* 8034E154 00317714  E0 64 00 04 */	psq_l f3, 0x4(r4), 0, qr0
/* 8034E158 00317718  10 42 00 F2 */	ps_mul f2, f2, f3
/* 8034E15C 0031771C  E0 A3 00 00 */	psq_l f5, 0x0(r3), 0, qr0
/* 8034E160 00317720  E0 84 00 00 */	psq_l f4, 0x0(r4), 0, qr0
/* 8034E164 00317724  10 65 11 3A */	ps_madd f3, f5, f4, f2
/* 8034E168 00317728  10 23 10 94 */	ps_sum0 f1, f3, f2, f2
/* 8034E16C 0031772C  4E 80 00 20 */	blr
.endfn PSVECDotProduct

.fn PSVECCrossProduct, global
/* 8034E170 00317730  E0 24 00 00 */	psq_l f1, 0x0(r4), 0, qr0
/* 8034E174 00317734  C0 43 00 08 */	lfs f2, 0x8(r3)
/* 8034E178 00317738  E0 03 00 00 */	psq_l f0, 0x0(r3), 0, qr0
/* 8034E17C 0031773C  10 C1 0C A0 */	ps_merge10 f6, f1, f1
/* 8034E180 00317740  C0 64 00 08 */	lfs f3, 0x8(r4)
/* 8034E184 00317744  10 81 00 B2 */	ps_mul f4, f1, f2
/* 8034E188 00317748  10 E1 00 18 */	ps_muls0 f7, f1, f0
/* 8034E18C 0031774C  10 A0 20 F8 */	ps_msub f5, f0, f3, f4
/* 8034E190 00317750  11 00 39 B8 */	ps_msub f8, f0, f6, f7
/* 8034E194 00317754  11 25 2C E0 */	ps_merge11 f9, f5, f5
/* 8034E198 00317758  11 45 44 60 */	ps_merge01 f10, f5, f8
/* 8034E19C 0031775C  F1 25 80 00 */	psq_st f9, 0x0(r5), 1, qr0
/* 8034E1A0 00317760  11 40 50 50 */	ps_neg f10, f10
/* 8034E1A4 00317764  F1 45 00 04 */	psq_st f10, 0x4(r5), 0, qr0
/* 8034E1A8 00317768  4E 80 00 20 */	blr
.endfn PSVECCrossProduct
/* 8034E1AC 0031776C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn C_VECHalfAngle, global
/* 8034E1B0 00317770  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034E1B4 00317774  7C 08 02 A6 */	mflr r0
/* 8034E1B8 00317778  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 8034E1BC 0031777C  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 8034E1C0 00317780  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 8034E1C4 00317784  FC A0 10 50 */	fneg f5, f2
/* 8034E1C8 00317788  90 01 00 44 */	stw r0, 0x44(r1)
/* 8034E1CC 0031778C  FC 80 08 50 */	fneg f4, f1
/* 8034E1D0 00317790  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 8034E1D4 00317794  FC 60 00 50 */	fneg f3, f0
/* 8034E1D8 00317798  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8034E1DC 0031779C  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8034E1E0 003177A0  FC 40 10 50 */	fneg f2, f2
/* 8034E1E4 003177A4  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8034E1E8 003177A8  38 61 00 20 */	addi r3, r1, 0x20
/* 8034E1EC 003177AC  FC 20 08 50 */	fneg f1, f1
/* 8034E1F0 003177B0  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8034E1F4 003177B4  FC 00 00 50 */	fneg f0, f0
/* 8034E1F8 003177B8  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8034E1FC 003177BC  7C BF 2B 78 */	mr r31, r5
/* 8034E200 003177C0  7C 64 1B 78 */	mr r4, r3
/* 8034E204 003177C4  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8034E208 003177C8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8034E20C 003177CC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8034E210 003177D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8034E214 003177D4  4B FF FE 9D */	bl PSVECNormalize
/* 8034E218 003177D8  38 61 00 14 */	addi r3, r1, 0x14
/* 8034E21C 003177DC  7C 64 1B 78 */	mr r4, r3
/* 8034E220 003177E0  4B FF FE 91 */	bl PSVECNormalize
/* 8034E224 003177E4  38 61 00 20 */	addi r3, r1, 0x20
/* 8034E228 003177E8  38 81 00 14 */	addi r4, r1, 0x14
/* 8034E22C 003177EC  38 A1 00 08 */	addi r5, r1, 0x8
/* 8034E230 003177F0  4B FF FE 51 */	bl PSVECAdd
/* 8034E234 003177F4  38 61 00 08 */	addi r3, r1, 0x8
/* 8034E238 003177F8  7C 64 1B 78 */	mr r4, r3
/* 8034E23C 003177FC  4B FF FF 15 */	bl PSVECDotProduct
/* 8034E240 00317800  C0 02 BD E8 */	lfs f0, lbl_8066C168@sda21(r2)
/* 8034E244 00317804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034E248 00317808  40 81 00 14 */	ble .L_8034E25C
/* 8034E24C 0031780C  7F E4 FB 78 */	mr r4, r31
/* 8034E250 00317810  38 61 00 08 */	addi r3, r1, 0x8
/* 8034E254 00317814  4B FF FE 5D */	bl PSVECNormalize
/* 8034E258 00317818  48 00 00 1C */	b .L_8034E274
.L_8034E25C:
/* 8034E25C 0031781C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8034E260 00317820  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034E264 00317824  90 1F 00 04 */	stw r0, 0x4(r31)
/* 8034E268 00317828  90 7F 00 00 */	stw r3, 0x0(r31)
/* 8034E26C 0031782C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8034E270 00317830  90 1F 00 08 */	stw r0, 0x8(r31)
.L_8034E274:
/* 8034E274 00317834  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034E278 00317838  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8034E27C 0031783C  7C 08 03 A6 */	mtlr r0
/* 8034E280 00317840  38 21 00 40 */	addi r1, r1, 0x40
/* 8034E284 00317844  4E 80 00 20 */	blr
.endfn C_VECHalfAngle
/* 8034E288 00317848  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E28C 0031784C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PSVECSquareDistance, global
/* 8034E290 00317850  E0 03 00 00 */	psq_l f0, 0x0(r3), 0, qr0
/* 8034E294 00317854  E0 24 00 00 */	psq_l f1, 0x0(r4), 0, qr0
/* 8034E298 00317858  E0 43 00 08 */	psq_l f2, 0x8(r3), 0, qr0
/* 8034E29C 0031785C  10 00 08 2A */	ps_add f0, f0, f1
/* 8034E2A0 00317860  E0 64 00 08 */	psq_l f3, 0x8(r4), 0, qr0
/* 8034E2A4 00317864  10 22 18 2A */	ps_add f1, f2, f3
/* 8034E2A8 00317868  F0 05 00 00 */	psq_st f0, 0x0(r5), 0, qr0
/* 8034E2AC 0031786C  F0 25 00 08 */	psq_st f1, 0x8(r5), 0, qr0
/* 8034E2B0 00317870  4E 80 00 20 */	blr
.endfn PSVECSquareDistance
/* 8034E2B4 00317874  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E2B8 00317878  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034E2BC 0031787C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x8066C160 - 0x8066C170
.section .sdata2, "a"
.balign 8
.sym lbl_8066C160, local
	.4byte 0x3F000000
.sym lbl_8066C164, local
	.4byte 0x40400000
.sym lbl_8066C168, local
	.4byte 0x00000000
	.4byte 0x00000000
