.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn DCEnable, global
/* 80353F60 0031D520  7C 00 04 AC */	sync 0
/* 80353F64 0031D524  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 80353F68 0031D528  60 63 40 00 */	ori r3, r3, 0x4000
/* 80353F6C 0031D52C  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 80353F70 0031D530  4E 80 00 20 */	blr 
.endfn DCEnable

.balign 16, 0
.fn DCInvalidateRange, global
/* 80353F80 0031D540  28 04 00 00 */	cmplwi r4, 0
/* 80353F84 0031D544  4C 81 00 20 */	blelr 
/* 80353F88 0031D548  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 80353F8C 0031D54C  7C 84 2A 14 */	add r4, r4, r5
/* 80353F90 0031D550  38 84 00 1F */	addi r4, r4, 0x1f
/* 80353F94 0031D554  54 84 D9 7E */	srwi r4, r4, 5
/* 80353F98 0031D558  7C 89 03 A6 */	mtctr r4
.L_80353F9C:
/* 80353F9C 0031D55C  7C 00 1B AC */	dcbi 0, r3
/* 80353FA0 0031D560  38 63 00 20 */	addi r3, r3, 0x20
/* 80353FA4 0031D564  42 00 FF F8 */	bdnz .L_80353F9C
/* 80353FA8 0031D568  4E 80 00 20 */	blr 
.endfn DCInvalidateRange

.balign 16, 0
.fn DCFlushRange, global
/* 80353FB0 0031D570  28 04 00 00 */	cmplwi r4, 0
/* 80353FB4 0031D574  4C 81 00 20 */	blelr 
/* 80353FB8 0031D578  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 80353FBC 0031D57C  7C 84 2A 14 */	add r4, r4, r5
/* 80353FC0 0031D580  38 84 00 1F */	addi r4, r4, 0x1f
/* 80353FC4 0031D584  54 84 D9 7E */	srwi r4, r4, 5
/* 80353FC8 0031D588  7C 89 03 A6 */	mtctr r4
.L_80353FCC:
/* 80353FCC 0031D58C  7C 00 18 AC */	dcbf 0, r3
/* 80353FD0 0031D590  38 63 00 20 */	addi r3, r3, 0x20
/* 80353FD4 0031D594  42 00 FF F8 */	bdnz .L_80353FCC
/* 80353FD8 0031D598  44 00 00 02 */	sc 
/* 80353FDC 0031D59C  4E 80 00 20 */	blr 
.endfn DCFlushRange

.balign 16, 0
.fn DCStoreRange, global
/* 80353FE0 0031D5A0  28 04 00 00 */	cmplwi r4, 0
/* 80353FE4 0031D5A4  4C 81 00 20 */	blelr 
/* 80353FE8 0031D5A8  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 80353FEC 0031D5AC  7C 84 2A 14 */	add r4, r4, r5
/* 80353FF0 0031D5B0  38 84 00 1F */	addi r4, r4, 0x1f
/* 80353FF4 0031D5B4  54 84 D9 7E */	srwi r4, r4, 5
/* 80353FF8 0031D5B8  7C 89 03 A6 */	mtctr r4
.L_80353FFC:
/* 80353FFC 0031D5BC  7C 00 18 6C */	dcbst 0, r3
/* 80354000 0031D5C0  38 63 00 20 */	addi r3, r3, 0x20
/* 80354004 0031D5C4  42 00 FF F8 */	bdnz .L_80353FFC
/* 80354008 0031D5C8  44 00 00 02 */	sc 
/* 8035400C 0031D5CC  4E 80 00 20 */	blr 
.endfn DCStoreRange

.balign 16, 0
.fn DCFlushRangeNoSync, global
/* 80354010 0031D5D0  28 04 00 00 */	cmplwi r4, 0
/* 80354014 0031D5D4  4C 81 00 20 */	blelr 
/* 80354018 0031D5D8  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8035401C 0031D5DC  7C 84 2A 14 */	add r4, r4, r5
/* 80354020 0031D5E0  38 84 00 1F */	addi r4, r4, 0x1f
/* 80354024 0031D5E4  54 84 D9 7E */	srwi r4, r4, 5
/* 80354028 0031D5E8  7C 89 03 A6 */	mtctr r4
.L_8035402C:
/* 8035402C 0031D5EC  7C 00 18 AC */	dcbf 0, r3
/* 80354030 0031D5F0  38 63 00 20 */	addi r3, r3, 0x20
/* 80354034 0031D5F4  42 00 FF F8 */	bdnz .L_8035402C
/* 80354038 0031D5F8  4E 80 00 20 */	blr 
.endfn DCFlushRangeNoSync

