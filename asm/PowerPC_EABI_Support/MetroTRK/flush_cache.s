.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TRK_flush_cache, global
/* 802CBA1C 00294FDC  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 802CBA20 00294FE0  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 802CBA24 00294FE4  7C A5 18 38 */	and r5, r5, r3
/* 802CBA28 00294FE8  7C 65 18 50 */	subf r3, r5, r3
/* 802CBA2C 00294FEC  7C 84 1A 14 */	add r4, r4, r3
.L_802CBA30:
/* 802CBA30 00294FF0  7C 00 28 6C */	dcbst 0, r5
/* 802CBA34 00294FF4  7C 00 28 AC */	dcbf 0, r5
/* 802CBA38 00294FF8  7C 00 04 AC */	sync 0
/* 802CBA3C 00294FFC  7C 00 2F AC */	icbi 0, r5
/* 802CBA40 00295000  30 A5 00 08 */	addic r5, r5, 8
/* 802CBA44 00295004  34 84 FF F8 */	addic. r4, r4, -8
/* 802CBA48 00295008  40 80 FF E8 */	bge .L_802CBA30
/* 802CBA4C 0029500C  4C 00 01 2C */	isync 
/* 802CBA50 00295010  4E 80 00 20 */	blr
.endfn TRK_flush_cache