.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn adxini_rnaerr_cbfn, global
/* 8037F674 00348C34  7C 83 23 78 */	mr r3, r4
/* 8037F678 00348C38  48 00 AB A0 */	b ADXERR_CallErrFunc1_
.endfn adxini_rnaerr_cbfn

.fn adxini_lscerr_cbfn, global
/* 8037F67C 00348C3C  7C 83 23 78 */	mr r3, r4
/* 8037F680 00348C40  48 00 AB 98 */	b ADXERR_CallErrFunc1_
.endfn adxini_lscerr_cbfn

.fn adxt_exec_main_thrd, local
/* 8037F684 00348C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F688 00348C48  7C 08 02 A6 */	mflr r0
/* 8037F68C 00348C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F690 00348C50  48 00 02 91 */	bl ADXT_ExecLscSvr
/* 8037F694 00348C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F698 00348C58  38 60 00 00 */	li r3, 0
/* 8037F69C 00348C5C  7C 08 03 A6 */	mtlr r0
/* 8037F6A0 00348C60  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F6A4 00348C64  4E 80 00 20 */	blr
.endfn adxt_exec_main_thrd

.fn adxt_exec_tsvr, global
/* 8037F6A8 00348C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F6AC 00348C6C  7C 08 02 A6 */	mflr r0
/* 8037F6B0 00348C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F6B4 00348C74  48 00 47 41 */	bl ADXT_ExecServer
/* 8037F6B8 00348C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F6BC 00348C7C  38 60 00 00 */	li r3, 0
/* 8037F6C0 00348C80  7C 08 03 A6 */	mtlr r0
/* 8037F6C4 00348C84  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F6C8 00348C88  4E 80 00 20 */	blr
.endfn adxt_exec_tsvr

.fn adxt_exec_fssvr, global
/* 8037F6CC 00348C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F6D0 00348C90  7C 08 02 A6 */	mflr r0
/* 8037F6D4 00348C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F6D8 00348C98  4B FF FE A5 */	bl ADXT_ExecFsSvr
/* 8037F6DC 00348C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F6E0 00348CA0  38 60 00 00 */	li r3, 0
/* 8037F6E4 00348CA4  7C 08 03 A6 */	mtlr r0
/* 8037F6E8 00348CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F6EC 00348CAC  4E 80 00 20 */	blr 
.endfn adxt_exec_fssvr

