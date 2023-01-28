.include "macros.inc"
.file "PowerPC_EABI_Support/MetroTRK/custconn/MWCriticalSection_gc.o"

# 0x802CB7A4 - 0x802CB7E0
.text
.balign 4

.fn MWInitializeCriticalSection, global
/* 802CB7A4 00294D64  4E 80 00 20 */	blr
.endfn MWInitializeCriticalSection

.fn MWEnterCriticalSection, global
/* 802CB7A8 00294D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB7AC 00294D6C  7C 08 02 A6 */	mflr r0
/* 802CB7B0 00294D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB7B4 00294D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CB7B8 00294D78  7C 7F 1B 78 */	mr r31, r3
/* 802CB7BC 00294D7C  48 08 D1 F5 */	bl OSDisableInterrupts
/* 802CB7C0 00294D80  90 7F 00 00 */	stw r3, 0x0(r31)
/* 802CB7C4 00294D84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CB7C8 00294D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB7CC 00294D8C  7C 08 03 A6 */	mtlr r0
/* 802CB7D0 00294D90  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB7D4 00294D94  4E 80 00 20 */	blr
.endfn MWEnterCriticalSection

.fn MWExitCriticalSection, global
/* 802CB7D8 00294D98  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802CB7DC 00294D9C  48 08 D2 14 */	b OSRestoreInterrupts
.endfn MWExitCriticalSection
