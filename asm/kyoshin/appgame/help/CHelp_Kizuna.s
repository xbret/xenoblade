.include "macros.inc"
.file "kyoshin/appgame/help/CHelp_Kizuna.o"

# 0x802B818C - 0x802B8198
.text
.balign 4

.fn fn_802B818C, global
/* 802B818C 0028174C  80 6D B1 80 */	lwz r3, lbl_80667300@sda21(r13)
/* 802B8190 00281750  88 63 00 15 */	lbz r3, 0x15(r3)
/* 802B8194 00281754  4E 80 00 20 */	blr
.endfn fn_802B818C
