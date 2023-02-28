PAD_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/pad/Pad.o\


DEPENDS += $(PAD_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/pad/pad.a: $(PAD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(PAD_FILES) > build/PAD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/PAD_ofiles