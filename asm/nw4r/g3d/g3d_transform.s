.include "macros.inc"
.file "nw4r/g3d/g3d_transform.o"

# 0x803E17B0 - 0x803E1AA0
.text
.balign 4

# nw4r::g3d::detail::CalcViewNrmMtx(nw4r::math::MTX33*, const nw4r::math::MTX34*)
.fn CalcViewNrmMtx__Q34nw4r3g3d6detailFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34, global
/* 803E17B0 003AAD70  E0 04 80 00 */	psq_l f0, 0x0(r4), 1, qr0
/* 803E17B4 003AAD74  E0 24 00 04 */	psq_l f1, 0x4(r4), 0, qr0
/* 803E17B8 003AAD78  E0 44 80 10 */	psq_l f2, 0x10(r4), 1, qr0
/* 803E17BC 003AAD7C  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 803E17C0 003AAD80  E0 64 00 14 */	psq_l f3, 0x14(r4), 0, qr0
/* 803E17C4 003AAD84  E0 84 80 20 */	psq_l f4, 0x20(r4), 1, qr0
/* 803E17C8 003AAD88  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 803E17CC 003AAD8C  E0 A4 00 24 */	psq_l f5, 0x24(r4), 0, qr0
/* 803E17D0 003AAD90  11 63 01 B2 */	ps_mul f11, f3, f6
/* 803E17D4 003AAD94  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 803E17D8 003AAD98  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 803E17DC 003AAD9C  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 803E17E0 003AADA0  11 81 02 32 */	ps_mul f12, f1, f8
/* 803E17E4 003AADA4  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 803E17E8 003AADA8  3D 80 80 67 */	lis r12, lbl_8066C340@ha
/* 803E17EC 003AADAC  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 803E17F0 003AADB0  10 E0 03 72 */	ps_mul f7, f0, f13
/* 803E17F4 003AADB4  39 8C C3 40 */	addi r12, r12, lbl_8066C340@l
/* 803E17F8 003AADB8  11 43 01 32 */	ps_mul f10, f3, f4
/* 803E17FC 003AADBC  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 803E1800 003AADC0  E0 CC 80 00 */	psq_l f6, 0x0(r12), 1, qr0
/* 803E1804 003AADC4  11 20 01 72 */	ps_mul f9, f0, f5
/* 803E1808 003AADC8  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 803E180C 003AADCC  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 803E1810 003AADD0  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 803E1814 003AADD4  11 00 3A 10 */	ps_abs f8, f7
/* 803E1818 003AADD8  10 08 30 40 */	ps_cmpo0 cr0, f8, f6
/* 803E181C 003AADDC  40 80 00 24 */	bge .L_803E1840
/* 803E1820 003AADE0  F0 03 80 00 */	psq_st f0, 0x0(r3), 1, qr0
/* 803E1824 003AADE4  F0 43 80 0C */	psq_st f2, 0xc(r3), 1, qr0
/* 803E1828 003AADE8  F0 83 80 18 */	psq_st f4, 0x18(r3), 1, qr0
/* 803E182C 003AADEC  F0 23 00 04 */	psq_st f1, 0x4(r3), 0, qr0
/* 803E1830 003AADF0  F0 63 00 10 */	psq_st f3, 0x10(r3), 0, qr0
/* 803E1834 003AADF4  F0 A3 00 1C */	psq_st f5, 0x1c(r3), 0, qr0
/* 803E1838 003AADF8  38 60 00 00 */	li r3, 0x0
/* 803E183C 003AADFC  4E 80 00 20 */	blr
.L_803E1840:
/* 803E1840 003AAE00  EC A0 38 30 */	fres f5, f7
/* 803E1844 003AAE04  11 01 00 B2 */	ps_mul f8, f1, f2
/* 803E1848 003AAE08  10 C6 30 28 */	ps_sub f6, f6, f6
/* 803E184C 003AAE0C  10 25 28 2A */	ps_add f1, f5, f5
/* 803E1850 003AAE10  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 803E1854 003AAE14  10 47 01 72 */	ps_mul f2, f7, f5
/* 803E1858 003AAE18  10 05 08 BC */	ps_nmsub f0, f5, f2, f1
/* 803E185C 003AAE1C  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 803E1860 003AAE20  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 803E1864 003AAE24  F1 A3 00 00 */	psq_st f13, 0x0(r3), 0, qr0
/* 803E1868 003AAE28  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 803E186C 003AAE2C  F1 83 00 0C */	psq_st f12, 0xc(r3), 0, qr0
/* 803E1870 003AAE30  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 803E1874 003AAE34  F1 63 00 18 */	psq_st f11, 0x18(r3), 0, qr0
/* 803E1878 003AAE38  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 803E187C 003AAE3C  F1 43 80 08 */	psq_st f10, 0x8(r3), 1, qr0
/* 803E1880 003AAE40  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 803E1884 003AAE44  F1 23 80 14 */	psq_st f9, 0x14(r3), 1, qr0
/* 803E1888 003AAE48  F1 03 80 20 */	psq_st f8, 0x20(r3), 1, qr0
/* 803E188C 003AAE4C  38 60 00 01 */	li r3, 0x1
/* 803E1890 003AAE50  4E 80 00 20 */	blr
.endfn CalcViewNrmMtx__Q34nw4r3g3d6detailFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34

