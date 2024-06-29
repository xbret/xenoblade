#!/bin/bash -e

CFLAGS="-O4,p -nodefaults -fp hard -enum int -use_lmw_stmw on -proc gekko -func_align 4 -ipa file -str pool,readonly,reuse -RTTI on -Cpp_exceptions on -enc SJIS"
INCLUDES="-I- -i include/ -i libs/RVL_SDK/include/ -i libs/PowerPC_EABI_Support/include/stl -i libs/nw4r/include/ -i libs/monolib/include/ -i src/ -i libs/NdevExi2A/include/ -i libs/PowerPC_EABI_Support/include/"
MWCC="tools/mwcc_compiler/$1/$2/mwcceppc.exe $CFLAGS -MMD $INCLUDES"
file="$3"
filename="${file%%.*}"
wine $MWCC -c -o ${filename}.o $3