.fn ADXT_Init, global
/* 8037F6F0 00348CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F6F4 00348CB4  7C 08 02 A6 */	mflr r0
/* 8037F6F8 00348CB8  3C 60 80 52 */	lis r3, adxt_build@ha
/* 8037F6FC 00348CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F700 00348CC0  38 63 96 50 */	addi r3, r3, adxt_build@l
/* 8037F704 00348CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F708 00348CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8037F70C 00348CCC  3F C0 80 5E */	lis r30, adxt_init_cnt@ha
/* 8037F710 00348CD0  3B DE 5D 48 */	addi r30, r30, adxt_init_cnt@l
/* 8037F714 00348CD4  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8037F718 00348CD8  48 01 BC F1 */	bl criCrw_GetVersion
/* 8037F71C 00348CDC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8037F720 00348CE0  2C 00 00 00 */	cmpwi r0, 0
/* 8037F724 00348CE4  40 82 00 D8 */	bne .L_8037F7FC
/* 8037F728 00348CE8  48 00 9C 7D */	bl ADXCRS_Init
/* 8037F72C 00348CEC  48 00 9C D1 */	bl ADXCRS_Lock
/* 8037F730 00348CF0  48 01 5F 55 */	bl SJUNI_Init
/* 8037F734 00348CF4  48 01 4B C9 */	bl SJRBF_Init
/* 8037F738 00348CF8  48 01 3D 71 */	bl SJMEM_Init
/* 8037F73C 00348CFC  48 00 AA 4D */	bl ADXERR_Init
/* 8037F740 00348D00  48 00 17 31 */	bl ADXSTM_Init
/* 8037F744 00348D04  48 00 02 79 */	bl ADXSJD_Init
/* 8037F748 00348D08  4B FF CE D9 */	bl ADXF_Init
/* 8037F74C 00348D0C  48 01 BC 15 */	bl ADXRNA_Init
/* 8037F750 00348D10  48 01 21 5D */	bl LSC_Init
/* 8037F754 00348D14  48 01 80 25 */	bl SVM_Init
/* 8037F758 00348D18  3C 60 80 38 */	lis r3, adxini_rnaerr_cbfn@ha
/* 8037F75C 00348D1C  38 80 00 00 */	li r4, 0
/* 8037F760 00348D20  38 63 F6 74 */	addi r3, r3, adxini_rnaerr_cbfn@l
/* 8037F764 00348D24  48 01 BC 05 */	bl ADXRNA_EntryErrFunc
/* 8037F768 00348D28  3C 60 80 38 */	lis r3, adxini_lscerr_cbfn@ha
/* 8037F76C 00348D2C  38 80 00 00 */	li r4, 0
/* 8037F770 00348D30  38 63 F6 7C */	addi r3, r3, adxini_lscerr_cbfn@l
/* 8037F774 00348D34  48 01 20 35 */	bl LSC_EntryErrFunc
/* 8037F778 00348D38  38 7E 00 20 */	addi r3, r30, 0x20
/* 8037F77C 00348D3C  38 80 00 00 */	li r4, 0
/* 8037F780 00348D40  38 A0 0C 40 */	li r5, 0xc40
/* 8037F784 00348D44  4B C8 4B CD */	bl memset
/* 8037F788 00348D48  3C A0 80 38 */	lis r5, adxt_exec_tsvr@ha
/* 8037F78C 00348D4C  3F E0 80 52 */	lis r31, adx_inis_strpool@ha
/* 8037F790 00348D50  38 A5 F6 A8 */	addi r5, r5, adxt_exec_tsvr@l
/* 8037F794 00348D54  38 60 00 02 */	li r3, 2
/* 8037F798 00348D58  38 FF 96 A8 */	addi r7, r31, adx_inis_strpool@l
/* 8037F79C 00348D5C  38 80 00 01 */	li r4, 1
/* 8037F7A0 00348D60  38 C0 00 00 */	li r6, 0
/* 8037F7A4 00348D64  48 01 78 99 */	bl SVM_SetCbSvrIdWithString
/* 8037F7A8 00348D68  3B FF 96 A8 */	addi r31, r31, adx_inis_strpool@l
/* 8037F7AC 00348D6C  3C 80 80 38 */	lis r4, adxt_exec_fssvr@ha
/* 8037F7B0 00348D70  38 84 F6 CC */	addi r4, r4, adxt_exec_fssvr@l
/* 8037F7B4 00348D74  38 60 00 04 */	li r3, 4
/* 8037F7B8 00348D78  38 DF 00 0F */	addi r6, r31, 0xf
/* 8037F7BC 00348D7C  38 A0 00 00 */	li r5, 0
/* 8037F7C0 00348D80  48 01 74 35 */	bl SVM_SetCbSvrWithString
/* 8037F7C4 00348D84  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8037F7C8 00348D88  3C 80 80 38 */	lis r4, adxt_exec_main_thrd@ha
/* 8037F7CC 00348D8C  38 84 F6 84 */	addi r4, r4, adxt_exec_main_thrd@l
/* 8037F7D0 00348D90  38 DF 00 1F */	addi r6, r31, 0x1f
/* 8037F7D4 00348D94  38 60 00 05 */	li r3, 5
/* 8037F7D8 00348D98  38 A0 00 00 */	li r5, 0
/* 8037F7DC 00348D9C  48 01 74 19 */	bl SVM_SetCbSvrWithString
/* 8037F7E0 00348DA0  38 00 00 00 */	li r0, 0
/* 8037F7E4 00348DA4  90 7E 00 08 */	stw r3, 8(r30)
/* 8037F7E8 00348DA8  38 60 00 3C */	li r3, 0x3c
/* 8037F7EC 00348DAC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8037F7F0 00348DB0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8037F7F4 00348DB4  48 00 43 99 */	bl ADXT_SetDefSvrFreq
/* 8037F7F8 00348DB8  48 00 9C 09 */	bl ADXCRS_Unlock
.L_8037F7FC:
/* 8037F7FC 00348DBC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8037F800 00348DC0  38 03 00 01 */	addi r0, r3, 1
/* 8037F804 00348DC4  90 1E 00 00 */	stw r0, 0(r30)
/* 8037F808 00348DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F80C 00348DCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037F810 00348DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F814 00348DD4  7C 08 03 A6 */	mtlr r0
/* 8037F818 00348DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F81C 00348DDC  4E 80 00 20 */	blr 
.endfn ADXT_Init

