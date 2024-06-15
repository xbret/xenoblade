.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn gcCiSetRdMode, global
/* 8039179C 0035AD5C  3C 60 80 5F */	lis r3, gcg_ci_rdmode@ha
/* 803917A0 0035AD60  90 C3 B1 68 */	stw r6, gcg_ci_rdmode@l(r3)
/* 803917A4 0035AD64  4E 80 00 20 */	blr 
.endfn gcCiSetRdMode

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj gcg_ci_rdmode, global
	.skip 0x4
.endobj gcg_ci_rdmode

.skip 0x4

.obj gcg_ci_root_dir, global
	.skip 0x100
.endobj gcg_ci_root_dir
