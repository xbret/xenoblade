.include "macros.inc"
.file "nw4r/snd/snd_TaskThread.o"

# 0x80425F30 - 0x8042614C
.text
.balign 4

# nw4r::snd::detail::TaskThread::TaskThread()
.fn __ct__Q44nw4r3snd6detail10TaskThreadFv, global
/* 80425F30 003EF4F0  38 00 00 00 */	li r0, 0x0
/* 80425F34 003EF4F4  90 03 03 18 */	stw r0, 0x318(r3)
/* 80425F38 003EF4F8  98 03 03 1C */	stb r0, 0x31c(r3)
/* 80425F3C 003EF4FC  98 03 03 1D */	stb r0, 0x31d(r3)
/* 80425F40 003EF500  4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail10TaskThreadFv

# nw4r::snd::detail::TaskThread::~TaskThread()
.fn __dt__Q44nw4r3snd6detail10TaskThreadFv, global
/* 80425F44 003EF504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80425F48 003EF508  7C 08 02 A6 */	mflr r0
/* 80425F4C 003EF50C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80425F50 003EF510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80425F54 003EF514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80425F58 003EF518  7C 9F 23 78 */	mr r31, r4
/* 80425F5C 003EF51C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80425F60 003EF520  7C 7E 1B 78 */	mr r30, r3
/* 80425F64 003EF524  41 82 00 48 */	beq .L_80425FAC
/* 80425F68 003EF528  88 03 03 1D */	lbz r0, 0x31d(r3)
/* 80425F6C 003EF52C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80425F70 003EF530  41 82 00 2C */	beq .L_80425F9C
/* 80425F74 003EF534  41 82 00 28 */	beq .L_80425F9C
/* 80425F78 003EF538  38 00 00 01 */	li r0, 0x1
/* 80425F7C 003EF53C  98 03 03 1C */	stb r0, 0x31c(r3)
/* 80425F80 003EF540  4B FF F8 45 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 80425F84 003EF544  4B FF FF 5D */	bl CancelWaitTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80425F88 003EF548  7F C3 F3 78 */	mr r3, r30
/* 80425F8C 003EF54C  38 80 00 00 */	li r4, 0x0
/* 80425F90 003EF550  4B F3 61 61 */	bl OSJoinThread
/* 80425F94 003EF554  38 00 00 00 */	li r0, 0x0
/* 80425F98 003EF558  98 1E 03 1D */	stb r0, 0x31d(r30)
.L_80425F9C:
/* 80425F9C 003EF55C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80425FA0 003EF560  40 81 00 0C */	ble .L_80425FAC
/* 80425FA4 003EF564  7F C3 F3 78 */	mr r3, r30
/* 80425FA8 003EF568  48 00 EC 85 */	bl __dl__FPv
.L_80425FAC:
/* 80425FAC 003EF56C  7F C3 F3 78 */	mr r3, r30
/* 80425FB0 003EF570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80425FB4 003EF574  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80425FB8 003EF578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425FBC 003EF57C  7C 08 03 A6 */	mtlr r0
/* 80425FC0 003EF580  38 21 00 10 */	addi r1, r1, 0x10
/* 80425FC4 003EF584  4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail10TaskThreadFv

# nw4r::snd::detail::TaskThread::Create(long, void*, unsigned long)
.fn Create__Q44nw4r3snd6detail10TaskThreadFlPvUl, global
/* 80425FC8 003EF588  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80425FCC 003EF58C  7C 08 02 A6 */	mflr r0
/* 80425FD0 003EF590  90 01 00 24 */	stw r0, 0x24(r1)
/* 80425FD4 003EF594  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80425FD8 003EF598  7C DF 33 78 */	mr r31, r6
/* 80425FDC 003EF59C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80425FE0 003EF5A0  7C BE 2B 78 */	mr r30, r5
/* 80425FE4 003EF5A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80425FE8 003EF5A8  7C 9D 23 78 */	mr r29, r4
/* 80425FEC 003EF5AC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80425FF0 003EF5B0  7C 7C 1B 78 */	mr r28, r3
/* 80425FF4 003EF5B4  88 03 03 1D */	lbz r0, 0x31d(r3)
/* 80425FF8 003EF5B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 80425FFC 003EF5BC  41 82 00 2C */	beq .L_80426028
/* 80426000 003EF5C0  41 82 00 28 */	beq .L_80426028
/* 80426004 003EF5C4  38 00 00 01 */	li r0, 0x1
/* 80426008 003EF5C8  98 03 03 1C */	stb r0, 0x31c(r3)
/* 8042600C 003EF5CC  4B FF F7 B9 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 80426010 003EF5D0  4B FF FE D1 */	bl CancelWaitTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80426014 003EF5D4  7F 83 E3 78 */	mr r3, r28
/* 80426018 003EF5D8  38 80 00 00 */	li r4, 0x0
/* 8042601C 003EF5DC  4B F3 60 D5 */	bl OSJoinThread
/* 80426020 003EF5E0  38 00 00 00 */	li r0, 0x0
/* 80426024 003EF5E4  98 1C 03 1D */	stb r0, 0x31d(r28)
.L_80426028:
/* 80426028 003EF5E8  3C 80 80 42 */	lis r4, ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv@ha
/* 8042602C 003EF5EC  7F 83 E3 78 */	mr r3, r28
/* 80426030 003EF5F0  7F 85 E3 78 */	mr r5, r28
/* 80426034 003EF5F4  7F E7 FB 78 */	mr r7, r31
/* 80426038 003EF5F8  7F A8 EB 78 */	mr r8, r29
/* 8042603C 003EF5FC  38 84 60 F4 */	addi r4, r4, ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv@l
/* 80426040 003EF600  7C DE FA 14 */	add r6, r30, r31
/* 80426044 003EF604  39 20 00 00 */	li r9, 0x0
/* 80426048 003EF608  4B F3 5B 69 */	bl OSCreateThread
/* 8042604C 003EF60C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80426050 003EF610  40 82 00 0C */	bne .L_8042605C
/* 80426054 003EF614  38 60 00 00 */	li r3, 0x0
/* 80426058 003EF618  48 00 00 24 */	b .L_8042607C
.L_8042605C:
/* 8042605C 003EF61C  38 80 00 00 */	li r4, 0x0
/* 80426060 003EF620  38 00 00 01 */	li r0, 0x1
/* 80426064 003EF624  93 DC 03 18 */	stw r30, 0x318(r28)
/* 80426068 003EF628  7F 83 E3 78 */	mr r3, r28
/* 8042606C 003EF62C  98 9C 03 1C */	stb r4, 0x31c(r28)
/* 80426070 003EF630  98 1C 03 1D */	stb r0, 0x31d(r28)
/* 80426074 003EF634  4B F3 61 CD */	bl OSResumeThread
/* 80426078 003EF638  38 60 00 01 */	li r3, 0x1
.L_8042607C:
/* 8042607C 003EF63C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80426080 003EF640  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80426084 003EF644  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80426088 003EF648  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042608C 003EF64C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80426090 003EF650  7C 08 03 A6 */	mtlr r0
/* 80426094 003EF654  38 21 00 20 */	addi r1, r1, 0x20
/* 80426098 003EF658  4E 80 00 20 */	blr
.endfn Create__Q44nw4r3snd6detail10TaskThreadFlPvUl

