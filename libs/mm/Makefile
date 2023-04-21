MM_FILES:=\
	$(BUILD_DIR)/libs/mm/asm/code_80432678.o\
	$(BUILD_DIR)/libs/mm/asm/Heap.o\
	$(BUILD_DIR)/libs/mm/asm/StringUtils.o\
	$(BUILD_DIR)/libs/mm/src/MTRand.o\
	$(BUILD_DIR)/libs/mm/src/Vec3.o\
	$(BUILD_DIR)/libs/mm/src/Vec4.o\
	$(BUILD_DIR)/libs/mm/src/FastCast.o\
	$(BUILD_DIR)/libs/mm/src/MathConstants.o\
	$(BUILD_DIR)/libs/mm/src/Random.o\
	$(BUILD_DIR)/libs/mm/src/FloatUtils.o\
	$(BUILD_DIR)/libs/mm/src/Col3.o\
	$(BUILD_DIR)/libs/mm/src/Col4.o\
	$(BUILD_DIR)/libs/mm/asm/Mat34.o\
	$(BUILD_DIR)/libs/mm/src/Mat44.o\
	$(BUILD_DIR)/libs/mm/asm/Quat.o\

$(MM_FILES): INCLUDES += -i libs/mm/include/
#MTRand seems to be the same without ipa file or inline deferred. needs to be tested
$(MM_FILES): CFLAGS += -ipa file -inline deferred -str pool,readonly,reuse -RTTI on -enc SJIS

DEPENDS += $(MM_FILES:.o=.d)

$(BUILD_DIR)/libs/mm/mm.a: $(MM_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MM_FILES) > build/MM_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MM_ofiles
