MW_FILES:=\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/Runtime.PPCEABI.H.a\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MSL_C/MSL_C.PPCEABI.bare.H.a\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/TRK_Hollywood_Revolution.a\

$(BUILD_DIR)/libs/PowerPC_EABI_Support/PowerPC_EABI_Support.a: $(MW_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MW_FILES) > build/MW_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MW_ofiles