# nw4r::snd::detail::TaskThread::Destroy()
.fn Destroy__Q44nw4r3snd6detail10TaskThreadFv, global
/* 8042609C 003EF65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804260A0 003EF660  7C 08 02 A6 */	mflr r0
/* 804260A4 003EF664  90 01 00 14 */	stw r0, 0x14(r1)
/* 804260A8 003EF668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804260AC 003EF66C  7C 7F 1B 78 */	mr r31, r3
/* 804260B0 003EF670  88 03 03 1D */	lbz r0, 0x31d(r3)
/* 804260B4 003EF674  2C 00 00 00 */	cmpwi r0, 0x0
/* 804260B8 003EF678  41 82 00 28 */	beq .L_804260E0
/* 804260BC 003EF67C  38 00 00 01 */	li r0, 0x1
/* 804260C0 003EF680  98 03 03 1C */	stb r0, 0x31c(r3)
/* 804260C4 003EF684  4B FF F7 01 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 804260C8 003EF688  4B FF FE 19 */	bl CancelWaitTask__Q44nw4r3snd6detail11TaskManagerFv
/* 804260CC 003EF68C  7F E3 FB 78 */	mr r3, r31
/* 804260D0 003EF690  38 80 00 00 */	li r4, 0x0
/* 804260D4 003EF694  4B F3 60 1D */	bl OSJoinThread
/* 804260D8 003EF698  38 00 00 00 */	li r0, 0x0
/* 804260DC 003EF69C  98 1F 03 1D */	stb r0, 0x31d(r31)
.L_804260E0:
/* 804260E0 003EF6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804260E4 003EF6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804260E8 003EF6A8  7C 08 03 A6 */	mtlr r0
/* 804260EC 003EF6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804260F0 003EF6B0  4E 80 00 20 */	blr
.endfn Destroy__Q44nw4r3snd6detail10TaskThreadFv

# nw4r::snd::detail::TaskThread::ThreadFunc(void*)
.fn ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv, global
/* 804260F4 003EF6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804260F8 003EF6B8  7C 08 02 A6 */	mflr r0
/* 804260FC 003EF6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80426100 003EF6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80426104 003EF6C4  7C 7F 1B 78 */	mr r31, r3
/* 80426108 003EF6C8  48 00 00 20 */	b .L_80426128
.L_8042610C:
/* 8042610C 003EF6CC  4B FF F6 B9 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 80426110 003EF6D0  4B FF FD 61 */	bl WaitTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80426114 003EF6D4  88 1F 03 1C */	lbz r0, 0x31c(r31)
/* 80426118 003EF6D8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8042611C 003EF6DC  40 82 00 18 */	bne .L_80426134
/* 80426120 003EF6E0  4B FF F6 A5 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 80426124 003EF6E4  4B FF FA FD */	bl ExecuteTask__Q44nw4r3snd6detail11TaskManagerFv
.L_80426128:
/* 80426128 003EF6E8  88 1F 03 1C */	lbz r0, 0x31c(r31)
/* 8042612C 003EF6EC  2C 00 00 00 */	cmpwi r0, 0x0
/* 80426130 003EF6F0  41 82 FF DC */	beq .L_8042610C
.L_80426134:
/* 80426134 003EF6F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80426138 003EF6F8  38 60 00 00 */	li r3, 0x0
/* 8042613C 003EF6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80426140 003EF700  7C 08 03 A6 */	mtlr r0
/* 80426144 003EF704  38 21 00 10 */	addi r1, r1, 0x10
/* 80426148 003EF708  4E 80 00 20 */	blr
.endfn ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv
