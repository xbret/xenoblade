.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn AppendSound__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 80415760 003DED20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80415764 003DED24  7C 08 02 A6 */	mflr r0
/* 80415768 003DED28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041576C 003DED2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80415770 003DED30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80415774 003DED34  7C 9E 23 78 */	mr r30, r4
/* 80415778 003DED38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8041577C 003DED3C  7C 7D 1B 78 */	mr r29, r3
/* 80415780 003DED40  93 81 00 10 */	stw r28, 0x10(r1)
/* 80415784 003DED44  48 00 BB 61 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 80415788 003DED48  38 63 03 54 */	addi r3, r3, 0x354
/* 8041578C 003DED4C  4B F4 44 D5 */	bl OSLockMutex
/* 80415790 003DED50  88 7E 00 94 */	lbz r3, 0x94(r30)
/* 80415794 003DED54  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80415798 003DED58  7C 63 02 14 */	add r3, r3, r0
/* 8041579C 003DED5C  2C 03 00 7F */	cmpwi r3, 0x7f
/* 804157A0 003DED60  40 81 00 0C */	ble .L_804157AC
/* 804157A4 003DED64  3B E0 00 7F */	li r31, 0x7f
/* 804157A8 003DED68  48 00 00 0C */	b .L_804157B4
.L_804157AC:
/* 804157AC 003DED6C  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 804157B0 003DED70  7C 7F 00 78 */	andc r31, r3, r0
.L_804157B4:
/* 804157B4 003DED74  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 804157B8 003DED78  2C 00 00 00 */	cmpwi r0, 0
/* 804157BC 003DED7C  40 82 00 18 */	bne .L_804157D4
/* 804157C0 003DED80  48 00 BB 25 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 804157C4 003DED84  38 63 03 54 */	addi r3, r3, 0x354
/* 804157C8 003DED88  4B F4 45 79 */	bl OSUnlockMutex
/* 804157CC 003DED8C  38 60 00 00 */	li r3, 0
/* 804157D0 003DED90  48 00 01 10 */	b .L_804158E0
.L_804157D4:
/* 804157D4 003DED94  3B 9D 00 04 */	addi r28, r29, 4
/* 804157D8 003DED98  48 00 00 C4 */	b .L_8041589C
.L_804157DC:
/* 804157DC 003DED9C  80 9D 00 04 */	lwz r4, 4(r29)
/* 804157E0 003DEDA0  38 C0 00 80 */	li r6, 0x80
/* 804157E4 003DEDA4  38 60 00 00 */	li r3, 0
/* 804157E8 003DEDA8  48 00 00 40 */	b .L_80415828
.L_804157EC:
/* 804157EC 003DEDAC  88 A4 FF 90 */	lbz r5, -0x70(r4)
/* 804157F0 003DEDB0  38 E4 FE FC */	addi r7, r4, -260
/* 804157F4 003DEDB4  80 04 FF 4C */	lwz r0, -0xb4(r4)
/* 804157F8 003DEDB8  7C A5 02 14 */	add r5, r5, r0
/* 804157FC 003DEDBC  2C 05 00 7F */	cmpwi r5, 0x7f
/* 80415800 003DEDC0  40 81 00 0C */	ble .L_8041580C
/* 80415804 003DEDC4  38 00 00 7F */	li r0, 0x7f
/* 80415808 003DEDC8  48 00 00 0C */	b .L_80415814
.L_8041580C:
/* 8041580C 003DEDCC  7C A0 FE 70 */	srawi r0, r5, 0x1f
/* 80415810 003DEDD0  7C A0 00 78 */	andc r0, r5, r0
.L_80415814:
/* 80415814 003DEDD4  7C 06 00 00 */	cmpw r6, r0
/* 80415818 003DEDD8  40 81 00 0C */	ble .L_80415824
/* 8041581C 003DEDDC  7C E3 3B 78 */	mr r3, r7
/* 80415820 003DEDE0  7C 06 03 78 */	mr r6, r0
.L_80415824:
/* 80415824 003DEDE4  80 84 00 00 */	lwz r4, 0(r4)
.L_80415828:
/* 80415828 003DEDE8  7C 04 E0 40 */	cmplw r4, r28
/* 8041582C 003DEDEC  40 82 FF C0 */	bne .L_804157EC
/* 80415830 003DEDF0  2C 03 00 00 */	cmpwi r3, 0
/* 80415834 003DEDF4  40 82 00 18 */	bne .L_8041584C
/* 80415838 003DEDF8  48 00 BA AD */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 8041583C 003DEDFC  38 63 03 54 */	addi r3, r3, 0x354
/* 80415840 003DEE00  4B F4 45 01 */	bl OSUnlockMutex
/* 80415844 003DEE04  38 60 00 00 */	li r3, 0
/* 80415848 003DEE08  48 00 00 98 */	b .L_804158E0
.L_8041584C:
/* 8041584C 003DEE0C  88 83 00 94 */	lbz r4, 0x94(r3)
/* 80415850 003DEE10  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80415854 003DEE14  7C 84 02 14 */	add r4, r4, r0
/* 80415858 003DEE18  2C 04 00 7F */	cmpwi r4, 0x7f
/* 8041585C 003DEE1C  40 81 00 0C */	ble .L_80415868
/* 80415860 003DEE20  38 00 00 7F */	li r0, 0x7f
/* 80415864 003DEE24  48 00 00 0C */	b .L_80415870
.L_80415868:
/* 80415868 003DEE28  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 8041586C 003DEE2C  7C 80 00 78 */	andc r0, r4, r0
.L_80415870:
/* 80415870 003DEE30  7C 1F 00 00 */	cmpw r31, r0
/* 80415874 003DEE34  40 80 00 18 */	bge .L_8041588C
/* 80415878 003DEE38  48 00 BA 6D */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 8041587C 003DEE3C  38 63 03 54 */	addi r3, r3, 0x354
/* 80415880 003DEE40  4B F4 44 C1 */	bl OSUnlockMutex
/* 80415884 003DEE44  38 60 00 00 */	li r3, 0
/* 80415888 003DEE48  48 00 00 58 */	b .L_804158E0
.L_8041588C:
/* 8041588C 003DEE4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80415890 003DEE50  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80415894 003DEE54  7D 89 03 A6 */	mtctr r12
/* 80415898 003DEE58  4E 80 04 21 */	bctrl 
.L_8041589C:
/* 8041589C 003DEE5C  80 7D 00 00 */	lwz r3, 0(r29)
/* 804158A0 003DEE60  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 804158A4 003DEE64  7C 03 00 00 */	cmpw r3, r0
/* 804158A8 003DEE68  40 80 FF 34 */	bge .L_804157DC
/* 804158AC 003DEE6C  38 1D 00 04 */	addi r0, r29, 4
/* 804158B0 003DEE70  7F A3 EB 78 */	mr r3, r29
/* 804158B4 003DEE74  90 01 00 08 */	stw r0, 8(r1)
/* 804158B8 003DEE78  38 81 00 08 */	addi r4, r1, 8
/* 804158BC 003DEE7C  38 BE 01 04 */	addi r5, r30, 0x104
/* 804158C0 003DEE80  48 01 5C 61 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 804158C4 003DEE84  7F C3 F3 78 */	mr r3, r30
/* 804158C8 003DEE88  7F A4 EB 78 */	mr r4, r29
/* 804158CC 003DEE8C  4B FF DE 71 */	bl AttachExternalSoundPlayer__Q44nw4r3snd6detail10BasicSoundFPQ44nw4r3snd6detail19ExternalSoundPlayer
/* 804158D0 003DEE90  48 00 BA 15 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 804158D4 003DEE94  38 63 03 54 */	addi r3, r3, 0x354
/* 804158D8 003DEE98  4B F4 44 69 */	bl OSUnlockMutex
/* 804158DC 003DEE9C  38 60 00 01 */	li r3, 1
.L_804158E0:
/* 804158E0 003DEEA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804158E4 003DEEA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804158E8 003DEEA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804158EC 003DEEAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804158F0 003DEEB0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 804158F4 003DEEB4  7C 08 03 A6 */	mtlr r0
/* 804158F8 003DEEB8  38 21 00 20 */	addi r1, r1, 0x20
/* 804158FC 003DEEBC  4E 80 00 20 */	blr 
.endfn AppendSound__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound

