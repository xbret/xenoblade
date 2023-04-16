ESP_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/esp/esp.o\

DEPENDS += $(ESP_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/esp/esp.a: $(ESP_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(ESP_FILES) > build/ESP_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/ESP_ofiles
