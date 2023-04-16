NW4R_G3D_FILES:=\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_rescommon.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resdict.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resfile.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resmdl.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resshp.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_restev.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resmat.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resvtx.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_restex.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resnode.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanm.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmclr.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmtexpat.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmtexsrt.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmchr.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_reslightset.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmamblight.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmlight.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmfog.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmcamera.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/res/g3d_resanmscn.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_transform.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmvis.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmclr.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmtexpat.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmtexsrt.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmchr.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmshp.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmscn.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_obj.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_anmobj.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/platform/g3d_gpu.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/platform/g3d_cpu.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_state.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_draw1mat1shp.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_calcview.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_dcc.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_workmem.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_calcworld.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_draw.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_camera.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/dcc/g3d_basic.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/dcc/g3d_maya.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/dcc/g3d_xsi.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/dcc/g3d_3dsmax.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_scnobj.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_scnroot.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_scnmdlsmpl.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_scnmdl.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_scnmdlexpand.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_calcmaterial.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_init.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_scnproc.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_fog.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_light.o\
	$(BUILD_DIR)/libs/nw4r/asm/g3d/g3d_calcvtx.o\


DEPENDS += $(NW4R_G3D_FILES:.o=.d)

#NW4R uses GC 3.0
$(NW4R_G3D_FILES): MWCC_VERSION := 3.0
$(NW4R_G3D_FILES): CONSOLE := GC

$(BUILD_DIR)/libs/nw4r/src/g3d/libnw4r_g3d.a: $(NW4R_G3D_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_G3D_FILES) > build/NW4R_G3D_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_G3D_ofiles
