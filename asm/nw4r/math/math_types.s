.include "macros.inc"
.file "nw4r/math/math_types.o"

# 0x8040B000 - 0x8040B488
.text
.balign 4

# nw4r::math::MTX33Identity(nw4r::math::MTX33*)
.fn MTX33Identity__Q24nw4r4mathFPQ34nw4r4math5MTX33, global
/* 8040B000 003D45C0  C0 02 C2 C0 */	lfs f0, lbl_8066C640@sda21(r2)
/* 8040B004 003D45C4  C0 22 C2 C4 */	lfs f1, lbl_8066C644@sda21(r2)
/* 8040B008 003D45C8  F0 03 00 08 */	psq_st f0, 0x8(r3), 0, qr0
/* 8040B00C 003D45CC  10 41 04 20 */	ps_merge00 f2, f1, f0
/* 8040B010 003D45D0  F0 03 00 18 */	psq_st f0, 0x18(r3), 0, qr0
/* 8040B014 003D45D4  F0 43 00 00 */	psq_st f2, 0x0(r3), 0, qr0
/* 8040B018 003D45D8  F0 43 00 10 */	psq_st f2, 0x10(r3), 0, qr0
/* 8040B01C 003D45DC  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8040B020 003D45E0  4E 80 00 20 */	blr
.endfn MTX33Identity__Q24nw4r4mathFPQ34nw4r4math5MTX33

# nw4r::math::MTX34ToMTX33(nw4r::math::MTX33*, const nw4r::math::MTX34*)
.fn MTX34ToMTX33__Q24nw4r4mathFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34, global
/* 8040B024 003D45E4  E0 04 00 00 */	psq_l f0, 0x0(r4), 0, qr0
/* 8040B028 003D45E8  E0 24 00 08 */	psq_l f1, 0x8(r4), 0, qr0
/* 8040B02C 003D45EC  E0 44 00 10 */	psq_l f2, 0x10(r4), 0, qr0
/* 8040B030 003D45F0  E0 64 00 18 */	psq_l f3, 0x18(r4), 0, qr0
/* 8040B034 003D45F4  E0 84 00 20 */	psq_l f4, 0x20(r4), 0, qr0
/* 8040B038 003D45F8  E0 A4 00 28 */	psq_l f5, 0x28(r4), 0, qr0
/* 8040B03C 003D45FC  F0 03 00 00 */	psq_st f0, 0x0(r3), 0, qr0
/* 8040B040 003D4600  F0 23 80 08 */	psq_st f1, 0x8(r3), 1, qr0
/* 8040B044 003D4604  F0 43 00 0C */	psq_st f2, 0xc(r3), 0, qr0
/* 8040B048 003D4608  F0 63 80 14 */	psq_st f3, 0x14(r3), 1, qr0
/* 8040B04C 003D460C  F0 83 00 18 */	psq_st f4, 0x18(r3), 0, qr0
/* 8040B050 003D4610  F0 A3 80 20 */	psq_st f5, 0x20(r3), 1, qr0
/* 8040B054 003D4614  4E 80 00 20 */	blr
.endfn MTX34ToMTX33__Q24nw4r4mathFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34

# nw4r::math::MTX34Zero(nw4r::math::MTX34*)
.fn MTX34Zero__Q24nw4r4mathFPQ34nw4r4math5MTX34, global
/* 8040B058 003D4618  C0 02 C2 C0 */	lfs f0, lbl_8066C640@sda21(r2)
/* 8040B05C 003D461C  F0 03 00 00 */	psq_st f0, 0x0(r3), 0, qr0
/* 8040B060 003D4620  F0 03 00 08 */	psq_st f0, 0x8(r3), 0, qr0
/* 8040B064 003D4624  F0 03 00 10 */	psq_st f0, 0x10(r3), 0, qr0
/* 8040B068 003D4628  F0 03 00 18 */	psq_st f0, 0x18(r3), 0, qr0
/* 8040B06C 003D462C  F0 03 00 20 */	psq_st f0, 0x20(r3), 0, qr0
/* 8040B070 003D4630  F0 03 00 28 */	psq_st f0, 0x28(r3), 0, qr0
/* 8040B074 003D4634  4E 80 00 20 */	blr
.endfn MTX34Zero__Q24nw4r4mathFPQ34nw4r4math5MTX34

