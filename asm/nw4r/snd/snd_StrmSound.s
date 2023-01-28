.include "macros.inc"
.file "nw4r/snd/snd_StrmSound.o"

# 0x80424FBC - 0x8042574C
.text
.balign 4

# nw4r::snd::detail::StrmSound::StrmSound(nw4r::snd::detail::SoundInstanceManager_Q44nw4r3snd6detail9StrmSound_*, int, int)
.fn __ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager_Q44nw4r3snd6detail9StrmSound_ii, global
/* 80424FBC 003EE57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424FC0 003EE580  7C 08 02 A6 */	mflr r0
/* 80424FC4 003EE584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424FC8 003EE588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424FCC 003EE58C  7C 7F 1B 78 */	mr r31, r3
/* 80424FD0 003EE590  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80424FD4 003EE594  7C 9E 23 78 */	mr r30, r4
/* 80424FD8 003EE598  7C A4 2B 78 */	mr r4, r5
/* 80424FDC 003EE59C  7C C5 33 78 */	mr r5, r6
/* 80424FE0 003EE5A0  4B FE D4 C1 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFii
/* 80424FE4 003EE5A4  3C 80 80 57 */	lis r4, lbl_8056E5D0@ha
/* 80424FE8 003EE5A8  38 7F 01 0C */	addi r3, r31, 0x10c
/* 80424FEC 003EE5AC  38 84 E5 D0 */	addi r4, r4, lbl_8056E5D0@l
/* 80424FF0 003EE5B0  90 9F 00 00 */	stw r4, 0x0(r31)
/* 80424FF4 003EE5B4  4B FF D5 A5 */	bl __ct__Q44nw4r3snd6detail10StrmPlayerFv
/* 80424FF8 003EE5B8  C0 02 C5 08 */	lfs f0, lbl_8066C888@sda21(r2)
/* 80424FFC 003EE5BC  38 BF 0E 5C */	addi r5, r31, 0xe5c
/* 80425000 003EE5C0  38 00 00 00 */	li r0, 0x0
/* 80425004 003EE5C4  38 7F 0E CC */	addi r3, r31, 0xecc
/* 80425008 003EE5C8  7C 05 18 40 */	cmplw r5, r3
/* 8042500C 003EE5CC  90 1F 0E 44 */	stw r0, 0xe44(r31)
/* 80425010 003EE5D0  93 DF 0E 48 */	stw r30, 0xe48(r31)
/* 80425014 003EE5D4  D0 1F 0E 4C */	stfs f0, 0xe4c(r31)
/* 80425018 003EE5D8  D0 1F 0E 50 */	stfs f0, 0xe50(r31)
/* 8042501C 003EE5DC  90 1F 0E 54 */	stw r0, 0xe54(r31)
/* 80425020 003EE5E0  90 1F 0E 58 */	stw r0, 0xe58(r31)
/* 80425024 003EE5E4  40 80 01 78 */	bge .L_8042519C
/* 80425028 003EE5E8  38 DF 0E 5C */	addi r6, r31, 0xe5c
/* 8042502C 003EE5EC  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80425030 003EE5F0  7C E6 18 50 */	subf r7, r6, r3
/* 80425034 003EE5F4  39 07 00 0F */	addi r8, r7, 0xf
/* 80425038 003EE5F8  7D 00 26 70 */	srawi r0, r8, 4
/* 8042503C 003EE5FC  7D 20 01 94 */	addze r9, r0
/* 80425040 003EE600  39 49 00 01 */	addi r10, r9, 0x1
/* 80425044 003EE604  2C 0A 00 08 */	cmpwi r10, 0x8
/* 80425048 003EE608  40 81 01 18 */	ble .L_80425160
/* 8042504C 003EE60C  7C 06 18 40 */	cmplw r6, r3
/* 80425050 003EE610  38 60 00 00 */	li r3, 0x0
/* 80425054 003EE614  38 C0 00 00 */	li r6, 0x0
/* 80425058 003EE618  41 81 00 28 */	bgt .L_80425080
/* 8042505C 003EE61C  54 E0 00 01 */	clrrwi. r0, r7, 31
/* 80425060 003EE620  38 E0 00 01 */	li r7, 0x1
/* 80425064 003EE624  40 82 00 10 */	bne .L_80425074
/* 80425068 003EE628  55 00 00 01 */	clrrwi. r0, r8, 31
/* 8042506C 003EE62C  41 82 00 08 */	beq .L_80425074
/* 80425070 003EE630  38 E0 00 00 */	li r7, 0x0
.L_80425074:
/* 80425074 003EE634  2C 07 00 00 */	cmpwi r7, 0x0
/* 80425078 003EE638  41 82 00 08 */	beq .L_80425080
/* 8042507C 003EE63C  38 C0 00 01 */	li r6, 0x1
.L_80425080:
/* 80425080 003EE640  2C 06 00 00 */	cmpwi r6, 0x0
/* 80425084 003EE644  41 82 00 2C */	beq .L_804250B0
/* 80425088 003EE648  55 27 00 01 */	clrrwi. r7, r9, 31
/* 8042508C 003EE64C  38 C0 00 01 */	li r6, 0x1
/* 80425090 003EE650  40 82 00 14 */	bne .L_804250A4
/* 80425094 003EE654  55 40 00 00 */	clrrwi r0, r10, 31
/* 80425098 003EE658  7C 07 00 00 */	cmpw r7, r0
/* 8042509C 003EE65C  41 82 00 08 */	beq .L_804250A4
/* 804250A0 003EE660  38 C0 00 00 */	li r6, 0x0
.L_804250A4:
/* 804250A4 003EE664  2C 06 00 00 */	cmpwi r6, 0x0
/* 804250A8 003EE668  41 82 00 08 */	beq .L_804250B0
/* 804250AC 003EE66C  38 60 00 01 */	li r3, 0x1
.L_804250B0:
/* 804250B0 003EE670  2C 03 00 00 */	cmpwi r3, 0x0
/* 804250B4 003EE674  41 82 00 AC */	beq .L_80425160
/* 804250B8 003EE678  38 04 00 7F */	addi r0, r4, 0x7f
/* 804250BC 003EE67C  C0 02 C5 08 */	lfs f0, lbl_8066C888@sda21(r2)
/* 804250C0 003EE680  7C 05 00 50 */	subf r0, r5, r0
/* 804250C4 003EE684  38 60 00 00 */	li r3, 0x0
/* 804250C8 003EE688  54 00 C9 FE */	srwi r0, r0, 7
/* 804250CC 003EE68C  7C 09 03 A6 */	mtctr r0
/* 804250D0 003EE690  7C 05 20 40 */	cmplw r5, r4
/* 804250D4 003EE694  40 80 00 8C */	bge .L_80425160
.L_804250D8:
/* 804250D8 003EE698  D0 05 00 00 */	stfs f0, 0x0(r5)
/* 804250DC 003EE69C  D0 05 00 04 */	stfs f0, 0x4(r5)
/* 804250E0 003EE6A0  90 65 00 08 */	stw r3, 0x8(r5)
/* 804250E4 003EE6A4  90 65 00 0C */	stw r3, 0xc(r5)
/* 804250E8 003EE6A8  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 804250EC 003EE6AC  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 804250F0 003EE6B0  90 65 00 18 */	stw r3, 0x18(r5)
/* 804250F4 003EE6B4  90 65 00 1C */	stw r3, 0x1c(r5)
/* 804250F8 003EE6B8  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 804250FC 003EE6BC  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80425100 003EE6C0  90 65 00 28 */	stw r3, 0x28(r5)
/* 80425104 003EE6C4  90 65 00 2C */	stw r3, 0x2c(r5)
/* 80425108 003EE6C8  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 8042510C 003EE6CC  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 80425110 003EE6D0  90 65 00 38 */	stw r3, 0x38(r5)
/* 80425114 003EE6D4  90 65 00 3C */	stw r3, 0x3c(r5)
/* 80425118 003EE6D8  D0 05 00 40 */	stfs f0, 0x40(r5)
/* 8042511C 003EE6DC  D0 05 00 44 */	stfs f0, 0x44(r5)
/* 80425120 003EE6E0  90 65 00 48 */	stw r3, 0x48(r5)
/* 80425124 003EE6E4  90 65 00 4C */	stw r3, 0x4c(r5)
/* 80425128 003EE6E8  D0 05 00 50 */	stfs f0, 0x50(r5)
/* 8042512C 003EE6EC  D0 05 00 54 */	stfs f0, 0x54(r5)
/* 80425130 003EE6F0  90 65 00 58 */	stw r3, 0x58(r5)
/* 80425134 003EE6F4  90 65 00 5C */	stw r3, 0x5c(r5)
/* 80425138 003EE6F8  D0 05 00 60 */	stfs f0, 0x60(r5)
/* 8042513C 003EE6FC  D0 05 00 64 */	stfs f0, 0x64(r5)
/* 80425140 003EE700  90 65 00 68 */	stw r3, 0x68(r5)
/* 80425144 003EE704  90 65 00 6C */	stw r3, 0x6c(r5)
/* 80425148 003EE708  D0 05 00 70 */	stfs f0, 0x70(r5)
/* 8042514C 003EE70C  D0 05 00 74 */	stfs f0, 0x74(r5)
/* 80425150 003EE710  90 65 00 78 */	stw r3, 0x78(r5)
/* 80425154 003EE714  90 65 00 7C */	stw r3, 0x7c(r5)
/* 80425158 003EE718  38 A5 00 80 */	addi r5, r5, 0x80
/* 8042515C 003EE71C  42 00 FF 7C */	bdnz .L_804250D8
.L_80425160:
/* 80425160 003EE720  38 7F 0E CC */	addi r3, r31, 0xecc
/* 80425164 003EE724  C0 02 C5 08 */	lfs f0, lbl_8066C888@sda21(r2)
/* 80425168 003EE728  38 03 00 0F */	addi r0, r3, 0xf
/* 8042516C 003EE72C  38 80 00 00 */	li r4, 0x0
/* 80425170 003EE730  7C 05 00 50 */	subf r0, r5, r0
/* 80425174 003EE734  54 00 E1 3E */	srwi r0, r0, 4
/* 80425178 003EE738  7C 09 03 A6 */	mtctr r0
/* 8042517C 003EE73C  7C 05 18 40 */	cmplw r5, r3
/* 80425180 003EE740  40 80 00 1C */	bge .L_8042519C
.L_80425184:
/* 80425184 003EE744  D0 05 00 00 */	stfs f0, 0x0(r5)
/* 80425188 003EE748  D0 05 00 04 */	stfs f0, 0x4(r5)
/* 8042518C 003EE74C  90 85 00 08 */	stw r4, 0x8(r5)
/* 80425190 003EE750  90 85 00 0C */	stw r4, 0xc(r5)
/* 80425194 003EE754  38 A5 00 10 */	addi r5, r5, 0x10
/* 80425198 003EE758  42 00 FF EC */	bdnz .L_80425184
.L_8042519C:
/* 8042519C 003EE75C  7F E3 FB 78 */	mr r3, r31
/* 804251A0 003EE760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804251A4 003EE764  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 804251A8 003EE768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804251AC 003EE76C  7C 08 03 A6 */	mtlr r0
/* 804251B0 003EE770  38 21 00 10 */	addi r1, r1, 0x10
/* 804251B4 003EE774  4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager_Q44nw4r3snd6detail9StrmSound_ii

# nw4r::snd::detail::StrmSound::InitParam()
.fn InitParam__Q44nw4r3snd6detail9StrmSoundFv, global
/* 804251B8 003EE778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804251BC 003EE77C  7C 08 02 A6 */	mflr r0
/* 804251C0 003EE780  90 01 00 24 */	stw r0, 0x24(r1)
/* 804251C4 003EE784  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804251C8 003EE788  7C 7F 1B 78 */	mr r31, r3
/* 804251CC 003EE78C  4B FE D3 B1 */	bl InitParam__Q44nw4r3snd6detail10BasicSoundFv
/* 804251D0 003EE790  38 00 00 04 */	li r0, 0x4
/* 804251D4 003EE794  C0 C2 C5 08 */	lfs f6, lbl_8066C888@sda21(r2)
/* 804251D8 003EE798  38 C0 00 00 */	li r6, 0x0
/* 804251DC 003EE79C  C8 A2 C5 10 */	lfd f5, lbl_8066C890@sda21(r2)
/* 804251E0 003EE7A0  38 A0 00 00 */	li r5, 0x0
/* 804251E4 003EE7A4  C0 02 C5 0C */	lfs f0, lbl_8066C88C@sda21(r2)
/* 804251E8 003EE7A8  3C 80 43 30 */	lis r4, 0x4330
/* 804251EC 003EE7AC  38 60 00 01 */	li r3, 0x1
/* 804251F0 003EE7B0  7C 09 03 A6 */	mtctr r0
.L_804251F4:
/* 804251F4 003EE7B4  D0 DF 0E 4C */	stfs f6, 0xe4c(r31)
/* 804251F8 003EE7B8  7C 05 28 00 */	cmpw r5, r5
/* 804251FC 003EE7BC  D0 DF 0E 50 */	stfs f6, 0xe50(r31)
/* 80425200 003EE7C0  90 BF 0E 54 */	stw r5, 0xe54(r31)
/* 80425204 003EE7C4  90 BF 0E 58 */	stw r5, 0xe58(r31)
/* 80425208 003EE7C8  41 80 00 0C */	blt .L_80425214
/* 8042520C 003EE7CC  C0 3F 0E 50 */	lfs f1, 0xe50(r31)
/* 80425210 003EE7D0  48 00 00 40 */	b .L_80425250
.L_80425214:
/* 80425214 003EE7D4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80425218 003EE7D8  90 81 00 08 */	stw r4, 0x8(r1)
/* 8042521C 003EE7DC  C0 3F 0E 50 */	lfs f1, 0xe50(r31)
/* 80425220 003EE7E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80425224 003EE7E4  C0 7F 0E 4C */	lfs f3, 0xe4c(r31)
/* 80425228 003EE7E8  C8 81 00 08 */	lfd f4, 0x8(r1)
/* 8042522C 003EE7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80425230 003EE7F0  EC 41 18 28 */	fsubs f2, f1, f3
/* 80425234 003EE7F4  EC 84 28 28 */	fsubs f4, f4, f5
/* 80425238 003EE7F8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8042523C 003EE7FC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80425240 003EE800  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80425244 003EE804  EC 21 28 28 */	fsubs f1, f1, f5
/* 80425248 003EE808  EC 22 08 24 */	fdivs f1, f2, f1
/* 8042524C 003EE80C  EC 23 08 2A */	fadds f1, f3, f1
.L_80425250:
/* 80425250 003EE810  D0 3F 0E 4C */	stfs f1, 0xe4c(r31)
/* 80425254 003EE814  7C 05 28 00 */	cmpw r5, r5
/* 80425258 003EE818  D0 1F 0E 50 */	stfs f0, 0xe50(r31)
/* 8042525C 003EE81C  90 7F 0E 54 */	stw r3, 0xe54(r31)
/* 80425260 003EE820  90 BF 0E 58 */	stw r5, 0xe58(r31)
/* 80425264 003EE824  D0 DF 0E 5C */	stfs f6, 0xe5c(r31)
/* 80425268 003EE828  D0 DF 0E 60 */	stfs f6, 0xe60(r31)
/* 8042526C 003EE82C  90 BF 0E 64 */	stw r5, 0xe64(r31)
/* 80425270 003EE830  90 BF 0E 68 */	stw r5, 0xe68(r31)
/* 80425274 003EE834  41 80 00 0C */	blt .L_80425280
/* 80425278 003EE838  C0 3F 0E 60 */	lfs f1, 0xe60(r31)
/* 8042527C 003EE83C  48 00 00 40 */	b .L_804252BC
.L_80425280:
/* 80425280 003EE840  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80425284 003EE844  90 81 00 08 */	stw r4, 0x8(r1)
/* 80425288 003EE848  C0 3F 0E 60 */	lfs f1, 0xe60(r31)
/* 8042528C 003EE84C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80425290 003EE850  C0 7F 0E 5C */	lfs f3, 0xe5c(r31)
/* 80425294 003EE854  C8 81 00 08 */	lfd f4, 0x8(r1)
/* 80425298 003EE858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042529C 003EE85C  EC 41 18 28 */	fsubs f2, f1, f3
/* 804252A0 003EE860  EC 84 28 28 */	fsubs f4, f4, f5
/* 804252A4 003EE864  90 81 00 10 */	stw r4, 0x10(r1)
/* 804252A8 003EE868  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804252AC 003EE86C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 804252B0 003EE870  EC 21 28 28 */	fsubs f1, f1, f5
/* 804252B4 003EE874  EC 22 08 24 */	fdivs f1, f2, f1
/* 804252B8 003EE878  EC 23 08 2A */	fadds f1, f3, f1
.L_804252BC:
/* 804252BC 003EE87C  D0 3F 0E 5C */	stfs f1, 0xe5c(r31)
/* 804252C0 003EE880  38 C6 00 01 */	addi r6, r6, 0x1
/* 804252C4 003EE884  D0 1F 0E 60 */	stfs f0, 0xe60(r31)
/* 804252C8 003EE888  90 7F 0E 64 */	stw r3, 0xe64(r31)
/* 804252CC 003EE88C  90 BF 0E 68 */	stw r5, 0xe68(r31)
/* 804252D0 003EE890  3B FF 00 20 */	addi r31, r31, 0x20
/* 804252D4 003EE894  42 00 FF 20 */	bdnz .L_804251F4
/* 804252D8 003EE898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804252DC 003EE89C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804252E0 003EE8A0  7C 08 03 A6 */	mtlr r0
/* 804252E4 003EE8A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804252E8 003EE8A8  4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::Setup(nw4r::snd::detail::StrmBufferPool*, int, unsigned short)
.fn Setup__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail14StrmBufferPooliUs, global
/* 804252EC 003EE8AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804252F0 003EE8B0  7C 08 02 A6 */	mflr r0
/* 804252F4 003EE8B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804252F8 003EE8B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804252FC 003EE8BC  7C DF 33 78 */	mr r31, r6
/* 80425300 003EE8C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80425304 003EE8C4  7C BE 2B 78 */	mr r30, r5
/* 80425308 003EE8C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042530C 003EE8CC  7C 9D 23 78 */	mr r29, r4
/* 80425310 003EE8D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80425314 003EE8D4  7C 7C 1B 78 */	mr r28, r3
/* 80425318 003EE8D8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8042531C 003EE8DC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80425320 003EE8E0  7D 89 03 A6 */	mtctr r12
/* 80425324 003EE8E4  4E 80 04 21 */	bctrl
/* 80425328 003EE8E8  7F 83 E3 78 */	mr r3, r28
/* 8042532C 003EE8EC  4B FE E4 25 */	bl GetVoiceOutCount__Q44nw4r3snd6detail10BasicSoundCFv
/* 80425330 003EE8F0  7C 67 1B 78 */	mr r7, r3
/* 80425334 003EE8F4  7F A4 EB 78 */	mr r4, r29
/* 80425338 003EE8F8  7F C5 F3 78 */	mr r5, r30
/* 8042533C 003EE8FC  7F E6 FB 78 */	mr r6, r31
/* 80425340 003EE900  38 7C 01 0C */	addi r3, r28, 0x10c
/* 80425344 003EE904  4B FF D4 FD */	bl Setup__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail14StrmBufferPooliUsi
/* 80425348 003EE908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042534C 003EE90C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80425350 003EE910  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80425354 003EE914  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80425358 003EE918  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8042535C 003EE91C  7C 08 03 A6 */	mtlr r0
/* 80425360 003EE920  38 21 00 20 */	addi r1, r1, 0x20
/* 80425364 003EE924  4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail14StrmBufferPooliUs

# nw4r::snd::detail::StrmSound::Prepare(nw4r::snd::detail::StrmPlayer::StartOffsetType, long, nw4r::ut::FileStream*)
.fn Prepare__Q44nw4r3snd6detail9StrmSoundFQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypelPQ34nw4r2ut10FileStream, global
/* 80425368 003EE928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042536C 003EE92C  7C 08 02 A6 */	mflr r0
/* 80425370 003EE930  7C 87 23 78 */	mr r7, r4
/* 80425374 003EE934  7C C4 33 78 */	mr r4, r6
/* 80425378 003EE938  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042537C 003EE93C  7C A0 2B 78 */	mr r0, r5
/* 80425380 003EE940  7C E5 3B 78 */	mr r5, r7
/* 80425384 003EE944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80425388 003EE948  7C 7F 1B 78 */	mr r31, r3
/* 8042538C 003EE94C  7C 06 03 78 */	mr r6, r0
/* 80425390 003EE950  38 63 01 0C */	addi r3, r3, 0x10c
/* 80425394 003EE954  4B FF D7 55 */	bl Prepare__Q44nw4r3snd6detail10StrmPlayerFPQ34nw4r2ut10FileStreamQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypei
/* 80425398 003EE958  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042539C 003EE95C  40 82 00 14 */	bne .L_804253B0
/* 804253A0 003EE960  38 7F 01 0C */	addi r3, r31, 0x10c
/* 804253A4 003EE964  4B FF D6 B5 */	bl Shutdown__Q44nw4r3snd6detail10StrmPlayerFv
/* 804253A8 003EE968  38 60 00 00 */	li r3, 0x0
/* 804253AC 003EE96C  48 00 00 08 */	b .L_804253B4
.L_804253B0:
/* 804253B0 003EE970  38 60 00 01 */	li r3, 0x1
.L_804253B4:
/* 804253B4 003EE974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804253B8 003EE978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804253BC 003EE97C  7C 08 03 A6 */	mtlr r0
/* 804253C0 003EE980  38 21 00 10 */	addi r1, r1, 0x10
/* 804253C4 003EE984  4E 80 00 20 */	blr
.endfn Prepare__Q44nw4r3snd6detail9StrmSoundFQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypelPQ34nw4r2ut10FileStream

