.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#__ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9WaveSound>ii
.global __ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager_Q44nw4r3snd6detail9WaveSound_ii
__ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager_Q44nw4r3snd6detail9WaveSound_ii:
/* 80429BD8 003F3198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429BDC 003F319C  7C 08 02 A6 */	mflr r0
/* 80429BE0 003F31A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429BE4 003F31A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429BE8 003F31A8  7C 9F 23 78 */	mr r31, r4
/* 80429BEC 003F31AC  7C A4 2B 78 */	mr r4, r5
/* 80429BF0 003F31B0  7C C5 33 78 */	mr r5, r6
/* 80429BF4 003F31B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80429BF8 003F31B8  7C 7E 1B 78 */	mr r30, r3
/* 80429BFC 003F31BC  4B FE 88 A5 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFii
/* 80429C00 003F31C0  3C 80 80 57 */	lis r4, lbl_8056E650@ha
/* 80429C04 003F31C4  38 7E 01 0C */	addi r3, r30, 0x10c
/* 80429C08 003F31C8  38 84 E6 50 */	addi r4, r4, lbl_8056E650@l
/* 80429C0C 003F31CC  90 9E 00 00 */	stw r4, 0(r30)
/* 80429C10 003F31D0  48 00 07 1D */	bl __ct__Q44nw4r3snd6detail9WsdPlayerFv
/* 80429C14 003F31D4  38 00 00 00 */	li r0, 0
/* 80429C18 003F31D8  93 FE 02 48 */	stw r31, 0x248(r30)
/* 80429C1C 003F31DC  7F C3 F3 78 */	mr r3, r30
/* 80429C20 003F31E0  90 1E 02 44 */	stw r0, 0x244(r30)
/* 80429C24 003F31E4  98 1E 02 4C */	stb r0, 0x24c(r30)
/* 80429C28 003F31E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429C2C 003F31EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80429C30 003F31F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429C34 003F31F4  7C 08 03 A6 */	mtlr r0
/* 80429C38 003F31F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80429C3C 003F31FC  4E 80 00 20 */	blr

.global __dt__Q44nw4r3snd6detail9WsdPlayerFv
__dt__Q44nw4r3snd6detail9WsdPlayerFv:
/* 80429C40 003F3200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429C44 003F3204  7C 08 02 A6 */	mflr r0
/* 80429C48 003F3208  2C 03 00 00 */	cmpwi r3, 0
/* 80429C4C 003F320C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429C50 003F3210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429C54 003F3214  7C 7F 1B 78 */	mr r31, r3
/* 80429C58 003F3218  41 82 00 10 */	beq .L_80429C68
/* 80429C5C 003F321C  2C 04 00 00 */	cmpwi r4, 0
/* 80429C60 003F3220  40 81 00 08 */	ble .L_80429C68
/* 80429C64 003F3224  48 00 AF C9 */	bl __dl__FPv
.L_80429C68:
/* 80429C68 003F3228  7F E3 FB 78 */	mr r3, r31
/* 80429C6C 003F322C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429C70 003F3230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429C74 003F3234  7C 08 03 A6 */	mtlr r0
/* 80429C78 003F3238  38 21 00 10 */	addi r1, r1, 0x10
/* 80429C7C 003F323C  4E 80 00 20 */	blr 

