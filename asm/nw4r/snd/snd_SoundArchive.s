.include "macros.inc"
.file "nw4r/snd/snd_SoundArchive.o"

# 0x8041C77C - 0x8041CAD4
.text
.balign 4

# nw4r::snd::SoundArchive::SoundArchive()
.fn __ct__Q34nw4r3snd12SoundArchiveFv, global
/* 8041C77C 003E5D3C  3C A0 80 57 */	lis r5, lbl_8056E4A0@ha
/* 8041C780 003E5D40  38 80 00 00 */	li r4, 0x0
/* 8041C784 003E5D44  38 A5 E4 A0 */	addi r5, r5, lbl_8056E4A0@l
/* 8041C788 003E5D48  38 00 00 2F */	li r0, 0x2f
/* 8041C78C 003E5D4C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8041C790 003E5D50  90 83 00 04 */	stw r4, 0x4(r3)
/* 8041C794 003E5D54  98 03 00 08 */	stb r0, 0x8(r3)
/* 8041C798 003E5D58  98 83 00 09 */	stb r4, 0x9(r3)
/* 8041C79C 003E5D5C  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd12SoundArchiveFv

# nw4r::snd::SoundArchive::~SoundArchive()
.fn __dt__Q34nw4r3snd12SoundArchiveFv, global
/* 8041C7A0 003E5D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041C7A4 003E5D64  7C 08 02 A6 */	mflr r0
/* 8041C7A8 003E5D68  2C 03 00 00 */	cmpwi r3, 0x0
/* 8041C7AC 003E5D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041C7B0 003E5D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041C7B4 003E5D74  7C 7F 1B 78 */	mr r31, r3
/* 8041C7B8 003E5D78  41 82 00 10 */	beq .L_8041C7C8
/* 8041C7BC 003E5D7C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8041C7C0 003E5D80  40 81 00 08 */	ble .L_8041C7C8
/* 8041C7C4 003E5D84  48 01 84 69 */	bl __dl__FPv
.L_8041C7C8:
/* 8041C7C8 003E5D88  7F E3 FB 78 */	mr r3, r31
/* 8041C7CC 003E5D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041C7D0 003E5D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041C7D4 003E5D94  7C 08 03 A6 */	mtlr r0
/* 8041C7D8 003E5D98  38 21 00 10 */	addi r1, r1, 0x10
/* 8041C7DC 003E5D9C  4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd12SoundArchiveFv

# nw4r::snd::SoundArchive::IsAvailable() const
.fn IsAvailable__Q34nw4r3snd12SoundArchiveCFv, global
/* 8041C7E0 003E5DA0  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C7E4 003E5DA4  7C 03 00 D0 */	neg r0, r3
/* 8041C7E8 003E5DA8  7C 00 1B 78 */	or r0, r0, r3
/* 8041C7EC 003E5DAC  54 03 0F FE */	srwi r3, r0, 31
/* 8041C7F0 003E5DB0  4E 80 00 20 */	blr
.endfn IsAvailable__Q34nw4r3snd12SoundArchiveCFv

# nw4r::snd::SoundArchive::Setup(nw4r::snd::detail::SoundArchiveFileReader*)
.fn Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader, global
/* 8041C7F4 003E5DB4  90 83 00 04 */	stw r4, 0x4(r3)
/* 8041C7F8 003E5DB8  4E 80 00 20 */	blr
.endfn Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader

# nw4r::snd::SoundArchive::Shutdown()
.fn Shutdown__Q34nw4r3snd12SoundArchiveFv, global
/* 8041C7FC 003E5DBC  38 80 00 00 */	li r4, 0x0
/* 8041C800 003E5DC0  38 00 00 2F */	li r0, 0x2f
/* 8041C804 003E5DC4  90 83 00 04 */	stw r4, 0x4(r3)
/* 8041C808 003E5DC8  98 03 00 08 */	stb r0, 0x8(r3)
/* 8041C80C 003E5DCC  98 83 00 09 */	stb r4, 0x9(r3)
/* 8041C810 003E5DD0  4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd12SoundArchiveFv

# nw4r::snd::SoundArchive::GetSoundCount() const
.fn GetSoundCount__Q34nw4r3snd12SoundArchiveCFv, global
/* 8041C814 003E5DD4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C818 003E5DD8  48 00 0D 48 */	b GetSoundCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv
.endfn GetSoundCount__Q34nw4r3snd12SoundArchiveCFv

