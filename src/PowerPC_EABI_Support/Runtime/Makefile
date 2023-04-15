RUNTIME_FILES:=\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/__mem.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/__exception.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/__va_arg.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/global_destructor_chain.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/Runtime/NMWException.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/ptmf.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/Runtime/MWRTTI.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/runtime.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/__init_cpp_exceptions.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/Runtime/Gecko_ExceptionPPC.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/GCN_mem_alloc.o\

$(RUNTIME_FILES): CFLAGS = -Cpp_exceptions off -use_lmw_stmw on -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 $(INCLUDES)

#Runtime has exceptions turned on for 3 specific files
$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/NMWException.o: CFLAGS += -Cpp_exceptions on
$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/MWRTTI.o: CFLAGS += -Cpp_exceptions on
$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/Gecko_ExceptionPPC.o: CFLAGS += -Cpp_exceptions on

DEPENDS += $(RUNTIME_FILES:.o=.d)

$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/Runtime.PPCEABI.H.a: $(RUNTIME_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(RUNTIME_FILES) > build/RUNTIME_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/RUNTIME_ofiles
