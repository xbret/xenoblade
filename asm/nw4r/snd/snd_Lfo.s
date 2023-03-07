.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn Init__Q44nw4r3snd6detail8LfoParamFv, global
/* 80416F60 003E0520  C0 22 C4 30 */	lfs f1, float_8066C7B0@sda21(r2)
/* 80416F64 003E0524  38 80 00 01 */	li r4, 1
/* 80416F68 003E0528  C0 02 C4 34 */	lfs f0, float_8066C7B4@sda21(r2)
/* 80416F6C 003E052C  38 00 00 00 */	li r0, 0
/* 80416F70 003E0530  D0 23 00 00 */	stfs f1, 0(r3)
/* 80416F74 003E0534  98 83 00 0C */	stb r4, 0xc(r3)
/* 80416F78 003E0538  D0 03 00 04 */	stfs f0, 4(r3)
/* 80416F7C 003E053C  90 03 00 08 */	stw r0, 8(r3)
/* 80416F80 003E0540  4E 80 00 20 */	blr 
.endfn Init__Q44nw4r3snd6detail8LfoParamFv

.fn Reset__Q44nw4r3snd6detail3LfoFv, global
/* 80416F84 003E0544  C0 02 C4 30 */	lfs f0, float_8066C7B0@sda21(r2)
/* 80416F88 003E0548  38 00 00 00 */	li r0, 0
/* 80416F8C 003E054C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80416F90 003E0550  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80416F94 003E0554  4E 80 00 20 */	blr 
.endfn Reset__Q44nw4r3snd6detail3LfoFv

.fn Update__Q44nw4r3snd6detail3LfoFi, global
/* 80416F98 003E0558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80416F9C 003E055C  80 C3 00 08 */	lwz r6, 8(r3)
/* 80416FA0 003E0560  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 80416FA4 003E0564  7C 05 30 40 */	cmplw r5, r6
/* 80416FA8 003E0568  40 80 00 24 */	bge .L_80416FCC
/* 80416FAC 003E056C  7C 05 22 14 */	add r0, r5, r4
/* 80416FB0 003E0570  7C 00 30 40 */	cmplw r0, r6
/* 80416FB4 003E0574  41 81 00 0C */	bgt .L_80416FC0
/* 80416FB8 003E0578  90 03 00 10 */	stw r0, 0x10(r3)
/* 80416FBC 003E057C  48 00 00 70 */	b .L_8041702C
.L_80416FC0:
/* 80416FC0 003E0580  7C 05 30 50 */	subf r0, r5, r6
/* 80416FC4 003E0584  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80416FC8 003E0588  7C 80 20 50 */	subf r4, r0, r4
.L_80416FCC:
/* 80416FCC 003E058C  3C 00 43 30 */	lis r0, 0x4330
/* 80416FD0 003E0590  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80416FD4 003E0594  90 81 00 0C */	stw r4, 0xc(r1)
/* 80416FD8 003E0598  C8 82 C4 40 */	lfd f4, double_8066C7C0@sda21(r2)
/* 80416FDC 003E059C  90 01 00 08 */	stw r0, 8(r1)
/* 80416FE0 003E05A0  C0 43 00 04 */	lfs f2, 4(r3)
/* 80416FE4 003E05A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80416FE8 003E05A8  C0 22 C4 38 */	lfs f1, float_8066C7B8@sda21(r2)
/* 80416FEC 003E05AC  EC 60 20 28 */	fsubs f3, f0, f4
/* 80416FF0 003E05B0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80416FF4 003E05B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80416FF8 003E05B8  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80416FFC 003E05BC  EC 22 08 24 */	fdivs f1, f2, f1
/* 80417000 003E05C0  EC 20 08 2A */	fadds f1, f0, f1
/* 80417004 003E05C4  FC 00 08 1E */	fctiwz f0, f1
/* 80417008 003E05C8  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8041700C 003E05CC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80417010 003E05D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80417014 003E05D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80417018 003E05D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8041701C 003E05DC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80417020 003E05E0  EC 00 20 28 */	fsubs f0, f0, f4
/* 80417024 003E05E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80417028 003E05E8  D0 03 00 14 */	stfs f0, 0x14(r3)
.L_8041702C:
/* 8041702C 003E05EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80417030 003E05F0  4E 80 00 20 */	blr 
.endfn Update__Q44nw4r3snd6detail3LfoFi

