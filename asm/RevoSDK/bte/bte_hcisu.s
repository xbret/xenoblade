.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global bte_hcisu_send
bte_hcisu_send:
/* 802DDDE0 002A73A0  B0 83 00 00 */	sth r4, 0(r3)
/* 802DDDE4 002A73A4  80 8D B5 E0 */	lwz r4, lbl_80667760@sda21(r13)
/* 802DDDE8 002A73A8  2C 04 00 00 */	cmpwi r4, 0
/* 802DDDEC 002A73AC  41 82 00 10 */	beq .L_802DDDFC
/* 802DDDF0 002A73B0  81 84 00 0C */	lwz r12, 0xc(r4)
/* 802DDDF4 002A73B4  7D 89 03 A6 */	mtctr r12
/* 802DDDF8 002A73B8  4E 80 04 20 */	bctr 
.L_802DDDFC:
/* 802DDDFC 002A73BC  4B FF D6 E4 */	b GKI_freebuf

.balign 16, 0
.global bte_hcisu_task
bte_hcisu_task:
/* 802DDE00 002A73C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DDE04 002A73C4  7C 08 02 A6 */	mflr r0
/* 802DDE08 002A73C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDE0C 002A73CC  80 6D B5 E0 */	lwz r3, lbl_80667760@sda21(r13)
/* 802DDE10 002A73D0  2C 03 00 00 */	cmpwi r3, 0
/* 802DDE14 002A73D4  41 82 00 40 */	beq .L_802DDE54
/* 802DDE18 002A73D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802DDE1C 002A73DC  2C 0C 00 00 */	cmpwi r12, 0
/* 802DDE20 002A73E0  41 82 00 18 */	beq .L_802DDE38
/* 802DDE24 002A73E4  38 60 00 02 */	li r3, 2
/* 802DDE28 002A73E8  38 80 00 01 */	li r4, 1
/* 802DDE2C 002A73EC  38 A0 08 00 */	li r5, 0x800
/* 802DDE30 002A73F0  7D 89 03 A6 */	mtctr r12
/* 802DDE34 002A73F4  4E 80 04 21 */	bctrl 
.L_802DDE38:
/* 802DDE38 002A73F8  80 6D B5 E0 */	lwz r3, lbl_80667760@sda21(r13)
/* 802DDE3C 002A73FC  81 83 00 04 */	lwz r12, 4(r3)
/* 802DDE40 002A7400  2C 0C 00 00 */	cmpwi r12, 0
/* 802DDE44 002A7404  41 82 00 10 */	beq .L_802DDE54
/* 802DDE48 002A7408  80 6D B5 E4 */	lwz r3, lbl_80667764@sda21(r13)
/* 802DDE4C 002A740C  7D 89 03 A6 */	mtctr r12
/* 802DDE50 002A7410  4E 80 04 21 */	bctrl 
.L_802DDE54:
/* 802DDE54 002A7414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DDE58 002A7418  7C 08 03 A6 */	mtlr r0
/* 802DDE5C 002A741C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DDE60 002A7420  4E 80 00 20 */	blr 

.balign 16, 0
.global bte_hcisu_close
bte_hcisu_close:
/* 802DDE70 002A7430  80 6D B5 E0 */	lwz r3, lbl_80667760@sda21(r13)
/* 802DDE74 002A7434  2C 03 00 00 */	cmpwi r3, 0
/* 802DDE78 002A7438  4D 82 00 20 */	beqlr 
/* 802DDE7C 002A743C  81 83 00 08 */	lwz r12, 8(r3)
/* 802DDE80 002A7440  2C 0C 00 00 */	cmpwi r12, 0
/* 802DDE84 002A7444  4D 82 00 20 */	beqlr 
/* 802DDE88 002A7448  7D 89 03 A6 */	mtctr r12
/* 802DDE8C 002A744C  4E 80 04 20 */	bctr 
/* 802DDE90 002A7450  4E 80 00 20 */	blr 

.balign 16, 0
.global bta_ci_hci_msg_handler
bta_ci_hci_msg_handler:
/* 802DDEA0 002A7460  7C 65 1B 78 */	mr r5, r3
/* 802DDEA4 002A7464  38 60 00 02 */	li r3, 2
/* 802DDEA8 002A7468  38 80 00 00 */	li r4, 0
/* 802DDEAC 002A746C  4B FF D7 F4 */	b GKI_send_msg


.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_80667760
lbl_80667760:
	.skip 0x4
.global lbl_80667764
lbl_80667764:
	.skip 0x4