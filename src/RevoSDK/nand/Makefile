NAND_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/nand/nand.o\
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDOpenClose.o\
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDCore.o\
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDCheck.o\
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDLogging.o\


DEPENDS += $(NAND_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/nand/nand.a: $(NAND_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NAND_FILES) > build/NAND_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NAND_ofiles