# nw4r::math::MTX34Add(nw4r::math::MTX34*, const nw4r::math::MTX34*, const nw4r::math::MTX34*)
.fn MTX34Add__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34, global
/* 8040B078 003D4638  E0 04 00 00 */	psq_l f0, 0x0(r4), 0, qr0
/* 8040B07C 003D463C  E0 25 00 00 */	psq_l f1, 0x0(r5), 0, qr0
/* 8040B080 003D4640  10 40 08 2A */	ps_add f2, f0, f1
/* 8040B084 003D4644  E0 04 00 08 */	psq_l f0, 0x8(r4), 0, qr0
/* 8040B088 003D4648  E0 25 00 08 */	psq_l f1, 0x8(r5), 0, qr0
/* 8040B08C 003D464C  F0 43 00 00 */	psq_st f2, 0x0(r3), 0, qr0
/* 8040B090 003D4650  10 40 08 2A */	ps_add f2, f0, f1
/* 8040B094 003D4654  E0 04 00 10 */	psq_l f0, 0x10(r4), 0, qr0
/* 8040B098 003D4658  E0 25 00 10 */	psq_l f1, 0x10(r5), 0, qr0
/* 8040B09C 003D465C  F0 43 00 08 */	psq_st f2, 0x8(r3), 0, qr0
/* 8040B0A0 003D4660  10 40 08 2A */	ps_add f2, f0, f1
/* 8040B0A4 003D4664  E0 04 00 18 */	psq_l f0, 0x18(r4), 0, qr0
/* 8040B0A8 003D4668  E0 25 00 18 */	psq_l f1, 0x18(r5), 0, qr0
/* 8040B0AC 003D466C  F0 43 00 10 */	psq_st f2, 0x10(r3), 0, qr0
/* 8040B0B0 003D4670  10 40 08 2A */	ps_add f2, f0, f1
/* 8040B0B4 003D4674  E0 04 00 20 */	psq_l f0, 0x20(r4), 0, qr0
/* 8040B0B8 003D4678  E0 25 00 20 */	psq_l f1, 0x20(r5), 0, qr0
/* 8040B0BC 003D467C  F0 43 00 18 */	psq_st f2, 0x18(r3), 0, qr0
/* 8040B0C0 003D4680  10 40 08 2A */	ps_add f2, f0, f1
/* 8040B0C4 003D4684  E0 04 00 28 */	psq_l f0, 0x28(r4), 0, qr0
/* 8040B0C8 003D4688  E0 25 00 28 */	psq_l f1, 0x28(r5), 0, qr0
/* 8040B0CC 003D468C  F0 43 00 20 */	psq_st f2, 0x20(r3), 0, qr0
/* 8040B0D0 003D4690  10 40 08 2A */	ps_add f2, f0, f1
/* 8040B0D4 003D4694  F0 43 00 28 */	psq_st f2, 0x28(r3), 0, qr0
/* 8040B0D8 003D4698  4E 80 00 20 */	blr
.endfn MTX34Add__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34

