.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global GCRNA_LockCs
GCRNA_LockCs:
/* 80398FA0 00362560  4B FF D9 84 */	b SJCRS_Lock

.global GCRNA_UnlockCs
GCRNA_UnlockCs:
/* 80398FA4 00362564  4B FF D9 C8 */	b SJCRS_Unlock