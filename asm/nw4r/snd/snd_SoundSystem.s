.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global InitSoundSystem__Q34nw4r3snd11SoundSystemFll
InitSoundSystem__Q34nw4r3snd11SoundSystemFll:
/* 80421020 003EA5E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421024 003EA5E4  7C 08 02 A6 */	mflr r0
/* 80421028 003EA5E8  3C A0 00 01 */	lis r5, 0x00016E00@ha
/* 8042102C 003EA5EC  3C C0 80 64 */	lis r6, lbl_8063BE40@ha
/* 80421030 003EA5F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421034 003EA5F4  38 00 40 00 */	li r0, 0x4000
/* 80421038 003EA5F8  38 A5 6E 00 */	addi r5, r5, 0x00016E00@l
/* 8042103C 003EA5FC  90 61 00 08 */	stw r3, 8(r1)
/* 80421040 003EA600  38 61 00 08 */	addi r3, r1, 8
/* 80421044 003EA604  90 81 00 10 */	stw r4, 0x10(r1)
/* 80421048 003EA608  38 86 BE 40 */	addi r4, r6, lbl_8063BE40@l
/* 8042104C 003EA60C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80421050 003EA610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421054 003EA614  48 00 00 15 */	bl InitSoundSystem__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParamPvUl
/* 80421058 003EA618  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042105C 003EA61C  7C 08 03 A6 */	mtlr r0
/* 80421060 003EA620  38 21 00 20 */	addi r1, r1, 0x20
/* 80421064 003EA624  4E 80 00 20 */	blr 