# nw4r::math::MTX34Mult(nw4r::math::MTX34*, const nw4r::math::MTX34*, float)
.fn MTX34Mult__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34f, global
/* 8040B0DC 003D469C  E0 04 00 00 */	psq_l f0, 0x0(r4), 0, qr0
/* 8040B0E0 003D46A0  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8040B0E4 003D46A4  E0 04 00 08 */	psq_l f0, 0x8(r4), 0, qr0
/* 8040B0E8 003D46A8  F0 43 00 00 */	psq_st f2, 0x0(r3), 0, qr0
/* 8040B0EC 003D46AC  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8040B0F0 003D46B0  E0 04 00 10 */	psq_l f0, 0x10(r4), 0, qr0
/* 8040B0F4 003D46B4  F0 43 00 08 */	psq_st f2, 0x8(r3), 0, qr0
/* 8040B0F8 003D46B8  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8040B0FC 003D46BC  E0 04 00 18 */	psq_l f0, 0x18(r4), 0, qr0
/* 8040B100 003D46C0  F0 43 00 10 */	psq_st f2, 0x10(r3), 0, qr0
/* 8040B104 003D46C4  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8040B108 003D46C8  E0 04 00 20 */	psq_l f0, 0x20(r4), 0, qr0
/* 8040B10C 003D46CC  F0 43 00 18 */	psq_st f2, 0x18(r3), 0, qr0
/* 8040B110 003D46D0  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8040B114 003D46D4  E0 04 00 28 */	psq_l f0, 0x28(r4), 0, qr0
/* 8040B118 003D46D8  F0 43 00 20 */	psq_st f2, 0x20(r3), 0, qr0
/* 8040B11C 003D46DC  10 40 00 58 */	ps_muls0 f2, f0, f1
/* 8040B120 003D46E0  F0 43 00 28 */	psq_st f2, 0x28(r3), 0, qr0
/* 8040B124 003D46E4  4E 80 00 20 */	blr
.endfn MTX34Mult__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34f

# nw4r::math::MTX34Scale(nw4r::math::MTX34*, const nw4r::math::MTX34*, const nw4r::math::VEC3*)
.fn MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3, global
/* 8040B128 003D46E8  E0 05 00 00 */	psq_l f0, 0x0(r5), 0, qr0
/* 8040B12C 003D46EC  E0 44 00 00 */	psq_l f2, 0x0(r4), 0, qr0
/* 8040B130 003D46F0  E0 84 00 10 */	psq_l f4, 0x10(r4), 0, qr0
/* 8040B134 003D46F4  E0 A4 00 20 */	psq_l f5, 0x20(r4), 0, qr0
/* 8040B138 003D46F8  10 42 00 32 */	ps_mul f2, f2, f0
/* 8040B13C 003D46FC  10 84 00 32 */	ps_mul f4, f4, f0
/* 8040B140 003D4700  E0 25 80 08 */	psq_l f1, 0x8(r5), 1, qr0
/* 8040B144 003D4704  10 A5 00 32 */	ps_mul f5, f5, f0
/* 8040B148 003D4708  E0 64 00 08 */	psq_l f3, 0x8(r4), 0, qr0
/* 8040B14C 003D470C  E0 04 00 18 */	psq_l f0, 0x18(r4), 0, qr0
/* 8040B150 003D4710  E0 C4 00 28 */	psq_l f6, 0x28(r4), 0, qr0
/* 8040B154 003D4714  10 63 00 72 */	ps_mul f3, f3, f1
/* 8040B158 003D4718  F0 43 00 00 */	psq_st f2, 0x0(r3), 0, qr0
/* 8040B15C 003D471C  10 00 00 72 */	ps_mul f0, f0, f1
/* 8040B160 003D4720  10 C6 00 72 */	ps_mul f6, f6, f1
/* 8040B164 003D4724  F0 83 00 10 */	psq_st f4, 0x10(r3), 0, qr0
/* 8040B168 003D4728  F0 63 00 08 */	psq_st f3, 0x8(r3), 0, qr0
/* 8040B16C 003D472C  F0 03 00 18 */	psq_st f0, 0x18(r3), 0, qr0
/* 8040B170 003D4730  F0 A3 00 20 */	psq_st f5, 0x20(r3), 0, qr0
/* 8040B174 003D4734  F0 C3 00 28 */	psq_st f6, 0x28(r3), 0, qr0
/* 8040B178 003D4738  4E 80 00 20 */	blr
.endfn MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3

