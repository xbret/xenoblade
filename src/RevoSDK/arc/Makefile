ARC_FILES:=\
	$(BUILD_DIR)/src/RevoSDK/arc/arc.o\

DEPENDS += $(ARC_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/arc/arc.a: $(ARC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(ARC_FILES) > build/ARC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/ARC_ofiles