# nw4r::g3d::detail::CalcViewTexMtx(nw4r::math::MTX34*, const nw4r::math::MTX34*)
.fn CalcViewTexMtx__Q34nw4r3g3d6detailFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34, global
/* 803E1894 003AAE54  E0 04 80 00 */	psq_l f0, 0x0(r4), 1, qr0
/* 803E1898 003AAE58  E0 24 00 04 */	psq_l f1, 0x4(r4), 0, qr0
/* 803E189C 003AAE5C  E0 44 80 10 */	psq_l f2, 0x10(r4), 1, qr0
/* 803E18A0 003AAE60  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 803E18A4 003AAE64  E0 64 00 14 */	psq_l f3, 0x14(r4), 0, qr0
/* 803E18A8 003AAE68  E0 84 80 20 */	psq_l f4, 0x20(r4), 1, qr0
/* 803E18AC 003AAE6C  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 803E18B0 003AAE70  E0 A4 00 24 */	psq_l f5, 0x24(r4), 0, qr0
/* 803E18B4 003AAE74  11 63 01 B2 */	ps_mul f11, f3, f6
/* 803E18B8 003AAE78  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 803E18BC 003AAE7C  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 803E18C0 003AAE80  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 803E18C4 003AAE84  11 81 02 32 */	ps_mul f12, f1, f8
/* 803E18C8 003AAE88  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 803E18CC 003AAE8C  3D 80 80 67 */	lis r12, lbl_8066C340@ha
/* 803E18D0 003AAE90  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 803E18D4 003AAE94  10 E0 03 72 */	ps_mul f7, f0, f13
/* 803E18D8 003AAE98  39 8C C3 40 */	addi r12, r12, lbl_8066C340@l
/* 803E18DC 003AAE9C  11 43 01 32 */	ps_mul f10, f3, f4
/* 803E18E0 003AAEA0  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 803E18E4 003AAEA4  E0 CC 80 00 */	psq_l f6, 0x0(r12), 1, qr0
/* 803E18E8 003AAEA8  11 20 01 72 */	ps_mul f9, f0, f5
/* 803E18EC 003AAEAC  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 803E18F0 003AAEB0  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 803E18F4 003AAEB4  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 803E18F8 003AAEB8  11 00 3A 10 */	ps_abs f8, f7
/* 803E18FC 003AAEBC  10 08 30 40 */	ps_cmpo0 cr0, f8, f6
/* 803E1900 003AAEC0  40 80 00 3C */	bge .L_803E193C
/* 803E1904 003AAEC4  7C 03 20 40 */	cmplw r3, r4
/* 803E1908 003AAEC8  41 82 00 2C */	beq .L_803E1934
/* 803E190C 003AAECC  F0 03 80 00 */	psq_st f0, 0x0(r3), 1, qr0
/* 803E1910 003AAED0  F0 43 80 10 */	psq_st f2, 0x10(r3), 1, qr0
/* 803E1914 003AAED4  F0 83 80 20 */	psq_st f4, 0x20(r3), 1, qr0
/* 803E1918 003AAED8  10 C6 30 28 */	ps_sub f6, f6, f6
/* 803E191C 003AAEDC  F0 23 00 04 */	psq_st f1, 0x4(r3), 0, qr0
/* 803E1920 003AAEE0  F0 63 00 14 */	psq_st f3, 0x14(r3), 0, qr0
/* 803E1924 003AAEE4  F0 A3 00 24 */	psq_st f5, 0x24(r3), 0, qr0
/* 803E1928 003AAEE8  F0 C3 80 0C */	psq_st f6, 0xc(r3), 1, qr0
/* 803E192C 003AAEEC  F0 C3 80 1C */	psq_st f6, 0x1c(r3), 1, qr0
/* 803E1930 003AAEF0  F0 C3 80 2C */	psq_st f6, 0x2c(r3), 1, qr0
.L_803E1934:
/* 803E1934 003AAEF4  38 60 00 00 */	li r3, 0x0
/* 803E1938 003AAEF8  4E 80 00 20 */	blr
.L_803E193C:
/* 803E193C 003AAEFC  EC A0 38 30 */	fres f5, f7
/* 803E1940 003AAF00  11 01 00 B2 */	ps_mul f8, f1, f2
/* 803E1944 003AAF04  10 C6 30 28 */	ps_sub f6, f6, f6
/* 803E1948 003AAF08  10 25 28 2A */	ps_add f1, f5, f5
/* 803E194C 003AAF0C  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 803E1950 003AAF10  F0 C3 80 0C */	psq_st f6, 0xc(r3), 1, qr0
/* 803E1954 003AAF14  10 47 01 72 */	ps_mul f2, f7, f5
/* 803E1958 003AAF18  F0 C3 80 1C */	psq_st f6, 0x1c(r3), 1, qr0
/* 803E195C 003AAF1C  F0 C3 80 2C */	psq_st f6, 0x2c(r3), 1, qr0
/* 803E1960 003AAF20  10 05 08 BC */	ps_nmsub f0, f5, f2, f1
/* 803E1964 003AAF24  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 803E1968 003AAF28  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 803E196C 003AAF2C  F1 A3 00 00 */	psq_st f13, 0x0(r3), 0, qr0
/* 803E1970 003AAF30  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 803E1974 003AAF34  F1 83 00 10 */	psq_st f12, 0x10(r3), 0, qr0
/* 803E1978 003AAF38  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 803E197C 003AAF3C  F1 63 00 20 */	psq_st f11, 0x20(r3), 0, qr0
/* 803E1980 003AAF40  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 803E1984 003AAF44  F1 43 80 08 */	psq_st f10, 0x8(r3), 1, qr0
/* 803E1988 003AAF48  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 803E198C 003AAF4C  F1 23 80 18 */	psq_st f9, 0x18(r3), 1, qr0
/* 803E1990 003AAF50  F1 03 80 28 */	psq_st f8, 0x28(r3), 1, qr0
/* 803E1994 003AAF54  38 60 00 01 */	li r3, 0x1
/* 803E1998 003AAF58  4E 80 00 20 */	blr
.endfn CalcViewTexMtx__Q34nw4r3g3d6detailFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34

