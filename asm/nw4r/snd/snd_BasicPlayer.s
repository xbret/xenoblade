.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4r::snd::detail::PlayerParamSet::Init()
.fn Init__Q44nw4r3snd6detail14PlayerParamSetFv, global
/* 804120AC 003DB66C  C0 02 C3 64 */	lfs f0, lbl_8066C6E4@sda21(r2)
/* 804120B0 003DB670  38 80 00 00 */	li r4, 0x0
/* 804120B4 003DB674  C0 22 C3 60 */	lfs f1, lbl_8066C6E0@sda21(r2)
/* 804120B8 003DB678  38 00 00 01 */	li r0, 0x1
/* 804120BC 003DB67C  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 804120C0 003DB680  D0 23 00 00 */	stfs f1, 0x0(r3)
/* 804120C4 003DB684  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 804120C8 003DB688  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804120CC 003DB68C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804120D0 003DB690  98 83 00 18 */	stb r4, 0x18(r3)
/* 804120D4 003DB694  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 804120D8 003DB698  98 83 00 19 */	stb r4, 0x19(r3)
/* 804120DC 003DB69C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 804120E0 003DB6A0  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 804120E4 003DB6A4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 804120E8 003DB6A8  90 83 00 28 */	stw r4, 0x28(r3)
/* 804120EC 003DB6AC  90 83 00 2C */	stw r4, 0x2c(r3)
/* 804120F0 003DB6B0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 804120F4 003DB6B4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 804120F8 003DB6B8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804120FC 003DB6BC  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 80412100 003DB6C0  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 80412104 003DB6C4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80412108 003DB6C8  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8041210C 003DB6CC  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80412110 003DB6D0  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 80412114 003DB6D4  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 80412118 003DB6D8  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 8041211C 003DB6DC  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 80412120 003DB6E0  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 80412124 003DB6E4  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80412128 003DB6E8  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 8041212C 003DB6EC  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 80412130 003DB6F0  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 80412134 003DB6F4  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80412138 003DB6F8  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 8041213C 003DB6FC  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 80412140 003DB700  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80412144 003DB704  D0 23 00 84 */	stfs f1, 0x84(r3)
/* 80412148 003DB708  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 8041214C 003DB70C  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80412150 003DB710  D0 03 00 90 */	stfs f0, 0x90(r3)
/* 80412154 003DB714  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 80412158 003DB718  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 8041215C 003DB71C  D0 23 00 9C */	stfs f1, 0x9c(r3)
/* 80412160 003DB720  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 80412164 003DB724  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80412168 003DB728  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 8041216C 003DB72C  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 80412170 003DB730  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80412174 003DB734  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80412178 003DB738  D0 23 00 B8 */	stfs f1, 0xb8(r3)
/* 8041217C 003DB73C  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80412180 003DB740  D0 03 00 C0 */	stfs f0, 0xc0(r3)
/* 80412184 003DB744  D0 03 00 C4 */	stfs f0, 0xc4(r3)
/* 80412188 003DB748  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 8041218C 003DB74C  4E 80 00 20 */	blr
.endfn Init__Q44nw4r3snd6detail14PlayerParamSetFv

