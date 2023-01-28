.include "macros.inc"
.file "RevoSDK/bte/bte_logmsg.o"

# 0x802DDEE0 - 0x802DE080
.text
.balign 16

.fn LogMsg, global
/* 802DDEE0 002A74A0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802DDEE4 002A74A4  7C 08 02 A6 */	mflr r0
/* 802DDEE8 002A74A8  90 01 00 84 */	stw r0, 0x84(r1)
/* 802DDEEC 002A74AC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802DDEF0 002A74B0  40 86 00 24 */	bne cr1, .L_802DDF14
/* 802DDEF4 002A74B4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802DDEF8 002A74B8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802DDEFC 002A74BC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802DDF00 002A74C0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802DDF04 002A74C4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802DDF08 002A74C8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802DDF0C 002A74CC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 802DDF10 002A74D0  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_802DDF14:
/* 802DDF14 002A74D4  39 61 00 88 */	addi r11, r1, 0x88
/* 802DDF18 002A74D8  38 01 00 08 */	addi r0, r1, 0x8
/* 802DDF1C 002A74DC  3D 80 02 00 */	lis r12, 0x200
/* 802DDF20 002A74E0  90 61 00 08 */	stw r3, 0x8(r1)
/* 802DDF24 002A74E4  3F E0 80 5C */	lis r31, lbl_805BDCC0@ha
/* 802DDF28 002A74E8  38 61 00 68 */	addi r3, r1, 0x68
/* 802DDF2C 002A74EC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802DDF30 002A74F0  7C 65 1B 78 */	mr r5, r3
/* 802DDF34 002A74F4  38 7F DC C0 */	addi r3, r31, lbl_805BDCC0@l
/* 802DDF38 002A74F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 802DDF3C 002A74FC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802DDF40 002A7500  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802DDF44 002A7504  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802DDF48 002A7508  91 21 00 20 */	stw r9, 0x20(r1)
/* 802DDF4C 002A750C  91 41 00 24 */	stw r10, 0x24(r1)
/* 802DDF50 002A7510  91 81 00 68 */	stw r12, 0x68(r1)
/* 802DDF54 002A7514  91 61 00 6C */	stw r11, 0x6c(r1)
/* 802DDF58 002A7518  90 01 00 70 */	stw r0, 0x70(r1)
/* 802DDF5C 002A751C  4B FE 2F 65 */	bl vsprintf
/* 802DDF60 002A7520  38 7F DC C0 */	addi r3, r31, lbl_805BDCC0@l
/* 802DDF64 002A7524  38 8D 97 88 */	addi r4, r13, lbl_80665908@sda21
/* 802DDF68 002A7528  7C 65 1B 78 */	mr r5, r3
/* 802DDF6C 002A752C  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DDF70 002A7530  4B FE 30 C9 */	bl sprintf
/* 802DDF74 002A7534  38 7F DC C0 */	addi r3, r31, lbl_805BDCC0@l
/* 802DDF78 002A7538  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DDF7C 002A753C  48 07 6F 75 */	bl OSReport
/* 802DDF80 002A7540  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802DDF84 002A7544  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802DDF88 002A7548  7C 08 03 A6 */	mtlr r0
/* 802DDF8C 002A754C  38 21 00 80 */	addi r1, r1, 0x80
/* 802DDF90 002A7550  4E 80 00 20 */	blr
.endfn LogMsg
/* 802DDF94 002A7554  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DDF98 002A7558  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DDF9C 002A755C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn LogMsg_0, global
/* 802DDFA0 002A7560  88 0D B5 E8 */	lbz r0, lbl_80667768@sda21(r13)
/* 802DDFA4 002A7564  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DDFA8 002A7568  4C 82 00 20 */	bnelr
/* 802DDFAC 002A756C  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DDFB0 002A7570  4B FF FF 30 */	b LogMsg
/* 802DDFB4 002A7574  4E 80 00 20 */	blr
.endfn LogMsg_0
/* 802DDFB8 002A7578  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DDFBC 002A757C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn LogMsg_1, global
/* 802DDFC0 002A7580  88 0D B5 E8 */	lbz r0, lbl_80667768@sda21(r13)
/* 802DDFC4 002A7584  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DDFC8 002A7588  4C 82 00 20 */	bnelr
/* 802DDFCC 002A758C  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DDFD0 002A7590  4B FF FF 10 */	b LogMsg
/* 802DDFD4 002A7594  4E 80 00 20 */	blr
.endfn LogMsg_1
/* 802DDFD8 002A7598  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DDFDC 002A759C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn LogMsg_2, global
/* 802DDFE0 002A75A0  88 0D B5 E8 */	lbz r0, lbl_80667768@sda21(r13)
/* 802DDFE4 002A75A4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DDFE8 002A75A8  4C 82 00 20 */	bnelr
/* 802DDFEC 002A75AC  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DDFF0 002A75B0  4B FF FE F0 */	b LogMsg
/* 802DDFF4 002A75B4  4E 80 00 20 */	blr
.endfn LogMsg_2
/* 802DDFF8 002A75B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DDFFC 002A75BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn LogMsg_3, global
/* 802DE000 002A75C0  88 0D B5 E8 */	lbz r0, lbl_80667768@sda21(r13)
/* 802DE004 002A75C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DE008 002A75C8  4C 82 00 20 */	bnelr
/* 802DE00C 002A75CC  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DE010 002A75D0  4B FF FE D0 */	b LogMsg
/* 802DE014 002A75D4  4E 80 00 20 */	blr
.endfn LogMsg_3
/* 802DE018 002A75D8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DE01C 002A75DC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn LogMsg_4, global
/* 802DE020 002A75E0  88 0D B5 E8 */	lbz r0, lbl_80667768@sda21(r13)
/* 802DE024 002A75E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DE028 002A75E8  4C 82 00 20 */	bnelr
/* 802DE02C 002A75EC  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DE030 002A75F0  4B FF FE B0 */	b LogMsg
/* 802DE034 002A75F4  4E 80 00 20 */	blr
.endfn LogMsg_4
/* 802DE038 002A75F8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DE03C 002A75FC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn LogMsg_5, global
/* 802DE040 002A7600  88 0D B5 E8 */	lbz r0, lbl_80667768@sda21(r13)
/* 802DE044 002A7604  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DE048 002A7608  4C 82 00 20 */	bnelr
/* 802DE04C 002A760C  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DE050 002A7610  4B FF FE 90 */	b LogMsg
/* 802DE054 002A7614  4E 80 00 20 */	blr
.endfn LogMsg_5
/* 802DE058 002A7618  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DE05C 002A761C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn LogMsg_6, global
/* 802DE060 002A7620  88 0D B5 E8 */	lbz r0, lbl_80667768@sda21(r13)
/* 802DE064 002A7624  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DE068 002A7628  4C 82 00 20 */	bnelr
/* 802DE06C 002A762C  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DE070 002A7630  4B FF FE 70 */	b LogMsg
/* 802DE074 002A7634  4E 80 00 20 */	blr
.endfn LogMsg_6
/* 802DE078 002A7638  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DE07C 002A763C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x805BDCC0 - 0x805BE4A0
.section .bss, "wa", @nobits
.balign 8
.sym lbl_805BDCC0, global
	.skip 0x7E0

# 0x80667768 - 0x8066776C
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80667768, global
	.skip 0x4
