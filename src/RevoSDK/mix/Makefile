MIX_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/mix/mix.o\
	$(BUILD_DIR)/asm/RevoSDK/mix/remote.o\

DEPENDS += $(MIX_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/mix/mix.a: $(MIX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MIX_FILES) > build/MIX_ofiles
	$(QUIET) $(LD) -library $(MIX_FILES) -o $@ -lcf ldscript.lcf @build/MIX_ofiles