.balign 16, 0
.fn DCStoreRangeNoSync, global
/* 80354040 0031D600  28 04 00 00 */	cmplwi r4, 0
/* 80354044 0031D604  4C 81 00 20 */	blelr 
/* 80354048 0031D608  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8035404C 0031D60C  7C 84 2A 14 */	add r4, r4, r5
/* 80354050 0031D610  38 84 00 1F */	addi r4, r4, 0x1f
/* 80354054 0031D614  54 84 D9 7E */	srwi r4, r4, 5
/* 80354058 0031D618  7C 89 03 A6 */	mtctr r4
.L_8035405C:
/* 8035405C 0031D61C  7C 00 18 6C */	dcbst 0, r3
/* 80354060 0031D620  38 63 00 20 */	addi r3, r3, 0x20
/* 80354064 0031D624  42 00 FF F8 */	bdnz .L_8035405C
/* 80354068 0031D628  4E 80 00 20 */	blr 
.endfn DCStoreRangeNoSync

.balign 16, 0
.fn DCZeroRange, global
/* 80354070 0031D630  28 04 00 00 */	cmplwi r4, 0
/* 80354074 0031D634  4C 81 00 20 */	blelr 
/* 80354078 0031D638  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8035407C 0031D63C  7C 84 2A 14 */	add r4, r4, r5
/* 80354080 0031D640  38 84 00 1F */	addi r4, r4, 0x1f
/* 80354084 0031D644  54 84 D9 7E */	srwi r4, r4, 5
/* 80354088 0031D648  7C 89 03 A6 */	mtctr r4
.L_8035408C:
/* 8035408C 0031D64C  7C 00 1F EC */	dcbz 0, r3
/* 80354090 0031D650  38 63 00 20 */	addi r3, r3, 0x20
/* 80354094 0031D654  42 00 FF F8 */	bdnz .L_8035408C
/* 80354098 0031D658  4E 80 00 20 */	blr 
.endfn DCZeroRange

.balign 16, 0
.fn ICInvalidateRange, global
/* 803540A0 0031D660  28 04 00 00 */	cmplwi r4, 0
/* 803540A4 0031D664  4C 81 00 20 */	blelr 
/* 803540A8 0031D668  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 803540AC 0031D66C  7C 84 2A 14 */	add r4, r4, r5
/* 803540B0 0031D670  38 84 00 1F */	addi r4, r4, 0x1f
/* 803540B4 0031D674  54 84 D9 7E */	srwi r4, r4, 5
/* 803540B8 0031D678  7C 89 03 A6 */	mtctr r4
.L_803540BC:
/* 803540BC 0031D67C  7C 00 1F AC */	icbi 0, r3
/* 803540C0 0031D680  38 63 00 20 */	addi r3, r3, 0x20
/* 803540C4 0031D684  42 00 FF F8 */	bdnz .L_803540BC
/* 803540C8 0031D688  7C 00 04 AC */	sync 0
/* 803540CC 0031D68C  4C 00 01 2C */	isync 
/* 803540D0 0031D690  4E 80 00 20 */	blr 
.endfn ICInvalidateRange

.balign 16, 0
.fn ICFlashInvalidate, global
/* 803540E0 0031D6A0  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 803540E4 0031D6A4  60 63 08 00 */	ori r3, r3, 0x800
/* 803540E8 0031D6A8  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 803540EC 0031D6AC  4E 80 00 20 */	blr 
.endfn ICFlashInvalidate

.balign 16, 0
.fn ICEnable, global
/* 803540F0 0031D6B0  4C 00 01 2C */	isync 
/* 803540F4 0031D6B4  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 803540F8 0031D6B8  60 63 80 00 */	ori r3, r3, 0x8000
/* 803540FC 0031D6BC  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 80354100 0031D6C0  4E 80 00 20 */	blr 
.endfn ICEnable

