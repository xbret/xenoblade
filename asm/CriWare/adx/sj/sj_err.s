.include "macros.inc"
.file "CriWare/adx/sj/sj_err.o"

# 0x80396998 - 0x8039699C
.text
.balign 4

.fn SJERR_CallErr, global
/* 80396998 0035FF58  48 00 01 D4 */	b SVM_CallErr1
.endfn SJERR_CallErr
