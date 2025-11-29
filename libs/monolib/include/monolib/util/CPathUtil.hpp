#pragma once

#include "types.h"
#include "monolib/util/FixStr.hpp"

namespace ml{

    class CPathUtil {
    public:
        static const char* getFilePtrFromPath(const char* str);
        static const char* getFileExtPtr(const char* str);
        static void func_80435078(FixStr<64>& param_1, const char* param_2);
        static void htoa(FixStr<16>& param_1, u32 param_2, int param_3);
    };

}
