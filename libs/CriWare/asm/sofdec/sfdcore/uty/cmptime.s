.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn UTY_CmpTime, global
/* 803D43DC 0039D99C  7C E3 30 96 */	mulhw r7, r3, r6
/* 803D43E0 0039D9A0  7C 05 20 96 */	mulhw r0, r5, r4
/* 803D43E4 0039D9A4  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 803D43E8 0039D9A8  7C C3 31 D6 */	mullw r6, r3, r6
/* 803D43EC 0039D9AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803D43F0 0039D9B0  7C 65 21 D6 */	mullw r3, r5, r4
/* 803D43F4 0039D9B4  7C 66 18 10 */	subfc r3, r6, r3
/* 803D43F8 0039D9B8  7C E7 01 10 */	subfe r7, r7, r0
/* 803D43FC 0039D9BC  7C E0 01 10 */	subfe r7, r0, r0
/* 803D4400 0039D9C0  7C E7 00 D0 */	neg r7, r7
/* 803D4404 0039D9C4  20 67 00 01 */	subfic r3, r7, 1
/* 803D4408 0039D9C8  4E 80 00 20 */	blr 
.endfn UTY_CmpTime
