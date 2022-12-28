.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global sinit_80435DF8
sinit_80435DF8:
/* 80435DF8 003FF3B8  3D 00 80 66 */	lis r8, lbl_80659DF0@ha
/* 80435DFC 003FF3BC  C0 22 C6 70 */	lfs f1, lbl_8066C9F0@sda21(r2)
/* 80435E00 003FF3C0  39 08 9D F0 */	addi r8, r8, lbl_80659DF0@l
/* 80435E04 003FF3C4  C0 02 C6 74 */	lfs f0, lbl_8066C9F4@sda21(r2)
/* 80435E08 003FF3C8  38 E8 00 00 */	addi r7, r8, 0
/* 80435E0C 003FF3CC  D0 28 00 00 */	stfs f1, 0(r8)
/* 80435E10 003FF3D0  38 C8 00 10 */	addi r6, r8, 0x10
/* 80435E14 003FF3D4  38 A8 00 20 */	addi r5, r8, 0x20
/* 80435E18 003FF3D8  38 88 00 30 */	addi r4, r8, 0x30
/* 80435E1C 003FF3DC  38 68 00 40 */	addi r3, r8, 0x40
/* 80435E20 003FF3E0  D0 27 00 04 */	stfs f1, 4(r7)
/* 80435E24 003FF3E4  D0 27 00 08 */	stfs f1, 8(r7)
/* 80435E28 003FF3E8  D0 27 00 0C */	stfs f1, 0xc(r7)
/* 80435E2C 003FF3EC  D0 08 00 10 */	stfs f0, 0x10(r8)
/* 80435E30 003FF3F0  D0 26 00 04 */	stfs f1, 4(r6)
/* 80435E34 003FF3F4  D0 26 00 08 */	stfs f1, 8(r6)
/* 80435E38 003FF3F8  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80435E3C 003FF3FC  D0 28 00 20 */	stfs f1, 0x20(r8)
/* 80435E40 003FF400  D0 05 00 04 */	stfs f0, 4(r5)
/* 80435E44 003FF404  D0 25 00 08 */	stfs f1, 8(r5)
/* 80435E48 003FF408  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80435E4C 003FF40C  D0 28 00 30 */	stfs f1, 0x30(r8)
/* 80435E50 003FF410  D0 24 00 04 */	stfs f1, 4(r4)
/* 80435E54 003FF414  D0 04 00 08 */	stfs f0, 8(r4)
/* 80435E58 003FF418  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80435E5C 003FF41C  D0 08 00 40 */	stfs f0, 0x40(r8)
/* 80435E60 003FF420  D0 03 00 04 */	stfs f0, 4(r3)
/* 80435E64 003FF424  D0 03 00 08 */	stfs f0, 8(r3)
/* 80435E68 003FF428  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80435E6C 003FF42C  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066C9F0
lbl_8066C9F0:
	# ROM: 0x576850
	.4byte 0


.global lbl_8066C9F4
lbl_8066C9F4:
	# ROM: 0x576854
	.float 1.0
