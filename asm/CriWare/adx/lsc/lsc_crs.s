.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global LSC_Enter
LSC_Enter:
/* 8039280C 0035BDCC  4E 80 00 20 */	blr 

.global LSC_Leave
LSC_Leave:
/* 80392810 0035BDD0  4E 80 00 20 */	blr 

.global LSC_LockCrs
LSC_LockCrs:
/* 80392814 0035BDD4  48 00 41 88 */	b SVM_Lock

.global LSC_UnlockCrs
LSC_UnlockCrs:
/* 80392818 0035BDD8  48 00 41 EC */	b SVM_Unlock
