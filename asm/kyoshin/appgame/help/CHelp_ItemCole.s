.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B8180, global
/* 802B8180 00281740  80 6D B1 80 */	lwz r3, lbl_80667300@sda21(r13)
/* 802B8184 00281744  88 63 00 14 */	lbz r3, 0x14(r3)
/* 802B8188 00281748  4E 80 00 20 */	blr 
.endfn func_802B8180