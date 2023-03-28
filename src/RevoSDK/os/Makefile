OS_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/os/OS.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSAlarm.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSAlloc.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSArena.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSAudioSystem.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSCache.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSContext.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSError.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSExec.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSFatal.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSFont.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSInterrupt.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSMessage.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSMemory.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSMutex.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSReboot.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSReset.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSRtc.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSSync.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSThread.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSTime.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSUtf.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSIpc.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSStateTM.o\
	$(BUILD_DIR)/src/RevoSDK/os/__start.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSPlayRecord.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSStateFlags.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSNet.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSNandbootInfo.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSPlayTime.o\
	$(BUILD_DIR)/src/RevoSDK/os/OSCrc.o\
	$(BUILD_DIR)/asm/RevoSDK/os/OSLaunch.o\
	$(BUILD_DIR)/src/RevoSDK/os/__ppc_eabi_init.o\

DEPENDS += $(OS_FILES:.o=.d)

#OSUtf only matches on 3.0?
$(BUILD_DIR)/src/RevoSDK/os/OSUtf.o: MWCC_VERSION := 3.0
$(BUILD_DIR)/src/RevoSDK/os/OSUtf.o: CONSOLE := GC

$(BUILD_DIR)/src/RevoSDK/os/os.a: $(OS_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(OS_FILES) > build/OS_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/OS_ofiles
