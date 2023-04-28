WUD_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/wud/WUD.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/wud/WUDHidHost.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/wud/debug_msg.o\

DEPENDS += $(WUD_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/wud/wud.a: $(WUD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(WUD_FILES) > build/WUD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/WUD_ofiles