.global InitSoundSystem__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParamPvUl
InitSoundSystem__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParamPvUl:
/* 80421068 003EA628  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042106C 003EA62C  7C 08 02 A6 */	mflr r0
/* 80421070 003EA630  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421074 003EA634  39 61 00 20 */	addi r11, r1, 0x20
/* 80421078 003EA638  4B E9 90 D9 */	bl _savegpr_26
/* 8042107C 003EA63C  88 0D BC 68 */	lbz r0, lbl_80667DE8@sda21(r13)
/* 80421080 003EA640  7C 7A 1B 78 */	mr r26, r3
/* 80421084 003EA644  7C 9B 23 78 */	mr r27, r4
/* 80421088 003EA648  2C 00 00 00 */	cmpwi r0, 0
/* 8042108C 003EA64C  40 82 01 7C */	bne lbl_80421208
/* 80421090 003EA650  38 00 00 01 */	li r0, 1
/* 80421094 003EA654  80 6D 9C 98 */	lwz r3, lbl_80665E18@sda21(r13)
/* 80421098 003EA658  98 0D BC 68 */	stb r0, lbl_80667DE8@sda21(r13)
/* 8042109C 003EA65C  4B F3 1C 65 */	bl OSRegisterVersion
/* 804210A0 003EA660  4B FE B8 E5 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 804210A4 003EA664  4B FE B9 BD */	bl Init__Q44nw4r3snd6detail9AxManagerFv
/* 804210A8 003EA668  4B F3 E4 89 */	bl SCInit
lbl_804210AC:
/* 804210AC 003EA66C  4B F3 E5 25 */	bl SCCheckStatus
/* 804210B0 003EA670  28 03 00 01 */	cmplwi r3, 1
/* 804210B4 003EA674  41 82 FF F8 */	beq lbl_804210AC
/* 804210B8 003EA678  4B F4 00 89 */	bl SCGetSoundMode
/* 804210BC 003EA67C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804210C0 003EA680  2C 00 00 01 */	cmpwi r0, 1
/* 804210C4 003EA684  41 82 00 30 */	beq lbl_804210F4
/* 804210C8 003EA688  40 80 00 10 */	bge lbl_804210D8
/* 804210CC 003EA68C  2C 00 00 00 */	cmpwi r0, 0
/* 804210D0 003EA690  40 80 00 14 */	bge lbl_804210E4
/* 804210D4 003EA694  48 00 00 40 */	b lbl_80421114
lbl_804210D8:
/* 804210D8 003EA698  2C 00 00 03 */	cmpwi r0, 3
/* 804210DC 003EA69C  40 80 00 38 */	bge lbl_80421114
/* 804210E0 003EA6A0  48 00 00 24 */	b lbl_80421104
lbl_804210E4:
/* 804210E4 003EA6A4  4B FE B8 A1 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 804210E8 003EA6A8  38 80 00 03 */	li r4, 3
/* 804210EC 003EA6AC  4B FE C0 45 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 804210F0 003EA6B0  48 00 00 30 */	b lbl_80421120
lbl_804210F4:
/* 804210F4 003EA6B4  4B FE B8 91 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 804210F8 003EA6B8  38 80 00 00 */	li r4, 0
/* 804210FC 003EA6BC  4B FE C0 35 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 80421100 003EA6C0  48 00 00 20 */	b lbl_80421120
lbl_80421104:
/* 80421104 003EA6C4  4B FE B8 81 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80421108 003EA6C8  38 80 00 02 */	li r4, 2
/* 8042110C 003EA6CC  4B FE C0 25 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 80421110 003EA6D0  48 00 00 10 */	b lbl_80421120
lbl_80421114:
/* 80421114 003EA6D4  4B FE B8 71 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80421118 003EA6D8  38 80 00 00 */	li r4, 0
/* 8042111C 003EA6DC  4B FE C0 15 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
lbl_80421120:
/* 80421120 003EA6E0  4B FF 82 35 */	bl GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 80421124 003EA6E4  4B FF 82 D9 */	bl Setup__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 80421128 003EA6E8  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8042112C 003EA6EC  80 1A 00 04 */	lwz r0, 4(r26)
/* 80421130 003EA6F0  7F DB 1A 14 */	add r30, r27, r3
/* 80421134 003EA6F4  7F DD F3 78 */	mr r29, r30
/* 80421138 003EA6F8  7F DE 02 14 */	add r30, r30, r0
/* 8042113C 003EA6FC  4B EB 45 85 */	bl AXGetMaxVoices
/* 80421140 003EA700  90 6D BC 6C */	stw r3, lbl_80667DEC@sda21(r13)
/* 80421144 003EA704  7F DC F3 78 */	mr r28, r30
/* 80421148 003EA708  4B FE FA 39 */	bl GetInstance__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8042114C 003EA70C  80 8D BC 6C */	lwz r4, lbl_80667DEC@sda21(r13)
/* 80421150 003EA710  4B FE FB 59 */	bl GetRequiredMemSize__Q44nw4r3snd6detail14AxVoiceManagerFi
/* 80421154 003EA714  7F DE 1A 14 */	add r30, r30, r3
/* 80421158 003EA718  4B FE FA 29 */	bl GetInstance__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8042115C 003EA71C  80 8D BC 6C */	lwz r4, lbl_80667DEC@sda21(r13)
/* 80421160 003EA720  4B FE FB 49 */	bl GetRequiredMemSize__Q44nw4r3snd6detail14AxVoiceManagerFi
/* 80421164 003EA724  7C 7F 1B 78 */	mr r31, r3
/* 80421168 003EA728  4B FE FA 19 */	bl GetInstance__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 8042116C 003EA72C  7F 84 E3 78 */	mr r4, r28
/* 80421170 003EA730  7F E5 FB 78 */	mr r5, r31
/* 80421174 003EA734  4B FE FB 41 */	bl Setup__Q44nw4r3snd6detail14AxVoiceManagerFPvUl
/* 80421178 003EA738  7F DC F3 78 */	mr r28, r30
/* 8042117C 003EA73C  48 00 7A DD */	bl GetInstance__Q44nw4r3snd6detail12VoiceManagerFv
/* 80421180 003EA740  80 8D BC 6C */	lwz r4, lbl_80667DEC@sda21(r13)
/* 80421184 003EA744  48 00 7B D1 */	bl GetRequiredMemSize__Q44nw4r3snd6detail12VoiceManagerFi
/* 80421188 003EA748  7F DE 1A 14 */	add r30, r30, r3
/* 8042118C 003EA74C  48 00 7A CD */	bl GetInstance__Q44nw4r3snd6detail12VoiceManagerFv
/* 80421190 003EA750  80 8D BC 6C */	lwz r4, lbl_80667DEC@sda21(r13)
/* 80421194 003EA754  48 00 7B C1 */	bl GetRequiredMemSize__Q44nw4r3snd6detail12VoiceManagerFi
/* 80421198 003EA758  7C 7F 1B 78 */	mr r31, r3
/* 8042119C 003EA75C  48 00 7A BD */	bl GetInstance__Q44nw4r3snd6detail12VoiceManagerFv
/* 804211A0 003EA760  7F 84 E3 78 */	mr r4, r28
/* 804211A4 003EA764  7F E5 FB 78 */	mr r5, r31
/* 804211A8 003EA768  48 00 7B B5 */	bl Setup__Q44nw4r3snd6detail12VoiceManagerFPvUl
/* 804211AC 003EA76C  4B FF 2C 35 */	bl GetInstance__Q44nw4r3snd6detail14ChannelManagerFv
/* 804211B0 003EA770  80 8D BC 6C */	lwz r4, lbl_80667DEC@sda21(r13)
/* 804211B4 003EA774  4B FF 2D 09 */	bl GetRequiredMemSize__Q44nw4r3snd6detail14ChannelManagerFi
/* 804211B8 003EA778  4B FF 2C 29 */	bl GetInstance__Q44nw4r3snd6detail14ChannelManagerFv
/* 804211BC 003EA77C  80 8D BC 6C */	lwz r4, lbl_80667DEC@sda21(r13)
/* 804211C0 003EA780  4B FF 2C FD */	bl GetRequiredMemSize__Q44nw4r3snd6detail14ChannelManagerFi
/* 804211C4 003EA784  7C 7F 1B 78 */	mr r31, r3
/* 804211C8 003EA788  4B FF 2C 19 */	bl GetInstance__Q44nw4r3snd6detail14ChannelManagerFv
/* 804211CC 003EA78C  7F C4 F3 78 */	mr r4, r30
/* 804211D0 003EA790  7F E5 FB 78 */	mr r5, r31
/* 804211D4 003EA794  4B FF 2C F5 */	bl Setup__Q44nw4r3snd6detail14ChannelManagerFPvUl
/* 804211D8 003EA798  4B FF 85 31 */	bl InitSeqPlayer__Q44nw4r3snd6detail9SeqPlayerFv
/* 804211DC 003EA79C  3C 60 80 64 */	lis r3, lbl_8063BB10@ha
/* 804211E0 003EA7A0  80 9A 00 08 */	lwz r4, 8(r26)
/* 804211E4 003EA7A4  80 DA 00 0C */	lwz r6, 0xc(r26)
/* 804211E8 003EA7A8  7F 65 DB 78 */	mr r5, r27
/* 804211EC 003EA7AC  38 63 BB 10 */	addi r3, r3, lbl_8063BB10@l
/* 804211F0 003EA7B0  48 00 4D D9 */	bl Create__Q44nw4r3snd6detail10TaskThreadFlPvUl
/* 804211F4 003EA7B4  48 00 00 F1 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 804211F8 003EA7B8  80 9A 00 00 */	lwz r4, 0(r26)
/* 804211FC 003EA7BC  7F A5 EB 78 */	mr r5, r29
/* 80421200 003EA7C0  80 DA 00 04 */	lwz r6, 4(r26)
/* 80421204 003EA7C4  48 00 02 15 */	bl Create__Q44nw4r3snd6detail11SoundThreadFlPvUl
lbl_80421208:
/* 80421208 003EA7C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8042120C 003EA7CC  4B E9 8F 91 */	bl _restgpr_26
/* 80421210 003EA7D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421214 003EA7D4  7C 08 03 A6 */	mtlr r0
/* 80421218 003EA7D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8042121C 003EA7DC  4E 80 00 20 */	blr 

