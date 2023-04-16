MIX_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/mix/mix.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/mix/remote.o\

DEPENDS += $(MIX_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/mix/mix.a: $(MIX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MIX_FILES) > build/MIX_ofiles
	$(QUIET) $(LD) -library $(MIX_FILES) -o $@ -lcf ldscript.lcf @build/MIX_ofiles