# nw4r::snd::detail::BasicPlayer::BasicPlayer()
.fn __ct__Q44nw4r3snd6detail11BasicPlayerFv, global
/* 80412190 003DB750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80412194 003DB754  7C 08 02 A6 */	mflr r0
/* 80412198 003DB758  3C 80 80 57 */	lis r4, lbl_8056DFC8@ha
/* 8041219C 003DB75C  C0 02 C3 64 */	lfs f0, lbl_8066C6E4@sda21(r2)
/* 804121A0 003DB760  90 01 00 14 */	stw r0, 0x14(r1)
/* 804121A4 003DB764  38 C3 00 88 */	addi r6, r3, 0x88
/* 804121A8 003DB768  38 A3 00 D0 */	addi r5, r3, 0xd0
/* 804121AC 003DB76C  C0 22 C3 60 */	lfs f1, lbl_8066C6E0@sda21(r2)
/* 804121B0 003DB770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804121B4 003DB774  38 84 DF C8 */	addi r4, r4, lbl_8056DFC8@l
/* 804121B8 003DB778  7C 06 28 40 */	cmplw r6, r5
/* 804121BC 003DB77C  7C 7F 1B 78 */	mr r31, r3
/* 804121C0 003DB780  90 83 00 00 */	stw r4, 0x0(r3)
/* 804121C4 003DB784  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 804121C8 003DB788  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 804121CC 003DB78C  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 804121D0 003DB790  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 804121D4 003DB794  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 804121D8 003DB798  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 804121DC 003DB79C  40 80 01 D8 */	bge .L_804123B4
/* 804121E0 003DB7A0  39 03 00 88 */	addi r8, r3, 0x88
/* 804121E4 003DB7A4  3C 80 2A AB */	lis r4, 0x2aab
/* 804121E8 003DB7A8  7D 28 28 50 */	subf r9, r8, r5
/* 804121EC 003DB7AC  38 E3 00 10 */	addi r7, r3, 0x10
/* 804121F0 003DB7B0  39 49 00 17 */	addi r10, r9, 0x17
/* 804121F4 003DB7B4  38 04 AA AB */	addi r0, r4, -0x5555
/* 804121F8 003DB7B8  7C 00 50 96 */	mulhw r0, r0, r10
/* 804121FC 003DB7BC  7C 00 16 70 */	srawi r0, r0, 2
/* 80412200 003DB7C0  54 04 0F FE */	srwi r4, r0, 31
/* 80412204 003DB7C4  7D 60 22 14 */	add r11, r0, r4
/* 80412208 003DB7C8  39 8B 00 01 */	addi r12, r11, 0x1
/* 8041220C 003DB7CC  2C 0C 00 08 */	cmpwi r12, 0x8
/* 80412210 003DB7D0  40 81 01 5C */	ble .L_8041236C
/* 80412214 003DB7D4  7C 08 28 40 */	cmplw r8, r5
/* 80412218 003DB7D8  38 80 00 00 */	li r4, 0x0
/* 8041221C 003DB7DC  38 A0 00 00 */	li r5, 0x0
/* 80412220 003DB7E0  41 81 00 28 */	bgt .L_80412248
/* 80412224 003DB7E4  55 20 00 01 */	clrrwi. r0, r9, 31
/* 80412228 003DB7E8  39 00 00 01 */	li r8, 0x1
/* 8041222C 003DB7EC  40 82 00 10 */	bne .L_8041223C
/* 80412230 003DB7F0  55 40 00 01 */	clrrwi. r0, r10, 31
/* 80412234 003DB7F4  41 82 00 08 */	beq .L_8041223C
/* 80412238 003DB7F8  39 00 00 00 */	li r8, 0x0
.L_8041223C:
/* 8041223C 003DB7FC  2C 08 00 00 */	cmpwi r8, 0x0
/* 80412240 003DB800  41 82 00 08 */	beq .L_80412248
/* 80412244 003DB804  38 A0 00 01 */	li r5, 0x1
.L_80412248:
/* 80412248 003DB808  2C 05 00 00 */	cmpwi r5, 0x0
/* 8041224C 003DB80C  41 82 00 2C */	beq .L_80412278
/* 80412250 003DB810  55 68 00 01 */	clrrwi. r8, r11, 31
/* 80412254 003DB814  38 A0 00 01 */	li r5, 0x1
/* 80412258 003DB818  40 82 00 14 */	bne .L_8041226C
/* 8041225C 003DB81C  55 80 00 00 */	clrrwi r0, r12, 31
/* 80412260 003DB820  7C 08 00 00 */	cmpw r8, r0
/* 80412264 003DB824  41 82 00 08 */	beq .L_8041226C
/* 80412268 003DB828  38 A0 00 00 */	li r5, 0x0
.L_8041226C:
/* 8041226C 003DB82C  2C 05 00 00 */	cmpwi r5, 0x0
/* 80412270 003DB830  41 82 00 08 */	beq .L_80412278
/* 80412274 003DB834  38 80 00 01 */	li r4, 0x1
.L_80412278:
/* 80412278 003DB838  2C 04 00 00 */	cmpwi r4, 0x0
/* 8041227C 003DB83C  41 82 00 F0 */	beq .L_8041236C
/* 80412280 003DB840  38 87 00 BF */	addi r4, r7, 0xbf
/* 80412284 003DB844  38 00 00 C0 */	li r0, 0xc0
/* 80412288 003DB848  7C 86 20 50 */	subf r4, r6, r4
/* 8041228C 003DB84C  C0 22 C3 60 */	lfs f1, lbl_8066C6E0@sda21(r2)
/* 80412290 003DB850  7C 84 03 96 */	divwu r4, r4, r0
/* 80412294 003DB854  C0 02 C3 64 */	lfs f0, lbl_8066C6E4@sda21(r2)
/* 80412298 003DB858  7C 89 03 A6 */	mtctr r4
/* 8041229C 003DB85C  7C 06 38 40 */	cmplw r6, r7
/* 804122A0 003DB860  40 80 00 CC */	bge .L_8041236C
.L_804122A4:
/* 804122A4 003DB864  D0 26 00 00 */	stfs f1, 0x0(r6)
/* 804122A8 003DB868  D0 26 00 04 */	stfs f1, 0x4(r6)
/* 804122AC 003DB86C  D0 06 00 08 */	stfs f0, 0x8(r6)
/* 804122B0 003DB870  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 804122B4 003DB874  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 804122B8 003DB878  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 804122BC 003DB87C  D0 26 00 18 */	stfs f1, 0x18(r6)
/* 804122C0 003DB880  D0 26 00 1C */	stfs f1, 0x1c(r6)
/* 804122C4 003DB884  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 804122C8 003DB888  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 804122CC 003DB88C  D0 06 00 28 */	stfs f0, 0x28(r6)
/* 804122D0 003DB890  D0 06 00 2C */	stfs f0, 0x2c(r6)
/* 804122D4 003DB894  D0 26 00 30 */	stfs f1, 0x30(r6)
/* 804122D8 003DB898  D0 26 00 34 */	stfs f1, 0x34(r6)
/* 804122DC 003DB89C  D0 06 00 38 */	stfs f0, 0x38(r6)
/* 804122E0 003DB8A0  D0 06 00 3C */	stfs f0, 0x3c(r6)
/* 804122E4 003DB8A4  D0 06 00 40 */	stfs f0, 0x40(r6)
/* 804122E8 003DB8A8  D0 06 00 44 */	stfs f0, 0x44(r6)
/* 804122EC 003DB8AC  D0 26 00 48 */	stfs f1, 0x48(r6)
/* 804122F0 003DB8B0  D0 26 00 4C */	stfs f1, 0x4c(r6)
/* 804122F4 003DB8B4  D0 06 00 50 */	stfs f0, 0x50(r6)
/* 804122F8 003DB8B8  D0 06 00 54 */	stfs f0, 0x54(r6)
/* 804122FC 003DB8BC  D0 06 00 58 */	stfs f0, 0x58(r6)
/* 80412300 003DB8C0  D0 06 00 5C */	stfs f0, 0x5c(r6)
/* 80412304 003DB8C4  D0 26 00 60 */	stfs f1, 0x60(r6)
/* 80412308 003DB8C8  D0 26 00 64 */	stfs f1, 0x64(r6)
/* 8041230C 003DB8CC  D0 06 00 68 */	stfs f0, 0x68(r6)
/* 80412310 003DB8D0  D0 06 00 6C */	stfs f0, 0x6c(r6)
/* 80412314 003DB8D4  D0 06 00 70 */	stfs f0, 0x70(r6)
/* 80412318 003DB8D8  D0 06 00 74 */	stfs f0, 0x74(r6)
/* 8041231C 003DB8DC  D0 26 00 78 */	stfs f1, 0x78(r6)
/* 80412320 003DB8E0  D0 26 00 7C */	stfs f1, 0x7c(r6)
/* 80412324 003DB8E4  D0 06 00 80 */	stfs f0, 0x80(r6)
/* 80412328 003DB8E8  D0 06 00 84 */	stfs f0, 0x84(r6)
/* 8041232C 003DB8EC  D0 06 00 88 */	stfs f0, 0x88(r6)
/* 80412330 003DB8F0  D0 06 00 8C */	stfs f0, 0x8c(r6)
/* 80412334 003DB8F4  D0 26 00 90 */	stfs f1, 0x90(r6)
/* 80412338 003DB8F8  D0 26 00 94 */	stfs f1, 0x94(r6)
/* 8041233C 003DB8FC  D0 06 00 98 */	stfs f0, 0x98(r6)
/* 80412340 003DB900  D0 06 00 9C */	stfs f0, 0x9c(r6)
/* 80412344 003DB904  D0 06 00 A0 */	stfs f0, 0xa0(r6)
/* 80412348 003DB908  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 8041234C 003DB90C  D0 26 00 A8 */	stfs f1, 0xa8(r6)
/* 80412350 003DB910  D0 26 00 AC */	stfs f1, 0xac(r6)
/* 80412354 003DB914  D0 06 00 B0 */	stfs f0, 0xb0(r6)
/* 80412358 003DB918  D0 06 00 B4 */	stfs f0, 0xb4(r6)
/* 8041235C 003DB91C  D0 06 00 B8 */	stfs f0, 0xb8(r6)
/* 80412360 003DB920  D0 06 00 BC */	stfs f0, 0xbc(r6)
/* 80412364 003DB924  38 C6 00 C0 */	addi r6, r6, 0xc0
/* 80412368 003DB928  42 00 FF 3C */	bdnz .L_804122A4
.L_8041236C:
/* 8041236C 003DB92C  38 A3 00 D0 */	addi r5, r3, 0xd0
/* 80412370 003DB930  38 00 00 18 */	li r0, 0x18
/* 80412374 003DB934  38 85 00 17 */	addi r4, r5, 0x17
/* 80412378 003DB938  C0 22 C3 60 */	lfs f1, lbl_8066C6E0@sda21(r2)
/* 8041237C 003DB93C  7C 86 20 50 */	subf r4, r6, r4
/* 80412380 003DB940  C0 02 C3 64 */	lfs f0, lbl_8066C6E4@sda21(r2)
/* 80412384 003DB944  7C 84 03 96 */	divwu r4, r4, r0
/* 80412388 003DB948  7C 89 03 A6 */	mtctr r4
/* 8041238C 003DB94C  7C 06 28 40 */	cmplw r6, r5
/* 80412390 003DB950  40 80 00 24 */	bge .L_804123B4
.L_80412394:
/* 80412394 003DB954  D0 26 00 00 */	stfs f1, 0x0(r6)
/* 80412398 003DB958  D0 26 00 04 */	stfs f1, 0x4(r6)
/* 8041239C 003DB95C  D0 06 00 08 */	stfs f0, 0x8(r6)
/* 804123A0 003DB960  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 804123A4 003DB964  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 804123A8 003DB968  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 804123AC 003DB96C  38 C6 00 18 */	addi r6, r6, 0x18
/* 804123B0 003DB970  42 00 FF E4 */	bdnz .L_80412394
.L_804123B4:
/* 804123B4 003DB974  38 63 00 04 */	addi r3, r3, 0x4
/* 804123B8 003DB978  4B FF FC F5 */	bl Init__Q44nw4r3snd6detail14PlayerParamSetFv
/* 804123BC 003DB97C  38 00 FF FF */	li r0, -0x1
/* 804123C0 003DB980  38 7F 00 04 */	addi r3, r31, 0x4
/* 804123C4 003DB984  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 804123C8 003DB988  4B FF FC E5 */	bl Init__Q44nw4r3snd6detail14PlayerParamSetFv
/* 804123CC 003DB98C  7F E3 FB 78 */	mr r3, r31
/* 804123D0 003DB990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804123D4 003DB994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804123D8 003DB998  7C 08 03 A6 */	mtlr r0
/* 804123DC 003DB99C  38 21 00 10 */	addi r1, r1, 0x10
/* 804123E0 003DB9A0  4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail11BasicPlayerFv

# nw4r::snd::detail::BasicPlayer::InitParam()
.fn InitParam__Q44nw4r3snd6detail11BasicPlayerFv, global
/* 804123E4 003DB9A4  38 63 00 04 */	addi r3, r3, 0x4
/* 804123E8 003DB9A8  4B FF FC C4 */	b Init__Q44nw4r3snd6detail14PlayerParamSetFv
.endfn InitParam__Q44nw4r3snd6detail11BasicPlayerFv

