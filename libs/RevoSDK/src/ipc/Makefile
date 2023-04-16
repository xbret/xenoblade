IPC_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/src/ipc/ipcMain.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/ipc/ipcclt.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/ipc/memory.o\
	$(BUILD_DIR)/libs/RevoSDK/src/ipc/ipcProfile.o\

DEPENDS += $(IPC_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/ipc/ipc.a: $(IPC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(IPC_FILES) > build/IPC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/IPC_ofiles
