.include "macros.inc"
.file "CriWare/adx/wiirna/rna_crs.o"

# 0x80398FA0 - 0x80398FA8
.text
.balign 4

.fn GCRNA_LockCs, global
/* 80398FA0 00362560  4B FF D9 84 */	b SJCRS_Lock
.endfn GCRNA_LockCs

.fn GCRNA_UnlockCs, global
/* 80398FA4 00362564  4B FF D9 C8 */	b SJCRS_Unlock
.endfn GCRNA_UnlockCs
