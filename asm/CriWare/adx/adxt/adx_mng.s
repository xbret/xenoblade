.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADXMNG_SetFramework
ADXMNG_SetFramework:
/* 8037F988 00348F48  3C 80 80 56 */	lis r4, adxm_framework@ha
/* 8037F98C 00348F4C  90 64 37 08 */	stw r3, adxm_framework@l(r4)
/* 8037F990 00348F50  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60


.global adxm_framework
adxm_framework:
	# ROM: 0x55F808
	.4byte 0xFFFFFFFF
	.4byte 0
