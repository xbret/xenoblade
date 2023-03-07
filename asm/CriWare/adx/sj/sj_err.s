.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SJERR_CallErr, global
/* 80396998 0035FF58  48 00 01 D4 */	b SVM_CallErr1
.endfn SJERR_CallErr