# nw4r::snd::detail::BasicPlayer::SetFxSend(nw4r::snd::AuxBus, float)
.fn SetFxSend__Q44nw4r3snd6detail11BasicPlayerFQ34nw4r3snd6AuxBusf, global
/* 804123EC 003DB9AC  54 80 10 3A */	slwi r0, r4, 2
/* 804123F0 003DB9B0  7C 63 02 14 */	add r3, r3, r0
/* 804123F4 003DB9B4  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 804123F8 003DB9B8  4E 80 00 20 */	blr
.endfn SetFxSend__Q44nw4r3snd6detail11BasicPlayerFQ34nw4r3snd6AuxBusf

# nw4r::snd::detail::BasicPlayer::GetFxSend(nw4r::snd::AuxBus) const
.fn GetFxSend__Q44nw4r3snd6detail11BasicPlayerCFQ34nw4r3snd6AuxBus, global
/* 804123FC 003DB9BC  54 80 10 3A */	slwi r0, r4, 2
/* 80412400 003DB9C0  7C 63 02 14 */	add r3, r3, r0
/* 80412404 003DB9C4  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80412408 003DB9C8  4E 80 00 20 */	blr
.endfn GetFxSend__Q44nw4r3snd6detail11BasicPlayerCFQ34nw4r3snd6AuxBus