# nw4r::math::MTX34Trans(nw4r::math::MTX34*, const nw4r::math::MTX34*, const nw4r::math::VEC3*)
.fn MTX34Trans__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3, global
/* 8040B17C 003D473C  E0 44 00 00 */	psq_l f2, 0x0(r4), 0, qr0
/* 8040B180 003D4740  E0 05 00 00 */	psq_l f0, 0x0(r5), 0, qr0
/* 8040B184 003D4744  E0 64 00 08 */	psq_l f3, 0x8(r4), 0, qr0
/* 8040B188 003D4748  E0 84 00 10 */	psq_l f4, 0x10(r4), 0, qr0
/* 8040B18C 003D474C  11 02 00 32 */	ps_mul f8, f2, f0
/* 8040B190 003D4750  E0 25 80 08 */	psq_l f1, 0x8(r5), 1, qr0
/* 8040B194 003D4754  E0 A4 00 18 */	psq_l f5, 0x18(r4), 0, qr0
/* 8040B198 003D4758  11 23 40 7A */	ps_madd f9, f3, f1, f8
/* 8040B19C 003D475C  E0 C4 00 20 */	psq_l f6, 0x20(r4), 0, qr0
/* 8040B1A0 003D4760  11 04 00 32 */	ps_mul f8, f4, f0
/* 8040B1A4 003D4764  E0 E4 00 28 */	psq_l f7, 0x28(r4), 0, qr0
/* 8040B1A8 003D4768  F0 63 00 08 */	psq_st f3, 0x8(r3), 0, qr0
/* 8040B1AC 003D476C  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 8040B1B0 003D4770  11 25 40 7A */	ps_madd f9, f5, f1, f8
/* 8040B1B4 003D4774  F0 A3 00 18 */	psq_st f5, 0x18(r3), 0, qr0
/* 8040B1B8 003D4778  11 06 00 32 */	ps_mul f8, f6, f0
/* 8040B1BC 003D477C  F1 43 80 0C */	psq_st f10, 0xc(r3), 1, qr0
/* 8040B1C0 003D4780  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 8040B1C4 003D4784  11 27 40 7A */	ps_madd f9, f7, f1, f8
/* 8040B1C8 003D4788  F0 E3 00 28 */	psq_st f7, 0x28(r3), 0, qr0
/* 8040B1CC 003D478C  F1 43 80 1C */	psq_st f10, 0x1c(r3), 1, qr0
/* 8040B1D0 003D4790  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 8040B1D4 003D4794  F0 43 00 00 */	psq_st f2, 0x0(r3), 0, qr0
/* 8040B1D8 003D4798  F0 83 00 10 */	psq_st f4, 0x10(r3), 0, qr0
/* 8040B1DC 003D479C  F0 C3 00 20 */	psq_st f6, 0x20(r3), 0, qr0
/* 8040B1E0 003D47A0  F1 43 80 2C */	psq_st f10, 0x2c(r3), 1, qr0
/* 8040B1E4 003D47A4  4E 80 00 20 */	blr
.endfn MTX34Trans__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3

# nw4r::math::MTX34RotAxisFIdx(nw4r::math::MTX34*, const nw4r::math::VEC3*, float)
.fn MTX34RotAxisFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3f, global
/* 8040B1E8 003D47A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040B1EC 003D47AC  7C 08 02 A6 */	mflr r0
/* 8040B1F0 003D47B0  C0 02 C2 C8 */	lfs f0, lbl_8066C648@sda21(r2)
/* 8040B1F4 003D47B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040B1F8 003D47B8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040B1FC 003D47BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040B200 003D47C0  7C 7F 1B 78 */	mr r31, r3
/* 8040B204 003D47C4  4B F4 25 DD */	bl PSMTXRotAxisRad
/* 8040B208 003D47C8  7F E3 FB 78 */	mr r3, r31
/* 8040B20C 003D47CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040B210 003D47D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040B214 003D47D4  7C 08 03 A6 */	mtlr r0
/* 8040B218 003D47D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8040B21C 003D47DC  4E 80 00 20 */	blr
.endfn MTX34RotAxisFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3f

