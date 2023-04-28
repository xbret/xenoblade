RUNTIME_FILES:=\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/__mem.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/__va_arg.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/global_destructor_chain.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/New.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/NMWException.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/ptmf.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/MWRTTI.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/runtime.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/__init_cpp_exceptions.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/Gecko_ExceptionPPC.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/GCN_mem_alloc.o\

$(RUNTIME_FILES): CFLAGS = -Cpp_exceptions off -use_lmw_stmw on -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 $(INCLUDES)

#Runtime has exceptions turned on for 4 specific files
$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/New.o: CFLAGS += -Cpp_exceptions on
$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/NMWException.o: CFLAGS += -Cpp_exceptions on
$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/MWRTTI.o: CFLAGS += -Cpp_exceptions on
$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/Gecko_ExceptionPPC.o: CFLAGS += -Cpp_exceptions on

DEPENDS += $(RUNTIME_FILES:.o=.d)

$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/Runtime/Runtime.PPCEABI.H.a: $(RUNTIME_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(RUNTIME_FILES) > build/RUNTIME_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/RUNTIME_ofiles