.balign 16, 0
.fn __LCEnable, global
/* 80354110 0031D6D0  7C A0 00 A6 */	mfmsr r5
/* 80354114 0031D6D4  60 A5 10 00 */	ori r5, r5, 0x1000
/* 80354118 0031D6D8  7C A0 01 24 */	mtmsr r5
/* 8035411C 0031D6DC  3C 60 80 00 */	lis r3, 0x80000020@ha
/* 80354120 0031D6E0  38 80 04 00 */	li r4, 0x400
/* 80354124 0031D6E4  7C 89 03 A6 */	mtctr r4
.L_80354128:
/* 80354128 0031D6E8  7C 00 1A 2C */	dcbt 0, r3
/* 8035412C 0031D6EC  7C 00 18 6C */	dcbst 0, r3
/* 80354130 0031D6F0  38 63 00 20 */	addi r3, r3, 0x80000020@l
/* 80354134 0031D6F4  42 00 FF F4 */	bdnz .L_80354128
/* 80354138 0031D6F8  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8035413C 0031D6FC  64 84 10 0F */	oris r4, r4, 0x100f
/* 80354140 0031D700  7C 98 E3 A6 */	mtspr 0x398, r4
/* 80354144 0031D704  60 00 00 00 */	nop 
/* 80354148 0031D708  60 00 00 00 */	nop 
/* 8035414C 0031D70C  60 00 00 00 */	nop 
/* 80354150 0031D710  60 00 00 00 */	nop 
/* 80354154 0031D714  60 00 00 00 */	nop 
/* 80354158 0031D718  60 00 00 00 */	nop 
/* 8035415C 0031D71C  60 00 00 00 */	nop 
/* 80354160 0031D720  60 00 00 00 */	nop 
/* 80354164 0031D724  60 00 00 00 */	nop 
/* 80354168 0031D728  60 00 00 00 */	nop 
/* 8035416C 0031D72C  60 00 00 00 */	nop 
/* 80354170 0031D730  60 00 00 00 */	nop 
/* 80354174 0031D734  3C 60 E0 00 */	lis r3, 0xE0000002@h
/* 80354178 0031D738  60 63 00 02 */	ori r3, r3, 0xE0000002@l
/* 8035417C 0031D73C  7C 7F 83 A6 */	mtdbatl 3, r3
/* 80354180 0031D740  60 63 01 FE */	ori r3, r3, 0x1fe
/* 80354184 0031D744  7C 7E 83 A6 */	mtdbatu 3, r3
/* 80354188 0031D748  4C 00 01 2C */	isync 
/* 8035418C 0031D74C  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 80354190 0031D750  38 C0 02 00 */	li r6, 0x200
/* 80354194 0031D754  7C C9 03 A6 */	mtctr r6
/* 80354198 0031D758  38 C0 00 00 */	li r6, 0
.L_8035419C:
/* 8035419C 0031D75C  10 06 1F EC */	dcbz_l r6, r3
/* 803541A0 0031D760  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 803541A4 0031D764  42 00 FF F8 */	bdnz .L_8035419C
/* 803541A8 0031D768  60 00 00 00 */	nop 
/* 803541AC 0031D76C  60 00 00 00 */	nop 
/* 803541B0 0031D770  60 00 00 00 */	nop 
/* 803541B4 0031D774  60 00 00 00 */	nop 
/* 803541B8 0031D778  60 00 00 00 */	nop 
/* 803541BC 0031D77C  60 00 00 00 */	nop 
/* 803541C0 0031D780  60 00 00 00 */	nop 
/* 803541C4 0031D784  60 00 00 00 */	nop 
/* 803541C8 0031D788  60 00 00 00 */	nop 
/* 803541CC 0031D78C  60 00 00 00 */	nop 
/* 803541D0 0031D790  60 00 00 00 */	nop 
/* 803541D4 0031D794  60 00 00 00 */	nop 
/* 803541D8 0031D798  4E 80 00 20 */	blr 
.endfn __LCEnable

