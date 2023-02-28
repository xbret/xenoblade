WUD_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/wud/WUD.o\
	$(BUILD_DIR)/asm/RevoSDK/wud/WUDHidHost.o\
	$(BUILD_DIR)/asm/RevoSDK/wud/debug_msg.o\

DEPENDS += $(WUD_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/wud/wud.a: $(WUD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(WUD_FILES) > build/WUD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/WUD_ofiles
