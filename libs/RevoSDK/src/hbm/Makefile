HBM_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMFrameController.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMAnmController.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMGUIManager.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMController.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMRemoteSpk.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMAxSound.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMCommon.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/HBMBase.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_animation.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_arcResourceAccessor.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_bounding.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_common.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_drawInfo.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_group.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_layout.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_material.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_pane.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_picture.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_resourceAccessor.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_textBox.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/lyt/lyt_window.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/math/math_triangular.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_binaryFileFormat.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_CharStrmReader.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_CharWriter.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_Font.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_LinkList.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_list.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_ResFont.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_ResFontBase.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_TagProcessorBase.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/nw4hbm/ut/ut_TextWriterBase.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/mix.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/syn.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/synctrl.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/synenv.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/synmix.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/synpitch.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/synsample.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/synvoice.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/hbm/seq.o\

DEPENDS += $(HBM_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/hbm/homebuttonLib.a: $(HBM_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(HBM_FILES) > build/HBM_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/HBM_ofiles