.global Prepare__Q44nw4r3snd6detail9WaveSoundFPCvlQ54nw4r3snd6detail9WsdPlayer15StartOffsetTypelPCQ54nw4r3snd6detail9WsdPlayer11WsdCallbackUl
Prepare__Q44nw4r3snd6detail9WaveSoundFPCvlQ54nw4r3snd6detail9WsdPlayer15StartOffsetTypelPCQ54nw4r3snd6detail9WsdPlayer11WsdCallbackUl:
/* 80429C80 003F3240  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80429C84 003F3244  7C 08 02 A6 */	mflr r0
/* 80429C88 003F3248  90 01 00 34 */	stw r0, 0x34(r1)
/* 80429C8C 003F324C  39 61 00 30 */	addi r11, r1, 0x30
/* 80429C90 003F3250  4B E9 04 BD */	bl _savegpr_25
/* 80429C94 003F3254  81 83 00 00 */	lwz r12, 0(r3)
/* 80429C98 003F3258  7C 79 1B 78 */	mr r25, r3
/* 80429C9C 003F325C  7C 9A 23 78 */	mr r26, r4
/* 80429CA0 003F3260  7C BB 2B 78 */	mr r27, r5
/* 80429CA4 003F3264  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80429CA8 003F3268  7C DC 33 78 */	mr r28, r6
/* 80429CAC 003F326C  7C FD 3B 78 */	mr r29, r7
/* 80429CB0 003F3270  7D 1E 43 78 */	mr r30, r8
/* 80429CB4 003F3274  7D 3F 4B 78 */	mr r31, r9
/* 80429CB8 003F3278  7D 89 03 A6 */	mtctr r12
/* 80429CBC 003F327C  4E 80 04 21 */	bctrl 
/* 80429CC0 003F3280  7F 23 CB 78 */	mr r3, r25
/* 80429CC4 003F3284  4B FE 9A 8D */	bl GetVoiceOutCount__Q44nw4r3snd6detail10BasicSoundCFv
/* 80429CC8 003F3288  7C 68 1B 78 */	mr r8, r3
/* 80429CCC 003F328C  7F 44 D3 78 */	mr r4, r26
/* 80429CD0 003F3290  7F 65 DB 78 */	mr r5, r27
/* 80429CD4 003F3294  7F 86 E3 78 */	mr r6, r28
/* 80429CD8 003F3298  7F A7 EB 78 */	mr r7, r29
/* 80429CDC 003F329C  7F C9 F3 78 */	mr r9, r30
/* 80429CE0 003F32A0  7F EA FB 78 */	mr r10, r31
/* 80429CE4 003F32A4  38 79 01 0C */	addi r3, r25, 0x10c
/* 80429CE8 003F32A8  48 00 07 59 */	bl Prepare__Q44nw4r3snd6detail9WsdPlayerFPCviQ54nw4r3snd6detail9WsdPlayer15StartOffsetTypeiiPCQ54nw4r3snd6detail9WsdPlayer11WsdCallbackUl
/* 80429CEC 003F32AC  2C 03 00 00 */	cmpwi r3, 0
/* 80429CF0 003F32B0  40 82 00 0C */	bne .L_80429CFC
/* 80429CF4 003F32B4  38 60 00 00 */	li r3, 0
/* 80429CF8 003F32B8  48 00 00 10 */	b .L_80429D08
.L_80429CFC:
/* 80429CFC 003F32BC  38 00 00 01 */	li r0, 1
/* 80429D00 003F32C0  38 60 00 01 */	li r3, 1
/* 80429D04 003F32C4  98 19 02 4C */	stb r0, 0x24c(r25)
.L_80429D08:
/* 80429D08 003F32C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80429D0C 003F32CC  4B E9 04 8D */	bl _restgpr_25
/* 80429D10 003F32D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80429D14 003F32D4  7C 08 03 A6 */	mtlr r0
/* 80429D18 003F32D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80429D1C 003F32DC  4E 80 00 20 */	blr 

.global Shutdown__Q44nw4r3snd6detail9WaveSoundFv
Shutdown__Q44nw4r3snd6detail9WaveSoundFv:
/* 80429D20 003F32E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80429D24 003F32E4  7C 08 02 A6 */	mflr r0
/* 80429D28 003F32E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80429D2C 003F32EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80429D30 003F32F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80429D34 003F32F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80429D38 003F32F8  7C 7D 1B 78 */	mr r29, r3
/* 80429D3C 003F32FC  4B FE 98 65 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 80429D40 003F3300  83 DD 02 48 */	lwz r30, 0x248(r29)
/* 80429D44 003F3304  3B FE 00 10 */	addi r31, r30, 0x10
/* 80429D48 003F3308  7F E3 FB 78 */	mr r3, r31
/* 80429D4C 003F330C  4B F2 FF 15 */	bl OSLockMutex
/* 80429D50 003F3310  80 1E 00 04 */	lwz r0, 4(r30)
/* 80429D54 003F3314  2C 00 00 00 */	cmpwi r0, 0
/* 80429D58 003F3318  40 82 00 10 */	bne .L_80429D68
/* 80429D5C 003F331C  7F E3 FB 78 */	mr r3, r31
/* 80429D60 003F3320  4B F2 FF E1 */	bl OSUnlockMutex
/* 80429D64 003F3324  48 00 00 3C */	b .L_80429DA0
.L_80429D68:
/* 80429D68 003F3328  38 7E 00 04 */	addi r3, r30, 4
/* 80429D6C 003F332C  38 9D 00 EC */	addi r4, r29, 0xec
/* 80429D70 003F3330  48 00 17 DD */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80429D74 003F3334  81 9D 00 00 */	lwz r12, 0(r29)
/* 80429D78 003F3338  7F A3 EB 78 */	mr r3, r29
/* 80429D7C 003F333C  38 80 FF FF */	li r4, -1
/* 80429D80 003F3340  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80429D84 003F3344  7D 89 03 A6 */	mtctr r12
/* 80429D88 003F3348  4E 80 04 21 */	bctrl 
/* 80429D8C 003F334C  7F C3 F3 78 */	mr r3, r30
/* 80429D90 003F3350  7F A4 EB 78 */	mr r4, r29
/* 80429D94 003F3354  4B FE D1 85 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 80429D98 003F3358  7F E3 FB 78 */	mr r3, r31
/* 80429D9C 003F335C  4B F2 FF A5 */	bl OSUnlockMutex
.L_80429DA0:
/* 80429DA0 003F3360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80429DA4 003F3364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80429DA8 003F3368  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80429DAC 003F336C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80429DB0 003F3370  7C 08 03 A6 */	mtlr r0
/* 80429DB4 003F3374  38 21 00 20 */	addi r1, r1, 0x20
/* 80429DB8 003F3378  4E 80 00 20 */	blr 