# nw4r::math::MTX34RotXYZFIdx(nw4r::math::MTX34*, float, float, float)
.fn MTX34RotXYZFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34fff, global
/* 8040B220 003D47E0  3C 80 80 52 */	lis r4, lbl_80521110@ha
/* 8040B224 003D47E4  38 02 C2 D0 */	addi r0, r2, lbl_8066C650@sda21
/* 8040B228 003D47E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040B22C 003D47EC  38 84 11 10 */	addi r4, r4, lbl_80521110@l
/* 8040B230 003D47F0  10 00 00 0C */	psq_lx f0, r0, r0, 0, qr0
/* 8040B234 003D47F4  10 C1 14 20 */	ps_merge00 f6, f1, f2
/* 8040B238 003D47F8  10 00 04 20 */	ps_merge00 f0, f0, f0
/* 8040B23C 003D47FC  10 80 32 10 */	ps_abs f4, f6
/* 8040B240 003D4800  10 20 00 50 */	ps_neg f1, f0
/* 8040B244 003D4804  10 40 00 28 */	ps_sub f2, f0, f0
/* 8040B248 003D4808  10 04 00 00 */	ps_cmpu0 cr0, f4, f0
/* 8040B24C 003D480C  40 81 00 10 */	ble .L_8040B25C
.L_8040B250:
/* 8040B250 003D4810  10 84 09 14 */	ps_sum0 f4, f4, f4, f1
/* 8040B254 003D4814  10 04 00 00 */	ps_cmpu0 cr0, f4, f0
/* 8040B258 003D4818  41 81 FF F8 */	bgt .L_8040B250
.L_8040B25C:
/* 8040B25C 003D481C  10 04 00 80 */	ps_cmpu1 cr0, f4, f0
/* 8040B260 003D4820  40 81 00 18 */	ble .L_8040B278
/* 8040B264 003D4824  10 84 24 A0 */	ps_merge10 f4, f4, f4
.L_8040B268:
/* 8040B268 003D4828  10 84 09 14 */	ps_sum0 f4, f4, f4, f1
/* 8040B26C 003D482C  10 04 00 00 */	ps_cmpu0 cr0, f4, f0
/* 8040B270 003D4830  41 81 FF F8 */	bgt .L_8040B268
/* 8040B274 003D4834  10 84 24 A0 */	ps_merge10 f4, f4, f4
.L_8040B278:
/* 8040B278 003D4838  F0 81 30 08 */	psq_st f4, 0x8(r1), 0, qr3
/* 8040B27C 003D483C  E0 E1 30 08 */	psq_l f7, 0x8(r1), 0, qr3
/* 8040B280 003D4840  FC A0 1A 10 */	fabs f5, f3
/* 8040B284 003D4844  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8040B288 003D4848  FC 05 00 00 */	fcmpu cr0, f5, f0
/* 8040B28C 003D484C  40 81 00 10 */	ble .L_8040B29C
.L_8040B290:
/* 8040B290 003D4850  EC A5 00 28 */	fsubs f5, f5, f0
/* 8040B294 003D4854  FC 05 00 00 */	fcmpu cr0, f5, f0
/* 8040B298 003D4858  41 81 FF F8 */	bgt .L_8040B290
.L_8040B29C:
/* 8040B29C 003D485C  F0 A1 B0 08 */	psq_st f5, 0x8(r1), 1, qr3
/* 8040B2A0 003D4860  54 05 A5 36 */	rlwinm r5, r0, 20, 20, 27
/* 8040B2A4 003D4864  7C A4 2A 14 */	add r5, r4, r5
/* 8040B2A8 003D4868  10 E4 38 28 */	ps_sub f7, f4, f7
/* 8040B2AC 003D486C  E0 85 00 00 */	psq_l f4, 0x0(r5), 0, qr0
/* 8040B2B0 003D4870  54 06 25 36 */	clrlslwi r6, r0, 24, 4
/* 8040B2B4 003D4874  E1 05 00 08 */	psq_l f8, 0x8(r5), 0, qr0
/* 8040B2B8 003D4878  10 06 10 00 */	ps_cmpu0 cr0, f6, f2
/* 8040B2BC 003D487C  7C C4 32 14 */	add r6, r4, r6
/* 8040B2C0 003D4880  10 08 21 DC */	ps_madds0 f0, f8, f7, f4
/* 8040B2C4 003D4884  E0 86 00 00 */	psq_l f4, 0x0(r6), 0, qr0
/* 8040B2C8 003D4888  E1 06 00 08 */	psq_l f8, 0x8(r6), 0, qr0
/* 8040B2CC 003D488C  A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8040B2D0 003D4890  40 80 00 0C */	bge .L_8040B2DC
/* 8040B2D4 003D4894  11 20 00 50 */	ps_neg f9, f0
/* 8040B2D8 003D4898  10 09 04 60 */	ps_merge01 f0, f9, f0
.L_8040B2DC:
/* 8040B2DC 003D489C  10 28 21 DE */	ps_madds1 f1, f8, f7, f4
/* 8040B2E0 003D48A0  E0 E1 B0 08 */	psq_l f7, 0x8(r1), 1, qr3
/* 8040B2E4 003D48A4  54 00 25 36 */	clrlslwi r0, r0, 24, 4
/* 8040B2E8 003D48A8  10 06 10 80 */	ps_cmpu1 cr0, f6, f2
/* 8040B2EC 003D48AC  7C A4 02 14 */	add r5, r4, r0
/* 8040B2F0 003D48B0  EC E5 38 28 */	fsubs f7, f5, f7
/* 8040B2F4 003D48B4  E0 85 00 00 */	psq_l f4, 0x0(r5), 0, qr0
/* 8040B2F8 003D48B8  E1 05 00 08 */	psq_l f8, 0x8(r5), 0, qr0
/* 8040B2FC 003D48BC  40 80 00 0C */	bge .L_8040B308
/* 8040B300 003D48C0  11 20 08 50 */	ps_neg f9, f1
/* 8040B304 003D48C4  10 29 0C 60 */	ps_merge01 f1, f9, f1
.L_8040B308:
/* 8040B308 003D48C8  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 8040B30C 003D48CC  10 48 21 DC */	ps_madds0 f2, f8, f7, f4
/* 8040B310 003D48D0  40 80 00 0C */	bge .L_8040B31C
/* 8040B314 003D48D4  11 20 10 50 */	ps_neg f9, f2
/* 8040B318 003D48D8  10 49 14 60 */	ps_merge01 f2, f9, f2
.L_8040B31C:
/* 8040B31C 003D48DC  10 60 00 50 */	ps_neg f3, f0
/* 8040B320 003D48E0  10 A2 00 5A */	ps_muls1 f5, f2, f1
/* 8040B324 003D48E4  10 E0 00 28 */	ps_sub f7, f0, f0
/* 8040B328 003D48E8  10 63 04 A0 */	ps_merge10 f3, f3, f0
/* 8040B32C 003D48EC  10 C5 2C A0 */	ps_merge10 f6, f5, f5
/* 8040B330 003D48F0  10 80 00 98 */	ps_muls0 f4, f0, f2
/* 8040B334 003D48F4  F0 E3 80 2C */	psq_st f7, 0x2c(r3), 1, qr0
/* 8040B338 003D48F8  11 03 00 98 */	ps_muls0 f8, f3, f2
/* 8040B33C 003D48FC  F0 C3 80 00 */	psq_st f6, 0x0(r3), 1, qr0
/* 8040B340 003D4900  10 C0 00 9A */	ps_muls1 f6, f0, f2
/* 8040B344 003D4904  10 43 00 9A */	ps_muls1 f2, f3, f2
/* 8040B348 003D4908  10 C6 40 5C */	ps_madds0 f6, f6, f1, f8
/* 8040B34C 003D490C  10 40 10 50 */	ps_neg f2, f2
/* 8040B350 003D4910  F0 C3 00 04 */	psq_st f6, 0x4(r3), 0, qr0
/* 8040B354 003D4914  10 C7 2C 20 */	ps_merge00 f6, f7, f5
/* 8040B358 003D4918  F0 C3 00 0C */	psq_st f6, 0xc(r3), 0, qr0
/* 8040B35C 003D491C  10 C4 10 5C */	ps_madds0 f6, f4, f1, f2
/* 8040B360 003D4920  F0 C3 00 14 */	psq_st f6, 0x14(r3), 0, qr0
/* 8040B364 003D4924  10 C0 08 50 */	ps_neg f6, f1
/* 8040B368 003D4928  10 C7 34 20 */	ps_merge00 f6, f7, f6
/* 8040B36C 003D492C  F0 C3 00 1C */	psq_st f6, 0x1c(r3), 0, qr0
/* 8040B370 003D4930  10 C0 00 5A */	ps_muls1 f6, f0, f1
/* 8040B374 003D4934  F0 C3 00 24 */	psq_st f6, 0x24(r3), 0, qr0
/* 8040B378 003D4938  38 21 00 10 */	addi r1, r1, 0x10
/* 8040B37C 003D493C  4E 80 00 20 */	blr
.endfn MTX34RotXYZFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34fff

