NW4R_MATH_FILES:=\
	$(BUILD_DIR)/asm/nw4r/math/math_arithmetic.o\
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o\
	$(BUILD_DIR)/asm/nw4r/math/math_types.o\
	$(BUILD_DIR)/asm/nw4r/math/math_geometry.o\

DEPENDS += $(NW4R_MATH_FILES:.o=.d)

#NW4R uses GC 3.0
$(NW4R_MATH_FILES): MWCC_VERSION := 3.0
$(NW4R_MATH_FILES): CONSOLE := GC

$(BUILD_DIR)/src/nw4r/math/libnw4r_math.a: $(NW4R_MATH_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_MATH_FILES) > build/NW4R_MATH_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_MATH_ofiles
