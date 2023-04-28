MEM_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mem/mem_heapCommon.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/mem/mem_expHeap.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mem/mem_frameHeap.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mem/mem_allocator.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mem/mem_list.o\

DEPENDS += $(MEM_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mem/mem.a: $(MEM_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MEM_FILES) > build/MEM_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MEM_ofiles