.global __dt__Q44nw4r3snd6detail9WaveSoundFv
__dt__Q44nw4r3snd6detail9WaveSoundFv:
/* 80429DBC 003F337C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429DC0 003F3380  7C 08 02 A6 */	mflr r0
/* 80429DC4 003F3384  2C 03 00 00 */	cmpwi r3, 0
/* 80429DC8 003F3388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429DCC 003F338C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429DD0 003F3390  7C 7F 1B 78 */	mr r31, r3
/* 80429DD4 003F3394  41 82 00 10 */	beq .L_80429DE4
/* 80429DD8 003F3398  2C 04 00 00 */	cmpwi r4, 0
/* 80429DDC 003F339C  40 81 00 08 */	ble .L_80429DE4
/* 80429DE0 003F33A0  48 00 AE 4D */	bl __dl__FPv
.L_80429DE4:
/* 80429DE4 003F33A4  7F E3 FB 78 */	mr r3, r31
/* 80429DE8 003F33A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429DEC 003F33AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429DF0 003F33B0  7C 08 03 A6 */	mtlr r0
/* 80429DF4 003F33B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80429DF8 003F33B8  4E 80 00 20 */	blr 

.global SetChannelPriority__Q44nw4r3snd6detail9WaveSoundFi
SetChannelPriority__Q44nw4r3snd6detail9WaveSoundFi:
/* 80429DFC 003F33BC  38 63 01 0C */	addi r3, r3, 0x10c
/* 80429E00 003F33C0  48 00 0A 28 */	b SetChannelPriority__Q44nw4r3snd6detail9WsdPlayerFi

.global SetReleasePriorityFix__Q44nw4r3snd6detail9WaveSoundFb
SetReleasePriorityFix__Q44nw4r3snd6detail9WaveSoundFb:
/* 80429E04 003F33C4  38 63 01 0C */	addi r3, r3, 0x10c
/* 80429E08 003F33C8  48 00 0A 28 */	b SetReleasePriorityFix__Q44nw4r3snd6detail9WsdPlayerFb

