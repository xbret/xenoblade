.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn MWSFRNA_SetOutVol, global
/* 8039CE58 00366418  80 63 00 48 */	lwz r3, 0x48(r3)
/* 8039CE5C 0036641C  48 02 1A 6C */	b SFD_SetOutVol
.endfn MWSFRNA_SetOutVol

.fn MWSFRNA_GetOutVol, global
/* 8039CE60 00366420  80 63 00 48 */	lwz r3, 0x48(r3)
/* 8039CE64 00366424  48 02 1A E4 */	b SFD_GetOutVol
.endfn MWSFRNA_GetOutVol
