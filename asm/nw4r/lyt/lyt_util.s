.include "macros.inc"
.file "nw4r/lyt/lyt_util.o"

# 0x8040AB80 - 0x8040ABF0
.text
.balign 4

# nw4r::lyt::BindAnimation(nw4r::lyt::Group*, nw4r::lyt::AnimTransform*, bool, bool)
.fn BindAnimation__Q24nw4r3lytFPQ34nw4r3lyt5GroupPQ34nw4r3lyt13AnimTransformbb, global
/* 8040AB80 003D4140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040AB84 003D4144  7C 08 02 A6 */	mflr r0
/* 8040AB88 003D4148  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040AB8C 003D414C  39 61 00 20 */	addi r11, r1, 0x20
/* 8040AB90 003D4150  4B EA F5 C5 */	bl _savegpr_27
/* 8040AB94 003D4154  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8040AB98 003D4158  7C 9B 23 78 */	mr r27, r4
/* 8040AB9C 003D415C  7C BC 2B 78 */	mr r28, r5
/* 8040ABA0 003D4160  7C DD 33 78 */	mr r29, r6
/* 8040ABA4 003D4164  3B C3 00 10 */	addi r30, r3, 0x10
/* 8040ABA8 003D4168  48 00 00 28 */	b .L_8040ABD0
.L_8040ABAC:
/* 8040ABAC 003D416C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8040ABB0 003D4170  7F 64 DB 78 */	mr r4, r27
/* 8040ABB4 003D4174  7F 85 E3 78 */	mr r5, r28
/* 8040ABB8 003D4178  7F A6 EB 78 */	mr r6, r29
/* 8040ABBC 003D417C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8040ABC0 003D4180  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8040ABC4 003D4184  7D 89 03 A6 */	mtctr r12
/* 8040ABC8 003D4188  4E 80 04 21 */	bctrl
/* 8040ABCC 003D418C  83 FF 00 00 */	lwz r31, 0x0(r31)
.L_8040ABD0:
/* 8040ABD0 003D4190  7C 1F F0 40 */	cmplw r31, r30
/* 8040ABD4 003D4194  40 82 FF D8 */	bne .L_8040ABAC
/* 8040ABD8 003D4198  39 61 00 20 */	addi r11, r1, 0x20
/* 8040ABDC 003D419C  4B EA F5 C5 */	bl _restgpr_27
/* 8040ABE0 003D41A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040ABE4 003D41A4  7C 08 03 A6 */	mtlr r0
/* 8040ABE8 003D41A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8040ABEC 003D41AC  4E 80 00 20 */	blr
.endfn BindAnimation__Q24nw4r3lytFPQ34nw4r3lyt5GroupPQ34nw4r3lyt13AnimTransformbb
