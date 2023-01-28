.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/misc_io.o"

# 0x802BEC3C - 0x802BEC4C
.text
.balign 4

.fn __stdio_atexit, global
/* 802BEC3C 002881FC  3C 60 80 2C */	lis r3, __close_all@ha
/* 802BEC40 00288200  38 63 C2 CC */	addi r3, r3, __close_all@l
/* 802BEC44 00288204  90 6D B3 C4 */	stw r3, __stdio_exit@sda21(r13)
/* 802BEC48 00288208  4E 80 00 20 */	blr
.endfn __stdio_atexit
