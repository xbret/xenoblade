SC_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/sc/scsystem.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/sc/scapi.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/sc/scapi_prdinfo.o\

DEPENDS += $(SC_FILES:.o=.d)


$(BUILD_DIR)/libs/RVL_SDK/src/revolution/sc/scapi_prdinfo.o: MWCC_VERSION := 3.0
$(BUILD_DIR)/libs/RVL_SDK/src/revolution/sc/scapi_prdinfo.o: CONSOLE := GC

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/sc/sc.a: $(SC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(SC_FILES) > build/SC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/SC_ofiles
