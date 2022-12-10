.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MPVM2V_Init
MPVM2V_Init:
/* 803AEFC8 00378588  4E 80 00 20 */	blr 

.global MPVM2V_Finish
MPVM2V_Finish:
/* 803AEFCC 0037858C  4E 80 00 20 */	blr 

.global MPVM2V_Create
MPVM2V_Create:
/* 803AEFD0 00378590  38 60 00 00 */	li r3, 0
/* 803AEFD4 00378594  4E 80 00 20 */	blr 

.global MPVM2V_Destroy
MPVM2V_Destroy:
/* 803AEFD8 00378598  4E 80 00 20 */	blr 

.global MPVM2V_SetCond
MPVM2V_SetCond:
/* 803AEFDC 0037859C  4E 80 00 20 */	blr

.global MPVM2V_SetMbCb
MPVM2V_SetMbCb:
/* 803AEFE0 003785A0  4E 80 00 20 */	blr 

.global MPVM2V_DecodePicAtr
MPVM2V_DecodePicAtr:
/* 803AEFE4 003785A4  38 60 FF FF */	li r3, -1
/* 803AEFE8 003785A8  4E 80 00 20 */	blr 

.global MPVM2V_DecodeFrm
MPVM2V_DecodeFrm:
/* 803AEFEC 003785AC  38 60 FF FF */	li r3, -1
/* 803AEFF0 003785B0  4E 80 00 20 */	blr 

.global MPVM2V_RequestStop
MPVM2V_RequestStop:
/* 803AEFF4 003785B4  4E 80 00 20 */	blr 