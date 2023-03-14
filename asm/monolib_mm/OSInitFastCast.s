.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#Might be monolithsoft's own function that inlined OSInitFastCast?
.fn OSInitFastCast, global
/* 80435E70 003FF430  38 60 00 04 */	li r3, 4
/* 80435E74 003FF434  64 63 00 04 */	oris r3, r3, 4
/* 80435E78 003FF438  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80435E7C 003FF43C  38 60 00 05 */	li r3, 5
/* 80435E80 003FF440  64 63 00 05 */	oris r3, r3, 5
/* 80435E84 003FF444  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80435E88 003FF448  38 60 00 06 */	li r3, 6
/* 80435E8C 003FF44C  64 63 00 06 */	oris r3, r3, 6
/* 80435E90 003FF450  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80435E94 003FF454  38 60 00 07 */	li r3, 7
/* 80435E98 003FF458  64 63 00 07 */	oris r3, r3, 7
/* 80435E9C 003FF45C  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80435EA0 003FF460  4E 80 00 20 */	blr 
.endfn OSInitFastCast