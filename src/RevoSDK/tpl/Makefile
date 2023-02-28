TPL_FILES:=\
	$(BUILD_DIR)/src/RevoSDK/tpl/TPL.o\

DEPENDS += $(TPL_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/tpl/tpl.a: $(TPL_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(TPL_FILES) > build/TPL_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/TPL_ofiles
