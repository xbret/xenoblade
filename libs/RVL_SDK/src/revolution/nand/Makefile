NAND_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/nand/nand.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/nand/NANDOpenClose.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/nand/NANDCore.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/nand/NANDCheck.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/nand/NANDLogging.o\


DEPENDS += $(NAND_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/nand/nand.a: $(NAND_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NAND_FILES) > build/NAND_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NAND_ofiles