.balign 16, 0
.fn LCEnable, global
/* 803541E0 0031D7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803541E4 0031D7A4  7C 08 02 A6 */	mflr r0
/* 803541E8 0031D7A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803541EC 0031D7AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803541F0 0031D7B0  48 00 47 C1 */	bl OSDisableInterrupts
/* 803541F4 0031D7B4  7C 7F 1B 78 */	mr r31, r3
/* 803541F8 0031D7B8  4B FF FF 19 */	bl __LCEnable
/* 803541FC 0031D7BC  7F E3 FB 78 */	mr r3, r31
/* 80354200 0031D7C0  48 00 47 F1 */	bl OSRestoreInterrupts
/* 80354204 0031D7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80354208 0031D7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035420C 0031D7CC  7C 08 03 A6 */	mtlr r0
/* 80354210 0031D7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80354214 0031D7D4  4E 80 00 20 */	blr 
.endfn LCEnable

.balign 16, 0
.fn LCDisable, global
/* 80354220 0031D7E0  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 80354224 0031D7E4  38 80 02 00 */	li r4, 0x200
/* 80354228 0031D7E8  7C 89 03 A6 */	mtctr r4
.L_8035422C:
/* 8035422C 0031D7EC  7C 00 1B AC */	dcbi 0, r3
/* 80354230 0031D7F0  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 80354234 0031D7F4  42 00 FF F8 */	bdnz .L_8035422C
/* 80354238 0031D7F8  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8035423C 0031D7FC  54 84 01 04 */	rlwinm r4, r4, 0, 4, 2
/* 80354240 0031D800  7C 98 E3 A6 */	mtspr 0x398, r4
/* 80354244 0031D804  4E 80 00 20 */	blr 
.endfn LCDisable

.balign 16, 0
.fn LCLoadBlocks, global
/* 80354250 0031D810  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 80354254 0031D814  54 84 00 FE */	clrlwi r4, r4, 3
/* 80354258 0031D818  7C C6 23 78 */	or r6, r6, r4
/* 8035425C 0031D81C  7C DA E3 A6 */	mtspr 0x39a, r6
/* 80354260 0031D820  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 80354264 0031D824  7C C6 1B 78 */	or r6, r6, r3
/* 80354268 0031D828  60 C6 00 12 */	ori r6, r6, 0x12
/* 8035426C 0031D82C  7C DB E3 A6 */	mtspr 0x39b, r6
/* 80354270 0031D830  4E 80 00 20 */	blr 
.endfn LCLoadBlocks

.balign 16, 0
.fn LCStoreBlocks, global
/* 80354280 0031D840  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 80354284 0031D844  54 63 00 FE */	clrlwi r3, r3, 3
/* 80354288 0031D848  7C C6 1B 78 */	or r6, r6, r3
/* 8035428C 0031D84C  7C DA E3 A6 */	mtspr 0x39a, r6
/* 80354290 0031D850  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 80354294 0031D854  7C C6 23 78 */	or r6, r6, r4
/* 80354298 0031D858  60 C6 00 02 */	ori r6, r6, 2
/* 8035429C 0031D85C  7C DB E3 A6 */	mtspr 0x39b, r6
/* 803542A0 0031D860  4E 80 00 20 */	blr 
.endfn LCStoreBlocks

