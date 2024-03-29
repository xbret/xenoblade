.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ADXCRS_Init, global
/* 803893A4 00352964  3C 80 80 5F */	lis r4, adxcrs_init_count@ha
/* 803893A8 00352968  80 64 99 BC */	lwz r3, adxcrs_init_count@l(r4)
/* 803893AC 0035296C  38 03 00 01 */	addi r0, r3, 1
/* 803893B0 00352970  90 04 99 BC */	stw r0, adxcrs_init_count@l(r4)
/* 803893B4 00352974  80 04 99 BC */	lwz r0, adxcrs_init_count@l(r4)
/* 803893B8 00352978  2C 00 00 01 */	cmpwi r0, 1
/* 803893BC 0035297C  4C 82 00 20 */	bnelr 
/* 803893C0 00352980  38 00 00 00 */	li r0, 0
/* 803893C4 00352984  3C 60 80 5F */	lis r3, adxcrs_lvl@ha
/* 803893C8 00352988  90 03 99 B8 */	stw r0, adxcrs_lvl@l(r3)
/* 803893CC 0035298C  4E 80 00 20 */	blr 
.endfn ADXCRS_Init

.fn ADXCRS_Finish, global
/* 803893D0 00352990  3C 80 80 5F */	lis r4, adxcrs_init_count@ha
/* 803893D4 00352994  80 64 99 BC */	lwz r3, adxcrs_init_count@l(r4)
/* 803893D8 00352998  38 03 FF FF */	addi r0, r3, -1
/* 803893DC 0035299C  90 04 99 BC */	stw r0, adxcrs_init_count@l(r4)
/* 803893E0 003529A0  80 04 99 BC */	lwz r0, adxcrs_init_count@l(r4)
/* 803893E4 003529A4  2C 00 00 00 */	cmpwi r0, 0
/* 803893E8 003529A8  4C 82 00 20 */	bnelr 
/* 803893EC 003529AC  38 00 00 00 */	li r0, 0
/* 803893F0 003529B0  3C 60 80 5F */	lis r3, adxcrs_lvl@ha
/* 803893F4 003529B4  90 03 99 B8 */	stw r0, adxcrs_lvl@l(r3)
/* 803893F8 003529B8  4E 80 00 20 */	blr 
.endfn ADXCRS_Finish

.fn ADXCRS_Lock, global
/* 803893FC 003529BC  48 00 D5 A0 */	b SVM_Lock
.endfn ADXCRS_Lock

.fn ADXCRS_Unlock, global
/* 80389400 003529C0  48 00 D6 04 */	b SVM_Unlock
.endfn ADXCRS_Unlock

.fn ADXCRS_Enter, global
/* 80389404 003529C4  4E 80 00 20 */	blr 
.endfn ADXCRS_Enter

.fn ADXCRS_Leave, global
/* 80389408 003529C8  4E 80 00 20 */	blr 
.endfn ADXCRS_Leave

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj adxcrs_lvl, global
	.skip 0x4
.endobj adxcrs_lvl

.obj adxcrs_init_count, global
	.skip 0x4
.endobj adxcrs_init_count
