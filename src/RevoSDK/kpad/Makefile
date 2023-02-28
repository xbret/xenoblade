KPAD_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/kpad/KPAD.o\

DEPENDS += $(KPAD_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/kpad/kpad.a: $(KPAD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(KPAD_FILES) > build/KPAD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/KPAD_ofiles