.fn ADXT_Finish, global
/* 8037F820 00348DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037F824 00348DE4  7C 08 02 A6 */	mflr r0
/* 8037F828 00348DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037F82C 00348DEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037F830 00348DF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037F834 00348DF4  3F C0 80 5E */	lis r30, adxt_init_cnt@ha
/* 8037F838 00348DF8  3B DE 5D 48 */	addi r30, r30, adxt_init_cnt@l
/* 8037F83C 00348DFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037F840 00348E00  80 1E 00 00 */	lwz r0, 0(r30)
/* 8037F844 00348E04  2C 00 00 00 */	cmpwi r0, 0
/* 8037F848 00348E08  41 81 00 18 */	bgt .L_8037F860
/* 8037F84C 00348E0C  3C 60 80 52 */	lis r3, adx_inis_strpool@ha
/* 8037F850 00348E10  38 63 96 A8 */	addi r3, r3, adx_inis_strpool@l
/* 8037F854 00348E14  38 63 00 33 */	addi r3, r3, 0x33
/* 8037F858 00348E18  48 01 73 15 */	bl SVM_CallErr1
/* 8037F85C 00348E1C  48 00 00 A8 */	b .L_8037F904
.L_8037F860:
/* 8037F860 00348E20  34 00 FF FF */	addic. r0, r0, -1
/* 8037F864 00348E24  90 1E 00 00 */	stw r0, 0(r30)
/* 8037F868 00348E28  40 82 00 9C */	bne .L_8037F904
/* 8037F86C 00348E2C  48 00 34 A5 */	bl ADXT_DestroyAll
/* 8037F870 00348E30  48 01 BA F5 */	bl ADXRNA_Finish
/* 8037F874 00348E34  4B FF CE 61 */	bl ADXF_Finish
/* 8037F878 00348E38  48 00 16 45 */	bl ADXSTM_Finish
/* 8037F87C 00348E3C  48 01 20 A5 */	bl LSC_Finish
/* 8037F880 00348E40  48 00 9B 7D */	bl ADXCRS_Lock
/* 8037F884 00348E44  38 60 00 02 */	li r3, 2
/* 8037F888 00348E48  38 80 00 01 */	li r4, 1
/* 8037F88C 00348E4C  48 01 75 C5 */	bl SVM_DelCbSvr
/* 8037F890 00348E50  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8037F894 00348E54  38 60 00 04 */	li r3, 4
/* 8037F898 00348E58  48 01 75 B9 */	bl SVM_DelCbSvr
/* 8037F89C 00348E5C  80 9E 00 08 */	lwz r4, 8(r30)
/* 8037F8A0 00348E60  38 60 00 05 */	li r3, 5
/* 8037F8A4 00348E64  48 01 75 AD */	bl SVM_DelCbSvr
/* 8037F8A8 00348E68  48 01 7F 89 */	bl SVM_Finish
/* 8037F8AC 00348E6C  48 00 01 65 */	bl ADXSJD_Finish
/* 8037F8B0 00348E70  48 00 A9 21 */	bl ADXERR_Finish
/* 8037F8B4 00348E74  48 01 3C 51 */	bl SJMEM_Finish
/* 8037F8B8 00348E78  48 01 4A A1 */	bl SJRBF_Finish
/* 8037F8BC 00348E7C  48 01 5E 25 */	bl SJUNI_Finish
/* 8037F8C0 00348E80  48 00 9B 41 */	bl ADXCRS_Unlock
/* 8037F8C4 00348E84  48 00 9B 0D */	bl ADXCRS_Finish
/* 8037F8C8 00348E88  3F E0 80 52 */	lis r31, adx_inis_strpool@ha
/* 8037F8CC 00348E8C  3B DE 00 20 */	addi r30, r30, 0x20
/* 8037F8D0 00348E90  3B FF 96 A8 */	addi r31, r31, adx_inis_strpool@l
/* 8037F8D4 00348E94  3B A0 00 00 */	li r29, 0
.L_8037F8D8:
/* 8037F8D8 00348E98  88 1E 00 00 */	lbz r0, 0(r30)
/* 8037F8DC 00348E9C  7C 00 07 75 */	extsb. r0, r0
/* 8037F8E0 00348EA0  41 82 00 14 */	beq .L_8037F8F4
/* 8037F8E4 00348EA4  38 7F 00 7E */	addi r3, r31, 0x7e
/* 8037F8E8 00348EA8  48 01 72 85 */	bl SVM_CallErr1
/* 8037F8EC 00348EAC  7F C3 F3 78 */	mr r3, r30
/* 8037F8F0 00348EB0  48 00 31 89 */	bl ADXT_Destroy
.L_8037F8F4:
/* 8037F8F4 00348EB4  3B BD 00 01 */	addi r29, r29, 1
/* 8037F8F8 00348EB8  3B DE 00 C4 */	addi r30, r30, 0xc4
/* 8037F8FC 00348EBC  2C 1D 00 10 */	cmpwi r29, 0x10
/* 8037F900 00348EC0  41 80 FF D8 */	blt .L_8037F8D8
.L_8037F904:
/* 8037F904 00348EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037F908 00348EC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037F90C 00348ECC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037F910 00348ED0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037F914 00348ED4  7C 08 03 A6 */	mtlr r0
/* 8037F918 00348ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037F91C 00348EDC  4E 80 00 20 */	blr 
.endfn ADXT_Finish

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj adxt_build, global
	.asciz "\nADXT/WII Ver.10.67 Build:Nov 13 2008 10:52:50\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.4byte 0
.endobj adxt_build


.obj adx_inis_strpool, global
	.asciz "adxt_exec_tsvr"
	.asciz "adxt_exec_fssvr"
	.asciz "adxt_exec_main_thrd"
	.asciz "E2006100201: ADXT_Finish function has been executed before initialization."
	.asciz "E2005041230: ADXT handle is still active."
.endobj adx_inis_strpool

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj adxt_init_cnt, global
	.skip 0x4
.endobj adxt_init_cnt

.obj adxt_svr_id, global
	.skip 0x4
.endobj adxt_svr_id

.obj adxt_svr_main_id, global
	.skip 0x4
.endobj adxt_svr_main_id

.obj adxt_output_mono_flag, global
	.skip 0x4
.endobj adxt_output_mono_flag

.obj adxt_svr_fs_id, global
	.skip 0x4
.endobj adxt_svr_fs_id

.obj adxt_vsync_cnt, global
	.skip 0x4
.endobj adxt_vsync_cnt

.obj cri_verstr_ptr, local
	.skip 0x4
.endobj cri_verstr_ptr

.balign 8
.obj adxt_obj, global
	.skip 0xC40
.endobj adxt_obj

