OS_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OS.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSAlarm.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSAlloc.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSArena.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSAudioSystem.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSCache.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSContext.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSError.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/os/OSExec.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSFatal.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSFont.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSInterrupt.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSLink.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSMessage.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSMemory.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSMutex.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/os/OSReboot.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/os/OSReset.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSRtc.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSSync.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSThread.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSTime.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSUtf.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSIpc.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSStateTM.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/__start.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSPlayRecord.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSStateFlags.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/os/OSNet.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSNandbootInfo.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/os/OSPlayTime.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/OSCrc.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/os/OSLaunch.o\
	$(BUILD_DIR)/libs/RevoSDK/src/os/__ppc_eabi_init.o\

DEPENDS += $(OS_FILES:.o=.d)

#OSUtf only matches on 3.0?
$(BUILD_DIR)/libs/RevoSDK/src/os/OSUtf.o: MWCC_VERSION := 3.0
$(BUILD_DIR)/libs/RevoSDK/src/os/OSUtf.o: CONSOLE := GC

$(BUILD_DIR)/libs/RevoSDK/src/os/os.a: $(OS_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(OS_FILES) > build/OS_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/OS_ofiles