.fn GetValue__Q44nw4r3snd6detail3LfoCFv, global
/* 80417034 003E05F4  C0 22 C4 30 */	lfs f1, float_8066C7B0@sda21(r2)
/* 80417038 003E05F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8041703C 003E05FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80417040 003E0600  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80417044 003E0604  40 82 00 08 */	bne .L_8041704C
/* 80417048 003E0608  48 00 01 00 */	b .L_80417148
.L_8041704C:
/* 8041704C 003E060C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80417050 003E0610  80 03 00 08 */	lwz r0, 8(r3)
/* 80417054 003E0614  7C 04 00 40 */	cmplw r4, r0
/* 80417058 003E0618  40 80 00 08 */	bge .L_80417060
/* 8041705C 003E061C  48 00 00 EC */	b .L_80417148
.L_80417060:
/* 80417060 003E0620  C0 42 C4 4C */	lfs f2, float_8066C7CC@sda21(r2)
/* 80417064 003E0624  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80417068 003E0628  C0 02 C4 48 */	lfs f0, float_8066C7C8@sda21(r2)
/* 8041706C 003E062C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417070 003E0630  EC 00 00 72 */	fmuls f0, f0, f1
/* 80417074 003E0634  FC 00 00 1E */	fctiwz f0, f0
/* 80417078 003E0638  D8 01 00 08 */	stfd f0, 8(r1)
/* 8041707C 003E063C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80417080 003E0640  2C 05 00 20 */	cmpwi r5, 0x20
/* 80417084 003E0644  40 80 00 18 */	bge .L_8041709C
/* 80417088 003E0648  3C 80 80 52 */	lis r4, lbl_80523858@ha
/* 8041708C 003E064C  38 84 38 58 */	addi r4, r4, lbl_80523858@l
/* 80417090 003E0650  7C 04 28 AE */	lbzx r0, r4, r5
/* 80417094 003E0654  7C 00 07 74 */	extsb r0, r0
/* 80417098 003E0658  48 00 00 68 */	b .L_80417100
.L_8041709C:
/* 8041709C 003E065C  2C 05 00 40 */	cmpwi r5, 0x40
/* 804170A0 003E0660  40 80 00 20 */	bge .L_804170C0
/* 804170A4 003E0664  38 05 FF E0 */	addi r0, r5, -32
/* 804170A8 003E0668  3C 80 80 52 */	lis r4, lbl_80523858@ha
/* 804170AC 003E066C  20 00 00 20 */	subfic r0, r0, 0x20
/* 804170B0 003E0670  38 84 38 58 */	addi r4, r4, lbl_80523858@l
/* 804170B4 003E0674  7C 04 00 AE */	lbzx r0, r4, r0
/* 804170B8 003E0678  7C 00 07 74 */	extsb r0, r0
/* 804170BC 003E067C  48 00 00 44 */	b .L_80417100
.L_804170C0:
/* 804170C0 003E0680  2C 05 00 60 */	cmpwi r5, 0x60
/* 804170C4 003E0684  40 80 00 20 */	bge .L_804170E4
/* 804170C8 003E0688  3C 80 80 52 */	lis r4, lbl_80523858@ha
/* 804170CC 003E068C  38 84 38 58 */	addi r4, r4, lbl_80523858@l
/* 804170D0 003E0690  7C 85 22 14 */	add r4, r5, r4
/* 804170D4 003E0694  88 04 FF C0 */	lbz r0, -0x40(r4)
/* 804170D8 003E0698  7C 00 00 D0 */	neg r0, r0
/* 804170DC 003E069C  7C 00 07 74 */	extsb r0, r0
/* 804170E0 003E06A0  48 00 00 20 */	b .L_80417100
.L_804170E4:
/* 804170E4 003E06A4  38 05 FF A0 */	addi r0, r5, -96
/* 804170E8 003E06A8  3C 80 80 52 */	lis r4, lbl_80523858@ha
/* 804170EC 003E06AC  20 00 00 20 */	subfic r0, r0, 0x20
/* 804170F0 003E06B0  38 84 38 58 */	addi r4, r4, lbl_80523858@l
/* 804170F4 003E06B4  7C 04 00 AE */	lbzx r0, r4, r0
/* 804170F8 003E06B8  7C 00 00 D0 */	neg r0, r0
/* 804170FC 003E06BC  7C 00 07 74 */	extsb r0, r0
.L_80417100:
/* 80417100 003E06C0  3C 80 43 30 */	lis r4, 0x4330
/* 80417104 003E06C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80417108 003E06C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041710C 003E06CC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80417110 003E06D0  90 81 00 08 */	stw r4, 8(r1)
/* 80417114 003E06D4  C8 42 C4 40 */	lfd f2, double_8066C7C0@sda21(r2)
/* 80417118 003E06D8  C8 21 00 08 */	lfd f1, 8(r1)
/* 8041711C 003E06DC  C0 02 C4 50 */	lfs f0, float_8066C7D0@sda21(r2)
/* 80417120 003E06E0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80417124 003E06E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80417128 003E06E8  C0 63 00 00 */	lfs f3, 0(r3)
/* 8041712C 003E06EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80417130 003E06F0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80417134 003E06F4  C8 42 C4 58 */	lfd f2, double_8066C7D8@sda21(r2)
/* 80417138 003E06F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8041713C 003E06FC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80417140 003E0700  EC 00 10 28 */	fsubs f0, f0, f2
/* 80417144 003E0704  EC 21 00 32 */	fmuls f1, f1, f0
.L_80417148:
/* 80417148 003E0708  38 21 00 20 */	addi r1, r1, 0x20
/* 8041714C 003E070C  4E 80 00 20 */	blr
.endfn GetValue__Q44nw4r3snd6detail3LfoCFv


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

#@LOCAL@GetSinIdx__Q44nw4r3snd6detail3LfoFi@sinTable
.obj lbl_80523858, global
	.4byte 0x00060C13
	.4byte 0x191F252B
	.4byte 0x31363C41
	.4byte 0x474C5155
	.4byte 0x5A5E6266
	.4byte 0x6A6D7073
	.4byte 0x75787A7B
	.4byte 0x7D7E7E7F
	.4byte 0x7F000000
	.4byte 0
.endobj lbl_80523858

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066C7B0, global
	.float 0
.endobj float_8066C7B0


.obj float_8066C7B4, global
	.float 6.25 #0x40C80000
.endobj float_8066C7B4


.obj float_8066C7B8, global
	.float 1000 #0x447A0000
	.4byte 0
.endobj float_8066C7B8


.obj double_8066C7C0, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066C7C0

.obj float_8066C7C8, global
	.float 4 #0x40800000
.endobj float_8066C7C8


.obj float_8066C7CC, global
	.float 32 #0x42000000
.endobj float_8066C7CC


.obj float_8066C7D0, global
	.float 127 #0x42FE0000
	.4byte 0
.endobj float_8066C7D0


.obj double_8066C7D8, global
	.4byte 0x43300000
	.4byte 0
.endobj double_8066C7D8