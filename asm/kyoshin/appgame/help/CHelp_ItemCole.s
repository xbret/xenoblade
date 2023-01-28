.include "macros.inc"
.file "kyoshin/appgame/help/CHelp_ItemCole.o"

# 0x802B8180 - 0x802B818C
.text
.balign 4

.fn fn_802B8180, local
/* 802B8180 00281740  80 6D B1 80 */	lwz r3, lbl_80667300@sda21(r13)
/* 802B8184 00281744  88 63 00 14 */	lbz r3, 0x14(r3)
/* 802B8188 00281748  4E 80 00 20 */	blr
.endfn fn_802B8180
