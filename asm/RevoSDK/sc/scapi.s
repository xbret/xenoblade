.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global SCGetAspectRatio
SCGetAspectRatio:
/* 80360EC0 0032A480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80360EC4 0032A484  7C 08 02 A6 */	mflr r0
/* 80360EC8 0032A488  38 80 00 01 */	li r4, 1
/* 80360ECC 0032A48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80360ED0 0032A490  38 61 00 08 */	addi r3, r1, 8
/* 80360ED4 0032A494  4B FF F6 CD */	bl SCFindU8Item
/* 80360ED8 0032A498  2C 03 00 00 */	cmpwi r3, 0
/* 80360EDC 0032A49C  40 82 00 10 */	bne lbl_80360EEC
/* 80360EE0 0032A4A0  38 00 00 00 */	li r0, 0
/* 80360EE4 0032A4A4  98 01 00 08 */	stb r0, 8(r1)
/* 80360EE8 0032A4A8  48 00 00 18 */	b lbl_80360F00
lbl_80360EEC:
/* 80360EEC 0032A4AC  88 01 00 08 */	lbz r0, 8(r1)
/* 80360EF0 0032A4B0  28 00 00 01 */	cmplwi r0, 1
/* 80360EF4 0032A4B4  41 82 00 0C */	beq lbl_80360F00
/* 80360EF8 0032A4B8  38 00 00 00 */	li r0, 0
/* 80360EFC 0032A4BC  98 01 00 08 */	stb r0, 8(r1)
lbl_80360F00:
/* 80360F00 0032A4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80360F04 0032A4C4  88 61 00 08 */	lbz r3, 8(r1)
/* 80360F08 0032A4C8  7C 08 03 A6 */	mtlr r0
/* 80360F0C 0032A4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80360F10 0032A4D0  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetDisplayOffsetH
SCGetDisplayOffsetH:
/* 80360F20 0032A4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80360F24 0032A4E4  7C 08 02 A6 */	mflr r0
/* 80360F28 0032A4E8  38 80 00 05 */	li r4, 5
/* 80360F2C 0032A4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80360F30 0032A4F0  38 61 00 08 */	addi r3, r1, 8
/* 80360F34 0032A4F4  4B FF F7 4D */	bl SCFindS8Item
/* 80360F38 0032A4F8  2C 03 00 00 */	cmpwi r3, 0
/* 80360F3C 0032A4FC  40 82 00 10 */	bne lbl_80360F4C
/* 80360F40 0032A500  38 00 00 00 */	li r0, 0
/* 80360F44 0032A504  98 01 00 08 */	stb r0, 8(r1)
/* 80360F48 0032A508  48 00 00 30 */	b lbl_80360F78
lbl_80360F4C:
/* 80360F4C 0032A50C  88 01 00 08 */	lbz r0, 8(r1)
/* 80360F50 0032A510  7C 00 07 74 */	extsb r0, r0
/* 80360F54 0032A514  2C 00 FF E0 */	cmpwi r0, -32
/* 80360F58 0032A518  40 80 00 10 */	bge lbl_80360F68
/* 80360F5C 0032A51C  38 00 FF E0 */	li r0, -32
/* 80360F60 0032A520  98 01 00 08 */	stb r0, 8(r1)
/* 80360F64 0032A524  48 00 00 14 */	b lbl_80360F78
lbl_80360F68:
/* 80360F68 0032A528  2C 00 00 20 */	cmpwi r0, 0x20
/* 80360F6C 0032A52C  40 81 00 0C */	ble lbl_80360F78
/* 80360F70 0032A530  38 00 00 20 */	li r0, 0x20
/* 80360F74 0032A534  98 01 00 08 */	stb r0, 8(r1)
lbl_80360F78:
/* 80360F78 0032A538  88 01 00 08 */	lbz r0, 8(r1)
/* 80360F7C 0032A53C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80360F80 0032A540  7C 03 07 74 */	extsb r3, r0
/* 80360F84 0032A544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80360F88 0032A548  7C 08 03 A6 */	mtlr r0
/* 80360F8C 0032A54C  38 21 00 10 */	addi r1, r1, 0x10
/* 80360F90 0032A550  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetEuRgb60Mode
SCGetEuRgb60Mode:
/* 80360FA0 0032A560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80360FA4 0032A564  7C 08 02 A6 */	mflr r0
/* 80360FA8 0032A568  38 80 00 06 */	li r4, 6
/* 80360FAC 0032A56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80360FB0 0032A570  38 61 00 08 */	addi r3, r1, 8
/* 80360FB4 0032A574  4B FF F5 ED */	bl SCFindU8Item
/* 80360FB8 0032A578  2C 03 00 00 */	cmpwi r3, 0
/* 80360FBC 0032A57C  40 82 00 10 */	bne lbl_80360FCC
/* 80360FC0 0032A580  38 00 00 00 */	li r0, 0
/* 80360FC4 0032A584  98 01 00 08 */	stb r0, 8(r1)
/* 80360FC8 0032A588  48 00 00 18 */	b lbl_80360FE0
lbl_80360FCC:
/* 80360FCC 0032A58C  88 01 00 08 */	lbz r0, 8(r1)
/* 80360FD0 0032A590  28 00 00 01 */	cmplwi r0, 1
/* 80360FD4 0032A594  41 82 00 0C */	beq lbl_80360FE0
/* 80360FD8 0032A598  38 00 00 00 */	li r0, 0
/* 80360FDC 0032A59C  98 01 00 08 */	stb r0, 8(r1)
lbl_80360FE0:
/* 80360FE0 0032A5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80360FE4 0032A5A4  88 61 00 08 */	lbz r3, 8(r1)
/* 80360FE8 0032A5A8  7C 08 03 A6 */	mtlr r0
/* 80360FEC 0032A5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80360FF0 0032A5B0  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetIdleMode
SCGetIdleMode:
/* 80361000 0032A5C0  38 80 00 02 */	li r4, 2
/* 80361004 0032A5C4  38 A0 00 09 */	li r5, 9
/* 80361008 0032A5C8  4B FF F3 88 */	b SCFindByteArrayItem

