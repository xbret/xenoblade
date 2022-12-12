.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MWSFRNA_SetOutVol
MWSFRNA_SetOutVol:
/* 8039CE58 00366418  80 63 00 48 */	lwz r3, 0x48(r3)
/* 8039CE5C 0036641C  48 02 1A 6C */	b SFD_SetOutVol

.global MWSFRNA_GetOutVol
MWSFRNA_GetOutVol:
/* 8039CE60 00366420  80 63 00 48 */	lwz r3, 0x48(r3)
/* 8039CE64 00366424  48 02 1A E4 */	b SFD_GetOutVol

.global func_8039CE68
func_8039CE68:
/* 8039CE68 00366428  4E 80 00 20 */	blr 

.global func_8039CE6C
func_8039CE6C:
/* 8039CE6C 0036642C  4E 80 00 20 */	blr 