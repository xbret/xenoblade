NAND_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/nand/nand.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/nand/NANDOpenClose.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/nand/NANDCore.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/nand/NANDCheck.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/nand/NANDLogging.o\


DEPENDS += $(NAND_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/nand/nand.a: $(NAND_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NAND_FILES) > build/NAND_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NAND_ofiles