# nw4r::snd::detail::BasicPlayer::SetBiquadFilter(int, float)
.fn SetBiquadFilter__Q44nw4r3snd6detail11BasicPlayerFif, global
/* 8041240C 003DB9CC  98 83 00 1C */	stb r4, 0x1c(r3)
/* 80412410 003DB9D0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80412414 003DB9D4  4E 80 00 20 */	blr
.endfn SetBiquadFilter__Q44nw4r3snd6detail11BasicPlayerFif

# nw4r::snd::detail::BasicPlayer::SetRemoteFilter(int)
.fn SetRemoteFilter__Q44nw4r3snd6detail11BasicPlayerFi, global
/* 80412418 003DB9D8  98 83 00 1D */	stb r4, 0x1d(r3)
/* 8041241C 003DB9DC  4E 80 00 20 */	blr
.endfn SetRemoteFilter__Q44nw4r3snd6detail11BasicPlayerFi

# nw4r::snd::detail::BasicPlayer::SetRemoteOutVolume(int, float)
.fn SetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerFif, global
/* 80412420 003DB9E0  54 80 10 3A */	slwi r0, r4, 2
/* 80412424 003DB9E4  7C 63 02 14 */	add r3, r3, r0
/* 80412428 003DB9E8  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8041242C 003DB9EC  4E 80 00 20 */	blr
.endfn SetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerFif

