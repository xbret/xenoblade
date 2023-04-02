.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CCol6Invite, global
/* 80163FB8 0012D578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80163FBC 0012D57C  7C 08 02 A6 */	mflr r0
/* 80163FC0 0012D580  90 01 00 24 */	stw r0, 0x24(r1)
/* 80163FC4 0012D584  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80163FC8 0012D588  7C 7B 1B 78 */	mr r27, r3
/* 80163FCC 0012D58C  7C 9C 23 78 */	mr r28, r4
/* 80163FD0 0012D590  7C BD 2B 78 */	mr r29, r5
/* 80163FD4 0012D594  7C DE 33 78 */	mr r30, r6
/* 80163FD8 0012D598  80 0D A9 AC */	lwz r0, lbl_80666B2C@sda21(r13)
/* 80163FDC 0012D59C  2C 00 00 00 */	cmpwi r0, 0
/* 80163FE0 0012D5A0  41 82 00 0C */	beq .L_80163FEC
/* 80163FE4 0012D5A4  38 60 00 00 */	li r3, 0
/* 80163FE8 0012D5A8  48 00 00 D4 */	b .L_801640BC
.L_80163FEC:
/* 80163FEC 0012D5AC  48 2D 35 C9 */	bl getHeapIndex
/* 80163FF0 0012D5B0  7C 64 1B 78 */	mr r4, r3
/* 80163FF4 0012D5B4  38 60 00 78 */	li r3, 0x78
/* 80163FF8 0012D5B8  48 2D 0A 65 */	bl heap_malloc
/* 80163FFC 0012D5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80164000 0012D5C0  7C 7F 1B 78 */	mr r31, r3
/* 80164004 0012D5C4  41 82 00 A0 */	beq .L_801640A4
/* 80164008 0012D5C8  48 2E 0A 11 */	bl __ct__8CProcessFv
/* 8016400C 0012D5CC  3C 60 80 53 */	lis r3, __vt__CTTask_IUIWindow@ha
/* 80164010 0012D5D0  3D 20 80 51 */	lis r9, lbl_8050CE10@ha
/* 80164014 0012D5D4  38 63 0A 08 */	addi r3, r3, __vt__CTTask_IUIWindow@l
/* 80164018 0012D5D8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8016401C 0012D5DC  39 29 CE 10 */	addi r9, r9, lbl_8050CE10@l
/* 80164020 0012D5E0  38 C0 00 00 */	li r6, 0
/* 80164024 0012D5E4  80 E9 00 04 */	lwz r7, 4(r9)
/* 80164028 0012D5E8  3C 60 80 53 */	lis r3, __vt__CCol6Invite@ha
/* 8016402C 0012D5EC  80 09 00 00 */	lwz r0, 0(r9)
/* 80164030 0012D5F0  38 A0 FF FF */	li r5, -1
/* 80164034 0012D5F4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80164038 0012D5F8  38 63 37 0C */	addi r3, r3, __vt__CCol6Invite@l
/* 8016403C 0012D5FC  38 80 00 01 */	li r4, 1
/* 80164040 0012D600  90 FF 00 40 */	stw r7, 0x40(r31)
/* 80164044 0012D604  38 03 00 24 */	addi r0, r3, 0x24
/* 80164048 0012D608  80 E9 00 08 */	lwz r7, 8(r9)
/* 8016404C 0012D60C  90 FF 00 44 */	stw r7, 0x44(r31)
/* 80164050 0012D610  80 E9 00 04 */	lwz r7, 4(r9)
/* 80164054 0012D614  81 09 00 00 */	lwz r8, 0(r9)
/* 80164058 0012D618  91 1F 00 48 */	stw r8, 0x48(r31)
/* 8016405C 0012D61C  90 FF 00 4C */	stw r7, 0x4c(r31)
/* 80164060 0012D620  80 E9 00 08 */	lwz r7, 8(r9)
/* 80164064 0012D624  90 FF 00 50 */	stw r7, 0x50(r31)
/* 80164068 0012D628  90 DF 00 54 */	stw r6, 0x54(r31)
/* 8016406C 0012D62C  90 DF 00 58 */	stw r6, 0x58(r31)
/* 80164070 0012D630  90 DF 00 5C */	stw r6, 0x5c(r31)
/* 80164074 0012D634  90 BF 00 60 */	stw r5, 0x60(r31)
/* 80164078 0012D638  98 DF 00 64 */	stb r6, 0x64(r31)
/* 8016407C 0012D63C  98 DF 00 65 */	stb r6, 0x65(r31)
/* 80164080 0012D640  98 DF 00 66 */	stb r6, 0x66(r31)
/* 80164084 0012D644  98 9F 00 67 */	stb r4, 0x67(r31)
/* 80164088 0012D648  90 DF 00 68 */	stw r6, 0x68(r31)
/* 8016408C 0012D64C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80164090 0012D650  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80164094 0012D654  B3 9F 00 70 */	sth r28, 0x70(r31)
/* 80164098 0012D658  9B BF 00 72 */	stb r29, 0x72(r31)
/* 8016409C 0012D65C  9B DF 00 73 */	stb r30, 0x73(r31)
/* 801640A0 0012D660  98 DF 00 74 */	stb r6, 0x74(r31)
.L_801640A4:
/* 801640A4 0012D664  93 ED A9 AC */	stw r31, lbl_80666B2C@sda21(r13)
/* 801640A8 0012D668  7F E3 FB 78 */	mr r3, r31
/* 801640AC 0012D66C  7F 64 DB 78 */	mr r4, r27
/* 801640B0 0012D670  38 A0 00 00 */	li r5, 0
/* 801640B4 0012D674  48 2E 0B C1 */	bl func_80444C74
/* 801640B8 0012D678  80 6D A9 AC */	lwz r3, lbl_80666B2C@sda21(r13)
.L_801640BC:
/* 801640BC 0012D67C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 801640C0 0012D680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801640C4 0012D684  7C 08 03 A6 */	mtlr r0
/* 801640C8 0012D688  38 21 00 20 */	addi r1, r1, 0x20
/* 801640CC 0012D68C  4E 80 00 20 */	blr 
.endfn __ct__CCol6Invite

