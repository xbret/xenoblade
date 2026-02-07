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

        static inline void removeExt(FixStr<32>& str){
            int length = str.rfind(".", -1);

            if((u32)length + 1 > 1){
                str = str.substr(0, length);
            }
        }
    };

}