# nw4r::math::VEC3TransformNormal(nw4r::math::VEC3*, const nw4r::math::MTX34*, const nw4r::math::VEC3*)
.fn VEC3TransformNormal__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3, global
/* 8040B380 003D4940  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 8040B384 003D4944  C0 45 00 00 */	lfs f2, 0x0(r5)
/* 8040B388 003D4948  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8040B38C 003D494C  EC E3 00 B2 */	fmuls f7, f3, f2
/* 8040B390 003D4950  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8040B394 003D4954  EC 81 00 B2 */	fmuls f4, f1, f2
/* 8040B398 003D4958  C0 64 00 04 */	lfs f3, 0x4(r4)
/* 8040B39C 003D495C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8040B3A0 003D4960  C0 A5 00 04 */	lfs f5, 0x4(r5)
/* 8040B3A4 003D4964  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8040B3A8 003D4968  EC C3 01 72 */	fmuls f6, f3, f5
/* 8040B3AC 003D496C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 8040B3B0 003D4970  EC 00 01 72 */	fmuls f0, f0, f5
/* 8040B3B4 003D4974  C1 04 00 08 */	lfs f8, 0x8(r4)
/* 8040B3B8 003D4978  EC 62 01 72 */	fmuls f3, f2, f5
/* 8040B3BC 003D497C  C1 25 00 08 */	lfs f9, 0x8(r5)
/* 8040B3C0 003D4980  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 8040B3C4 003D4984  EC C7 30 2A */	fadds f6, f7, f6
/* 8040B3C8 003D4988  C0 44 00 28 */	lfs f2, 0x28(r4)
/* 8040B3CC 003D498C  ED 08 02 72 */	fmuls f8, f8, f9
/* 8040B3D0 003D4990  EC 64 18 2A */	fadds f3, f4, f3
/* 8040B3D4 003D4994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040B3D8 003D4998  EC A5 02 72 */	fmuls f5, f5, f9
/* 8040B3DC 003D499C  EC 88 30 2A */	fadds f4, f8, f6
/* 8040B3E0 003D49A0  EC 42 02 72 */	fmuls f2, f2, f9
/* 8040B3E4 003D49A4  EC 65 18 2A */	fadds f3, f5, f3
/* 8040B3E8 003D49A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B3EC 003D49AC  D0 81 00 08 */	stfs f4, 0x8(r1)
/* 8040B3F0 003D49B0  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8040B3F4 003D49B4  EC 02 00 2A */	fadds f0, f2, f0
/* 8040B3F8 003D49B8  D0 83 00 00 */	stfs f4, 0x0(r3)
/* 8040B3FC 003D49BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8040B400 003D49C0  D0 63 00 04 */	stfs f3, 0x4(r3)
/* 8040B404 003D49C4  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8040B408 003D49C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8040B40C 003D49CC  4E 80 00 20 */	blr
.endfn VEC3TransformNormal__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3