# nw4r::snd::detail::StrmSound::UpdateMoveValue()
.fn UpdateMoveValue__Q44nw4r3snd6detail9StrmSoundFv, global
/* 804253C8 003EE988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804253CC 003EE98C  7C 08 02 A6 */	mflr r0
/* 804253D0 003EE990  90 01 00 24 */	stw r0, 0x24(r1)
/* 804253D4 003EE994  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804253D8 003EE998  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804253DC 003EE99C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804253E0 003EE9A0  7C 7D 1B 78 */	mr r29, r3
/* 804253E4 003EE9A4  4B FE DD AD */	bl UpdateMoveValue__Q44nw4r3snd6detail10BasicSoundFv
/* 804253E8 003EE9A8  7F BF EB 78 */	mr r31, r29
/* 804253EC 003EE9AC  3B C0 00 00 */	li r30, 0x0
.L_804253F0:
/* 804253F0 003EE9B0  7F C4 F3 78 */	mr r4, r30
/* 804253F4 003EE9B4  38 7D 01 0C */	addi r3, r29, 0x10c
/* 804253F8 003EE9B8  4B FF F8 0D */	bl GetPlayerTrack__Q44nw4r3snd6detail10StrmPlayerFi
/* 804253FC 003EE9BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80425400 003EE9C0  41 82 00 1C */	beq .L_8042541C
/* 80425404 003EE9C4  80 7F 0E 58 */	lwz r3, 0xe58(r31)
/* 80425408 003EE9C8  80 1F 0E 54 */	lwz r0, 0xe54(r31)
/* 8042540C 003EE9CC  7C 03 00 00 */	cmpw r3, r0
/* 80425410 003EE9D0  40 80 00 0C */	bge .L_8042541C
/* 80425414 003EE9D4  38 03 00 01 */	addi r0, r3, 0x1
/* 80425418 003EE9D8  90 1F 0E 58 */	stw r0, 0xe58(r31)
.L_8042541C:
/* 8042541C 003EE9DC  3B DE 00 01 */	addi r30, r30, 0x1
/* 80425420 003EE9E0  3B FF 00 10 */	addi r31, r31, 0x10
/* 80425424 003EE9E4  2C 1E 00 08 */	cmpwi r30, 0x8
/* 80425428 003EE9E8  41 80 FF C8 */	blt .L_804253F0
/* 8042542C 003EE9EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80425430 003EE9F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80425434 003EE9F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80425438 003EE9F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042543C 003EE9FC  7C 08 03 A6 */	mtlr r0
/* 80425440 003EEA00  38 21 00 20 */	addi r1, r1, 0x20
/* 80425444 003EEA04  4E 80 00 20 */	blr
.endfn UpdateMoveValue__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::UpdateParam()
.fn UpdateParam__Q44nw4r3snd6detail9StrmSoundFv, global
/* 80425448 003EEA08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8042544C 003EEA0C  7C 08 02 A6 */	mflr r0
/* 80425450 003EEA10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80425454 003EEA14  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80425458 003EEA18  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8042545C 003EEA1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80425460 003EEA20  4B E9 4C F5 */	bl _savegpr_27
/* 80425464 003EEA24  7C 7B 1B 78 */	mr r27, r3
/* 80425468 003EEA28  4B FE DD 5D */	bl UpdateParam__Q44nw4r3snd6detail10BasicSoundFv
/* 8042546C 003EEA2C  CB E2 C5 10 */	lfd f31, lbl_8066C890@sda21(r2)
/* 80425470 003EEA30  7F 7D DB 78 */	mr r29, r27
/* 80425474 003EEA34  3B 80 00 00 */	li r28, 0x0
/* 80425478 003EEA38  3B C0 00 01 */	li r30, 0x1
/* 8042547C 003EEA3C  3F E0 43 30 */	lis r31, 0x4330
.L_80425480:
/* 80425480 003EEA40  7F 84 E3 78 */	mr r4, r28
/* 80425484 003EEA44  38 7B 01 0C */	addi r3, r27, 0x10c
/* 80425488 003EEA48  4B FF F7 7D */	bl GetPlayerTrack__Q44nw4r3snd6detail10StrmPlayerFi
/* 8042548C 003EEA4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80425490 003EEA50  41 82 00 68 */	beq .L_804254F8
/* 80425494 003EEA54  80 DD 0E 54 */	lwz r6, 0xe54(r29)
/* 80425498 003EEA58  38 7B 01 0C */	addi r3, r27, 0x10c
/* 8042549C 003EEA5C  80 1D 0E 58 */	lwz r0, 0xe58(r29)
/* 804254A0 003EEA60  7F C4 E0 30 */	slw r4, r30, r28
/* 804254A4 003EEA64  7C 00 30 00 */	cmpw r0, r6
/* 804254A8 003EEA68  41 80 00 0C */	blt .L_804254B4
/* 804254AC 003EEA6C  C0 3D 0E 50 */	lfs f1, 0xe50(r29)
/* 804254B0 003EEA70  48 00 00 44 */	b .L_804254F4
.L_804254B4:
/* 804254B4 003EEA74  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 804254B8 003EEA78  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 804254BC 003EEA7C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804254C0 003EEA80  C0 1D 0E 50 */	lfs f0, 0xe50(r29)
/* 804254C4 003EEA84  93 E1 00 08 */	stw r31, 0x8(r1)
/* 804254C8 003EEA88  C0 5D 0E 4C */	lfs f2, 0xe4c(r29)
/* 804254CC 003EEA8C  C8 61 00 08 */	lfd f3, 0x8(r1)
/* 804254D0 003EEA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804254D4 003EEA94  EC 20 10 28 */	fsubs f1, f0, f2
/* 804254D8 003EEA98  EC 63 F8 28 */	fsubs f3, f3, f31
/* 804254DC 003EEA9C  93 E1 00 10 */	stw r31, 0x10(r1)
/* 804254E0 003EEAA0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804254E4 003EEAA4  EC 23 00 72 */	fmuls f1, f3, f1
/* 804254E8 003EEAA8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804254EC 003EEAAC  EC 01 00 24 */	fdivs f0, f1, f0
/* 804254F0 003EEAB0  EC 22 00 2A */	fadds f1, f2, f0
.L_804254F4:
/* 804254F4 003EEAB4  4B FF F6 91 */	bl SetTrackVolume__Q44nw4r3snd6detail10StrmPlayerFUlf
.L_804254F8:
/* 804254F8 003EEAB8  3B 9C 00 01 */	addi r28, r28, 0x1
/* 804254FC 003EEABC  3B BD 00 10 */	addi r29, r29, 0x10
/* 80425500 003EEAC0  2C 1C 00 08 */	cmpwi r28, 0x8
/* 80425504 003EEAC4  41 80 FF 7C */	blt .L_80425480
/* 80425508 003EEAC8  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8042550C 003EEACC  39 61 00 30 */	addi r11, r1, 0x30
/* 80425510 003EEAD0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80425514 003EEAD4  4B E9 4C 8D */	bl _restgpr_27
/* 80425518 003EEAD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042551C 003EEADC  7C 08 03 A6 */	mtlr r0
/* 80425520 003EEAE0  38 21 00 40 */	addi r1, r1, 0x40
/* 80425524 003EEAE4  4E 80 00 20 */	blr
.endfn UpdateParam__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::Shutdown()
.fn Shutdown__Q44nw4r3snd6detail9StrmSoundFv, global
/* 80425528 003EEAE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042552C 003EEAEC  7C 08 02 A6 */	mflr r0
/* 80425530 003EEAF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80425534 003EEAF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80425538 003EEAF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042553C 003EEAFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80425540 003EEB00  7C 7D 1B 78 */	mr r29, r3
/* 80425544 003EEB04  4B FE E0 5D */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 80425548 003EEB08  83 DD 0E 48 */	lwz r30, 0xe48(r29)
/* 8042554C 003EEB0C  3B FE 00 10 */	addi r31, r30, 0x10
/* 80425550 003EEB10  7F E3 FB 78 */	mr r3, r31
/* 80425554 003EEB14  4B F3 47 0D */	bl OSLockMutex
/* 80425558 003EEB18  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8042555C 003EEB1C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80425560 003EEB20  40 82 00 10 */	bne .L_80425570
/* 80425564 003EEB24  7F E3 FB 78 */	mr r3, r31
/* 80425568 003EEB28  4B F3 47 D9 */	bl OSUnlockMutex
/* 8042556C 003EEB2C  48 00 00 3C */	b .L_804255A8
.L_80425570:
/* 80425570 003EEB30  38 7E 00 04 */	addi r3, r30, 0x4
/* 80425574 003EEB34  38 9D 00 EC */	addi r4, r29, 0xec
/* 80425578 003EEB38  48 00 5F D5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8042557C 003EEB3C  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 80425580 003EEB40  7F A3 EB 78 */	mr r3, r29
/* 80425584 003EEB44  38 80 FF FF */	li r4, -0x1
/* 80425588 003EEB48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8042558C 003EEB4C  7D 89 03 A6 */	mtctr r12
/* 80425590 003EEB50  4E 80 04 21 */	bctrl
/* 80425594 003EEB54  7F C3 F3 78 */	mr r3, r30
/* 80425598 003EEB58  7F A4 EB 78 */	mr r4, r29
/* 8042559C 003EEB5C  4B FF 19 7D */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 804255A0 003EEB60  7F E3 FB 78 */	mr r3, r31
/* 804255A4 003EEB64  4B F3 47 9D */	bl OSUnlockMutex
.L_804255A8:
/* 804255A8 003EEB68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804255AC 003EEB6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804255B0 003EEB70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804255B4 003EEB74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804255B8 003EEB78  7C 08 03 A6 */	mtlr r0
/* 804255BC 003EEB7C  38 21 00 20 */	addi r1, r1, 0x20
/* 804255C0 003EEB80  4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::~StrmSound()
.fn __dt__Q44nw4r3snd6detail9StrmSoundFv, global
/* 804255C4 003EEB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804255C8 003EEB88  7C 08 02 A6 */	mflr r0
/* 804255CC 003EEB8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 804255D0 003EEB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804255D4 003EEB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804255D8 003EEB98  7C 9F 23 78 */	mr r31, r4
/* 804255DC 003EEB9C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 804255E0 003EEBA0  7C 7E 1B 78 */	mr r30, r3
/* 804255E4 003EEBA4  41 82 00 20 */	beq .L_80425604
/* 804255E8 003EEBA8  38 80 FF FF */	li r4, -0x1
/* 804255EC 003EEBAC  38 63 01 0C */	addi r3, r3, 0x10c
/* 804255F0 003EEBB0  4B FF D1 51 */	bl __dt__Q44nw4r3snd6detail10StrmPlayerFv
/* 804255F4 003EEBB4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 804255F8 003EEBB8  40 81 00 0C */	ble .L_80425604
/* 804255FC 003EEBBC  7F C3 F3 78 */	mr r3, r30
/* 80425600 003EEBC0  48 00 F6 2D */	bl __dl__FPv
.L_80425604:
/* 80425604 003EEBC4  7F C3 F3 78 */	mr r3, r30
/* 80425608 003EEBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042560C 003EEBCC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80425610 003EEBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425614 003EEBD4  7C 08 03 A6 */	mtlr r0
/* 80425618 003EEBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042561C 003EEBDC  4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::OnUpdatePlayerPriority()
.fn OnUpdatePlayerPriority__Q44nw4r3snd6detail9StrmSoundFv, global
/* 80425620 003EEBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80425624 003EEBE4  7C 08 02 A6 */	mflr r0
/* 80425628 003EEBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042562C 003EEBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80425630 003EEBF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80425634 003EEBF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80425638 003EEBF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8042563C 003EEBFC  7C 7C 1B 78 */	mr r28, r3
/* 80425640 003EEC00  88 83 00 94 */	lbz r4, 0x94(r3)
/* 80425644 003EEC04  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80425648 003EEC08  7C 84 02 14 */	add r4, r4, r0
/* 8042564C 003EEC0C  2C 04 00 7F */	cmpwi r4, 0x7f
/* 80425650 003EEC10  40 81 00 0C */	ble .L_8042565C
/* 80425654 003EEC14  3B A0 00 7F */	li r29, 0x7f
/* 80425658 003EEC18  48 00 00 0C */	b .L_80425664
.L_8042565C:
/* 8042565C 003EEC1C  7C 80 FE 70 */	srawi r0, r4, 31
/* 80425660 003EEC20  7C 9D 00 78 */	andc r29, r4, r0
.L_80425664:
/* 80425664 003EEC24  83 C3 0E 48 */	lwz r30, 0xe48(r3)
/* 80425668 003EEC28  3B FE 00 10 */	addi r31, r30, 0x10
/* 8042566C 003EEC2C  7F E3 FB 78 */	mr r3, r31
/* 80425670 003EEC30  4B F3 45 F1 */	bl OSLockMutex
/* 80425674 003EEC34  3B 9C 00 EC */	addi r28, r28, 0xec
/* 80425678 003EEC38  38 7E 00 04 */	addi r3, r30, 0x4
/* 8042567C 003EEC3C  7F 84 E3 78 */	mr r4, r28
/* 80425680 003EEC40  48 00 5E CD */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80425684 003EEC44  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 80425688 003EEC48  38 1E 00 08 */	addi r0, r30, 0x8
/* 8042568C 003EEC4C  48 00 00 34 */	b .L_804256C0
.L_80425690:
/* 80425690 003EEC50  88 A3 FF A8 */	lbz r5, -0x58(r3)
/* 80425694 003EEC54  80 83 FF 64 */	lwz r4, -0x9c(r3)
/* 80425698 003EEC58  7C A5 22 14 */	add r5, r5, r4
/* 8042569C 003EEC5C  2C 05 00 7F */	cmpwi r5, 0x7f
/* 804256A0 003EEC60  40 81 00 0C */	ble .L_804256AC
/* 804256A4 003EEC64  38 80 00 7F */	li r4, 0x7f
/* 804256A8 003EEC68  48 00 00 0C */	b .L_804256B4
.L_804256AC:
/* 804256AC 003EEC6C  7C A4 FE 70 */	srawi r4, r5, 31
/* 804256B0 003EEC70  7C A4 20 78 */	andc r4, r5, r4
.L_804256B4:
/* 804256B4 003EEC74  7C 1D 20 00 */	cmpw r29, r4
/* 804256B8 003EEC78  41 80 00 10 */	blt .L_804256C8
/* 804256BC 003EEC7C  80 63 00 00 */	lwz r3, 0x0(r3)
.L_804256C0:
/* 804256C0 003EEC80  7C 03 00 40 */	cmplw r3, r0
/* 804256C4 003EEC84  40 82 FF CC */	bne .L_80425690
.L_804256C8:
/* 804256C8 003EEC88  90 61 00 08 */	stw r3, 0x8(r1)
/* 804256CC 003EEC8C  7F 85 E3 78 */	mr r5, r28
/* 804256D0 003EEC90  38 7E 00 04 */	addi r3, r30, 0x4
/* 804256D4 003EEC94  38 81 00 08 */	addi r4, r1, 0x8
/* 804256D8 003EEC98  48 00 5E 49 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 804256DC 003EEC9C  7F E3 FB 78 */	mr r3, r31
/* 804256E0 003EECA0  4B F3 46 61 */	bl OSUnlockMutex
/* 804256E4 003EECA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804256E8 003EECA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804256EC 003EECAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804256F0 003EECB0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804256F4 003EECB4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 804256F8 003EECB8  7C 08 03 A6 */	mtlr r0
/* 804256FC 003EECBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80425700 003EECC0  4E 80 00 20 */	blr
.endfn OnUpdatePlayerPriority__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::IsAttachedTempSpecialHandle()
.fn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv, global
/* 80425704 003EECC4  80 63 0E 44 */	lwz r3, 0xe44(r3)
/* 80425708 003EECC8  7C 03 00 D0 */	neg r0, r3
/* 8042570C 003EECCC  7C 00 1B 78 */	or r0, r0, r3
/* 80425710 003EECD0  54 03 0F FE */	srwi r3, r0, 31
/* 80425714 003EECD4  4E 80 00 20 */	blr
.endfn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::DetachTempSpecialHandle()
.fn DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv, global
/* 80425718 003EECD8  80 63 0E 44 */	lwz r3, 0xe44(r3)
/* 8042571C 003EECDC  48 00 00 30 */	b DetachSound__Q34nw4r3snd15StrmSoundHandleFv
.endfn DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::GetBasicPlayer()
.fn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv, global
/* 80425720 003EECE0  38 63 01 0C */	addi r3, r3, 0x10c
/* 80425724 003EECE4  4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv

# nw4r::snd::detail::StrmSound::GetBasicPlayer() const
.fn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv, global
/* 80425728 003EECE8  38 63 01 0C */	addi r3, r3, 0x10c
/* 8042572C 003EECEC  4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv

# nw4r::snd::detail::StrmSound::IsPrepared() const
.fn IsPrepared__Q44nw4r3snd6detail9StrmSoundCFv, global
/* 80425730 003EECF0  88 63 02 2F */	lbz r3, 0x22f(r3)
/* 80425734 003EECF4  4E 80 00 20 */	blr
.endfn IsPrepared__Q44nw4r3snd6detail9StrmSoundCFv

