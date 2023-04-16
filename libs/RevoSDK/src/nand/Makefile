NAND_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/nand/nand.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/nand/NANDOpenClose.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/nand/NANDCore.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/nand/NANDCheck.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/nand/NANDLogging.o\


DEPENDS += $(NAND_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/nand/nand.a: $(NAND_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NAND_FILES) > build/NAND_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NAND_ofiles