.fn RemoveSound__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 80415900 003DEEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415904 003DEEC4  7C 08 02 A6 */	mflr r0
/* 80415908 003DEEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041590C 003DEECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415910 003DEED0  7C 9F 23 78 */	mr r31, r4
/* 80415914 003DEED4  38 84 01 04 */	addi r4, r4, 0x104
/* 80415918 003DEED8  93 C1 00 08 */	stw r30, 8(r1)
/* 8041591C 003DEEDC  7C 7E 1B 78 */	mr r30, r3
/* 80415920 003DEEE0  48 01 5C 2D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80415924 003DEEE4  7F E3 FB 78 */	mr r3, r31
/* 80415928 003DEEE8  7F C4 F3 78 */	mr r4, r30
/* 8041592C 003DEEEC  4B FF DE 19 */	bl DetachExternalSoundPlayer__Q44nw4r3snd6detail10BasicSoundFPQ44nw4r3snd6detail19ExternalSoundPlayer
/* 80415930 003DEEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415934 003DEEF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415938 003DEEF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041593C 003DEEFC  7C 08 03 A6 */	mtlr r0
/* 80415940 003DEF00  38 21 00 10 */	addi r1, r1, 0x10
/* 80415944 003DEF04  4E 80 00 20 */	blr 
.endfn RemoveSound__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound

