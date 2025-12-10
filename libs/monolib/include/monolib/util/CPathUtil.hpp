#pragma once

#include <types.h>
#include "monolib/util/FixStr.hpp"

namespace ml{

    class CPathUtil {
    public:
        static const char* getFilePtrFromPath(const char* pPath);
        static const char* getFileExtPtr(const char* pFilename);
        static void getNoPathExtName(FixStr<64>& param_1, const char* param_2);
        static void itoa(FixStr<16>& param_1, int param_2, int param_3);
    };

}
