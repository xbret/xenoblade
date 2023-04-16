RVL_SDK_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/src/ai/ai.a\
	$(BUILD_DIR)/libs/RevoSDK/src/arc/arc.a\
	$(BUILD_DIR)/libs/RevoSDK/src/ax/ax.a\
	$(BUILD_DIR)/libs/RevoSDK/src/axfx/axfx.a\
	$(BUILD_DIR)/libs/RevoSDK/src/base/base.a\
	$(BUILD_DIR)/libs/RevoSDK/src/bte/bte.a\
	$(BUILD_DIR)/libs/RevoSDK/src/cx/cx.a\
	$(BUILD_DIR)/libs/RevoSDK/src/db/db.a\
	$(BUILD_DIR)/libs/RevoSDK/src/dsp/dsp.a\
	$(BUILD_DIR)/libs/RevoSDK/src/dvd/dvd.a\
	$(BUILD_DIR)/libs/RevoSDK/src/enc/enc.a\
	$(BUILD_DIR)/libs/RevoSDK/src/esp/esp.a\
	$(BUILD_DIR)/libs/RevoSDK/src/euart/euart.a\
	$(BUILD_DIR)/libs/RevoSDK/src/exi/exi.a\
	$(BUILD_DIR)/libs/RevoSDK/src/fs/fs.a\
	$(BUILD_DIR)/libs/RevoSDK/src/gx/gx.a\
	$(BUILD_DIR)/libs/RevoSDK/src/hbm/homebuttonLib.a\
	$(BUILD_DIR)/libs/RevoSDK/src/ipc/ipc.a\
	$(BUILD_DIR)/libs/RevoSDK/src/kpad/kpad.a\
	$(BUILD_DIR)/libs/RevoSDK/src/mem/mem.a\
	$(BUILD_DIR)/libs/RevoSDK/src/mix/mix.a\
	$(BUILD_DIR)/libs/RevoSDK/src/mtx/mtx.a\
	$(BUILD_DIR)/libs/RevoSDK/src/nand/nand.a\
	$(BUILD_DIR)/libs/RevoSDK/src/os/os.a\
	$(BUILD_DIR)/libs/RevoSDK/src/pad/pad.a\
	$(BUILD_DIR)/libs/RevoSDK/src/sc/sc.a\
	$(BUILD_DIR)/libs/RevoSDK/src/si/si.a\
	$(BUILD_DIR)/libs/RevoSDK/src/tpl/tpl.a\
	$(BUILD_DIR)/libs/RevoSDK/src/usb/usb.a\
	$(BUILD_DIR)/libs/RevoSDK/src/vi/vi.a\
	$(BUILD_DIR)/libs/RevoSDK/src/wenc/wenc.a\
	$(BUILD_DIR)/libs/RevoSDK/src/wpad/wpad.a\
	$(BUILD_DIR)/libs/RevoSDK/src/wud/wud.a\

#Wii SDK uses 4.3 build 145, but the 1.1 version (4.3 build 151) seems close enough so far.

#All the functions in the Wii SDK except for bte are aligned to 16 bytes, so this is necessary.
$(RVL_SDK_FILES): CFLAGS = -Cpp_exceptions off -enum int -inline auto -ipa file -proc gekko -fp hard -O4,p -nodefaults -func_align 16 $(INCLUDES)

#USB uses pooling?

$(BUILD_DIR)/libs/RevoSDK/RevoSDK.a: $(RVL_SDK_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(RVL_SDK_FILES) > build/RVL_SDK_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/RVL_SDK_ofiles
