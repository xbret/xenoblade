.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv, global
/* 80415034 003DE5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415038 003DE5F8  7C 08 02 A6 */	mflr r0
/* 8041503C 003DE5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415040 003DE600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415044 003DE604  4B F4 39 6D */	bl OSDisableInterrupts
/* 80415048 003DE608  88 0D BC 40 */	lbz r0, lbl_80667DC0@sda21(r13)
/* 8041504C 003DE60C  7C 7F 1B 78 */	mr r31, r3
/* 80415050 003DE610  7C 00 07 75 */	extsb. r0, r0
/* 80415054 003DE614  40 82 00 44 */	bne .L_80415098
/* 80415058 003DE618  3C C0 80 64 */	lis r6, lbl_8063B1DC@ha
/* 8041505C 003DE61C  38 00 00 00 */	li r0, 0
/* 80415060 003DE620  38 66 B1 DC */	addi r3, r6, lbl_8063B1DC@l
/* 80415064 003DE624  3C 80 80 41 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 80415068 003DE628  90 03 00 04 */	stw r0, 4(r3)
/* 8041506C 003DE62C  38 E3 00 04 */	addi r7, r3, 4
/* 80415070 003DE630  3C A0 80 64 */	lis r5, lbl_8063B1D0@ha
/* 80415074 003DE634  38 84 50 BC */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 80415078 003DE638  90 03 00 08 */	stw r0, 8(r3)
/* 8041507C 003DE63C  38 A5 B1 D0 */	addi r5, r5, lbl_8063B1D0@l
/* 80415080 003DE640  90 06 B1 DC */	stw r0, lbl_8063B1DC@l(r6)
/* 80415084 003DE644  90 E3 00 04 */	stw r7, 4(r3)
/* 80415088 003DE648  90 E3 00 08 */	stw r7, 8(r3)
/* 8041508C 003DE64C  4B EA 46 11 */	bl __register_global_object
/* 80415090 003DE650  38 00 00 01 */	li r0, 1
/* 80415094 003DE654  98 0D BC 40 */	stb r0, lbl_80667DC0@sda21(r13)
.L_80415098:
/* 80415098 003DE658  7F E3 FB 78 */	mr r3, r31
/* 8041509C 003DE65C  4B F4 39 55 */	bl OSRestoreInterrupts
/* 804150A0 003DE660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804150A4 003DE664  3C 60 80 64 */	lis r3, lbl_8063B1DC@ha
/* 804150A8 003DE668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804150AC 003DE66C  38 63 B1 DC */	addi r3, r3, lbl_8063B1DC@l
/* 804150B0 003DE670  7C 08 03 A6 */	mtlr r0
/* 804150B4 003DE674  38 21 00 10 */	addi r1, r1, 0x10
/* 804150B8 003DE678  4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv

.fn __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv, global
/* 804150BC 003DE67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804150C0 003DE680  7C 08 02 A6 */	mflr r0
/* 804150C4 003DE684  2C 03 00 00 */	cmpwi r3, 0
/* 804150C8 003DE688  90 01 00 14 */	stw r0, 0x14(r1)
/* 804150CC 003DE68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804150D0 003DE690  7C 9F 23 78 */	mr r31, r4
/* 804150D4 003DE694  93 C1 00 08 */	stw r30, 8(r1)
/* 804150D8 003DE698  7C 7E 1B 78 */	mr r30, r3
/* 804150DC 003DE69C  41 82 00 20 */	beq .L_804150FC
/* 804150E0 003DE6A0  41 82 00 0C */	beq .L_804150EC
/* 804150E4 003DE6A4  38 80 00 00 */	li r4, 0
/* 804150E8 003DE6A8  48 01 63 29 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
.L_804150EC:
/* 804150EC 003DE6AC  2C 1F 00 00 */	cmpwi r31, 0
/* 804150F0 003DE6B0  40 81 00 0C */	ble .L_804150FC
/* 804150F4 003DE6B4  7F C3 F3 78 */	mr r3, r30
/* 804150F8 003DE6B8  48 01 FB 35 */	bl __dl__FPv
.L_804150FC:
/* 804150FC 003DE6BC  7F C3 F3 78 */	mr r3, r30
/* 80415100 003DE6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415104 003DE6C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415108 003DE6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041510C 003DE6CC  7C 08 03 A6 */	mtlr r0
/* 80415110 003DE6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80415114 003DE6D4  4E 80 00 20 */	blr 
.endfn __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv

