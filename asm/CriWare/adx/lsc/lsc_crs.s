.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn LSC_Enter, global
/* 8039280C 0035BDCC  4E 80 00 20 */	blr 
.endfn LSC_Enter

.fn LSC_Leave, global
/* 80392810 0035BDD0  4E 80 00 20 */	blr 
.endfn LSC_Leave

.fn LSC_LockCrs, global
/* 80392814 0035BDD4  48 00 41 88 */	b SVM_Lock
.endfn LSC_LockCrs

.fn LSC_UnlockCrs, global
/* 80392818 0035BDD8  48 00 41 EC */	b SVM_Unlock
.endfn LSC_UnlockCrs
