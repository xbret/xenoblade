.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn abort, global
/* 802C71E8 002907A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C71EC 002907AC  7C 08 02 A6 */	mflr r0
/* 802C71F0 002907B0  38 60 00 01 */	li r3, 1
/* 802C71F4 002907B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C71F8 002907B8  4B FF B4 19 */	bl raise
/* 802C71FC 002907BC  38 00 00 01 */	li r0, 1
/* 802C7200 002907C0  90 0D B3 C0 */	stw r0, lbl_80667540@sda21(r13)
/* 802C7204 002907C4  38 60 00 01 */	li r3, 1
/* 802C7208 002907C8  48 09 81 B9 */	bl exit
/* 802C720C 002907CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C7210 002907D0  7C 08 03 A6 */	mtlr r0
/* 802C7214 002907D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C7218 002907D8  4E 80 00 20 */	blr 
.endfn abort

.fn __msl_runtime_constraint_violation_s, global
/* 802C721C 002907DC  81 8D B3 C8 */	lwz r12, lbl_80667548@sda21(r13)
/* 802C7220 002907E0  2C 0C 00 00 */	cmpwi r12, 0
/* 802C7224 002907E4  4D 82 00 20 */	beqlr 
/* 802C7228 002907E8  7D 89 03 A6 */	mtctr r12
/* 802C722C 002907EC  4E 80 04 20 */	bctr 
/* 802C7230 002907F0  4E 80 00 20 */	blr 
.endfn __msl_runtime_constraint_violation_s

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

#needed to align uart_console_io_gcn.c
.balign 8

.global lbl_80667540
lbl_80667540:
	.skip 0x4
#used in misc_io.s
.global lbl_80667544
lbl_80667544:
	.skip 0x4
.global lbl_80667548
lbl_80667548:
	.skip 0x8