.balign 16, 0
.fn LCStoreData, global
/* 803542B0 0031D870  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803542B4 0031D874  7C 08 02 A6 */	mflr r0
/* 803542B8 0031D878  90 01 00 24 */	stw r0, 0x24(r1)
/* 803542BC 0031D87C  38 05 00 1F */	addi r0, r5, 0x1f
/* 803542C0 0031D880  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803542C4 0031D884  54 1F D9 7E */	srwi r31, r0, 5
/* 803542C8 0031D888  38 1F 00 7F */	addi r0, r31, 0x7f
/* 803542CC 0031D88C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803542D0 0031D890  54 1E C9 FE */	srwi r30, r0, 7
/* 803542D4 0031D894  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803542D8 0031D898  7C 9D 23 78 */	mr r29, r4
/* 803542DC 0031D89C  93 81 00 10 */	stw r28, 0x10(r1)
/* 803542E0 0031D8A0  7C 7C 1B 78 */	mr r28, r3
/* 803542E4 0031D8A4  48 00 00 40 */	b .L_80354324
.L_803542E8:
/* 803542E8 0031D8A8  28 1F 00 80 */	cmplwi r31, 0x80
/* 803542EC 0031D8AC  40 80 00 1C */	bge .L_80354308
/* 803542F0 0031D8B0  7F 83 E3 78 */	mr r3, r28
/* 803542F4 0031D8B4  7F A4 EB 78 */	mr r4, r29
/* 803542F8 0031D8B8  7F E5 FB 78 */	mr r5, r31
/* 803542FC 0031D8BC  4B FF FF 85 */	bl LCStoreBlocks
/* 80354300 0031D8C0  3B E0 00 00 */	li r31, 0
/* 80354304 0031D8C4  48 00 00 20 */	b .L_80354324
.L_80354308:
/* 80354308 0031D8C8  7F 83 E3 78 */	mr r3, r28
/* 8035430C 0031D8CC  7F A4 EB 78 */	mr r4, r29
/* 80354310 0031D8D0  38 A0 00 00 */	li r5, 0
/* 80354314 0031D8D4  4B FF FF 6D */	bl LCStoreBlocks
/* 80354318 0031D8D8  3B FF FF 80 */	addi r31, r31, -128
/* 8035431C 0031D8DC  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 80354320 0031D8E0  3B BD 10 00 */	addi r29, r29, 0x1000
.L_80354324:
/* 80354324 0031D8E4  2C 1F 00 00 */	cmpwi r31, 0
/* 80354328 0031D8E8  40 82 FF C0 */	bne .L_803542E8
/* 8035432C 0031D8EC  7F C3 F3 78 */	mr r3, r30
/* 80354330 0031D8F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80354334 0031D8F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80354338 0031D8F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035433C 0031D8FC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80354340 0031D900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80354344 0031D904  7C 08 03 A6 */	mtlr r0
/* 80354348 0031D908  38 21 00 20 */	addi r1, r1, 0x20
/* 8035434C 0031D90C  4E 80 00 20 */	blr 
.endfn LCStoreData

.balign 16, 0
.fn LCQueueLength, global
/* 80354350 0031D910  7C 98 E2 A6 */	mfspr r4, 0x398
/* 80354354 0031D914  54 83 47 3E */	rlwinm r3, r4, 8, 0x1c, 0x1f
/* 80354358 0031D918  4E 80 00 20 */	blr 
.endfn LCQueueLength

.balign 16, 0
.fn LCQueueWait, global
/* 80354360 0031D920  7C 98 E2 A6 */	mfspr r4, 0x398
/* 80354364 0031D924  54 84 47 3E */	rlwinm r4, r4, 8, 0x1c, 0x1f
/* 80354368 0031D928  7C 04 18 00 */	cmpw r4, r3
/* 8035436C 0031D92C  41 81 FF F4 */	bgt LCQueueWait
/* 80354370 0031D930  4E 80 00 20 */	blr
.endfn LCQueueWait

