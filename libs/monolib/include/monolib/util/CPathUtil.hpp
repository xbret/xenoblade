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

        static inline void unkInline1(FixStr<32>& param_1){
            int length = param_1.rfind(".", -1);

            if((u32)length + 1 > 1){
                ml::FixStr<32> tempString1 = ml::FixStr<32>(false); //0x8
                param_1.copy(tempString1, length);
                param_1 = tempString1;
            }
        }
    };

}