.global ShutdownSoundSystem__Q34nw4r3snd11SoundSystemFv
ShutdownSoundSystem__Q34nw4r3snd11SoundSystemFv:
/* 80421220 003EA7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421224 003EA7E4  7C 08 02 A6 */	mflr r0
/* 80421228 003EA7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042122C 003EA7EC  88 0D BC 68 */	lbz r0, lbl_80667DE8@sda21(r13)
/* 80421230 003EA7F0  2C 00 00 00 */	cmpwi r0, 0
/* 80421234 003EA7F4  41 82 00 50 */	beq lbl_80421284
/* 80421238 003EA7F8  48 00 00 AD */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 8042123C 003EA7FC  48 00 03 15 */	bl Shutdown__Q44nw4r3snd6detail11SoundThreadFv
/* 80421240 003EA800  48 00 45 85 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 80421244 003EA804  48 00 4B 49 */	bl CancelAllTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80421248 003EA808  3C 60 80 64 */	lis r3, lbl_8063BB10@ha
/* 8042124C 003EA80C  38 63 BB 10 */	addi r3, r3, lbl_8063BB10@l
/* 80421250 003EA810  48 00 4E 4D */	bl Destroy__Q44nw4r3snd6detail10TaskThreadFv
/* 80421254 003EA814  4B FF 81 01 */	bl GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 80421258 003EA818  4B FF 82 41 */	bl Shutdown__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 8042125C 003EA81C  4B FF 2B 85 */	bl GetInstance__Q44nw4r3snd6detail14ChannelManagerFv
/* 80421260 003EA820  4B FF 2C FD */	bl Shutdown__Q44nw4r3snd6detail14ChannelManagerFv
/* 80421264 003EA824  48 00 79 F5 */	bl GetInstance__Q44nw4r3snd6detail12VoiceManagerFv
/* 80421268 003EA828  48 00 7B A5 */	bl Shutdown__Q44nw4r3snd6detail12VoiceManagerFv
/* 8042126C 003EA82C  4B FE F9 15 */	bl GetInstance__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 80421270 003EA830  4B FE FB 01 */	bl Shutdown__Q44nw4r3snd6detail14AxVoiceManagerFv
/* 80421274 003EA834  4B FE B7 11 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80421278 003EA838  4B FE B9 05 */	bl Shutdown__Q44nw4r3snd6detail9AxManagerFv
/* 8042127C 003EA83C  38 00 00 00 */	li r0, 0
/* 80421280 003EA840  98 0D BC 68 */	stb r0, lbl_80667DE8@sda21(r13)
lbl_80421284:
/* 80421284 003EA844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421288 003EA848  7C 08 03 A6 */	mtlr r0
/* 8042128C 003EA84C  38 21 00 10 */	addi r1, r1, 0x10
/* 80421290 003EA850  4E 80 00 20 */	blr 

