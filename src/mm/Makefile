MM_FILES:=\
	$(BUILD_DIR)/asm/mm/code_80432678.o\
	$(BUILD_DIR)/asm/mm/Heap.o\
	$(BUILD_DIR)/asm/mm/StringUtils.o\
	$(BUILD_DIR)/src/mm/MTRand.o\
	$(BUILD_DIR)/src/mm/Vec3.o\
	$(BUILD_DIR)/src/mm/Vec4.o\
	$(BUILD_DIR)/src/mm/FastCast.o\
	$(BUILD_DIR)/src/mm/MathConstants.o\
	$(BUILD_DIR)/src/mm/Random.o\
	$(BUILD_DIR)/src/mm/FloatUtils.o\
	$(BUILD_DIR)/src/mm/Col3.o\
	$(BUILD_DIR)/src/mm/Col4.o\
	$(BUILD_DIR)/asm/mm/Mat34.o\
	$(BUILD_DIR)/src/mm/Mat44.o\
	$(BUILD_DIR)/asm/mm/Quat.o\

#MTRand seems to be the same without ipa file or inline deferred. needs to be tested
$(MM_FILES): CFLAGS += -ipa file -inline deferred -str pool,readonly,reuse -RTTI on -enc SJIS

DEPENDS += $(MM_FILES:.o=.d)

$(BUILD_DIR)/src/mm/mm.a: $(MM_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MM_FILES) > build/MM_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MM_ofiles
