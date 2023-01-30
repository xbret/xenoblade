.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TRKAccessFile, global
/* 802CB50C 00294ACC  0F E0 00 00 */	twui r0, 0
/* 802CB510 00294AD0  4E 80 00 20 */	blr
.endfn TRKAccessFile

.fn TRKOpenFile, global
/* 802CB514 00294AD4  0F E0 00 00 */	twui r0, 0
/* 802CB518 00294AD8  4E 80 00 20 */	blr
.endfn TRKOpenFile

.fn TRKCloseFile, global
/* 802CB51C 00294ADC  0F E0 00 00 */	twui r0, 0
/* 802CB520 00294AE0  4E 80 00 20 */	blr
.endfn TRKCloseFile

.global TRKPositionFile
TRKPositionFile:
/* 802CB524 00294AE4  0F E0 00 00 */	twui r0, 0
/* 802CB528 00294AE8  4E 80 00 20 */	blr