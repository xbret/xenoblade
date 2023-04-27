OS_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OS.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSAlarm.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSAlloc.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSArena.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSAudioSystem.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSCache.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSContext.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSError.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/os/OSExec.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSFatal.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSFont.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSInterrupt.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSLink.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSMessage.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSMemory.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSMutex.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSReboot.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/os/OSReset.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSRtc.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSSync.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSThread.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSTime.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSUtf.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSIpc.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSStateTM.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/__start.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSPlayRecord.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSStateFlags.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/os/OSNet.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSNandbootInfo.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/os/OSPlayTime.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/OSCrc.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/os/OSLaunch.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/__ppc_eabi_init.o\

DEPENDS += $(OS_FILES:.o=.d)

#OSUtf only matches on 3.0?
$(BUILD_DIR)/libs/RVL_SDK/src/os/OSUtf.o: MWCC_VERSION := 3.0
$(BUILD_DIR)/libs/RVL_SDK/src/os/OSUtf.o: CONSOLE := GC

$(BUILD_DIR)/libs/RVL_SDK/src/os/os.a: $(OS_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(OS_FILES) > build/OS_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/OS_ofiles
