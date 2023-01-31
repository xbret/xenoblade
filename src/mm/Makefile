MM_FILES:=\
	$(BUILD_DIR)/asm/mm/code_80432678.o\
	$(BUILD_DIR)/asm/mm/MemManager.o\
	$(BUILD_DIR)/asm/mm/code_80434F94.o\
	$(BUILD_DIR)/src/mm/MTRand.o\
	$(BUILD_DIR)/asm/mm/Globals1.o\
	$(BUILD_DIR)/asm/mm/code_80435D28.o\
	$(BUILD_DIR)/asm/mm/code_80435DF8.o\
	$(BUILD_DIR)/src/mm/MathConstants.o\
	$(BUILD_DIR)/asm/mm/Random.o\
	$(BUILD_DIR)/asm/mm/code_80436138.o\
	$(BUILD_DIR)/asm/mm/code_80436260.o\
	$(BUILD_DIR)/asm/mm/code_80436E84.o\
	$(BUILD_DIR)/asm/mm/code_80436F20.o\
	$(BUILD_DIR)/asm/mm/code_8043738C.o

$(MM_FILES): CFLAGS += -sym on

DEPENDS += $(MM_FILES:.o=.d)

$(BUILD_DIR)/src/mm/mm.a: $(MM_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MM_FILES) > build/MM_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MM_ofiles