.fn RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback, global
/* 80415118 003DE6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041511C 003DE6DC  7C 08 02 A6 */	mflr r0
/* 80415120 003DE6E0  7C 85 23 78 */	mr r5, r4
/* 80415124 003DE6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415128 003DE6E8  38 03 00 04 */	addi r0, r3, 4
/* 8041512C 003DE6EC  38 81 00 08 */	addi r4, r1, 8
/* 80415130 003DE6F0  90 01 00 08 */	stw r0, 8(r1)
/* 80415134 003DE6F4  48 01 63 ED */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80415138 003DE6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041513C 003DE6FC  7C 08 03 A6 */	mtlr r0
/* 80415140 003DE700  38 21 00 10 */	addi r1, r1, 0x10
/* 80415144 003DE704  4E 80 00 20 */	blr 
.endfn RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback

.fn UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback, global
/* 80415148 003DE708  48 01 64 04 */	b Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
.endfn UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback

.fn Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv, global
/* 8041514C 003DE70C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80415150 003DE710  7C 08 02 A6 */	mflr r0
/* 80415154 003DE714  90 01 00 44 */	stw r0, 0x44(r1)
/* 80415158 003DE718  39 61 00 40 */	addi r11, r1, 0x40
/* 8041515C 003DE71C  4B EA 4F E1 */	bl _savegpr_21
/* 80415160 003DE720  7C 9F 23 78 */	mr r31, r4
/* 80415164 003DE724  7F C4 2A 14 */	add r30, r4, r5
/* 80415168 003DE728  48 00 C1 7D */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 8041516C 003DE72C  38 63 03 54 */	addi r3, r3, 0x354
/* 80415170 003DE730  4B F4 4A F1 */	bl OSLockMutex
/* 80415174 003DE734  4B F4 38 3D */	bl OSDisableInterrupts
/* 80415178 003DE738  88 0D BC 40 */	lbz r0, lbl_80667DC0@sda21(r13)
/* 8041517C 003DE73C  7C 7D 1B 78 */	mr r29, r3
/* 80415180 003DE740  7C 00 07 75 */	extsb. r0, r0
/* 80415184 003DE744  40 82 00 44 */	bne .L_804151C8
/* 80415188 003DE748  3C C0 80 64 */	lis r6, lbl_8063B1DC@ha
/* 8041518C 003DE74C  38 00 00 00 */	li r0, 0
/* 80415190 003DE750  38 66 B1 DC */	addi r3, r6, lbl_8063B1DC@l
/* 80415194 003DE754  3C 80 80 41 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 80415198 003DE758  90 03 00 04 */	stw r0, 4(r3)
/* 8041519C 003DE75C  38 E3 00 04 */	addi r7, r3, 4
/* 804151A0 003DE760  3C A0 80 64 */	lis r5, lbl_8063B1D0@ha
/* 804151A4 003DE764  38 84 50 BC */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 804151A8 003DE768  90 03 00 08 */	stw r0, 8(r3)
/* 804151AC 003DE76C  38 A5 B1 D0 */	addi r5, r5, lbl_8063B1D0@l
/* 804151B0 003DE770  90 06 B1 DC */	stw r0, lbl_8063B1DC@l(r6)
/* 804151B4 003DE774  90 E3 00 04 */	stw r7, 4(r3)
/* 804151B8 003DE778  90 E3 00 08 */	stw r7, 8(r3)
/* 804151BC 003DE77C  4B EA 44 E1 */	bl __register_global_object
/* 804151C0 003DE780  38 00 00 01 */	li r0, 1
/* 804151C4 003DE784  98 0D BC 40 */	stb r0, lbl_80667DC0@sda21(r13)
.L_804151C8:
/* 804151C8 003DE788  7F A3 EB 78 */	mr r3, r29
/* 804151CC 003DE78C  4B F4 38 25 */	bl OSRestoreInterrupts
/* 804151D0 003DE790  3E A0 80 64 */	lis r21, lbl_8063B1DC@ha
/* 804151D4 003DE794  3A E0 00 00 */	li r23, 0
/* 804151D8 003DE798  3A D5 B1 DC */	addi r22, r21, lbl_8063B1DC@l
/* 804151DC 003DE79C  3F 00 80 41 */	lis r24, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 804151E0 003DE7A0  83 B6 00 04 */	lwz r29, 4(r22)
/* 804151E4 003DE7A4  3B 76 00 04 */	addi r27, r22, 4
/* 804151E8 003DE7A8  3F 20 80 64 */	lis r25, lbl_8063B1D0@ha
/* 804151EC 003DE7AC  3B 40 00 01 */	li r26, 1
/* 804151F0 003DE7B0  48 00 00 24 */	b .L_80415214
.L_804151F4:
/* 804151F4 003DE7B4  81 9D 00 08 */	lwz r12, 8(r29)
/* 804151F8 003DE7B8  7F A3 EB 78 */	mr r3, r29
/* 804151FC 003DE7BC  7F E4 FB 78 */	mr r4, r31
/* 80415200 003DE7C0  7F C5 F3 78 */	mr r5, r30
/* 80415204 003DE7C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80415208 003DE7C8  83 BD 00 00 */	lwz r29, 0(r29)
/* 8041520C 003DE7CC  7D 89 03 A6 */	mtctr r12
/* 80415210 003DE7D0  4E 80 04 21 */	bctrl 
.L_80415214:
/* 80415214 003DE7D4  4B F4 37 9D */	bl OSDisableInterrupts
/* 80415218 003DE7D8  88 0D BC 40 */	lbz r0, lbl_80667DC0@sda21(r13)
/* 8041521C 003DE7DC  7C 7C 1B 78 */	mr r28, r3
/* 80415220 003DE7E0  7C 00 07 75 */	extsb. r0, r0
/* 80415224 003DE7E4  40 82 00 30 */	bne .L_80415254
/* 80415228 003DE7E8  92 F6 00 04 */	stw r23, 4(r22)
/* 8041522C 003DE7EC  38 D6 00 04 */	addi r6, r22, 4
/* 80415230 003DE7F0  7E C3 B3 78 */	mr r3, r22
/* 80415234 003DE7F4  38 98 50 BC */	addi r4, r24, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 80415238 003DE7F8  92 F6 00 08 */	stw r23, 8(r22)
/* 8041523C 003DE7FC  38 B9 B1 D0 */	addi r5, r25, lbl_8063B1D0@l
/* 80415240 003DE800  92 F5 B1 DC */	stw r23, lbl_8063B1DC@l(r21)
/* 80415244 003DE804  90 D6 00 04 */	stw r6, 4(r22)
/* 80415248 003DE808  90 D6 00 08 */	stw r6, 8(r22)
/* 8041524C 003DE80C  4B EA 44 51 */	bl __register_global_object
/* 80415250 003DE810  9B 4D BC 40 */	stb r26, lbl_80667DC0@sda21(r13)
.L_80415254:
/* 80415254 003DE814  7F 83 E3 78 */	mr r3, r28
/* 80415258 003DE818  4B F4 37 99 */	bl OSRestoreInterrupts
/* 8041525C 003DE81C  7C 1D D8 40 */	cmplw r29, r27
/* 80415260 003DE820  40 82 FF 94 */	bne .L_804151F4
/* 80415264 003DE824  48 00 C0 81 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 80415268 003DE828  38 63 03 54 */	addi r3, r3, 0x354
/* 8041526C 003DE82C  4B F4 4A D5 */	bl OSUnlockMutex
/* 80415270 003DE830  39 61 00 40 */	addi r11, r1, 0x40
/* 80415274 003DE834  4B EA 4F 15 */	bl _restgpr_21
/* 80415278 003DE838  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041527C 003DE83C  7C 08 03 A6 */	mtlr r0
/* 80415280 003DE840  38 21 00 40 */	addi r1, r1, 0x40
/* 80415284 003DE844  4E 80 00 20 */	blr 
.endfn Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv

