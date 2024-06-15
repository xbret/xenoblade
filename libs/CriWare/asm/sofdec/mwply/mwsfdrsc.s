.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn mwPlySaveRsc, global
/* 8039CE68 00366428  4E 80 00 20 */	blr 
.endfn mwPlySaveRsc

.fn mwPlyRestoreRsc, global
/* 8039CE6C 0036642C  4E 80 00 20 */	blr 
.endfn mwPlyRestoreRsc