.global IsInitializedSoundSystem__Q34nw4r3snd11SoundSystemFv
IsInitializedSoundSystem__Q34nw4r3snd11SoundSystemFv:
/* 80421294 003EA854  88 6D BC 68 */	lbz r3, lbl_80667DE8@sda21(r13)
/* 80421298 003EA858  4E 80 00 20 */	blr


.global sinit_8042129C
sinit_8042129C:
/* 8042129C 003EA85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804212A0 003EA860  7C 08 02 A6 */	mflr r0
/* 804212A4 003EA864  90 01 00 14 */	stw r0, 0x14(r1)
/* 804212A8 003EA868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804212AC 003EA86C  3F E0 80 64 */	lis r31, lbl_8063BB10@ha
/* 804212B0 003EA870  38 7F BB 10 */	addi r3, r31, lbl_8063BB10@l
/* 804212B4 003EA874  48 00 4C 7D */	bl __ct__Q44nw4r3snd6detail10TaskThreadFv
/* 804212B8 003EA878  3C 80 80 42 */	lis r4, __dt__Q44nw4r3snd6detail10TaskThreadFv@ha
/* 804212BC 003EA87C  3C A0 80 64 */	lis r5, lbl_8063BB00@ha
/* 804212C0 003EA880  38 7F BB 10 */	addi r3, r31, lbl_8063BB10@l
/* 804212C4 003EA884  38 84 5F 44 */	addi r4, r4, __dt__Q44nw4r3snd6detail10TaskThreadFv@l
/* 804212C8 003EA888  38 A5 BB 00 */	addi r5, r5, lbl_8063BB00@l
/* 804212CC 003EA88C  4B E9 83 D1 */	bl __register_global_object_tmp
/* 804212D0 003EA890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804212D4 003EA894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804212D8 003EA898  7C 08 03 A6 */	mtlr r0
/* 804212DC 003EA89C  38 21 00 10 */	addi r1, r1, 0x10
/* 804212E0 003EA8A0  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056E510
lbl_8056E510:
	.asciz "<< NW4R    - SND \tfinal   build: Nov 20 2008 03:40:00 (0x4199_60831) >>"