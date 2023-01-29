.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4r::snd::detail::SeqPlayer::OnUpdateFrameSoundThread()
.fn OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 8041759C 003E0B5C  48 00 2F D4 */	b Update__Q44nw4r3snd6detail9SeqPlayerFv
.endfn OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv

# nw4r::snd::detail::SeqPlayer::OnShutdownSoundThread()
.fn OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 804175A0 003E0B60  81 83 00 00 */	lwz r12, 0x0(r3)
/* 804175A4 003E0B64  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804175A8 003E0B68  7D 89 03 A6 */	mtctr r12
/* 804175AC 003E0B6C  4E 80 04 20 */	bctr
.endfn OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv

# nw4r::snd::detail::SeqPlayer::InvalidateWaveData(const void*, const void*)
.fn InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv, global
/* 804175B0 003E0B70  4E 80 00 20 */	blr
.endfn InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

# nw4r::snd::detail::SoundThread::PlayerCallback::OnUpdateVoiceSoundThread()
.fn OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv, global
/* 804175B4 003E0B74  4E 80 00 20 */	blr
.endfn OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv

# nw4r::snd::detail::SeqPlayer::IsPause() const
.fn IsPause__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 804175B8 003E0B78  88 63 00 EE */	lbz r3, 0xee(r3)
/* 804175BC 003E0B7C  4E 80 00 20 */	blr
.endfn IsPause__Q44nw4r3snd6detail9SeqPlayerCFv

# nw4r::snd::detail::SeqPlayer::IsStarted() const
.fn IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 804175C0 003E0B80  88 63 00 ED */	lbz r3, 0xed(r3)
/* 804175C4 003E0B84  4E 80 00 20 */	blr
.endfn IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv

# nw4r::snd::detail::SeqPlayer::IsActive() const
.fn IsActive__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 804175C8 003E0B88  88 63 00 EC */	lbz r3, 0xec(r3)
/* 804175CC 003E0B8C  4E 80 00 20 */	blr
.endfn IsActive__Q44nw4r3snd6detail9SeqPlayerCFv

# nw4r::snd::detail::SeqPlayer::_208_InvalidateWaveData(const void*, const void*)
.fn _208_InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv, global
/* 804175D0 003E0B90  38 63 FF 2C */	addi r3, r3, -0xd4
/* 804175D4 003E0B94  4B FF FF DC */	b InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
.endfn _208_InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

# nw4r::snd::detail::SeqPlayer::_208_InvalidateData(const void*, const void*)
.fn _208_InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv, global
/* 804175D8 003E0B98  38 63 FF 2C */	addi r3, r3, -0xd4
/* 804175DC 003E0B9C  48 00 2C 34 */	b InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
.endfn _208_InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

# nw4r::snd::detail::SeqPlayer::_220_OnShutdownSoundThread()
.fn _220_OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 804175E0 003E0BA0  38 63 FF 20 */	addi r3, r3, -0xe0
/* 804175E4 003E0BA4  4B FF FF BC */	b OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
.endfn _220_OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv

# nw4r::snd::detail::SeqPlayer::_220_OnUpdateFrameSoundThread()
.fn _220_OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 804175E8 003E0BA8  38 63 FF 20 */	addi r3, r3, -0xe0
/* 804175EC 003E0BAC  4B FF FF B0 */	b OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
.endfn _220_OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