# nw4r::math::MTX44Identity(nw4r::math::MTX44*)
.fn MTX44Identity__Q24nw4r4mathFPQ34nw4r4math5MTX44, global
/* 8040B410 003D49D0  C0 02 C2 C0 */	lfs f0, lbl_8066C640@sda21(r2)
/* 8040B414 003D49D4  C0 22 C2 C4 */	lfs f1, lbl_8066C644@sda21(r2)
/* 8040B418 003D49D8  F0 03 00 08 */	psq_st f0, 0x8(r3), 0, qr0
/* 8040B41C 003D49DC  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 8040B420 003D49E0  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 8040B424 003D49E4  F0 03 00 18 */	psq_st f0, 0x18(r3), 0, qr0
/* 8040B428 003D49E8  F0 03 00 20 */	psq_st f0, 0x20(r3), 0, qr0
/* 8040B42C 003D49EC  F0 43 00 10 */	psq_st f2, 0x10(r3), 0, qr0
/* 8040B430 003D49F0  F0 23 00 00 */	psq_st f1, 0x0(r3), 0, qr0
/* 8040B434 003D49F4  F0 23 00 28 */	psq_st f1, 0x28(r3), 0, qr0
/* 8040B438 003D49F8  F0 03 00 30 */	psq_st f0, 0x30(r3), 0, qr0
/* 8040B43C 003D49FC  F0 43 00 38 */	psq_st f2, 0x38(r3), 0, qr0
/* 8040B440 003D4A00  4E 80 00 20 */	blr
.endfn MTX44Identity__Q24nw4r4mathFPQ34nw4r4math5MTX44

