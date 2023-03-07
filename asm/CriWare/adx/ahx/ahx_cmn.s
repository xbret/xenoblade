.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn AHXDCD_SetupAtbl, global
/* 8038D9C8 00356F88  3C 80 80 5F */	lis r4, lbl_805E9B08@ha
/* 8038D9CC 00356F8C  90 64 9B 08 */	stw r3, lbl_805E9B08@l(r4)
/* 8038D9D0 00356F90  4E 80 00 20 */	blr 
.endfn AHXDCD_SetupAtbl

.fn AHXCMN_SetAlcInfTbl, global
/* 8038D9D4 00356F94  3C A0 80 5F */	lis r5, lbl_805E9B08@ha
/* 8038D9D8 00356F98  38 60 00 1E */	li r3, 0x1e
/* 8038D9DC 00356F9C  80 05 9B 08 */	lwz r0, lbl_805E9B08@l(r5)
/* 8038D9E0 00356FA0  90 04 00 00 */	stw r0, 0(r4)
/* 8038D9E4 00356FA4  4E 80 00 20 */	blr 
.endfn AHXCMN_SetAlcInfTbl


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj ahxcmn_multiple_tbl, global
	.float 2.0
	.4byte 0x3FCB2FF5
	.4byte 0x3FA14518
	.float 1.0
	.4byte 0x3F4B2FF5
	.4byte 0x3F214518
	.float 0.5
	.4byte 0x3ECB2FF5
	.4byte 0x3EA14518
	.float 0.25
	.4byte 0x3E4B2FF5
	.4byte 0x3E214518
	.float 0.125
	.4byte 0x3DCB2FF5
	.4byte 0x3DA14518
	.4byte 0x3D800000
	.4byte 0x3D4B2FF5
	.4byte 0x3D214518
	.4byte 0x3D000000
	.4byte 0x3CCB2FF5
	.4byte 0x3CA14518
	.4byte 0x3C800000
	.4byte 0x3C4B2FF5
	.4byte 0x3C214518
	.4byte 0x3C000000
	.4byte 0x3BCB2FF5
	.4byte 0x3BA14518
	.4byte 0x3B800000
	.4byte 0x3B4B2FF5
	.4byte 0x3B214518
	.4byte 0x3B000000
	.4byte 0x3ACB2FF5
	.4byte 0x3AA14518
	.4byte 0x3A800000
	.4byte 0x3A4B2FF5
	.4byte 0x3A214518
	.4byte 0x3A000000
	.4byte 0x39CB2FF5
	.4byte 0x39A14518
	.4byte 0x39800000
	.4byte 0x394B2FF5
	.4byte 0x39214518
	.4byte 0x39000000
	.4byte 0x38CB2FF5
	.4byte 0x38A14518
	.4byte 0x38800000
	.4byte 0x384B2FF5
	.4byte 0x38214518
	.4byte 0x38000000
	.4byte 0x37CB2FF5
	.4byte 0x37A14518
	.4byte 0x37800000
	.4byte 0x374B2FF5
	.4byte 0x37214518
	.4byte 0x37000000
	.4byte 0x36CB2FF5
	.4byte 0x36A14518
	.4byte 0x36800000
	.4byte 0x364B2FF5
	.4byte 0x36214518
	.4byte 0x36000000
	.4byte 0x35CB2FF5
	.4byte 0x35A14518
	.4byte 0x1E3CE508
.endobj ahxcmn_multiple_tbl


.obj lbl_80569180, global
	.4byte ahxdcd_atbl
.endobj lbl_80569180


.obj lbl_80569184, global
	.4byte 0x00003000
.endobj lbl_80569184


.obj lbl_80569188, global
	.4byte ahxcmn_multiple_tbl
.endobj lbl_80569188


.obj lbl_8056918C, global
	.4byte 0x00000100
.endobj lbl_8056918C

.section .bss, "wa"  # 0x80573C80 - 0x8066417B


.obj lbl_805E9B08, global
	.skip 0x8
.endobj lbl_805E9B08
