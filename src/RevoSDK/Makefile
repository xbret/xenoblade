RVL_SDK_FILES:=\
	$(BUILD_DIR)/src/RevoSDK/ai/ai.a\
	$(BUILD_DIR)/src/RevoSDK/arc/arc.a\
	$(BUILD_DIR)/src/RevoSDK/ax/ax.a\
	$(BUILD_DIR)/src/RevoSDK/axfx/axfx.a\
	$(BUILD_DIR)/src/RevoSDK/base/base.a\
	$(BUILD_DIR)/src/RevoSDK/bte/bte.a\
	$(BUILD_DIR)/src/RevoSDK/cx/cx.a\
	$(BUILD_DIR)/src/RevoSDK/db/db.a\
	$(BUILD_DIR)/src/RevoSDK/dsp/dsp.a\
	$(BUILD_DIR)/src/RevoSDK/dvd/dvd.a\
	$(BUILD_DIR)/src/RevoSDK/enc/enc.a\
	$(BUILD_DIR)/src/RevoSDK/esp/esp.a\
	$(BUILD_DIR)/src/RevoSDK/euart/euart.a\
	$(BUILD_DIR)/src/RevoSDK/exi/exi.a\
	$(BUILD_DIR)/src/RevoSDK/fs/fs.a\
	$(BUILD_DIR)/src/RevoSDK/gx/gx.a\
	$(BUILD_DIR)/src/RevoSDK/hbm/homebuttonLib.a\
	$(BUILD_DIR)/src/RevoSDK/ipc/ipc.a\
	$(BUILD_DIR)/src/RevoSDK/kpad/kpad.a\
	$(BUILD_DIR)/src/RevoSDK/mem/mem.a\
	$(BUILD_DIR)/src/RevoSDK/mix/mix.a\
	$(BUILD_DIR)/src/RevoSDK/mtx/mtx.a\
	$(BUILD_DIR)/src/RevoSDK/nand/nand.a\
	$(BUILD_DIR)/src/RevoSDK/os/os.a\
	$(BUILD_DIR)/src/RevoSDK/pad/pad.a\
	$(BUILD_DIR)/src/RevoSDK/sc/sc.a\
	$(BUILD_DIR)/src/RevoSDK/si/si.a\
	$(BUILD_DIR)/src/RevoSDK/tpl/tpl.a\
	$(BUILD_DIR)/src/RevoSDK/usb/usb.a\
	$(BUILD_DIR)/src/RevoSDK/vi/vi.a\
	$(BUILD_DIR)/src/RevoSDK/wenc/wenc.a\
	$(BUILD_DIR)/src/RevoSDK/wpad/wpad.a\
	$(BUILD_DIR)/src/RevoSDK/wud/wud.a\

#Wii SDK uses 4.3 build 145, but the 1.1 version (4.3 build 151) seems close enough so far.

#All the functions in the Wii SDK except for bte are aligned to 16 bytes, so this is necessary.
$(RVL_SDK_FILES): CFLAGS = -Cpp_exceptions off -enum int -inline auto -ipa file -proc gekko -fp hard -O4,p -nodefaults -func_align 16 $(INCLUDES)

#USB uses pooling?

$(BUILD_DIR)/src/RevoSDK/RevoSDK.a: $(RVL_SDK_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(RVL_SDK_FILES) > build/RVL_SDK_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/RVL_SDK_ofiles