.fn func_801640D0, global
/* 801640D0 0012D690  38 63 FF 94 */	addi r3, r3, -108
/* 801640D4 0012D694  4B FF 90 00 */	b __dt__CCol6CheckBat
.endfn func_801640D0

.fn CCol6Hint_OnFileEvent, global
/* 801640D8 0012D698  38 63 FF 94 */	addi r3, r3, -108
/* 801640DC 0012D69C  4B FF 9A 2C */	b func_8015DB08
.endfn CCol6Hint_OnFileEvent

.fn func_801640E0, global
/* 801640E0 0012D6A0  38 63 FF 94 */	addi r3, r3, -108
/* 801640E4 0012D6A4  4B FF 94 B0 */	b __dt__CCol6Hint
.endfn func_801640E0

.fn func_801640E8, global
/* 801640E8 0012D6A8  38 63 FF 90 */	addi r3, r3, -112
/* 801640EC 0012D6AC  4B FF 9B 18 */	b func_8015DC04
.endfn func_801640E8

.fn func_801640F0, global
/* 801640F0 0012D6B0  38 63 FF 90 */	addi r3, r3, -112
/* 801640F4 0012D6B4  4B FF 94 A0 */	b __dt__CCol6Hint
.endfn func_801640F0

.fn CCol6System_OnFileEvent, global
/* 801640F8 0012D6B8  38 63 FF 94 */	addi r3, r3, -108
/* 801640FC 0012D6BC  4B FF C0 1C */	b func_80160118
.endfn CCol6System_OnFileEvent

.fn func_80164100, global
/* 80164100 0012D6C0  38 63 FF 94 */	addi r3, r3, -108
/* 80164104 0012D6C4  4B FF AA B0 */	b __dt__CCol6System
.endfn func_80164100

.fn func_80164108, global
/* 80164108 0012D6C8  38 63 FF 90 */	addi r3, r3, -112
/* 8016410C 0012D6CC  4B FF C1 08 */	b func_80160214
.endfn func_80164108

.fn func_80164110, global
/* 80164110 0012D6D0  38 63 FF 90 */	addi r3, r3, -112
/* 80164114 0012D6D4  4B FF AA A0 */	b __dt__CCol6System
.endfn func_80164110

.fn func_80164118, global
/* 80164118 0012D6D8  38 63 FF 94 */	addi r3, r3, -108
/* 8016411C 0012D6DC  4B FF FB EC */	b __dt__CCol6Invite
.endfn func_80164118

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000DA98", local
.hidden "@etb_8000DA98"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_8000DA98"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80028BBC", local
.hidden "@eti_80028BBC"
	.4byte __ct__CCol6Invite
	.4byte 0x00000118
	.4byte "@etb_8000DA98"
.endobj "@eti_80028BBC"