.balign 16, 0
.global SCGetLanguage
SCGetLanguage:
/* 80361010 0032A5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361014 0032A5D4  7C 08 02 A6 */	mflr r0
/* 80361018 0032A5D8  38 80 00 0B */	li r4, 0xb
/* 8036101C 0032A5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80361020 0032A5E0  38 61 00 08 */	addi r3, r1, 8
/* 80361024 0032A5E4  4B FF F5 7D */	bl SCFindU8Item
/* 80361028 0032A5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8036102C 0032A5EC  40 82 00 28 */	bne lbl_80361054
/* 80361030 0032A5F0  48 00 05 11 */	bl SCGetProductArea
/* 80361034 0032A5F4  7C 60 07 75 */	extsb. r0, r3
/* 80361038 0032A5F8  40 82 00 10 */	bne lbl_80361048
/* 8036103C 0032A5FC  38 00 00 00 */	li r0, 0
/* 80361040 0032A600  98 01 00 08 */	stb r0, 8(r1)
/* 80361044 0032A604  48 00 00 24 */	b lbl_80361068
lbl_80361048:
/* 80361048 0032A608  38 00 00 01 */	li r0, 1
/* 8036104C 0032A60C  98 01 00 08 */	stb r0, 8(r1)
/* 80361050 0032A610  48 00 00 18 */	b lbl_80361068
lbl_80361054:
/* 80361054 0032A614  88 01 00 08 */	lbz r0, 8(r1)
/* 80361058 0032A618  28 00 00 09 */	cmplwi r0, 9
/* 8036105C 0032A61C  40 81 00 0C */	ble lbl_80361068
/* 80361060 0032A620  38 00 00 01 */	li r0, 1
/* 80361064 0032A624  98 01 00 08 */	stb r0, 8(r1)
lbl_80361068:
/* 80361068 0032A628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036106C 0032A62C  88 61 00 08 */	lbz r3, 8(r1)
/* 80361070 0032A630  7C 08 03 A6 */	mtlr r0
/* 80361074 0032A634  38 21 00 10 */	addi r1, r1, 0x10
/* 80361078 0032A638  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetProgressiveMode
SCGetProgressiveMode:
/* 80361080 0032A640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361084 0032A644  7C 08 02 A6 */	mflr r0
/* 80361088 0032A648  38 80 00 0E */	li r4, 0xe
/* 8036108C 0032A64C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80361090 0032A650  38 61 00 08 */	addi r3, r1, 8
/* 80361094 0032A654  4B FF F5 0D */	bl SCFindU8Item
/* 80361098 0032A658  2C 03 00 00 */	cmpwi r3, 0
/* 8036109C 0032A65C  40 82 00 10 */	bne lbl_803610AC
/* 803610A0 0032A660  38 00 00 00 */	li r0, 0
/* 803610A4 0032A664  98 01 00 08 */	stb r0, 8(r1)
/* 803610A8 0032A668  48 00 00 18 */	b lbl_803610C0
lbl_803610AC:
/* 803610AC 0032A66C  88 01 00 08 */	lbz r0, 8(r1)
/* 803610B0 0032A670  28 00 00 01 */	cmplwi r0, 1
/* 803610B4 0032A674  41 82 00 0C */	beq lbl_803610C0
/* 803610B8 0032A678  38 00 00 00 */	li r0, 0
/* 803610BC 0032A67C  98 01 00 08 */	stb r0, 8(r1)
lbl_803610C0:
/* 803610C0 0032A680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803610C4 0032A684  88 61 00 08 */	lbz r3, 8(r1)
/* 803610C8 0032A688  7C 08 03 A6 */	mtlr r0
/* 803610CC 0032A68C  38 21 00 10 */	addi r1, r1, 0x10
/* 803610D0 0032A690  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetScreenSaverMode
SCGetScreenSaverMode:
/* 803610E0 0032A6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803610E4 0032A6A4  7C 08 02 A6 */	mflr r0
/* 803610E8 0032A6A8  38 80 00 0F */	li r4, 0xf
/* 803610EC 0032A6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803610F0 0032A6B0  38 61 00 08 */	addi r3, r1, 8
/* 803610F4 0032A6B4  4B FF F4 AD */	bl SCFindU8Item
/* 803610F8 0032A6B8  2C 03 00 00 */	cmpwi r3, 0
/* 803610FC 0032A6BC  40 82 00 10 */	bne lbl_8036110C
/* 80361100 0032A6C0  38 00 00 01 */	li r0, 1
/* 80361104 0032A6C4  98 01 00 08 */	stb r0, 8(r1)
/* 80361108 0032A6C8  48 00 00 18 */	b lbl_80361120
lbl_8036110C:
/* 8036110C 0032A6CC  88 01 00 08 */	lbz r0, 8(r1)
/* 80361110 0032A6D0  28 00 00 01 */	cmplwi r0, 1
/* 80361114 0032A6D4  41 82 00 0C */	beq lbl_80361120
/* 80361118 0032A6D8  38 00 00 00 */	li r0, 0
/* 8036111C 0032A6DC  98 01 00 08 */	stb r0, 8(r1)
lbl_80361120:
/* 80361120 0032A6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80361124 0032A6E4  88 61 00 08 */	lbz r3, 8(r1)
/* 80361128 0032A6E8  7C 08 03 A6 */	mtlr r0
/* 8036112C 0032A6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80361130 0032A6F0  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetSoundMode
SCGetSoundMode:
/* 80361140 0032A700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361144 0032A704  7C 08 02 A6 */	mflr r0
/* 80361148 0032A708  38 80 00 11 */	li r4, 0x11
/* 8036114C 0032A70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80361150 0032A710  38 61 00 08 */	addi r3, r1, 8
/* 80361154 0032A714  4B FF F4 4D */	bl SCFindU8Item
/* 80361158 0032A718  2C 03 00 00 */	cmpwi r3, 0
/* 8036115C 0032A71C  40 82 00 10 */	bne lbl_8036116C
/* 80361160 0032A720  38 00 00 01 */	li r0, 1
/* 80361164 0032A724  98 01 00 08 */	stb r0, 8(r1)
/* 80361168 0032A728  48 00 00 18 */	b lbl_80361180
lbl_8036116C:
/* 8036116C 0032A72C  88 01 00 08 */	lbz r0, 8(r1)
/* 80361170 0032A730  28 00 00 02 */	cmplwi r0, 2
/* 80361174 0032A734  40 81 00 0C */	ble lbl_80361180
/* 80361178 0032A738  38 00 00 01 */	li r0, 1
/* 8036117C 0032A73C  98 01 00 08 */	stb r0, 8(r1)
lbl_80361180:
/* 80361180 0032A740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80361184 0032A744  88 61 00 08 */	lbz r3, 8(r1)
/* 80361188 0032A748  7C 08 03 A6 */	mtlr r0
/* 8036118C 0032A74C  38 21 00 10 */	addi r1, r1, 0x10
/* 80361190 0032A750  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetCounterBias
SCGetCounterBias:
/* 803611A0 0032A760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803611A4 0032A764  7C 08 02 A6 */	mflr r0
/* 803611A8 0032A768  38 80 00 00 */	li r4, 0
/* 803611AC 0032A76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803611B0 0032A770  38 61 00 08 */	addi r3, r1, 8
/* 803611B4 0032A774  4B FF F5 AD */	bl SCFindU32Item
/* 803611B8 0032A778  2C 03 00 00 */	cmpwi r3, 0
/* 803611BC 0032A77C  40 82 00 10 */	bne lbl_803611CC
/* 803611C0 0032A780  3C 60 0B 4A */	lis r3, 0x0B49D800@ha
/* 803611C4 0032A784  38 03 D8 00 */	addi r0, r3, 0x0B49D800@l
/* 803611C8 0032A788  90 01 00 08 */	stw r0, 8(r1)
lbl_803611CC:
/* 803611CC 0032A78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803611D0 0032A790  80 61 00 08 */	lwz r3, 8(r1)
/* 803611D4 0032A794  7C 08 03 A6 */	mtlr r0
/* 803611D8 0032A798  38 21 00 10 */	addi r1, r1, 0x10
/* 803611DC 0032A79C  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetBtDeviceInfoArray
SCGetBtDeviceInfoArray:
/* 803611E0 0032A7A0  38 80 04 61 */	li r4, 0x461
/* 803611E4 0032A7A4  38 A0 00 1C */	li r5, 0x1c
/* 803611E8 0032A7A8  4B FF F1 A8 */	b SCFindByteArrayItem