.global OnUpdatePlayerPriority__Q44nw4r3snd6detail9WaveSoundFv
OnUpdatePlayerPriority__Q44nw4r3snd6detail9WaveSoundFv:
/* 80429E0C 003F33CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80429E10 003F33D0  7C 08 02 A6 */	mflr r0
/* 80429E14 003F33D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80429E18 003F33D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80429E1C 003F33DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80429E20 003F33E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80429E24 003F33E4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80429E28 003F33E8  7C 7C 1B 78 */	mr r28, r3
/* 80429E2C 003F33EC  88 83 00 94 */	lbz r4, 0x94(r3)
/* 80429E30 003F33F0  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80429E34 003F33F4  7C 84 02 14 */	add r4, r4, r0
/* 80429E38 003F33F8  2C 04 00 7F */	cmpwi r4, 0x7f
/* 80429E3C 003F33FC  40 81 00 0C */	ble .L_80429E48
/* 80429E40 003F3400  3B A0 00 7F */	li r29, 0x7f
/* 80429E44 003F3404  48 00 00 0C */	b .L_80429E50
.L_80429E48:
/* 80429E48 003F3408  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 80429E4C 003F340C  7C 9D 00 78 */	andc r29, r4, r0
.L_80429E50:
/* 80429E50 003F3410  83 C3 02 48 */	lwz r30, 0x248(r3)
/* 80429E54 003F3414  3B FE 00 10 */	addi r31, r30, 0x10
/* 80429E58 003F3418  7F E3 FB 78 */	mr r3, r31
/* 80429E5C 003F341C  4B F2 FE 05 */	bl OSLockMutex
/* 80429E60 003F3420  3B 9C 00 EC */	addi r28, r28, 0xec
/* 80429E64 003F3424  38 7E 00 04 */	addi r3, r30, 4
/* 80429E68 003F3428  7F 84 E3 78 */	mr r4, r28
/* 80429E6C 003F342C  48 00 16 E1 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80429E70 003F3430  80 7E 00 08 */	lwz r3, 8(r30)
/* 80429E74 003F3434  38 1E 00 08 */	addi r0, r30, 8
/* 80429E78 003F3438  48 00 00 34 */	b .L_80429EAC
.L_80429E7C:
/* 80429E7C 003F343C  88 A3 FF A8 */	lbz r5, -0x58(r3)
/* 80429E80 003F3440  80 83 FF 64 */	lwz r4, -0x9c(r3)
/* 80429E84 003F3444  7C A5 22 14 */	add r5, r5, r4
/* 80429E88 003F3448  2C 05 00 7F */	cmpwi r5, 0x7f
/* 80429E8C 003F344C  40 81 00 0C */	ble .L_80429E98
/* 80429E90 003F3450  38 80 00 7F */	li r4, 0x7f
/* 80429E94 003F3454  48 00 00 0C */	b .L_80429EA0
.L_80429E98:
/* 80429E98 003F3458  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 80429E9C 003F345C  7C A4 20 78 */	andc r4, r5, r4
.L_80429EA0:
/* 80429EA0 003F3460  7C 1D 20 00 */	cmpw r29, r4
/* 80429EA4 003F3464  41 80 00 10 */	blt .L_80429EB4
/* 80429EA8 003F3468  80 63 00 00 */	lwz r3, 0(r3)
.L_80429EAC:
/* 80429EAC 003F346C  7C 03 00 40 */	cmplw r3, r0
/* 80429EB0 003F3470  40 82 FF CC */	bne .L_80429E7C
.L_80429EB4:
/* 80429EB4 003F3474  90 61 00 08 */	stw r3, 8(r1)
/* 80429EB8 003F3478  7F 85 E3 78 */	mr r5, r28
/* 80429EBC 003F347C  38 7E 00 04 */	addi r3, r30, 4
/* 80429EC0 003F3480  38 81 00 08 */	addi r4, r1, 8
/* 80429EC4 003F3484  48 00 16 5D */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80429EC8 003F3488  7F E3 FB 78 */	mr r3, r31
/* 80429ECC 003F348C  4B F2 FE 75 */	bl OSUnlockMutex
/* 80429ED0 003F3490  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80429ED4 003F3494  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80429ED8 003F3498  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80429EDC 003F349C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80429EE0 003F34A0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80429EE4 003F34A4  7C 08 03 A6 */	mtlr r0
/* 80429EE8 003F34A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80429EEC 003F34AC  4E 80 00 20 */	blr 

.global IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv:
/* 80429EF0 003F34B0  80 63 02 44 */	lwz r3, 0x244(r3)
/* 80429EF4 003F34B4  7C 03 00 D0 */	neg r0, r3
/* 80429EF8 003F34B8  7C 00 1B 78 */	or r0, r0, r3
/* 80429EFC 003F34BC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80429F00 003F34C0  4E 80 00 20 */	blr 

.global DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv:
/* 80429F04 003F34C4  80 63 02 44 */	lwz r3, 0x244(r3)
/* 80429F08 003F34C8  48 00 00 30 */	b DetachSound__Q34nw4r3snd15WaveSoundHandleFv

.global GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv
GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv:
/* 80429F0C 003F34CC  38 63 01 0C */	addi r3, r3, 0x10c
/* 80429F10 003F34D0  4E 80 00 20 */	blr 

.global GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv
GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv:
/* 80429F14 003F34D4  38 63 01 0C */	addi r3, r3, 0x10c
/* 80429F18 003F34D8  4E 80 00 20 */	blr 

.global IsPrepared__Q44nw4r3snd6detail9WaveSoundCFv
IsPrepared__Q44nw4r3snd6detail9WaveSoundCFv:
/* 80429F1C 003F34DC  88 63 02 4C */	lbz r3, 0x24c(r3)
/* 80429F20 003F34E0  4E 80 00 20 */	blr 

.global GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv
GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv:
/* 80429F24 003F34E4  38 6D BC 98 */	addi r3, r13, lbl_80667E18@sda21
/* 80429F28 003F34E8  4E 80 00 20 */	blr

.global sinit_80429F2C
sinit_80429F2C:
/* 80429F2C 003F34EC  38 0D BC 30 */	addi r0, r13, lbl_80667DB0@sda21
/* 80429F30 003F34F0  90 0D BC 98 */	stw r0, lbl_80667E18@sda21(r13)
/* 80429F34 003F34F4  4E 80 00 20 */	blr

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_80429F2C


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056E650
lbl_8056E650:
	# ROM: 0x56A750
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte __dt__Q44nw4r3snd6detail9WaveSoundFv
	.4byte Shutdown__Q44nw4r3snd6detail9WaveSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
	.4byte InitParam__Q44nw4r3snd6detail10BasicSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte OnUpdatePlayerPriority__Q44nw4r3snd6detail9WaveSoundFv
	.4byte UpdateMoveValue__Q44nw4r3snd6detail10BasicSoundFv
	.4byte UpdateParam__Q44nw4r3snd6detail10BasicSoundFv