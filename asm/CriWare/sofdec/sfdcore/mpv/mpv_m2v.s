.include "macros.inc"
.file "CriWare/sofdec/sfdcore/mpv/mpv_m2v.o"

# 0x803AEFC8 - 0x803AEFF8
.text
.balign 4

.fn MPVM2V_Init, global
/* 803AEFC8 00378588  4E 80 00 20 */	blr
.endfn MPVM2V_Init

.fn MPVM2V_Finish, global
/* 803AEFCC 0037858C  4E 80 00 20 */	blr
.endfn MPVM2V_Finish

.fn MPVM2V_Create, global
/* 803AEFD0 00378590  38 60 00 00 */	li r3, 0x0
/* 803AEFD4 00378594  4E 80 00 20 */	blr
.endfn MPVM2V_Create

.fn MPVM2V_Destroy, global
/* 803AEFD8 00378598  4E 80 00 20 */	blr
.endfn MPVM2V_Destroy

.fn MPVM2V_SetCond, global
/* 803AEFDC 0037859C  4E 80 00 20 */	blr
.endfn MPVM2V_SetCond

.fn MPVM2V_SetMbCb, global
/* 803AEFE0 003785A0  4E 80 00 20 */	blr
.endfn MPVM2V_SetMbCb

.fn MPVM2V_DecodePicAtr, global
/* 803AEFE4 003785A4  38 60 FF FF */	li r3, -0x1
/* 803AEFE8 003785A8  4E 80 00 20 */	blr
.endfn MPVM2V_DecodePicAtr

.fn MPVM2V_DecodeFrm, global
/* 803AEFEC 003785AC  38 60 FF FF */	li r3, -0x1
/* 803AEFF0 003785B0  4E 80 00 20 */	blr
.endfn MPVM2V_DecodeFrm

.fn MPVM2V_RequestStop, global
/* 803AEFF4 003785B4  4E 80 00 20 */	blr
.endfn MPVM2V_RequestStop
