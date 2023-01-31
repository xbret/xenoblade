.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#could be ut_DvdFileStream, ut_DvdLockedFileStream, ut_NandFileStream,
#or ut_GPPerf

.fn sinit_8042BE14, local
/* 8042BE14 003F53D4  38 0D BC A8 */	addi r0, r13, lbl_80667E28@sda21
/* 8042BE18 003F53D8  90 0D BC B0 */	stw r0, lbl_80667E30@sda21(r13)
/* 8042BE1C 003F53DC  4E 80 00 20 */	blr 
.endfn sinit_8042BE14

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_8042BE14

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667E28
lbl_80667E28:
	.skip 0x8
.global lbl_80667E30
lbl_80667E30:
	.skip 0x8