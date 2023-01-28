.include "macros.inc"
.file "CriWare/sofdec/mwply/mwsfdrna.o"

# 0x8039CE58 - 0x8039CE70
.text
.balign 4

.fn MWSFRNA_SetOutVol, global
/* 8039CE58 00366418  80 63 00 48 */	lwz r3, 0x48(r3)
/* 8039CE5C 0036641C  48 02 1A 6C */	b SFD_SetOutVol
.endfn MWSFRNA_SetOutVol

.fn MWSFRNA_GetOutVol, global
/* 8039CE60 00366420  80 63 00 48 */	lwz r3, 0x48(r3)
/* 8039CE64 00366424  48 02 1A E4 */	b SFD_GetOutVol
.endfn MWSFRNA_GetOutVol

.fn mwPlySaveRsc, global
/* 8039CE68 00366428  4E 80 00 20 */	blr
.endfn mwPlySaveRsc

.fn mwPlyRestoreRsc, global
/* 8039CE6C 0036642C  4E 80 00 20 */	blr
.endfn mwPlyRestoreRsc
