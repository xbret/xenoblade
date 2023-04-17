NW4R_SND_FILES:=\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_AxManager.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_AxVoice.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_AxVoiceManager.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_AxfxImpl.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_Bank.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_BankFile.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_BasicPlayer.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_BasicSound.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_BiquadFilterPreset.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_Channel.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_DisposeCallbackManager.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_EnvGenerator.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_ExternalSoundPlayer.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_FxChorusDpl2.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_FxDelayDpl2.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_FxReverbStdDpl2.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_InstancePool.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_Lfo.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_McsSoundArchive.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_MemorySoundArchive.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_MidiSeqPlayer.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_MmlParser.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_MmlSeqTrack.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_MmlSeqTrackAllocator.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_PlayerHeap.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_RemoteSpeaker.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_RemoteSpeakerManager.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SeqFile.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SeqPlayer.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SeqSound.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SeqSoundHandle.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SeqTrack.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundArchive.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundArchiveFile.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundArchivePlayer.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundHandle.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundPlayer.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundStartable.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundSystem.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_SoundThread.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_StrmChannel.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_StrmFile.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_StrmPlayer.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_StrmSound.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_StrmSoundHandle.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_Task.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_TaskManager.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_TaskThread.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_Voice.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_VoiceManager.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_Util.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_WaveFile.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_WaveSound.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_WaveSoundHandle.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_WsdFile.o\
	$(BUILD_DIR)/libs/nw4r/asm/snd/snd_WsdPlayer.o\
	$(BUILD_DIR)/libs/nw4r/src/snd/snd_adpcm.o\

DEPENDS += $(NW4R_SND_FILES:.o=.d)

#NW4R uses GC 3.0
$(NW4R_SND_FILES): MWCC_VERSION := 3.0
$(NW4R_SND_FILES): CONSOLE := GC

$(BUILD_DIR)/libs/nw4r/src/snd/libnw4r_snd.a: $(NW4R_SND_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_SND_FILES) > build/NW4R_SND_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_SND_ofiles