.fn DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv, global
/* 80415288 003DE848  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041528C 003DE84C  7C 08 02 A6 */	mflr r0
/* 80415290 003DE850  90 01 00 44 */	stw r0, 0x44(r1)
/* 80415294 003DE854  39 61 00 40 */	addi r11, r1, 0x40
/* 80415298 003DE858  4B EA 4E A5 */	bl _savegpr_21
/* 8041529C 003DE85C  7C 9F 23 78 */	mr r31, r4
/* 804152A0 003DE860  7F C4 2A 14 */	add r30, r4, r5
/* 804152A4 003DE864  48 00 C0 41 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 804152A8 003DE868  38 63 03 54 */	addi r3, r3, 0x354
/* 804152AC 003DE86C  4B F4 49 B5 */	bl OSLockMutex
/* 804152B0 003DE870  4B F4 37 01 */	bl OSDisableInterrupts
/* 804152B4 003DE874  88 0D BC 40 */	lbz r0, lbl_80667DC0@sda21(r13)
/* 804152B8 003DE878  7C 7D 1B 78 */	mr r29, r3
/* 804152BC 003DE87C  7C 00 07 75 */	extsb. r0, r0
/* 804152C0 003DE880  40 82 00 44 */	bne .L_80415304
/* 804152C4 003DE884  3C C0 80 64 */	lis r6, lbl_8063B1DC@ha
/* 804152C8 003DE888  38 00 00 00 */	li r0, 0
/* 804152CC 003DE88C  38 66 B1 DC */	addi r3, r6, lbl_8063B1DC@l
/* 804152D0 003DE890  3C 80 80 41 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 804152D4 003DE894  90 03 00 04 */	stw r0, 4(r3)
/* 804152D8 003DE898  38 E3 00 04 */	addi r7, r3, 4
/* 804152DC 003DE89C  3C A0 80 64 */	lis r5, lbl_8063B1D0@ha
/* 804152E0 003DE8A0  38 84 50 BC */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 804152E4 003DE8A4  90 03 00 08 */	stw r0, 8(r3)
/* 804152E8 003DE8A8  38 A5 B1 D0 */	addi r5, r5, lbl_8063B1D0@l
/* 804152EC 003DE8AC  90 06 B1 DC */	stw r0, lbl_8063B1DC@l(r6)
/* 804152F0 003DE8B0  90 E3 00 04 */	stw r7, 4(r3)
/* 804152F4 003DE8B4  90 E3 00 08 */	stw r7, 8(r3)
/* 804152F8 003DE8B8  4B EA 43 A5 */	bl __register_global_object
/* 804152FC 003DE8BC  38 00 00 01 */	li r0, 1
/* 80415300 003DE8C0  98 0D BC 40 */	stb r0, lbl_80667DC0@sda21(r13)
.L_80415304:
/* 80415304 003DE8C4  7F A3 EB 78 */	mr r3, r29
/* 80415308 003DE8C8  4B F4 36 E9 */	bl OSRestoreInterrupts
/* 8041530C 003DE8CC  3E A0 80 64 */	lis r21, lbl_8063B1DC@ha
/* 80415310 003DE8D0  3A E0 00 00 */	li r23, 0
/* 80415314 003DE8D4  3A D5 B1 DC */	addi r22, r21, lbl_8063B1DC@l
/* 80415318 003DE8D8  3F 00 80 41 */	lis r24, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 8041531C 003DE8DC  83 B6 00 04 */	lwz r29, 4(r22)
/* 80415320 003DE8E0  3B 76 00 04 */	addi r27, r22, 4
/* 80415324 003DE8E4  3F 20 80 64 */	lis r25, lbl_8063B1D0@ha
/* 80415328 003DE8E8  3B 40 00 01 */	li r26, 1
/* 8041532C 003DE8EC  48 00 00 24 */	b .L_80415350
.L_80415330:
/* 80415330 003DE8F0  81 9D 00 08 */	lwz r12, 8(r29)
/* 80415334 003DE8F4  7F A3 EB 78 */	mr r3, r29
/* 80415338 003DE8F8  7F E4 FB 78 */	mr r4, r31
/* 8041533C 003DE8FC  7F C5 F3 78 */	mr r5, r30
/* 80415340 003DE900  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80415344 003DE904  83 BD 00 00 */	lwz r29, 0(r29)
/* 80415348 003DE908  7D 89 03 A6 */	mtctr r12
/* 8041534C 003DE90C  4E 80 04 21 */	bctrl 
.L_80415350:
/* 80415350 003DE910  4B F4 36 61 */	bl OSDisableInterrupts
/* 80415354 003DE914  88 0D BC 40 */	lbz r0, lbl_80667DC0@sda21(r13)
/* 80415358 003DE918  7C 7C 1B 78 */	mr r28, r3
/* 8041535C 003DE91C  7C 00 07 75 */	extsb. r0, r0
/* 80415360 003DE920  40 82 00 30 */	bne .L_80415390
/* 80415364 003DE924  92 F6 00 04 */	stw r23, 4(r22)
/* 80415368 003DE928  38 D6 00 04 */	addi r6, r22, 4
/* 8041536C 003DE92C  7E C3 B3 78 */	mr r3, r22
/* 80415370 003DE930  38 98 50 BC */	addi r4, r24, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 80415374 003DE934  92 F6 00 08 */	stw r23, 8(r22)
/* 80415378 003DE938  38 B9 B1 D0 */	addi r5, r25, lbl_8063B1D0@l
/* 8041537C 003DE93C  92 F5 B1 DC */	stw r23, lbl_8063B1DC@l(r21)
/* 80415380 003DE940  90 D6 00 04 */	stw r6, 4(r22)
/* 80415384 003DE944  90 D6 00 08 */	stw r6, 8(r22)
/* 80415388 003DE948  4B EA 43 15 */	bl __register_global_object
/* 8041538C 003DE94C  9B 4D BC 40 */	stb r26, lbl_80667DC0@sda21(r13)
.L_80415390:
/* 80415390 003DE950  7F 83 E3 78 */	mr r3, r28
/* 80415394 003DE954  4B F4 36 5D */	bl OSRestoreInterrupts
/* 80415398 003DE958  7C 1D D8 40 */	cmplw r29, r27
/* 8041539C 003DE95C  40 82 FF 94 */	bne .L_80415330
/* 804153A0 003DE960  48 00 BF 45 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 804153A4 003DE964  38 63 03 54 */	addi r3, r3, 0x354
/* 804153A8 003DE968  4B F4 49 99 */	bl OSUnlockMutex
/* 804153AC 003DE96C  39 61 00 40 */	addi r11, r1, 0x40
/* 804153B0 003DE970  4B EA 4D D9 */	bl _restgpr_21
/* 804153B4 003DE974  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804153B8 003DE978  7C 08 03 A6 */	mtlr r0
/* 804153BC 003DE97C  38 21 00 40 */	addi r1, r1, 0x40
/* 804153C0 003DE980  4E 80 00 20 */	blr 
.endfn DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_8063B1D0
lbl_8063B1D0:
	.skip 0xC

#@LOCAL@GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv@instance
.global lbl_8063B1DC
lbl_8063B1DC:
	.skip 0xC

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

#@GUARD@GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv@instance
.global lbl_80667DC0
lbl_80667DC0:
	.skip 0x8