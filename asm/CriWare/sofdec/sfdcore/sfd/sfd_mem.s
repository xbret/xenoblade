.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn SFMEM_Init, global
/* 803C0E40 0038A400  38 60 00 00 */	li r3, 0
/* 803C0E44 0038A404  4E 80 00 20 */	blr 
.endfn SFMEM_Init

.fn SFMEM_Finish, global
/* 803C0E48 0038A408  38 60 00 00 */	li r3, 0
/* 803C0E4C 0038A40C  4E 80 00 20 */	blr 
.endfn SFMEM_Finish

.fn SFMEM_ExecServer, global
/* 803C0E50 0038A410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0E54 0038A414  7C 08 02 A6 */	mflr r0
/* 803C0E58 0038A418  38 A0 00 01 */	li r5, 1
/* 803C0E5C 0038A41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0E60 0038A420  80 83 1F E4 */	lwz r4, 0x1fe4(r3)
/* 803C0E64 0038A424  4B FF EC F5 */	bl SFBUF_SetPrepFlg
/* 803C0E68 0038A428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0E6C 0038A42C  38 60 00 00 */	li r3, 0
/* 803C0E70 0038A430  7C 08 03 A6 */	mtlr r0
/* 803C0E74 0038A434  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0E78 0038A438  4E 80 00 20 */	blr 
.endfn SFMEM_ExecServer

.fn SFMEM_Create, global
/* 803C0E7C 0038A43C  38 60 00 00 */	li r3, 0
/* 803C0E80 0038A440  4E 80 00 20 */	blr 
.endfn SFMEM_Create

.fn SFMEM_Destroy, global
/* 803C0E84 0038A444  38 60 00 00 */	li r3, 0
/* 803C0E88 0038A448  4E 80 00 20 */	blr 
.endfn SFMEM_Destroy

.fn SFMEM_RequestStop, global
/* 803C0E8C 0038A44C  38 60 00 00 */	li r3, 0
/* 803C0E90 0038A450  4E 80 00 20 */	blr 
.endfn SFMEM_RequestStop

.fn SFMEM_Start, global
/* 803C0E94 0038A454  38 60 00 00 */	li r3, 0
/* 803C0E98 0038A458  4E 80 00 20 */	blr 
.endfn SFMEM_Start

.fn SFMEM_Stop, global
/* 803C0E9C 0038A45C  38 60 00 00 */	li r3, 0
/* 803C0EA0 0038A460  4E 80 00 20 */	blr 
.endfn SFMEM_Stop

.fn SFMEM_Pause, global
/* 803C0EA4 0038A464  38 60 00 00 */	li r3, 0
/* 803C0EA8 0038A468  4E 80 00 20 */	blr 
.endfn SFMEM_Pause

.fn SFMEM_GetWrite, global
/* 803C0EAC 0038A46C  7C 85 23 78 */	mr r5, r4
/* 803C0EB0 0038A470  80 83 1F E4 */	lwz r4, 0x1fe4(r3)
/* 803C0EB4 0038A474  4B FF E6 64 */	b SFBUF_RingGetWrite
.endfn SFMEM_GetWrite

.fn SFMEM_AddWrite, global
/* 803C0EB8 0038A478  7C 87 23 78 */	mr r7, r4
/* 803C0EBC 0038A47C  7C A6 2B 78 */	mr r6, r5
/* 803C0EC0 0038A480  80 83 1F E4 */	lwz r4, 0x1fe4(r3)
/* 803C0EC4 0038A484  80 A7 00 00 */	lwz r5, 0(r7)
/* 803C0EC8 0038A488  80 C6 00 00 */	lwz r6, 0(r6)
/* 803C0ECC 0038A48C  4B FF E7 A4 */	b SFBUF_RingAddWrite
.endfn SFMEM_AddWrite

.fn SFMEM_GetRead, global
/* 803C0ED0 0038A490  3C 80 FF 00 */	lis r4, 0xFF000501@ha
/* 803C0ED4 0038A494  38 84 05 01 */	addi r4, r4, 0xFF000501@l
/* 803C0ED8 0038A498  4B FF FD 7C */	b SFLIB_SetErr
.endfn SFMEM_GetRead

.fn SFMEM_AddRead, global
/* 803C0EDC 0038A49C  3C 80 FF 00 */	lis r4, 0xFF000501@ha
/* 803C0EE0 0038A4A0  38 84 05 01 */	addi r4, r4, 0xFF000501@l
/* 803C0EE4 0038A4A4  4B FF FD 70 */	b SFLIB_SetErr
.endfn SFMEM_AddRead

.fn SFMEM_Seek, global
/* 803C0EE8 0038A4A8  38 60 00 00 */	li r3, 0
/* 803C0EEC 0038A4AC  4E 80 00 20 */	blr 
.endfn SFMEM_Seek

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_805202A0
lbl_805202A0:
	.4byte SFMEM_Init
	.4byte SFMEM_Finish
	.4byte SFMEM_ExecServer
	.4byte SFMEM_Create
	.4byte SFMEM_Destroy
	.4byte SFMEM_RequestStop
	.4byte SFMEM_Start
	.4byte SFMEM_Stop
	.4byte SFMEM_Pause
	.4byte SFMEM_GetWrite
	.4byte SFMEM_AddWrite
	.4byte SFMEM_GetRead
	.4byte SFMEM_AddRead
	.4byte SFMEM_Seek