# nw4r::g3d::detail::CalcInvWorldMtx(nw4r::math::MTX34*, const nw4r::math::MTX34*)
.fn CalcInvWorldMtx__Q34nw4r3g3d6detailFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34, global
/* 803E199C 003AAF5C  E0 04 80 00 */	psq_l f0, 0x0(r4), 1, qr0
/* 803E19A0 003AAF60  E0 24 00 04 */	psq_l f1, 0x4(r4), 0, qr0
/* 803E19A4 003AAF64  E0 44 80 10 */	psq_l f2, 0x10(r4), 1, qr0
/* 803E19A8 003AAF68  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 803E19AC 003AAF6C  E0 64 00 14 */	psq_l f3, 0x14(r4), 0, qr0
/* 803E19B0 003AAF70  E0 84 80 20 */	psq_l f4, 0x20(r4), 1, qr0
/* 803E19B4 003AAF74  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 803E19B8 003AAF78  E0 A4 00 24 */	psq_l f5, 0x24(r4), 0, qr0
/* 803E19BC 003AAF7C  11 63 01 B2 */	ps_mul f11, f3, f6
/* 803E19C0 003AAF80  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 803E19C4 003AAF84  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 803E19C8 003AAF88  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 803E19CC 003AAF8C  11 81 02 32 */	ps_mul f12, f1, f8
/* 803E19D0 003AAF90  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 803E19D4 003AAF94  3D 80 80 67 */	lis r12, lbl_8066C340@ha
/* 803E19D8 003AAF98  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 803E19DC 003AAF9C  10 E0 03 72 */	ps_mul f7, f0, f13
/* 803E19E0 003AAFA0  39 8C C3 40 */	addi r12, r12, lbl_8066C340@l
/* 803E19E4 003AAFA4  11 43 01 32 */	ps_mul f10, f3, f4
/* 803E19E8 003AAFA8  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 803E19EC 003AAFAC  E0 CC 80 00 */	psq_l f6, 0x0(r12), 1, qr0
/* 803E19F0 003AAFB0  11 20 01 72 */	ps_mul f9, f0, f5
/* 803E19F4 003AAFB4  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 803E19F8 003AAFB8  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 803E19FC 003AAFBC  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 803E1A00 003AAFC0  11 00 3A 10 */	ps_abs f8, f7
/* 803E1A04 003AAFC4  10 08 30 40 */	ps_cmpo0 cr0, f8, f6
/* 803E1A08 003AAFC8  40 80 00 0C */	bge .L_803E1A14
/* 803E1A0C 003AAFCC  38 60 00 00 */	li r3, 0x0
/* 803E1A10 003AAFD0  4E 80 00 20 */	blr
.L_803E1A14:
/* 803E1A14 003AAFD4  EC C0 38 30 */	fres f6, f7
/* 803E1A18 003AAFD8  11 01 00 B2 */	ps_mul f8, f1, f2
/* 803E1A1C 003AAFDC  10 A6 30 2A */	ps_add f5, f6, f6
/* 803E1A20 003AAFE0  10 87 01 B2 */	ps_mul f4, f7, f6
/* 803E1A24 003AAFE4  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 803E1A28 003AAFE8  10 06 29 3C */	ps_nmsub f0, f6, f4, f5
/* 803E1A2C 003AAFEC  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 803E1A30 003AAFF0  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 803E1A34 003AAFF4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 803E1A38 003AAFF8  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 803E1A3C 003AAFFC  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 803E1A40 003AB000  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 803E1A44 003AB004  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 803E1A48 003AB008  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 803E1A4C 003AB00C  10 CD 00 72 */	ps_mul f6, f13, f1
/* 803E1A50 003AB010  F0 A3 00 00 */	psq_st f5, 0x0(r3), 0, qr0
/* 803E1A54 003AB014  F0 83 00 10 */	psq_st f4, 0x10(r3), 0, qr0
/* 803E1A58 003AB018  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 803E1A5C 003AB01C  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 803E1A60 003AB020  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 803E1A64 003AB024  F1 43 80 20 */	psq_st f10, 0x20(r3), 1, qr0
/* 803E1A68 003AB028  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 803E1A6C 003AB02C  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 803E1A70 003AB030  F1 23 80 24 */	psq_st f9, 0x24(r3), 1, qr0
/* 803E1A74 003AB034  10 EA 00 72 */	ps_mul f7, f10, f1
/* 803E1A78 003AB038  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 803E1A7C 003AB03C  F1 03 80 28 */	psq_st f8, 0x28(r3), 1, qr0
/* 803E1A80 003AB040  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 803E1A84 003AB044  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 803E1A88 003AB048  F0 A3 00 08 */	psq_st f5, 0x8(r3), 0, qr0
/* 803E1A8C 003AB04C  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 803E1A90 003AB050  F0 83 00 18 */	psq_st f4, 0x18(r3), 0, qr0
/* 803E1A94 003AB054  F0 E3 80 2C */	psq_st f7, 0x2c(r3), 1, qr0
/* 803E1A98 003AB058  38 60 00 01 */	li r3, 0x1
/* 803E1A9C 003AB05C  4E 80 00 20 */	blr
.endfn CalcInvWorldMtx__Q34nw4r3g3d6detailFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34

# 0x8066C340 - 0x8066C348
.section .sdata2, "a"
.balign 8
.sym lbl_8066C340, local
	.4byte 0x03AA2425
	.4byte 0x00000000