.balign 16, 0
.global SCSetBtDeviceInfoArray
SCSetBtDeviceInfoArray:
/* 803611F0 0032A7B0  38 80 04 61 */	li r4, 0x461
/* 803611F4 0032A7B4  38 A0 00 1C */	li r5, 0x1c
/* 803611F8 0032A7B8  4B FF F2 78 */	b SCReplaceByteArrayItem

.balign 16, 0
.global SCGetBtCmpDevInfoArray
SCGetBtCmpDevInfoArray:
/* 80361200 0032A7C0  38 80 02 05 */	li r4, 0x205
/* 80361204 0032A7C4  38 A0 00 1D */	li r5, 0x1d
/* 80361208 0032A7C8  4B FF F1 88 */	b SCFindByteArrayItem

.balign 16, 0
.global SCSetBtCmpDevInfoArray
SCSetBtCmpDevInfoArray:
/* 80361210 0032A7D0  38 80 02 05 */	li r4, 0x205
/* 80361214 0032A7D4  38 A0 00 1D */	li r5, 0x1d
/* 80361218 0032A7D8  4B FF F2 58 */	b SCReplaceByteArrayItem

.balign 16, 0
.global SCGetBtDpdSensibility
SCGetBtDpdSensibility:
/* 80361220 0032A7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361224 0032A7E4  7C 08 02 A6 */	mflr r0
/* 80361228 0032A7E8  38 80 00 1E */	li r4, 0x1e
/* 8036122C 0032A7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80361230 0032A7F0  38 61 00 08 */	addi r3, r1, 8
/* 80361234 0032A7F4  4B FF F5 2D */	bl SCFindU32Item
/* 80361238 0032A7F8  2C 03 00 00 */	cmpwi r3, 0
/* 8036123C 0032A7FC  40 82 00 10 */	bne lbl_8036124C
/* 80361240 0032A800  38 00 00 02 */	li r0, 2
/* 80361244 0032A804  90 01 00 08 */	stw r0, 8(r1)
/* 80361248 0032A808  48 00 00 2C */	b lbl_80361274
lbl_8036124C:
/* 8036124C 0032A80C  80 01 00 08 */	lwz r0, 8(r1)
/* 80361250 0032A810  28 00 00 01 */	cmplwi r0, 1
/* 80361254 0032A814  40 80 00 10 */	bge lbl_80361264
/* 80361258 0032A818  38 00 00 01 */	li r0, 1
/* 8036125C 0032A81C  90 01 00 08 */	stw r0, 8(r1)
/* 80361260 0032A820  48 00 00 14 */	b lbl_80361274
lbl_80361264:
/* 80361264 0032A824  28 00 00 05 */	cmplwi r0, 5
/* 80361268 0032A828  40 81 00 0C */	ble lbl_80361274
/* 8036126C 0032A82C  38 00 00 05 */	li r0, 5
/* 80361270 0032A830  90 01 00 08 */	stw r0, 8(r1)
lbl_80361274:
/* 80361274 0032A834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80361278 0032A838  80 61 00 08 */	lwz r3, 8(r1)
/* 8036127C 0032A83C  7C 08 03 A6 */	mtlr r0
/* 80361280 0032A840  38 21 00 10 */	addi r1, r1, 0x10
/* 80361284 0032A844  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetWpadMotorMode
SCGetWpadMotorMode:
/* 80361290 0032A850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361294 0032A854  7C 08 02 A6 */	mflr r0
/* 80361298 0032A858  38 80 00 20 */	li r4, 0x20
/* 8036129C 0032A85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803612A0 0032A860  38 61 00 08 */	addi r3, r1, 8
/* 803612A4 0032A864  4B FF F2 FD */	bl SCFindU8Item
/* 803612A8 0032A868  2C 03 00 00 */	cmpwi r3, 0
/* 803612AC 0032A86C  40 82 00 10 */	bne lbl_803612BC
/* 803612B0 0032A870  38 00 00 01 */	li r0, 1
/* 803612B4 0032A874  98 01 00 08 */	stb r0, 8(r1)
/* 803612B8 0032A878  48 00 00 18 */	b lbl_803612D0
lbl_803612BC:
/* 803612BC 0032A87C  88 01 00 08 */	lbz r0, 8(r1)
/* 803612C0 0032A880  28 00 00 01 */	cmplwi r0, 1
/* 803612C4 0032A884  41 82 00 0C */	beq lbl_803612D0
/* 803612C8 0032A888  38 00 00 00 */	li r0, 0
/* 803612CC 0032A88C  98 01 00 08 */	stb r0, 8(r1)
lbl_803612D0:
/* 803612D0 0032A890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803612D4 0032A894  88 61 00 08 */	lbz r3, 8(r1)
/* 803612D8 0032A898  7C 08 03 A6 */	mtlr r0
/* 803612DC 0032A89C  38 21 00 10 */	addi r1, r1, 0x10
/* 803612E0 0032A8A0  4E 80 00 20 */	blr 

