TRK_FILES:=\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/__exception.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/targsupp.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/custconn/cc_gdev.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/custconn/MWCriticalSection_gc.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/custconn/CircleBuffer.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/flush_cache.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/main_TRK.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/mainloop.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/mem_TRK.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/dispatch.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/dolphin_trk.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/dolphin_trk_glue.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/notify.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/nubevent.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/nubinit.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/serpoll.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/string_TRK.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/support.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/targcont.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/mpc_7xx_603e.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/msg.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/msgbuf.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/msghndlr.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/mslsupp.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/targimpl.o\
	$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/target_options.o\

DEPENDS += $(TRK_FILES:.o=.d)

#$(TRK_FILES): INCLUDES += -i libs/NdevExi2A/include/
$(TRK_FILES): CFLAGS += -Cpp_exceptions off -inline on
$(TRK_FILES): MWCC_VERSION = 1.0

$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/dolphin_trk_glue.o: CFLAGS += -str pool
$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/msghndlr.o: CFLAGS += -str pool
$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/support.o: CFLAGS += -str pool
$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/targimpl.o: CFLAGS += -pool off

$(BUILD_DIR)/libs/PowerPC_EABI_Support/src/MetroTRK/TRK_Hollywood_Revolution.a: $(TRK_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(TRK_FILES) > build/TRK_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/TRK_ofiles
