ifneq ($(findstring MINGW,$(shell uname)),)
	WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
	WINDOWS := 1
endif

NON_MATCHING ?= 0

# If 0, tells the console to chill out. (Quiets the make process.)
VERBOSE ?= 0

# If MAPGENFLAG set to 1, tells LDFLAGS to generate a mapfile, which makes linking take several minutes.
MAPGENFLAG ?= 1

ifeq ($(VERBOSE),0)
	QUIET := @
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

NAME := xenoblade
VERSION ?= 1
VERSION := jp

BUILD_DIR := build/$(NAME).$(VERSION)

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
CPP_FILES += $(wildcard src/*.cp)
LDSCRIPT := ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/$(NAME).$(VERSION).MAP


ifeq ($(MAPGENFLAG),1)
	MAPGEN := -map $(MAP) -mapunused
endif

include obj_files.mk

O_FILES := $(GAME) $(MW) $(NDEV) $(RVL_SDK) $(CRIWARE) $(NW4R) $(MONOLIB)

DEPENDS := $($(filter *.o,O_FILES):.o=.d)
# If a specific .o file is passed as a target, also process its deps
DEPENDS += $(MAKECMDGOALS:.o=.d)

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 1.1
MWLD_VERSION := 1.1
CONSOLE := Wii

# Programs
POWERPC ?= tools/powerpc
ifeq ($(WINDOWS),1)
	WINE :=
	AS      := $(POWERPC)/powerpc-eabi-as.exe
	PYTHON  := python
else
	WIBO := $(shell command -v wibo 2> /dev/null)
	ifdef WIBO
		WINE ?= wibo
	else
		WINE ?= wine
	endif
	# Disable wine debug output for cleanliness
	export WINEDEBUG ?= -all
	AS := $(POWERPC)/powerpc-eabi-as
	PYTHON  := python3
endif
COMPILERS ?= tools/mwcc_compiler
CC      = $(WINE) $(COMPILERS)/$(CONSOLE)/$(MWCC_VERSION)/mwcceppc.exe
LD      = $(WINE) $(COMPILERS)/$(CONSOLE)/$(MWLD_VERSION)/mwldeppc.exe
DTK     := tools/dtk
ELF2DOL := $(DTK) elf2dol
SHASUM  := $(DTK) shasum

ifneq ($(WINDOWS),1)
TRANSFORM_DEP := tools/transform-dep.py
else
TRANSFORM_DEP := tools/transform-win.py
endif

# Options
INCLUDES := -I- -i include/ -i libs/RVL_SDK/include/ -i libs/PowerPC_EABI_Support/include/stl
ASM_INCLUDES := -I include/

# TODO: fix the makefile to make objdiff work without this
INCLUDES += -i libs/nw4r/include/ -i libs/monolib/include/ -i src/ -i libs/NdevExi2A/include/ -i libs/PowerPC_EABI_Support/include/

ASFLAGS := -mgekko $(ASM_INCLUDES)
ifeq ($(VERBOSE),1)
# this set of LDFLAGS outputs warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults
endif
ifeq ($(VERBOSE),0)
# this set of LDFLAGS generates no warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults -w off
endif
LIBRARY_LDFLAGS := -nodefaults -fp hard -proc gekko
CFLAGS = -enum int -use_lmw_stmw on -proc gekko -fp hard -O4,p -nodefaults -func_align 4 -MMD $(INCLUDES)

ifeq ($(VERBOSE),0)
# this set of ASFLAGS generates no warnings.
ASFLAGS += -W
# this set of CFLAGS generates no warnings.
CFLAGS += -w off
endif

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

all: $(DOL)

ALL_DIRS := $(sort $(dir $(O_FILES)))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

$(DOL): $(ELF) | $(DTK)
	$(QUIET) $(ELF2DOL) $< $@
	$(QUIET) $(SHASUM) -c sha1/$(NAME).$(VERSION).sha1
#TODO: fix object file paths so that the progress script works
#ifneq ($(findstring -map,$(LDFLAGS)),)
#	$(PYTHON) tools/calcprogress.py $(DOL) $(MAP) $(BUILD_DIR) -o $(DOL).progress
#endif

clean:
	rm -f -d -r build

$(DTK): tools/dtk_version
	@echo "Downloading $@"
	$(QUIET) $(PYTHON) tools/download_dtk.py $< $@

# ELF creation makefile instructions
$(ELF): $(O_FILES) $(LDSCRIPT)
	@echo Linking ELF $@
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files


%.d.unix: %.d $(TRANSFORM_DEP)
	@echo Processing $<
	$(QUIET) $(PYTHON) $(TRANSFORM_DEP) $< $@


-include include_link.mk

DEPENDS := $(DEPENDS:.d=.d.unix)
ifneq ($(MAKECMDGOALS), clean)
-include $(DEPENDS)
endif

$(BUILD_DIR)/%.o: %.s | $(DTK)
	@echo Assembling $<
	$(QUIET) mkdir -p $(dir $@)
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<
	$(QUIET) $(DTK) elf fixup $@ $@

$(BUILD_DIR)/%.o: %.c
	@echo "Compiling " $<
	$(QUIET) mkdir -p $(dir $@)
	$(QUIET) $(CC) $(CFLAGS) -lang=c99 -c -o $(dir $@) $<

$(BUILD_DIR)/%.o: %.cp
	@echo "Compiling " $<
	$(QUIET) mkdir -p $(dir $@)
	$(QUIET) $(CC) $(CFLAGS) -lang=c++ -c -o $(dir $@) $<
	
$(BUILD_DIR)/%.o: %.cpp
	@echo "Compiling " $<
	$(QUIET) mkdir -p $(dir $@)
	$(QUIET) $(CC) $(CFLAGS) -lang=c++ -c -o $(dir $@) $<

### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