# nw4r::math::MTX44Copy(nw4r::math::MTX44*, const nw4r::math::MTX44*)
.fn MTX44Copy__Q24nw4r4mathFPQ34nw4r4math5MTX44PCQ34nw4r4math5MTX44, global
/* 8040B444 003D4A04  E0 04 00 00 */	psq_l f0, 0x0(r4), 0, qr0
/* 8040B448 003D4A08  E0 24 00 08 */	psq_l f1, 0x8(r4), 0, qr0
/* 8040B44C 003D4A0C  E0 44 00 10 */	psq_l f2, 0x10(r4), 0, qr0
/* 8040B450 003D4A10  E0 64 00 18 */	psq_l f3, 0x18(r4), 0, qr0
/* 8040B454 003D4A14  E0 84 00 20 */	psq_l f4, 0x20(r4), 0, qr0
/* 8040B458 003D4A18  E0 A4 00 28 */	psq_l f5, 0x28(r4), 0, qr0
/* 8040B45C 003D4A1C  E0 C4 00 30 */	psq_l f6, 0x30(r4), 0, qr0
/* 8040B460 003D4A20  E0 E4 00 38 */	psq_l f7, 0x38(r4), 0, qr0
/* 8040B464 003D4A24  F0 03 00 00 */	psq_st f0, 0x0(r3), 0, qr0
/* 8040B468 003D4A28  F0 23 00 08 */	psq_st f1, 0x8(r3), 0, qr0
/* 8040B46C 003D4A2C  F0 43 00 10 */	psq_st f2, 0x10(r3), 0, qr0
/* 8040B470 003D4A30  F0 63 00 18 */	psq_st f3, 0x18(r3), 0, qr0
/* 8040B474 003D4A34  F0 83 00 20 */	psq_st f4, 0x20(r3), 0, qr0
/* 8040B478 003D4A38  F0 A3 00 28 */	psq_st f5, 0x28(r3), 0, qr0
/* 8040B47C 003D4A3C  F0 C3 00 30 */	psq_st f6, 0x30(r3), 0, qr0
/* 8040B480 003D4A40  F0 E3 00 38 */	psq_st f7, 0x38(r3), 0, qr0
/* 8040B484 003D4A44  4E 80 00 20 */	blr
.endfn MTX44Copy__Q24nw4r4mathFPQ34nw4r4math5MTX44PCQ34nw4r4math5MTX44

# 0x8066C640 - 0x8066C658
.section .sdata2, "a"
.balign 8
.sym lbl_8066C640, global
	.4byte 0x00000000
.sym lbl_8066C644, global
	.4byte 0x3F800000
.sym lbl_8066C648, global
	.4byte 0x3CC90FDB
	.4byte 0x00000000
.sym lbl_8066C650, global
	.4byte 0x47800000
	.4byte 0x47800000