# nw4r::snd::detail::BasicPlayer::GetRemoteOutVolume(int) const
.fn GetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerCFi, global
/* 80412430 003DB9F0  54 80 10 3A */	slwi r0, r4, 2
/* 80412434 003DB9F4  7C 63 02 14 */	add r3, r3, r0
/* 80412438 003DB9F8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8041243C 003DB9FC  4E 80 00 20 */	blr
.endfn GetRemoteOutVolume__Q44nw4r3snd6detail11BasicPlayerCFi

# nw4r::snd::detail::BasicPlayer::GetRemoteSend(int) const
.fn GetRemoteSend__Q44nw4r3snd6detail11BasicPlayerCFi, global
/* 80412440 003DBA00  54 80 10 3A */	slwi r0, r4, 2
/* 80412444 003DBA04  7C 63 02 14 */	add r3, r3, r0
/* 80412448 003DBA08  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8041244C 003DBA0C  4E 80 00 20 */	blr
.endfn GetRemoteSend__Q44nw4r3snd6detail11BasicPlayerCFi

# nw4r::snd::detail::BasicPlayer::GetRemoteFxSend(int) const
.fn GetRemoteFxSend__Q44nw4r3snd6detail11BasicPlayerCFi, global
/* 80412450 003DBA10  54 80 10 3A */	slwi r0, r4, 2
/* 80412454 003DBA14  7C 63 02 14 */	add r3, r3, r0
/* 80412458 003DBA18  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 8041245C 003DBA1C  4E 80 00 20 */	blr
.endfn GetRemoteFxSend__Q44nw4r3snd6detail11BasicPlayerCFi

# nw4r::snd::detail::BasicPlayer::~BasicPlayer()
.fn __dt__Q44nw4r3snd6detail11BasicPlayerFv, global
/* 80412460 003DBA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80412464 003DBA24  7C 08 02 A6 */	mflr r0
/* 80412468 003DBA28  2C 03 00 00 */	cmpwi r3, 0x0
/* 8041246C 003DBA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80412470 003DBA30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80412474 003DBA34  7C 7F 1B 78 */	mr r31, r3
/* 80412478 003DBA38  41 82 00 10 */	beq .L_80412488
/* 8041247C 003DBA3C  2C 04 00 00 */	cmpwi r4, 0x0
/* 80412480 003DBA40  40 81 00 08 */	ble .L_80412488
/* 80412484 003DBA44  48 02 27 A9 */	bl __dl__FPv
.L_80412488:
/* 80412488 003DBA48  7F E3 FB 78 */	mr r3, r31
/* 8041248C 003DBA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80412490 003DBA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80412494 003DBA54  7C 08 03 A6 */	mtlr r0
/* 80412498 003DBA58  38 21 00 10 */	addi r1, r1, 0x10
/* 8041249C 003DBA5C  4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail11BasicPlayerFv

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_8066C6E0
lbl_8066C6E0:
	.4byte 0x3F800000
.global lbl_8066C6E4
lbl_8066C6E4:
	.4byte 0x00000000
