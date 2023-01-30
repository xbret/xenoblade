.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer, global
/* 8041883C 003E1DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80418840 003E1E00  7C 08 02 A6 */	mflr r0
/* 80418844 003E1E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80418848 003E1E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041884C 003E1E0C  7C 9F 23 78 */	mr r31, r4
/* 80418850 003E1E10  93 C1 00 08 */	stw r30, 8(r1)
/* 80418854 003E1E14  7C 7E 1B 78 */	mr r30, r3
/* 80418858 003E1E18  38 63 00 08 */	addi r3, r3, 8
/* 8041885C 003E1E1C  4B FF E6 61 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 80418860 003E1E20  2C 03 00 00 */	cmpwi r3, 0
/* 80418864 003E1E24  40 82 00 0C */	bne .L_80418870
/* 80418868 003E1E28  38 60 00 00 */	li r3, 0
/* 8041886C 003E1E2C  48 00 00 0C */	b .L_80418878
.L_80418870:
/* 80418870 003E1E30  41 82 00 08 */	beq .L_80418878
/* 80418874 003E1E34  4B FF FF 21 */	bl __ct__Q44nw4r3snd6detail11MmlSeqTrackFv
.L_80418878:
/* 80418878 003E1E38  2C 03 00 00 */	cmpwi r3, 0
/* 8041887C 003E1E3C  41 82 00 10 */	beq .L_8041888C
/* 80418880 003E1E40  93 E3 00 C0 */	stw r31, 0xc0(r3)
/* 80418884 003E1E44  80 1E 00 04 */	lwz r0, 4(r30)
/* 80418888 003E1E48  90 03 00 C8 */	stw r0, 0xc8(r3)
.L_8041888C:
/* 8041888C 003E1E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80418890 003E1E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80418894 003E1E54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80418898 003E1E58  7C 08 03 A6 */	mtlr r0
/* 8041889C 003E1E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 804188A0 003E1E60  4E 80 00 20 */	blr
.endfn AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer


.fn FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack, global
/* 804188A4 003E1E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804188A8 003E1E68  7C 08 02 A6 */	mflr r0
/* 804188AC 003E1E6C  2C 04 00 00 */	cmpwi r4, 0
/* 804188B0 003E1E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804188B4 003E1E74  38 00 00 00 */	li r0, 0
/* 804188B8 003E1E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804188BC 003E1E7C  7C 9F 23 78 */	mr r31, r4
/* 804188C0 003E1E80  93 C1 00 08 */	stw r30, 8(r1)
/* 804188C4 003E1E84  7C 7E 1B 78 */	mr r30, r3
/* 804188C8 003E1E88  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 804188CC 003E1E8C  41 82 00 28 */	beq .L_804188F4
/* 804188D0 003E1E90  81 9F 00 00 */	lwz r12, 0(r31)
/* 804188D4 003E1E94  7F E3 FB 78 */	mr r3, r31
/* 804188D8 003E1E98  38 80 FF FF */	li r4, -1
/* 804188DC 003E1E9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 804188E0 003E1EA0  7D 89 03 A6 */	mtctr r12
/* 804188E4 003E1EA4  4E 80 04 21 */	bctrl 
/* 804188E8 003E1EA8  7F E4 FB 78 */	mr r4, r31
/* 804188EC 003E1EAC  38 7E 00 08 */	addi r3, r30, 8
/* 804188F0 003E1EB0  4B FF E6 29 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
.L_804188F4:
/* 804188F4 003E1EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804188F8 003E1EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804188FC 003E1EBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80418900 003E1EC0  7C 08 03 A6 */	mtlr r0
/* 80418904 003E1EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80418908 003E1EC8  4E 80 00 20 */	blr 
.endfn FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack

.fn Create__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl, global
/* 8041890C 003E1ECC  38 C0 00 CC */	li r6, 0xcc
/* 80418910 003E1ED0  38 63 00 08 */	addi r3, r3, 8
/* 80418914 003E1ED4  4B FF E3 94 */	b CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl
.endfn Create__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl

.fn Destroy__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl, global
/* 80418918 003E1ED8  38 63 00 08 */	addi r3, r3, 8
/* 8041891C 003E1EDC  4B FF E4 D0 */	b DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl
.endfn Destroy__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl

.fn GetAllocatableTrackCount__Q44nw4r3snd6detail20MmlSeqTrackAllocatorCFv, global
/* 80418920 003E1EE0  38 63 00 08 */	addi r3, r3, 8
/* 80418924 003E1EE4  4B FF E5 48 */	b CountImpl__Q44nw4r3snd6detail8PoolImplCFv
.endfn GetAllocatableTrackCount__Q44nw4r3snd6detail20MmlSeqTrackAllocatorCFv

#__dt__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFv or __dt__Q44nw4r3snd6detail17SeqTrackAllocatorFv
.fn func_80418928, global
/* 80418928 003E1EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041892C 003E1EEC  7C 08 02 A6 */	mflr r0
/* 80418930 003E1EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80418934 003E1EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80418938 003E1EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041893C 003E1EFC  7C 7F 1B 78 */	mr r31, r3
/* 80418940 003E1F00  41 82 00 10 */	beq .L_80418950
/* 80418944 003E1F04  2C 04 00 00 */	cmpwi r4, 0
/* 80418948 003E1F08  40 81 00 08 */	ble .L_80418950
/* 8041894C 003E1F0C  48 01 C2 E1 */	bl __dl__FPv
.L_80418950:
/* 80418950 003E1F10  7F E3 FB 78 */	mr r3, r31
/* 80418954 003E1F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80418958 003E1F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041895C 003E1F1C  7C 08 03 A6 */	mtlr r0
/* 80418960 003E1F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80418964 003E1F24  4E 80 00 20 */	blr 
.endfn func_80418928

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056E3B0
lbl_8056E3B0:
	.4byte 0
	.4byte 0
	.4byte func_80418928
	.4byte AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer
	.4byte FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack
	.4byte GetAllocatableTrackCount__Q44nw4r3snd6detail20MmlSeqTrackAllocatorCFv
