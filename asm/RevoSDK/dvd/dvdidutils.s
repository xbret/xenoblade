.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn DVDCompareDiskID, global
/* 80310110 002D96D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310114 002D96D4  7C 08 02 A6 */	mflr r0
/* 80310118 002D96D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031011C 002D96DC  88 03 00 00 */	lbz r0, 0(r3)
/* 80310120 002D96E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80310124 002D96E4  7C 9F 23 78 */	mr r31, r4
/* 80310128 002D96E8  7C 00 07 75 */	extsb. r0, r0
/* 8031012C 002D96EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80310130 002D96F0  7C 7E 1B 78 */	mr r30, r3
/* 80310134 002D96F4  41 82 00 28 */	beq .L_8031015C
/* 80310138 002D96F8  88 04 00 00 */	lbz r0, 0(r4)
/* 8031013C 002D96FC  7C 00 07 75 */	extsb. r0, r0
/* 80310140 002D9700  41 82 00 1C */	beq .L_8031015C
/* 80310144 002D9704  38 A0 00 04 */	li r5, 4
/* 80310148 002D9708  4B FB 28 09 */	bl strncmp
/* 8031014C 002D970C  2C 03 00 00 */	cmpwi r3, 0
/* 80310150 002D9710  41 82 00 0C */	beq .L_8031015C
/* 80310154 002D9714  38 60 00 00 */	li r3, 0
/* 80310158 002D9718  48 00 00 90 */	b .L_803101E8
.L_8031015C:
/* 8031015C 002D971C  88 1E 00 04 */	lbz r0, 4(r30)
/* 80310160 002D9720  7C 00 07 75 */	extsb. r0, r0
/* 80310164 002D9724  41 82 00 28 */	beq .L_8031018C
/* 80310168 002D9728  88 1F 00 04 */	lbz r0, 4(r31)
/* 8031016C 002D972C  7C 00 07 75 */	extsb. r0, r0
/* 80310170 002D9730  41 82 00 1C */	beq .L_8031018C
/* 80310174 002D9734  38 7E 00 04 */	addi r3, r30, 4
/* 80310178 002D9738  38 9F 00 04 */	addi r4, r31, 4
/* 8031017C 002D973C  38 A0 00 02 */	li r5, 2
/* 80310180 002D9740  4B FB 27 D1 */	bl strncmp
/* 80310184 002D9744  2C 03 00 00 */	cmpwi r3, 0
/* 80310188 002D9748  41 82 00 0C */	beq .L_80310194
.L_8031018C:
/* 8031018C 002D974C  38 60 00 00 */	li r3, 0
/* 80310190 002D9750  48 00 00 58 */	b .L_803101E8
.L_80310194:
/* 80310194 002D9754  88 7E 00 06 */	lbz r3, 6(r30)
/* 80310198 002D9758  28 03 00 FF */	cmplwi r3, 0xff
/* 8031019C 002D975C  41 82 00 20 */	beq .L_803101BC
/* 803101A0 002D9760  88 1F 00 06 */	lbz r0, 6(r31)
/* 803101A4 002D9764  28 00 00 FF */	cmplwi r0, 0xff
/* 803101A8 002D9768  41 82 00 14 */	beq .L_803101BC
/* 803101AC 002D976C  7C 03 00 40 */	cmplw r3, r0
/* 803101B0 002D9770  41 82 00 0C */	beq .L_803101BC
/* 803101B4 002D9774  38 60 00 00 */	li r3, 0
/* 803101B8 002D9778  48 00 00 30 */	b .L_803101E8
.L_803101BC:
/* 803101BC 002D977C  88 7E 00 07 */	lbz r3, 7(r30)
/* 803101C0 002D9780  28 03 00 FF */	cmplwi r3, 0xff
/* 803101C4 002D9784  41 82 00 20 */	beq .L_803101E4
/* 803101C8 002D9788  88 1F 00 07 */	lbz r0, 7(r31)
/* 803101CC 002D978C  28 00 00 FF */	cmplwi r0, 0xff
/* 803101D0 002D9790  41 82 00 14 */	beq .L_803101E4
/* 803101D4 002D9794  7C 03 00 40 */	cmplw r3, r0
/* 803101D8 002D9798  41 82 00 0C */	beq .L_803101E4
/* 803101DC 002D979C  38 60 00 00 */	li r3, 0
/* 803101E0 002D97A0  48 00 00 08 */	b .L_803101E8
.L_803101E4:
/* 803101E4 002D97A4  38 60 00 01 */	li r3, 1
.L_803101E8:
/* 803101E8 002D97A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803101EC 002D97AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803101F0 002D97B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803101F4 002D97B4  7C 08 03 A6 */	mtlr r0
/* 803101F8 002D97B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803101FC 002D97BC  4E 80 00 20 */	blr 
.endfn DVDCompareDiskID