# nw4r::snd::detail::StrmSound::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv, global
/* 80425738 003EECF8  38 6D BC 80 */	addi r3, r13, lbl_80667E00@sda21
/* 8042573C 003EECFC  4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv

.fn sinit_80425740, global
/* 80425740 003EED00  38 0D BC 30 */	addi r0, r13, lbl_80667DB0@sda21
/* 80425744 003EED04  90 0D BC 80 */	stw r0, lbl_80667E00@sda21(r13)
/* 80425748 003EED08  4E 80 00 20 */	blr
.endfn sinit_80425740

# 0x804F5A28 - 0x804F5A2C
.section .ctors, "a"
.balign 4
	.4byte sinit_80425740

# 0x8056E5D0 - 0x8056E608
.data
.balign 8
.sym lbl_8056E5D0, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv
	.4byte __dt__Q44nw4r3snd6detail9StrmSoundFv
	.4byte Shutdown__Q44nw4r3snd6detail9StrmSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail9StrmSoundCFv
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
	.4byte InitParam__Q44nw4r3snd6detail9StrmSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv
	.4byte OnUpdatePlayerPriority__Q44nw4r3snd6detail9StrmSoundFv
	.4byte UpdateMoveValue__Q44nw4r3snd6detail9StrmSoundFv
	.4byte UpdateParam__Q44nw4r3snd6detail9StrmSoundFv

# 0x80667E00 - 0x80667E08
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80667E00, global
	.skip 0x8

# 0x8066C888 - 0x8066C898
.section .sdata2, "a"
.balign 8
.sym lbl_8066C888, global
	.4byte 0x00000000
.sym lbl_8066C88C, global
	.4byte 0x3F800000
.sym lbl_8066C890, global
	.4byte 0x43300000
	.4byte 0x80000000
