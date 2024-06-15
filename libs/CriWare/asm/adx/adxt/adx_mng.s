.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ADXMNG_SetFramework, global
/* 8037F988 00348F48  3C 80 80 56 */	lis r4, adxm_framework@ha
/* 8037F98C 00348F4C  90 64 37 08 */	stw r3, adxm_framework@l(r4)
/* 8037F990 00348F50  4E 80 00 20 */	blr 
.endfn ADXMNG_SetFramework

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj adxm_framework, global
	.4byte 0xFFFFFFFF
.endobj adxm_framework
