MM_FILES:=\
	$(BUILD_DIR)/asm/monolib_mm/code_80432678.o\
	$(BUILD_DIR)/asm/monolib_mm/MemManager.o\
	$(BUILD_DIR)/asm/monolib_mm/code_80434F94.o\
	$(BUILD_DIR)/src/monolib_mm/MTRand.o\
	$(BUILD_DIR)/asm/monolib_mm/Globals1.o\
	$(BUILD_DIR)/asm/monolib_mm/code_80435D28.o\
	$(BUILD_DIR)/asm/monolib_mm/code_80435DF8.o\
	$(BUILD_DIR)/src/monolib_mm/MathConstants.o\
	$(BUILD_DIR)/src/monolib_mm/Random.o\
	$(BUILD_DIR)/src/monolib_mm/FloatValid.o\
	$(BUILD_DIR)/src/monolib_mm/Col3.o\
	$(BUILD_DIR)/src/monolib_mm/Col4.o\
	$(BUILD_DIR)/asm/monolib_mm/code_80436260.o\
	$(BUILD_DIR)/asm/monolib_mm/code_80436E84.o\
	$(BUILD_DIR)/asm/monolib_mm/code_80436F20.o\
	$(BUILD_DIR)/asm/monolib_mm/code_8043738C.o\

#MTRand seems to be the same without ipa file or inline deferred. needs to be tested
$(MM_FILES): CFLAGS += -ipa file -inline deferred -str pool,readonly,reuse -RTTI on -enc SJIS

DEPENDS += $(MM_FILES:.o=.d)

$(BUILD_DIR)/src/monolib_mm/monolib_mm.a: $(MM_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MM_FILES) > build/MM_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MM_ofiles