# nw4r::snd::SoundArchive::GetPlayerCount() const
.fn GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv, global
/* 8041C81C 003E5DDC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C820 003E5DE0  48 00 0D 80 */	b GetPlayerCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv
.endfn GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv

# nw4r::snd::SoundArchive::GetGroupCount() const
.fn GetGroupCount__Q34nw4r3snd12SoundArchiveCFv, global
/* 8041C824 003E5DE4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C828 003E5DE8  48 00 0D B8 */	b GetGroupCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv
.endfn GetGroupCount__Q34nw4r3snd12SoundArchiveCFv

# nw4r::snd::SoundArchive::ConvertLabelStringToSoundId(const char*) const
.fn ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc, global
/* 8041C82C 003E5DEC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C830 003E5DF0  7C 85 23 78 */	mr r5, r4
/* 8041C834 003E5DF4  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8041C838 003E5DF8  48 00 11 04 */	b ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc
.endfn ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc

# nw4r::snd::SoundArchive::GetSoundUserParam(unsigned long) const
.fn GetSoundUserParam__Q34nw4r3snd12SoundArchiveCFUl, global
/* 8041C83C 003E5DFC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C840 003E5E00  48 00 0D E4 */	b GetSoundUserParam__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl
.endfn GetSoundUserParam__Q34nw4r3snd12SoundArchiveCFUl

# nw4r::snd::SoundArchive::GetSoundType(unsigned long) const
.fn GetSoundType__Q34nw4r3snd12SoundArchiveCFUl, global
/* 8041C844 003E5E04  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C848 003E5E08  48 00 04 14 */	b GetSoundType__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl
.endfn GetSoundType__Q34nw4r3snd12SoundArchiveCFUl

# nw4r::snd::SoundArchive::ReadSoundInfo(unsigned long, nw4r::snd::SoundArchive::SoundInfo*) const
.fn ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo, global
/* 8041C84C 003E5E0C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C850 003E5E10  48 00 04 FC */	b ReadSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9SoundInfo
.endfn ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo

# nw4r::snd::SoundArchive::ReadSeqSoundInfo(unsigned long, nw4r::snd::SoundArchive::SeqSoundInfo*) const
.fn ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo, global
/* 8041C854 003E5E14  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C858 003E5E18  48 00 06 1C */	b ReadSeqSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo
.endfn ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo

# nw4r::snd::SoundArchive::detail_ReadStrmSoundInfo(unsigned long, nw4r::snd::SoundArchive::StrmSoundInfo*) const
.fn detail_ReadStrmSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo, global
/* 8041C85C 003E5E1C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C860 003E5E20  48 00 06 F8 */	b ReadStrmSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo
.endfn detail_ReadStrmSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo

# nw4r::snd::SoundArchive::detail_ReadWaveSoundInfo(unsigned long, nw4r::snd::SoundArchive::WaveSoundInfo*) const
.fn detail_ReadWaveSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo, global
/* 8041C864 003E5E24  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C868 003E5E28  48 00 07 F4 */	b ReadWaveSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo
.endfn detail_ReadWaveSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo

# nw4r::snd::SoundArchive::ReadPlayerInfo(unsigned long, nw4r::snd::SoundArchive::PlayerInfo*) const
.fn ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo, global
/* 8041C86C 003E5E2C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C870 003E5E30  48 00 09 6C */	b ReadPlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo
.endfn ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo

# nw4r::snd::SoundArchive::ReadSoundArchivePlayerInfo(nw4r::snd::SoundArchive::SoundArchivePlayerInfo*) const
.fn ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo, global
/* 8041C874 003E5E34  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C878 003E5E38  48 00 0C 64 */	b ReadSoundArchivePlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
.endfn ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo

# nw4r::snd::SoundArchive::ReadBankInfo(unsigned long, nw4r::snd::SoundArchive::BankInfo*) const
.fn ReadBankInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8BankInfo, global
/* 8041C87C 003E5E3C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C880 003E5E40  48 00 08 B0 */	b ReadBankInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8BankInfo
.endfn ReadBankInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8BankInfo

# nw4r::snd::SoundArchive::detail_ReadGroupInfo(unsigned long, nw4r::snd::SoundArchive::GroupInfo*) const
.fn detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo, global
/* 8041C884 003E5E44  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C888 003E5E48  48 00 0A 0C */	b ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
.endfn detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo

