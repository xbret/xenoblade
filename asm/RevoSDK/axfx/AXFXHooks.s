.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802DAB00
func_802DAB00:
/* 802DAB00 002A40C0  7C 64 1B 78 */	mr r4, r3
/* 802DAB04 002A40C4  80 6D 99 D8 */	lwz r3, lbl_80665B58@sda21(r13)
/* 802DAB08 002A40C8  48 07 8C 28 */	b OSAllocFromHeap
/* 802DAB0C 002A40CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */


.global func_802DAB10
func_802DAB10:
/* 802DAB10 002A40D0  7C 64 1B 78 */	mr r4, r3
/* 802DAB14 002A40D4  80 6D 99 D8 */	lwz r3, lbl_80665B58@sda21(r13)
/* 802DAB18 002A40D8  48 07 8D 18 */	b OSFreeToHeap
/* 802DAB1C 002A40DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DAB20
func_802DAB20:
/* 802DAB20 002A40E0  90 6D 97 40 */	stw r3, lbl_806658C0@sda21(r13)
/* 802DAB24 002A40E4  90 8D 97 44 */	stw r4, lbl_806658C4@sda21(r13)
/* 802DAB28 002A40E8  4E 80 00 20 */	blr 
/* 802DAB2C 002A40EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_802DAB30
func_802DAB30:
/* 802DAB30 002A40F0  80 0D 97 40 */	lwz r0, lbl_806658C0@sda21(r13)
/* 802DAB34 002A40F4  90 03 00 00 */	stw r0, 0(r3)
/* 802DAB38 002A40F8  80 0D 97 44 */	lwz r0, lbl_806658C4@sda21(r13)
/* 802DAB3C 002A40FC  90 04 00 00 */	stw r0, 0(r4)
/* 802DAB40 002A4100  4E 80 00 20 */	blr 
/* 802DAB44 002A4104  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DAB48 002A4108  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 802DAB4C 002A410C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
