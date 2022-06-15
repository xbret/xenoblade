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
ifeq ($(EPILOGUE_PROCESS),1)
EPILOGUE_DIR := epilogue/$(NAME).$(VERSION)
endif

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
CPP_FILES += $(wildcard src/*.cp)
LDSCRIPT_DOL := $(BUILD_DIR)/ldscript.lcf
LDSCRIPT_REL := $(BUILD_DIR)/partial.lcf
ELF2REL_ARGS := -i 1 -o 0x0 -l 0x2F -c 14
REL_LDFLAGS := -nodefaults -fp hard -r1 -m _prolog -g

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/$(NAME).$(VERSION).MAP


ifeq ($(MAPGENFLAG),1)
  MAPGEN := -map $(MAP)
endif

include obj_files.mk
ifeq ($(EPILOGUE_PROCESS),1)
include e_files.mk
endif

O_FILES := $(EXTAB_O_FILES) $(EXTABINDEX_O_FILES) $(GAME_O_FILES) \
		   $(MW_O_FILES) $(RVL_SDK_O_FILES) $(CRIWARE_O_FILES) \
		   $(NW4R_O_FILES) $(MONOLITHLIB_O_FILES) $(CTORS_O_FILES) \
		   $(RODATA_O_FILES) $(DATA_O_FILES) \
		   $(BSS_O_FILES) $(SDATA2_O_FILES) $(SBSS2_O_FILES)

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

# Could also be 1.0?
MWCC_VERSION := 1.1
MWLD_VERSION := 1.1

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as.exe
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp.exe -P
  SHA1SUM := sha1sum
else
  WINE ?= wine
  AS      := /opt/devkitpro/devkitPPC/bin/powerpc-eabi-as
  CPP     := /opt/devkitpro/devkitPPC/bin/powerpc-eabi-cpp -P
  SHA1SUM := shasum
endif
CC      = $(WINE) tools/mwcc_compiler/Wii/$(MWCC_VERSION)/mwcceppc.exe
LD      := $(WINE) tools/mwcc_compiler/Wii/$(MWLD_VERSION)/mwldeppc.exe
ELF2DOL := tools/elf2dol
ELF2REL := tools/elf2rel
PYTHON  := python3

# Options
INCLUDES := -i include/
ASM_INCLUDES := -I include/

ASFLAGS := -mgekko $(ASM_INCLUDES)
ifeq ($(VERBOSE),1)
# this set of LDFLAGS outputs warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults
endif
ifeq ($(VERBOSE),0)
# this set of LDFLAGS generates no warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults -w off
endif
CFLAGS   = -Cpp_exceptions off -enum int -inline on -use_lmw_stmw on -proc gekko -RTTI off -fp hard -rostr -str pool -O4,p -nodefaults -enc SJIS -func_align 4 $(INCLUDES)
ifeq ($(NON_MATCHING),1)
CFLAGS += -DNON_MATCHING
endif

ifeq ($(VERBOSE),0)
# this set of ASFLAGS generates no warnings.
ASFLAGS += -W
endif

$(BUILD_DIR)/src/MSL_C/PPC_EABI/Runtime/__start.o: CFLAGS += -func_align 16
#All the functions in the Wii SDK are aligned to 16 bytes, so this is necessary.
$(BUILD_DIR)/src/RevoSDK/%.o: CFLAGS += -func_align 16

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

all: $(DOL)

ALL_DIRS := $(sort $(dir $(O_FILES)))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

# ifeq ($(EPILOGUE_PROCESS),1)
# Make sure profile directory exists before compiling anything
# DUMMY != mkdir -p $(EPI_DIRS)
# endif

.PHONY: tools

$(LDSCRIPT_DOL): ldscript.lcf
	$(QUIET) $(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF) | tools
	$(QUIET) $(ELF2DOL) $< $@
	$(QUIET) $(SHA1SUM) -c sha1/$(NAME).$(VERSION).sha1
ifneq ($(findstring -map,$(LDFLAGS)),)
	$(QUIET) $(PYTHON) tools/calcprogress.py $@ $(MAP)
endif

clean:
	rm -f -d -r build
	rm -f -d -r epilogue
	find . -name '*.o' -exec rm {} +
	find . -name 'ctx.c' -exec rm {} +
	find ./include -name "*.s" -type f -delete
	$(MAKE) -C tools clean
tools:
	$(MAKE) -C tools

# ELF creation makefile instructions
ifeq ($(EPILOGUE_PROCESS),1)
	@echo Linking ELF $@
$(ELF): $(O_FILES) $(E_FILES) $(LDSCRIPT_DOL)
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT_DOL) @build/o_files
else
$(ELF): $(O_FILES) $(LDSCRIPT_DOL)
	@echo Linking ELF $@
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT_DOL) @build/o_files
endif

$(BUILD_DIR)/%.o: %.s
	@echo Assembling $<
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -lang=c99 -c -o $@ $<
	
$(BUILD_DIR)/%.o: %.cpp
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<

### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true