# nw4r::snd::SoundArchive::detail_ReadGroupItemInfo(unsigned long, unsigned long, nw4r::snd::SoundArchive::GroupItemInfo*) const
.fn detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo, global
/* 8041C88C 003E5E4C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C890 003E5E50  48 00 0B 14 */	b ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
.endfn detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo

# nw4r::snd::SoundArchive::detail_GetFileCount() const
.fn detail_GetFileCount__Q34nw4r3snd12SoundArchiveCFv, global
/* 8041C894 003E5E54  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C898 003E5E58  48 00 0E 44 */	b GetFileCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv
.endfn detail_GetFileCount__Q34nw4r3snd12SoundArchiveCFv

# nw4r::snd::SoundArchive::detail_ReadFileInfo(unsigned long, nw4r::snd::SoundArchive::FileInfo*) const
.fn detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo, global
/* 8041C89C 003E5E5C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C8A0 003E5E60  48 00 0E 7C */	b ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo
.endfn detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo

# nw4r::snd::SoundArchive::detail_ReadFilePos(unsigned long, unsigned long, nw4r::snd::SoundArchive::FilePos*) const
.fn detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos, global
/* 8041C8A4 003E5E64  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C8A8 003E5E68  48 00 0F 74 */	b ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
.endfn detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos

