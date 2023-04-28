OS_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OS.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSAlarm.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSAlloc.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSArena.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSAudioSystem.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSCache.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSContext.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSError.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/os/OSExec.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSFatal.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSFont.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSInterrupt.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSLink.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSMessage.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSMemory.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSMutex.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSReboot.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/os/OSReset.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSRtc.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSSync.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSThread.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSTime.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSUtf.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSIpc.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSStateTM.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/__start.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSPlayRecord.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSStateFlags.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/os/OSNet.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSNandbootInfo.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/os/OSPlayTime.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSCrc.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/os/OSLaunch.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/__ppc_eabi_init.o\

DEPENDS += $(OS_FILES:.o=.d)

#OSUtf only matches on 3.0?
$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSUtf.o: MWCC_VERSION := 3.0
$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/OSUtf.o: CONSOLE := GC

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/os.a: $(OS_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(OS_FILES) > build/OS_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/OS_ofiles
