.include "macros.inc"
.file "nw4r/snd/snd_SoundHandle.o"

# 0x80420330 - 0x80420418
.text
.balign 4

# nw4r::snd::SoundHandle::detail_AttachSoundAsTempHandle(nw4r::snd::detail::BasicSound*)
.fn detail_AttachSoundAsTempHandle__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound, global
/* 80420330 003E98F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80420334 003E98F4  7C 08 02 A6 */	mflr r0
/* 80420338 003E98F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042033C 003E98FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80420340 003E9900  7C 7F 1B 78 */	mr r31, r3
/* 80420344 003E9904  90 83 00 00 */	stw r4, 0x0(r3)
/* 80420348 003E9908  7C 83 23 78 */	mr r3, r4
/* 8042034C 003E990C  4B FF 37 11 */	bl IsAttachedTempGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
/* 80420350 003E9910  2C 03 00 00 */	cmpwi r3, 0x0
/* 80420354 003E9914  41 82 00 0C */	beq .L_80420360
/* 80420358 003E9918  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8042035C 003E991C  4B FF 37 1D */	bl DetachTempGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
.L_80420360:
/* 80420360 003E9920  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 80420364 003E9924  93 E3 00 0C */	stw r31, 0xc(r3)
/* 80420368 003E9928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042036C 003E992C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80420370 003E9930  7C 08 03 A6 */	mtlr r0
/* 80420374 003E9934  38 21 00 10 */	addi r1, r1, 0x10
/* 80420378 003E9938  4E 80 00 20 */	blr
.endfn detail_AttachSoundAsTempHandle__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound

# nw4r::snd::SoundHandle::detail_AttachSound(nw4r::snd::detail::BasicSound*)
.fn detail_AttachSound__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound, global
/* 8042037C 003E993C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80420380 003E9940  7C 08 02 A6 */	mflr r0
/* 80420384 003E9944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80420388 003E9948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042038C 003E994C  7C 7F 1B 78 */	mr r31, r3
/* 80420390 003E9950  90 83 00 00 */	stw r4, 0x0(r3)
/* 80420394 003E9954  7C 83 23 78 */	mr r3, r4
/* 80420398 003E9958  4B FF 36 B1 */	bl IsAttachedGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
/* 8042039C 003E995C  2C 03 00 00 */	cmpwi r3, 0x0
/* 804203A0 003E9960  41 82 00 0C */	beq .L_804203AC
/* 804203A4 003E9964  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 804203A8 003E9968  4B FF 36 C9 */	bl DetachGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
.L_804203AC:
/* 804203AC 003E996C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 804203B0 003E9970  93 E3 00 08 */	stw r31, 0x8(r3)
/* 804203B4 003E9974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804203B8 003E9978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804203BC 003E997C  7C 08 03 A6 */	mtlr r0
/* 804203C0 003E9980  38 21 00 10 */	addi r1, r1, 0x10
/* 804203C4 003E9984  4E 80 00 20 */	blr
.endfn detail_AttachSound__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound

# nw4r::snd::SoundHandle::DetachSound()
.fn DetachSound__Q34nw4r3snd11SoundHandleFv, global
/* 804203C8 003E9988  80 83 00 00 */	lwz r4, 0x0(r3)
/* 804203CC 003E998C  2C 04 00 00 */	cmpwi r4, 0x0
/* 804203D0 003E9990  41 82 00 30 */	beq .L_80420400
/* 804203D4 003E9994  80 04 00 08 */	lwz r0, 0x8(r4)
/* 804203D8 003E9998  7C 00 18 40 */	cmplw r0, r3
/* 804203DC 003E999C  40 82 00 0C */	bne .L_804203E8
/* 804203E0 003E99A0  38 00 00 00 */	li r0, 0x0
/* 804203E4 003E99A4  90 04 00 08 */	stw r0, 0x8(r4)
.L_804203E8:
/* 804203E8 003E99A8  80 83 00 00 */	lwz r4, 0x0(r3)
/* 804203EC 003E99AC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804203F0 003E99B0  7C 00 18 40 */	cmplw r0, r3
/* 804203F4 003E99B4  40 82 00 0C */	bne .L_80420400
/* 804203F8 003E99B8  38 00 00 00 */	li r0, 0x0
/* 804203FC 003E99BC  90 04 00 0C */	stw r0, 0xc(r4)
.L_80420400:
/* 80420400 003E99C0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80420404 003E99C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80420408 003E99C8  4D 82 00 20 */	beqlr
/* 8042040C 003E99CC  38 00 00 00 */	li r0, 0x0
/* 80420410 003E99D0  90 03 00 00 */	stw r0, 0x0(r3)
/* 80420414 003E99D4  4E 80 00 20 */	blr
.endfn DetachSound__Q34nw4r3snd11SoundHandleFv