# nw4r::snd::SoundArchive::detail_OpenFileStream(unsigned long, void*, int) const
.fn detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi, global
/* 8041C8AC 003E5E6C  94 21 FD 90 */	stwu r1, -0x270(r1)
/* 8041C8B0 003E5E70  7C 08 02 A6 */	mflr r0
/* 8041C8B4 003E5E74  90 01 02 74 */	stw r0, 0x274(r1)
/* 8041C8B8 003E5E78  39 61 02 70 */	addi r11, r1, 0x270
/* 8041C8BC 003E5E7C  4B E9 D8 91 */	bl _savegpr_25
/* 8041C8C0 003E5E80  7C 7D 1B 78 */	mr r29, r3
/* 8041C8C4 003E5E84  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8041C8C8 003E5E88  7C BE 2B 78 */	mr r30, r5
/* 8041C8CC 003E5E8C  7C 99 23 78 */	mr r25, r4
/* 8041C8D0 003E5E90  7C DF 33 78 */	mr r31, r6
/* 8041C8D4 003E5E94  38 A1 00 10 */	addi r5, r1, 0x10
/* 8041C8D8 003E5E98  48 00 0E 45 */	bl ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo
/* 8041C8DC 003E5E9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8041C8E0 003E5EA0  40 82 00 0C */	bne .L_8041C8EC
/* 8041C8E4 003E5EA4  38 60 00 00 */	li r3, 0x0
/* 8041C8E8 003E5EA8  48 00 01 D4 */	b .L_8041CABC
.L_8041C8EC:
/* 8041C8EC 003E5EAC  83 41 00 18 */	lwz r26, 0x18(r1)
/* 8041C8F0 003E5EB0  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8041C8F4 003E5EB4  41 82 00 94 */	beq .L_8041C988
/* 8041C8F8 003E5EB8  88 1A 00 00 */	lbz r0, 0x0(r26)
/* 8041C8FC 003E5EBC  83 61 00 10 */	lwz r27, 0x10(r1)
/* 8041C900 003E5EC0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8041C904 003E5EC4  40 82 00 08 */	bne .L_8041C90C
/* 8041C908 003E5EC8  48 00 00 54 */	b .L_8041C95C
.L_8041C90C:
/* 8041C90C 003E5ECC  7F 43 D3 78 */	mr r3, r26
/* 8041C910 003E5ED0  4B E9 CC A9 */	bl strlen
/* 8041C914 003E5ED4  7C 7C 1B 78 */	mr r28, r3
/* 8041C918 003E5ED8  38 7D 00 08 */	addi r3, r29, 0x8
/* 8041C91C 003E5EDC  4B E9 CC 9D */	bl strlen
/* 8041C920 003E5EE0  7C 1C 1A 14 */	add r0, r28, r3
/* 8041C924 003E5EE4  7C 65 1B 78 */	mr r5, r3
/* 8041C928 003E5EE8  28 00 01 00 */	cmplwi r0, 0x100
/* 8041C92C 003E5EEC  41 80 00 0C */	blt .L_8041C938
/* 8041C930 003E5EF0  38 60 00 00 */	li r3, 0x0
/* 8041C934 003E5EF4  48 00 01 88 */	b .L_8041CABC
.L_8041C938:
/* 8041C938 003E5EF8  38 61 01 50 */	addi r3, r1, 0x150
/* 8041C93C 003E5EFC  38 9D 00 08 */	addi r4, r29, 0x8
/* 8041C940 003E5F00  38 A5 00 01 */	addi r5, r5, 0x1
/* 8041C944 003E5F04  4B EA 5E 35 */	bl strncpy
/* 8041C948 003E5F08  7F 44 D3 78 */	mr r4, r26
/* 8041C94C 003E5F0C  38 61 01 50 */	addi r3, r1, 0x150
/* 8041C950 003E5F10  38 BC 00 01 */	addi r5, r28, 0x1
/* 8041C954 003E5F14  4B EA 5E 95 */	bl strncat
/* 8041C958 003E5F18  3B 41 01 50 */	addi r26, r1, 0x150
.L_8041C95C:
/* 8041C95C 003E5F1C  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8041C960 003E5F20  7F A3 EB 78 */	mr r3, r29
/* 8041C964 003E5F24  7F C4 F3 78 */	mr r4, r30
/* 8041C968 003E5F28  7F E5 FB 78 */	mr r5, r31
/* 8041C96C 003E5F2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8041C970 003E5F30  7F 46 D3 78 */	mr r6, r26
/* 8041C974 003E5F34  7F 68 DB 78 */	mr r8, r27
/* 8041C978 003E5F38  38 E0 00 00 */	li r7, 0x0
/* 8041C97C 003E5F3C  7D 89 03 A6 */	mtctr r12
/* 8041C980 003E5F40  4E 80 04 21 */	bctrl
/* 8041C984 003E5F44  48 00 01 38 */	b .L_8041CABC
.L_8041C988:
/* 8041C988 003E5F48  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8041C98C 003E5F4C  7F 24 CB 78 */	mr r4, r25
/* 8041C990 003E5F50  38 C1 00 08 */	addi r6, r1, 0x8
/* 8041C994 003E5F54  38 A0 00 00 */	li r5, 0x0
/* 8041C998 003E5F58  48 00 0E 85 */	bl ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 8041C99C 003E5F5C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8041C9A0 003E5F60  40 82 00 0C */	bne .L_8041C9AC
/* 8041C9A4 003E5F64  38 60 00 00 */	li r3, 0x0
/* 8041C9A8 003E5F68  48 00 01 14 */	b .L_8041CABC
.L_8041C9AC:
/* 8041C9AC 003E5F6C  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8041C9B0 003E5F70  38 A1 00 38 */	addi r5, r1, 0x38
/* 8041C9B4 003E5F74  80 81 00 08 */	lwz r4, 0x8(r1)
/* 8041C9B8 003E5F78  48 00 08 DD */	bl ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 8041C9BC 003E5F7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8041C9C0 003E5F80  40 82 00 0C */	bne .L_8041C9CC
/* 8041C9C4 003E5F84  38 60 00 00 */	li r3, 0x0
/* 8041C9C8 003E5F88  48 00 00 F4 */	b .L_8041CABC
.L_8041C9CC:
/* 8041C9CC 003E5F8C  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8041C9D0 003E5F90  38 C1 00 20 */	addi r6, r1, 0x20
/* 8041C9D4 003E5F94  80 81 00 08 */	lwz r4, 0x8(r1)
/* 8041C9D8 003E5F98  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8041C9DC 003E5F9C  48 00 09 C9 */	bl ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 8041C9E0 003E5FA0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8041C9E4 003E5FA4  40 82 00 0C */	bne .L_8041C9F0
/* 8041C9E8 003E5FA8  38 60 00 00 */	li r3, 0x0
/* 8041C9EC 003E5FAC  48 00 00 D0 */	b .L_8041CABC
.L_8041C9F0:
/* 8041C9F0 003E5FB0  83 41 00 3C */	lwz r26, 0x3c(r1)
/* 8041C9F4 003E5FB4  80 61 00 40 */	lwz r3, 0x40(r1)
/* 8041C9F8 003E5FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041C9FC 003E5FBC  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8041CA00 003E5FC0  83 21 00 28 */	lwz r25, 0x28(r1)
/* 8041CA04 003E5FC4  7F 63 02 14 */	add r27, r3, r0
/* 8041CA08 003E5FC8  41 82 00 90 */	beq .L_8041CA98
/* 8041CA0C 003E5FCC  88 1A 00 00 */	lbz r0, 0x0(r26)
/* 8041CA10 003E5FD0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8041CA14 003E5FD4  40 82 00 08 */	bne .L_8041CA1C
/* 8041CA18 003E5FD8  48 00 00 54 */	b .L_8041CA6C
.L_8041CA1C:
/* 8041CA1C 003E5FDC  7F 43 D3 78 */	mr r3, r26
/* 8041CA20 003E5FE0  4B E9 CB 99 */	bl strlen
/* 8041CA24 003E5FE4  7C 7C 1B 78 */	mr r28, r3
/* 8041CA28 003E5FE8  38 7D 00 08 */	addi r3, r29, 0x8
/* 8041CA2C 003E5FEC  4B E9 CB 8D */	bl strlen
/* 8041CA30 003E5FF0  7C 1C 1A 14 */	add r0, r28, r3
/* 8041CA34 003E5FF4  7C 65 1B 78 */	mr r5, r3
/* 8041CA38 003E5FF8  28 00 01 00 */	cmplwi r0, 0x100
/* 8041CA3C 003E5FFC  41 80 00 0C */	blt .L_8041CA48
/* 8041CA40 003E6000  38 60 00 00 */	li r3, 0x0
/* 8041CA44 003E6004  48 00 00 78 */	b .L_8041CABC
.L_8041CA48:
/* 8041CA48 003E6008  38 61 00 50 */	addi r3, r1, 0x50
/* 8041CA4C 003E600C  38 9D 00 08 */	addi r4, r29, 0x8
/* 8041CA50 003E6010  38 A5 00 01 */	addi r5, r5, 0x1
/* 8041CA54 003E6014  4B EA 5D 25 */	bl strncpy
/* 8041CA58 003E6018  7F 44 D3 78 */	mr r4, r26
/* 8041CA5C 003E601C  38 61 00 50 */	addi r3, r1, 0x50
/* 8041CA60 003E6020  38 BC 00 01 */	addi r5, r28, 0x1
/* 8041CA64 003E6024  4B EA 5D 85 */	bl strncat
/* 8041CA68 003E6028  3B 41 00 50 */	addi r26, r1, 0x50
.L_8041CA6C:
/* 8041CA6C 003E602C  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8041CA70 003E6030  7F A3 EB 78 */	mr r3, r29
/* 8041CA74 003E6034  7F C4 F3 78 */	mr r4, r30
/* 8041CA78 003E6038  7F E5 FB 78 */	mr r5, r31
/* 8041CA7C 003E603C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8041CA80 003E6040  7F 46 D3 78 */	mr r6, r26
/* 8041CA84 003E6044  7F 67 DB 78 */	mr r7, r27
/* 8041CA88 003E6048  7F 28 CB 78 */	mr r8, r25
/* 8041CA8C 003E604C  7D 89 03 A6 */	mtctr r12
/* 8041CA90 003E6050  4E 80 04 21 */	bctrl
/* 8041CA94 003E6054  48 00 00 28 */	b .L_8041CABC
.L_8041CA98:
/* 8041CA98 003E6058  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8041CA9C 003E605C  7F A3 EB 78 */	mr r3, r29
/* 8041CAA0 003E6060  7F C4 F3 78 */	mr r4, r30
/* 8041CAA4 003E6064  7F E5 FB 78 */	mr r5, r31
/* 8041CAA8 003E6068  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8041CAAC 003E606C  7F 66 DB 78 */	mr r6, r27
/* 8041CAB0 003E6070  7F 27 CB 78 */	mr r7, r25
/* 8041CAB4 003E6074  7D 89 03 A6 */	mtctr r12
/* 8041CAB8 003E6078  4E 80 04 21 */	bctrl
.L_8041CABC:
/* 8041CABC 003E607C  39 61 02 70 */	addi r11, r1, 0x270
/* 8041CAC0 003E6080  4B E9 D6 D9 */	bl _restgpr_25
/* 8041CAC4 003E6084  80 01 02 74 */	lwz r0, 0x274(r1)
/* 8041CAC8 003E6088  7C 08 03 A6 */	mtlr r0
/* 8041CACC 003E608C  38 21 02 70 */	addi r1, r1, 0x270
/* 8041CAD0 003E6090  4E 80 00 20 */	blr
.endfn detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi

# 0x8056E4A0 - 0x8056E4C0
.data
.balign 8
.sym lbl_8056E4A0, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd12SoundArchiveFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
