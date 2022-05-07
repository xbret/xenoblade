.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8035CFE0
func_8035CFE0:
/* 8035CFE0 003265A0  80 6D B9 58 */	lwz r3, lbl_80667AD8@sda21(r13)
/* 8035CFE4 003265A4  4E 80 00 20 */	blr 
/* 8035CFE8 003265A8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035CFEC 003265AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_8035CFF0
func_8035CFF0:
/* 8035CFF0 003265B0  80 6D 9A 18 */	lwz r3, lbl_80665B98@sda21(r13)
/* 8035CFF4 003265B4  4E 80 00 20 */	blr 
/* 8035CFF8 003265B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035CFFC 003265BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __OSInitIPCBuffer
__OSInitIPCBuffer:
/* 8035D000 003265C0  3C 60 80 00 */	lis r3, 0x80003130@ha
/* 8035D004 003265C4  80 03 31 30 */	lwz r0, 0x80003130@l(r3)
/* 8035D008 003265C8  90 0D 9A 18 */	stw r0, lbl_80665B98@sda21(r13)
/* 8035D00C 003265CC  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 8035D010 003265D0  90 0D B9 58 */	stw r0, lbl_80667AD8@sda21(r13)
/* 8035D014 003265D4  4E 80 00 20 */	blr 
/* 8035D018 003265D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D01C 003265DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
