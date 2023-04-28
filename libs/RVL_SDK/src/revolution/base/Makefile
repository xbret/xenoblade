BASE_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/base/PPCArch.o\

DEPENDS += $(BASE_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/base/base.a: $(BASE_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(BASE_FILES) > build/BASE_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/BASE_ofiles