.balign 16, 0
.fn DMAErrorHandler, local
/* 80354380 0031D940  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80354384 0031D944  7C 08 02 A6 */	mflr r0
/* 80354388 0031D948  90 01 00 84 */	stw r0, 0x84(r1)
/* 8035438C 0031D94C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80354390 0031D950  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80354394 0031D954  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80354398 0031D958  7C 9D 23 78 */	mr r29, r4
/* 8035439C 0031D95C  40 86 00 24 */	bne cr1, .L_803543C0
/* 803543A0 0031D960  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803543A4 0031D964  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803543A8 0031D968  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803543AC 0031D96C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803543B0 0031D970  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803543B4 0031D974  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803543B8 0031D978  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803543BC 0031D97C  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803543C0:
/* 803543C0 0031D980  3F E0 80 55 */	lis r31, lbl_80551838@ha
/* 803543C4 0031D984  90 61 00 08 */	stw r3, 8(r1)
/* 803543C8 0031D988  3B FF 18 38 */	addi r31, r31, lbl_80551838@l
/* 803543CC 0031D98C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803543D0 0031D990  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803543D4 0031D994  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803543D8 0031D998  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803543DC 0031D99C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803543E0 0031D9A0  91 21 00 20 */	stw r9, 0x20(r1)
/* 803543E4 0031D9A4  91 41 00 24 */	stw r10, 0x24(r1)
/* 803543E8 0031D9A8  4B F8 68 B9 */	bl PPCMfhid2
/* 803543EC 0031D9AC  7C 7E 1B 78 */	mr r30, r3
/* 803543F0 0031D9B0  38 7F 00 30 */	addi r3, r31, 0x30
/* 803543F4 0031D9B4  4C C6 31 82 */	crclr 6
/* 803543F8 0031D9B8  48 00 0A F9 */	bl OSReport
/* 803543FC 0031D9BC  80 BD 01 9C */	lwz r5, 0x19c(r29)
/* 80354400 0031D9C0  7F C4 F3 78 */	mr r4, r30
/* 80354404 0031D9C4  38 7F 00 48 */	addi r3, r31, 0x48
/* 80354408 0031D9C8  4C C6 31 82 */	crclr 6
/* 8035440C 0031D9CC  48 00 0A E5 */	bl OSReport
/* 80354410 0031D9D0  57 C0 02 17 */	rlwinm. r0, r30, 0, 8, 0xb
/* 80354414 0031D9D4  41 82 00 10 */	beq .L_80354424
/* 80354418 0031D9D8  80 1D 01 9C */	lwz r0, 0x19c(r29)
/* 8035441C 0031D9DC  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80354420 0031D9E0  40 82 00 1C */	bne .L_8035443C
.L_80354424:
/* 80354424 0031D9E4  38 7F 00 68 */	addi r3, r31, 0x68
/* 80354428 0031D9E8  4C C6 31 82 */	crclr 6
/* 8035442C 0031D9EC  48 00 0A C5 */	bl OSReport
/* 80354430 0031D9F0  7F A3 EB 78 */	mr r3, r29
/* 80354434 0031D9F4  48 00 07 7D */	bl OSDumpContext
/* 80354438 0031D9F8  4B F8 67 99 */	bl PPCHalt
.L_8035443C:
/* 8035443C 0031D9FC  38 7F 00 98 */	addi r3, r31, 0x98
/* 80354440 0031DA00  4C C6 31 82 */	crclr 6
/* 80354444 0031DA04  48 00 0A AD */	bl OSReport
/* 80354448 0031DA08  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8035444C 0031DA0C  4C C6 31 82 */	crclr 6
/* 80354450 0031DA10  48 00 0A A1 */	bl OSReport
/* 80354454 0031DA14  57 C0 02 11 */	rlwinm. r0, r30, 0, 8, 8
/* 80354458 0031DA18  41 82 00 10 */	beq .L_80354468
/* 8035445C 0031DA1C  38 7F 01 0C */	addi r3, r31, 0x10c
/* 80354460 0031DA20  4C C6 31 82 */	crclr 6
/* 80354464 0031DA24  48 00 0A 8D */	bl OSReport
.L_80354468:
/* 80354468 0031DA28  57 C0 02 53 */	rlwinm. r0, r30, 0, 9, 9
/* 8035446C 0031DA2C  41 82 00 10 */	beq .L_8035447C
/* 80354470 0031DA30  38 7F 01 4C */	addi r3, r31, 0x14c
/* 80354474 0031DA34  4C C6 31 82 */	crclr 6
/* 80354478 0031DA38  48 00 0A 79 */	bl OSReport
.L_8035447C:
/* 8035447C 0031DA3C  57 C0 02 95 */	rlwinm. r0, r30, 0, 0xa, 0xa
/* 80354480 0031DA40  41 82 00 10 */	beq .L_80354490
/* 80354484 0031DA44  38 7F 01 78 */	addi r3, r31, 0x178
/* 80354488 0031DA48  4C C6 31 82 */	crclr 6
/* 8035448C 0031DA4C  48 00 0A 65 */	bl OSReport
.L_80354490:
/* 80354490 0031DA50  57 C0 02 D7 */	rlwinm. r0, r30, 0, 0xb, 0xb
/* 80354494 0031DA54  41 82 00 10 */	beq .L_803544A4
/* 80354498 0031DA58  38 7F 01 98 */	addi r3, r31, 0x198
/* 8035449C 0031DA5C  4C C6 31 82 */	crclr 6
/* 803544A0 0031DA60  48 00 0A 51 */	bl OSReport
.L_803544A4:
/* 803544A4 0031DA64  7F C3 F3 78 */	mr r3, r30
/* 803544A8 0031DA68  4B F8 68 09 */	bl PPCMthid2
/* 803544AC 0031DA6C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803544B0 0031DA70  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803544B4 0031DA74  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 803544B8 0031DA78  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 803544BC 0031DA7C  7C 08 03 A6 */	mtlr r0
/* 803544C0 0031DA80  38 21 00 80 */	addi r1, r1, 0x80
/* 803544C4 0031DA84  4E 80 00 20 */	blr 
.endfn DMAErrorHandler