.balign 16, 0
.global SCSetWpadMotorMode
SCSetWpadMotorMode:
/* 803612F0 0032A8B0  38 80 00 20 */	li r4, 0x20
/* 803612F4 0032A8B4  4B FF F5 4C */	b SCReplaceU8Item

.balign 16, 0
.global SCGetWpadSensorBarPosition
SCGetWpadSensorBarPosition:
/* 80361300 0032A8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361304 0032A8C4  7C 08 02 A6 */	mflr r0
/* 80361308 0032A8C8  38 80 00 21 */	li r4, 0x21
/* 8036130C 0032A8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80361310 0032A8D0  38 61 00 08 */	addi r3, r1, 8
/* 80361314 0032A8D4  4B FF F2 8D */	bl SCFindU8Item
/* 80361318 0032A8D8  2C 03 00 00 */	cmpwi r3, 0
/* 8036131C 0032A8DC  40 82 00 10 */	bne lbl_8036132C
/* 80361320 0032A8E0  38 00 00 00 */	li r0, 0
/* 80361324 0032A8E4  98 01 00 08 */	stb r0, 8(r1)
/* 80361328 0032A8E8  48 00 00 18 */	b lbl_80361340
lbl_8036132C:
/* 8036132C 0032A8EC  88 01 00 08 */	lbz r0, 8(r1)
/* 80361330 0032A8F0  28 00 00 01 */	cmplwi r0, 1
/* 80361334 0032A8F4  41 82 00 0C */	beq lbl_80361340
/* 80361338 0032A8F8  38 00 00 00 */	li r0, 0
/* 8036133C 0032A8FC  98 01 00 08 */	stb r0, 8(r1)
lbl_80361340:
/* 80361340 0032A900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80361344 0032A904  88 61 00 08 */	lbz r3, 8(r1)
/* 80361348 0032A908  7C 08 03 A6 */	mtlr r0
/* 8036134C 0032A90C  38 21 00 10 */	addi r1, r1, 0x10
/* 80361350 0032A910  4E 80 00 20 */	blr 

