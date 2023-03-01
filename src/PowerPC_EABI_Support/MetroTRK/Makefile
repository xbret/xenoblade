TRK_FILES:=\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/targsupp.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/custconn/cc_gdev.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/custconn/MWCriticalSection_gc.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/custconn/CircleBuffer.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/flush_cache.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/main_TRK.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/mainloop.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/mem_TRK.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/MetroTRK/dispatch.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/dolphin_trk.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/MetroTRK/notify.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/nubevent.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/MetroTRK/nubinit.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/serpoll.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/string_TRK.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/support.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/MetroTRK/targcont.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/mpc_7xx_603e.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/msg.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/msgbuf.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/msghndlr.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/mslsupp.o\
	$(BUILD_DIR)/asm/PowerPC_EABI_Support/MetroTRK/targimpl.o\
	$(BUILD_DIR)/src/PowerPC_EABI_Support/MetroTRK/target_options.o\

DEPENDS += $(TRK_FILES:.o=.d)

$(TRK_FILES): CFLAGS += -Cpp_exceptions off -inline on

$(BUILD_DIR)/src/PowerPC_EABI_Support/MetroTRK/TRK_Hollywood_Revolution.a: $(TRK_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(TRK_FILES) > build/TRK_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/TRK_ofiles
