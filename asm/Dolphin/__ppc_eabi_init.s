.include "macros.inc"

.section .init, "ax"  # 0x80004000 - 0x800066E0

.global __init_hardware
__init_hardware:
/* 800065C0 000026C0  7C 00 00 A6 */	mfmsr r0
/* 800065C4 000026C4  60 00 20 00 */	ori r0, r0, 0x2000
/* 800065C8 000026C8  7C 00 01 24 */	mtmsr r0
/* 800065CC 000026CC  7F E8 02 A6 */	mflr r31
/* 800065D0 000026D0  48 34 C6 C1 */	bl __OSPSInit
/* 800065D4 000026D4  48 34 B2 AD */	bl __OSFPRInit
/* 800065D8 000026D8  48 34 DE F9 */	bl __OSCacheInit
/* 800065DC 000026DC  7F E8 03 A6 */	mtlr r31
/* 800065E0 000026E0  4E 80 00 20 */	blr 
/* 800065E4 000026E4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800065E8 000026E8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800065EC 000026EC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __flush_cache
__flush_cache:
/* 800065F0 000026F0  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 800065F4 000026F4  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 800065F8 000026F8  7C A5 18 38 */	and r5, r5, r3
/* 800065FC 000026FC  7C 65 18 50 */	subf r3, r5, r3
/* 80006600 00002700  7C 84 1A 14 */	add r4, r4, r3
lbl_80006604:
/* 80006604 00002704  7C 00 28 6C */	dcbst 0, r5
/* 80006608 00002708  7C 00 04 AC */	sync 0
/* 8000660C 0000270C  7C 00 2F AC */	icbi 0, r5
/* 80006610 00002710  30 A5 00 08 */	addic r5, r5, 8
/* 80006614 00002714  34 84 FF F8 */	addic. r4, r4, -8
/* 80006618 00002718  40 80 FF EC */	bge lbl_80006604
/* 8000661C 0000271C  4C 00 01 2C */	isync 
/* 80006620 00002720  4E 80 00 20 */	blr 

.global rom_copy_info
rom_copy_info:
#init
.4byte _f_init
.4byte _f_init_rom
.4byte sz_init
#extab
.4byte _fextab_
.4byte _fextab__rom
.4byte szextab_
#extabindex
.4byte _fextabindex_
.4byte _fextabindex__rom
.4byte szextabindex_
#text
.4byte _f_text
.4byte _f_text_rom
.4byte sz_text
#ctors
.4byte _f_ctors
.4byte _f_ctors_rom
.4byte sz_ctors
#dtors
.4byte _f_dtors
.4byte _f_dtors_rom
.4byte sz_dtors
#rodata
.4byte _f_rodata
.4byte _f_rodata_rom
.4byte sz_rodata
#.data
.4byte _f_data
.4byte _f_data_rom
.4byte sz_data
#sdata
.4byte _f_sdata
.4byte _f_sdata_rom
.4byte sz_sdata
#sdata2
.4byte _f_sdata2
.4byte _f_sdata2_rom
.4byte sz_sdata2
#Empty section
.4byte 0x00000000
.4byte 0x00000000
.4byte 0x00000000


.global bss_init_info
bss_init_info:
#bss
.4byte _f_bss
.4byte sz_bss
#sbss
.4byte _f_sbss
.4byte sz_sbss
#sbss2
.4byte _f_sbss2
.4byte sz_sbss2
#Empty section
.4byte 0
.4byte 0