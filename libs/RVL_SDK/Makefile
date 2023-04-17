RVL_SDK_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/ai/ai.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/arc/arc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/ax/ax.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/axfx/axfx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/base/base.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/bte/bte.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/cx/cx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/db/db.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/dsp/dsp.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/dvd/dvd.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/enc/enc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/esp/esp.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/euart/euart.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/exi/exi.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/fs/fs.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/gx/gx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/hbm/homebuttonLib.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/ipc/ipc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/kpad/kpad.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/mem/mem.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/mix/mix.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/mtx/mtx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/nand/nand.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/os/os.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/pad/pad.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/sc/sc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/si/si.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/tpl/tpl.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/usb/usb.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/vi/vi.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/wenc/wenc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/wpad/wpad.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/wud/wud.a\

#Wii SDK uses 4.3 build 145, but the 1.1 version (4.3 build 151) seems close enough so far.

#All the functions in the Wii SDK except for bte are aligned to 16 bytes, so this is necessary.
$(RVL_SDK_FILES): CFLAGS = -Cpp_exceptions off -enum int -inline auto -ipa file -proc gekko -fp hard -O4,p -nodefaults -func_align 16 $(INCLUDES)

#USB uses pooling?

$(BUILD_DIR)/libs/RVL_SDK/RVL_SDK.a: $(RVL_SDK_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(RVL_SDK_FILES) > build/RVL_SDK_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/RVL_SDK_ofiles