.balign 16, 0
.global SCGetWpadSpeakerVolume
SCGetWpadSpeakerVolume:
/* 80361360 0032A920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361364 0032A924  7C 08 02 A6 */	mflr r0
/* 80361368 0032A928  38 80 00 1F */	li r4, 0x1f
/* 8036136C 0032A92C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80361370 0032A930  38 61 00 08 */	addi r3, r1, 8
/* 80361374 0032A934  4B FF F2 2D */	bl SCFindU8Item
/* 80361378 0032A938  2C 03 00 00 */	cmpwi r3, 0
/* 8036137C 0032A93C  40 82 00 10 */	bne lbl_8036138C
/* 80361380 0032A940  38 00 00 59 */	li r0, 0x59
/* 80361384 0032A944  98 01 00 08 */	stb r0, 8(r1)
/* 80361388 0032A948  48 00 00 18 */	b lbl_803613A0
lbl_8036138C:
/* 8036138C 0032A94C  88 01 00 08 */	lbz r0, 8(r1)
/* 80361390 0032A950  28 00 00 7F */	cmplwi r0, 0x7f
/* 80361394 0032A954  40 81 00 0C */	ble lbl_803613A0
/* 80361398 0032A958  38 00 00 7F */	li r0, 0x7f
/* 8036139C 0032A95C  98 01 00 08 */	stb r0, 8(r1)
lbl_803613A0:
/* 803613A0 0032A960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803613A4 0032A964  88 61 00 08 */	lbz r3, 8(r1)
/* 803613A8 0032A968  7C 08 03 A6 */	mtlr r0
/* 803613AC 0032A96C  38 21 00 10 */	addi r1, r1, 0x10
/* 803613B0 0032A970  4E 80 00 20 */	blr 

.balign 16, 0
.global SCSetWpadSpeakerVolume
SCSetWpadSpeakerVolume:
/* 803613C0 0032A980  38 80 00 1F */	li r4, 0x1f
/* 803613C4 0032A984  4B FF F4 7C */	b SCReplaceU8Item
.balign 16, 0