.fn detail_CanPlaySound__Q44nw4r3snd6detail19ExternalSoundPlayerFi, global
/* 80415948 003DEF08  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8041594C 003DEF0C  2C 05 00 00 */	cmpwi r5, 0
/* 80415950 003DEF10  40 82 00 0C */	bne .L_8041595C
/* 80415954 003DEF14  38 60 00 00 */	li r3, 0
/* 80415958 003DEF18  4E 80 00 20 */	blr
.L_8041595C:
/* 8041595C 003DEF1C  80 03 00 00 */	lwz r0, 0(r3)
/* 80415960 003DEF20  7C 00 28 00 */	cmpw r0, r5
/* 80415964 003DEF24  41 80 00 A0 */	blt .L_80415A04
/* 80415968 003DEF28  80 A3 00 04 */	lwz r5, 4(r3)
/* 8041596C 003DEF2C  38 03 00 04 */	addi r0, r3, 4
/* 80415970 003DEF30  39 00 00 80 */	li r8, 0x80
/* 80415974 003DEF34  38 E0 00 00 */	li r7, 0
/* 80415978 003DEF38  48 00 00 40 */	b .L_804159B8
.L_8041597C:
/* 8041597C 003DEF3C  88 C5 FF 90 */	lbz r6, -0x70(r5)
/* 80415980 003DEF40  39 25 FE FC */	addi r9, r5, -260
/* 80415984 003DEF44  80 65 FF 4C */	lwz r3, -0xb4(r5)
/* 80415988 003DEF48  7C C6 1A 14 */	add r6, r6, r3
/* 8041598C 003DEF4C  2C 06 00 7F */	cmpwi r6, 0x7f
/* 80415990 003DEF50  40 81 00 0C */	ble .L_8041599C
/* 80415994 003DEF54  38 60 00 7F */	li r3, 0x7f
/* 80415998 003DEF58  48 00 00 0C */	b .L_804159A4
.L_8041599C:
/* 8041599C 003DEF5C  7C C3 FE 70 */	srawi r3, r6, 0x1f
/* 804159A0 003DEF60  7C C3 18 78 */	andc r3, r6, r3
.L_804159A4:
/* 804159A4 003DEF64  7C 08 18 00 */	cmpw r8, r3
/* 804159A8 003DEF68  40 81 00 0C */	ble .L_804159B4
/* 804159AC 003DEF6C  7D 27 4B 78 */	mr r7, r9
/* 804159B0 003DEF70  7C 68 1B 78 */	mr r8, r3
.L_804159B4:
/* 804159B4 003DEF74  80 A5 00 00 */	lwz r5, 0(r5)
.L_804159B8:
/* 804159B8 003DEF78  7C 05 00 40 */	cmplw r5, r0
/* 804159BC 003DEF7C  40 82 FF C0 */	bne .L_8041597C
/* 804159C0 003DEF80  2C 07 00 00 */	cmpwi r7, 0
/* 804159C4 003DEF84  40 82 00 0C */	bne .L_804159D0
/* 804159C8 003DEF88  38 60 00 00 */	li r3, 0
/* 804159CC 003DEF8C  4E 80 00 20 */	blr
.L_804159D0:
/* 804159D0 003DEF90  88 67 00 94 */	lbz r3, 0x94(r7)
/* 804159D4 003DEF94  80 07 00 50 */	lwz r0, 0x50(r7)
/* 804159D8 003DEF98  7C 63 02 14 */	add r3, r3, r0
/* 804159DC 003DEF9C  2C 03 00 7F */	cmpwi r3, 0x7f
/* 804159E0 003DEFA0  40 81 00 0C */	ble .L_804159EC
/* 804159E4 003DEFA4  38 00 00 7F */	li r0, 0x7f
/* 804159E8 003DEFA8  48 00 00 0C */	b .L_804159F4
.L_804159EC:
/* 804159EC 003DEFAC  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 804159F0 003DEFB0  7C 60 00 78 */	andc r0, r3, r0
.L_804159F4:
/* 804159F4 003DEFB4  7C 04 00 00 */	cmpw r4, r0
/* 804159F8 003DEFB8  40 80 00 0C */	bge .L_80415A04
/* 804159FC 003DEFBC  38 60 00 00 */	li r3, 0
/* 80415A00 003DEFC0  4E 80 00 20 */	blr
.L_80415A04:
/* 80415A04 003DEFC4  38 60 00 01 */	li r3, 1
/* 80415A08 003DEFC8  4E 80 00 20 */	blr 
.endfn detail_CanPlaySound__Q44nw4r3snd6detail19ExternalSoundPlayerFi