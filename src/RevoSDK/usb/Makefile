USB_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/usb/usb.o\

DEPENDS += $(USB_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/usb/usb.a: $(USB_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(USB_FILES) > build/USB_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/USB_ofiles