.balign 16, 0
.fn __OSCacheInit, global
/* 803544D0 0031DA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803544D4 0031DA94  7C 08 02 A6 */	mflr r0
/* 803544D8 0031DA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803544DC 0031DA9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803544E0 0031DAA0  3F E0 80 55 */	lis r31, lbl_80551838@ha
/* 803544E4 0031DAA4  3B FF 18 38 */	addi r31, r31, lbl_80551838@l
/* 803544E8 0031DAA8  93 C1 00 08 */	stw r30, 8(r1)
/* 803544EC 0031DAAC  4B F8 66 85 */	bl PPCMfhid0
/* 803544F0 0031DAB0  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 803544F4 0031DAB4  40 82 00 14 */	bne .L_80354508
/* 803544F8 0031DAB8  4B FF FB F9 */	bl ICEnable
/* 803544FC 0031DABC  38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 80354500 0031DAC0  4C C6 31 82 */	crclr 6
/* 80354504 0031DAC4  4B FB 4C BD */	bl DBPrintf
.L_80354508:
/* 80354508 0031DAC8  4B F8 66 69 */	bl PPCMfhid0
/* 8035450C 0031DACC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80354510 0031DAD0  40 82 00 14 */	bne .L_80354524
/* 80354514 0031DAD4  4B FF FA 4D */	bl DCEnable
/* 80354518 0031DAD8  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 8035451C 0031DADC  4C C6 31 82 */	crclr 6
/* 80354520 0031DAE0  4B FB 4C A1 */	bl DBPrintf
.L_80354524:
/* 80354524 0031DAE4  4B F8 66 6D */	bl PPCMfl2cr
/* 80354528 0031DAE8  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8035452C 0031DAEC  40 82 00 A8 */	bne .L_803545D4
/* 80354530 0031DAF0  4B F8 66 21 */	bl PPCMfmsr
/* 80354534 0031DAF4  7C 7E 1B 78 */	mr r30, r3
/* 80354538 0031DAF8  7C 00 04 AC */	sync 0
/* 8035453C 0031DAFC  38 60 00 30 */	li r3, 0x30
/* 80354540 0031DB00  4B F8 66 21 */	bl PPCMtmsr
/* 80354544 0031DB04  7C 00 04 AC */	sync 0
/* 80354548 0031DB08  7C 00 04 AC */	sync 0
/* 8035454C 0031DB0C  4B F8 66 45 */	bl PPCMfl2cr
/* 80354550 0031DB10  54 63 00 7E */	clrlwi r3, r3, 1
/* 80354554 0031DB14  4B F8 66 4D */	bl PPCMtl2cr
/* 80354558 0031DB18  7C 00 04 AC */	sync 0
/* 8035455C 0031DB1C  7C 00 04 AC */	sync 0
/* 80354560 0031DB20  4B F8 66 31 */	bl PPCMfl2cr
/* 80354564 0031DB24  54 63 00 7E */	clrlwi r3, r3, 1
/* 80354568 0031DB28  4B F8 66 39 */	bl PPCMtl2cr
/* 8035456C 0031DB2C  7C 00 04 AC */	sync 0
/* 80354570 0031DB30  4B F8 66 21 */	bl PPCMfl2cr
/* 80354574 0031DB34  64 63 00 20 */	oris r3, r3, 0x20
/* 80354578 0031DB38  4B F8 66 29 */	bl PPCMtl2cr
.L_8035457C:
/* 8035457C 0031DB3C  4B F8 66 15 */	bl PPCMfl2cr
/* 80354580 0031DB40  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80354584 0031DB44  40 82 FF F8 */	bne .L_8035457C
/* 80354588 0031DB48  4B F8 66 09 */	bl PPCMfl2cr
/* 8035458C 0031DB4C  54 63 02 D2 */	rlwinm r3, r3, 0, 0xb, 9
/* 80354590 0031DB50  4B F8 66 11 */	bl PPCMtl2cr
/* 80354594 0031DB54  48 00 00 10 */	b .L_803545A4
.L_80354598:
/* 80354598 0031DB58  38 7F 00 00 */	addi r3, r31, 0
/* 8035459C 0031DB5C  4C C6 31 82 */	crclr 6
/* 803545A0 0031DB60  4B FB 4C 21 */	bl DBPrintf
.L_803545A4:
/* 803545A4 0031DB64  4B F8 65 ED */	bl PPCMfl2cr
/* 803545A8 0031DB68  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803545AC 0031DB6C  40 82 FF EC */	bne .L_80354598
/* 803545B0 0031DB70  7F C3 F3 78 */	mr r3, r30
/* 803545B4 0031DB74  4B F8 65 AD */	bl PPCMtmsr
/* 803545B8 0031DB78  4B F8 65 D9 */	bl PPCMfl2cr
/* 803545BC 0031DB7C  64 60 80 00 */	oris r0, r3, 0x8000
/* 803545C0 0031DB80  54 03 02 D2 */	rlwinm r3, r0, 0, 0xb, 9
/* 803545C4 0031DB84  4B F8 65 DD */	bl PPCMtl2cr
/* 803545C8 0031DB88  38 7F 01 EC */	addi r3, r31, 0x1ec
/* 803545CC 0031DB8C  4C C6 31 82 */	crclr 6
/* 803545D0 0031DB90  4B FB 4B F1 */	bl DBPrintf
.L_803545D4:
/* 803545D4 0031DB94  3C 80 80 35 */	lis r4, DMAErrorHandler@ha
/* 803545D8 0031DB98  38 60 00 01 */	li r3, 1
/* 803545DC 0031DB9C  38 84 43 80 */	addi r4, r4, DMAErrorHandler@l
/* 803545E0 0031DBA0  48 00 09 A1 */	bl OSSetErrorHandler
/* 803545E4 0031DBA4  38 7F 02 04 */	addi r3, r31, 0x204
/* 803545E8 0031DBA8  4C C6 31 82 */	crclr 6
/* 803545EC 0031DBAC  4B FB 4B D5 */	bl DBPrintf
/* 803545F0 0031DBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803545F4 0031DBB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803545F8 0031DBB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803545FC 0031DBBC  7C 08 03 A6 */	mtlr r0
/* 80354600 0031DBC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80354604 0031DBC4  4E 80 00 20 */	blr 
.endfn __OSCacheInit

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80551838, global
	.asciz ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.balign 4
	.4byte 0
	.asciz "Machine check received\n"
	.asciz "HID2 = 0x%x   SRR1 = 0x%x\n"
	.balign 4
	.4byte 0
	.asciz "Machine check was not DMA/locked cache related\n"
	.asciz "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.asciz "The following errors have been detected and cleared :\n"
	.balign 4
	.asciz "\t- Requested a locked cache tag that was already in the cache\n"
	.balign 4
	.asciz "\t- DMA attempted to access normal cache\n"
	.balign 4
	.asciz "\t- DMA missed in data cache\n"
	.balign 4
	.asciz "\t- DMA queue overflowed\n"
	.balign 4
	.asciz "L1 i-caches initialized\n"
	.balign 4
	.asciz "L1 d-caches initialized\n"
	.balign 4
	.asciz "L2 cache initialized\n"
	.balign 4
	.asciz "Locked cache machine check handler installed\n"
	.balign 4
	.4byte 0
.endobj lbl_80551838
