.include "macros.inc"
.file "CriWare/adx/adxt/adx_mng.o"

# 0x8037F988 - 0x8037F994
.text
.balign 4

.fn ADXMNG_SetFramework, global
/* 8037F988 00348F48  3C 80 80 56 */	lis r4, adxm_framework@ha
/* 8037F98C 00348F4C  90 64 37 08 */	stw r3, adxm_framework@l(r4)
/* 8037F990 00348F50  4E 80 00 20 */	blr
.endfn ADXMNG_SetFramework

# 0x80563708 - 0x80563710
.data
.balign 8

.obj adxm_framework, global
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
