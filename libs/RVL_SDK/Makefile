RVL_SDK_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ai/ai.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/arc/arc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ax/ax.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/axfx/axfx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/base/base.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/bte/bte.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/cx/cx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/db/db.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/dsp/dsp.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/dvd/dvd.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/enc/enc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/esp/esp.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/euart/euart.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/exi/exi.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/fs/fs.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/gx/gx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/hbm/homebuttonLib.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ipc/ipc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/kpad/kpad.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mem/mem.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mix/mix.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mtx/mtx.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/nand/nand.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/os/os.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/pad/pad.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/sc/sc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/si/si.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/tpl/tpl.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/usb/usb.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/vi/vi.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/wenc/wenc.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/wpad/wpad.a\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/wud/wud.a\

#Wii SDK uses 4.3 build 145, but the 1.1 version (4.3 build 151) seems close enough so far.

#All the functions in the Wii SDK except for bte are aligned to 16 bytes, so this is necessary.
$(RVL_SDK_FILES): CFLAGS += -inline auto -ipa file -fp_contract off -func_align 16

#USB uses pooling?

$(BUILD_DIR)/libs/RVL_SDK/RVL_SDK.a: $(RVL_SDK_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(RVL_SDK_FILES) > build/RVL_SDK_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/RVL_SDK_ofiles
