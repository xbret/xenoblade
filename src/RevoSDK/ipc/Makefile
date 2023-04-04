IPC_FILES:=\
	$(BUILD_DIR)/src/RevoSDK/ipc/ipcMain.o\
	$(BUILD_DIR)/asm/RevoSDK/ipc/ipcclt.o\
	$(BUILD_DIR)/asm/RevoSDK/ipc/memory.o\
	$(BUILD_DIR)/src/RevoSDK/ipc/ipcProfile.o\

DEPENDS += $(IPC_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/ipc/ipc.a: $(IPC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(IPC_FILES) > build/IPC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/IPC_ofiles
