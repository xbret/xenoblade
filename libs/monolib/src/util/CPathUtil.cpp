#include <monolib/util.hpp>

namespace ml{

    const char* CPathUtil::getFilePtrFromPath(const char* str){
        int endIndex = std::strlen(str) - 1;

        for(int i = endIndex; i >= 0; i--) {
            char c = str[i];

            /* If the current character is a path separator character, return the rest
            of the string */
            if(c == '/' || c == '\\' || c == ':'){
                return str + (endIndex + 1);
            }

            endIndex--;
        }

        //If no path separator characters were found, just return the string
        return str;
    }

    const char* CPathUtil::getFileExtPtr(const char* str){
        int endIndex = std::strlen(str) - 1;

        for(int i = endIndex; i >= 0; i--) {
            char c = str[i];
            if(c == '.') return str + (endIndex + 1);
            endIndex--;
        }

        //If no '.' was found, return null
        return nullptr;
    }

    void CPathUtil::func_80435078(FixStr<64>& param_1, const char* param_2){
        FixStr<64> temp;

        param_2 = getFilePtrFromPath(param_2);

        if (param_2 == nullptr) {
            param_1 = temp;
            return;
        }

        temp = param_2;

        int length = temp.find(".", -1);

        if ((u32)length + 1 <= 1) {
            param_1 = temp;
        } else {
            param_1.clear();

            if (temp.length == 0) {
                if (length == -1) length = temp.size();
                std::strncpy(param_1.string, temp.string, length);
                param_1.string[length] = 0;
                param_1.length = std::strlen(param_1.string);
            }
        }
    }

    void CPathUtil::htoa(FixStr<16>& arg0, u32 arg1, int arg2) {
        FixStr<16> sp20 = FixStr<16>(false);
        FixStr<16> spC = FixStr<16>(false);
        s16 sp8;
        s32 temp_r24_2;
        s32 temp_r4;
        s32 var_ctr_2;
        s32 i;
        s32 var_r3;
        s32 var_r5;
        s32 var_r6;
        s8 *temp_r24;
        u32 var_ctr;

        arg0 = "";

        for(i = 0; i < arg2; i++) {
            sp8 = 0;
            var_r5 = 1;
            var_r6 = 0;
            if (i > arg2) {
                temp_r4 = i - 8;
                if (i > 8) {
                    var_r3 = 0;
                    if ((i >= 8) && (i <= 0x7FFFFFFE)) {
                        var_r3 = 1;
                    }
                    if (var_r3 != 0) {
                        var_ctr = (u32) (temp_r4 + 7) >> 3U;
                        if (temp_r4 > 0) {
                            do {
                                var_r5 *= 100000000;
                                var_r6 += 8;
                                var_ctr -= 1;
                            } while (var_ctr != 0);
                        }
                    }
                }
                var_ctr_2 = i - var_r6;
                if (var_r6 < i) {
                    do {
                        var_r5 *= 10;
                        var_ctr_2--;
                    } while (var_ctr_2 != 0);
                }
            }
            sp8 = ((s32) (arg1 % (var_r5 * 0xA)) / var_r5) + 0x30;
            sp20 = (const char*)&sp8;
            spC = sp20;
            spC += arg0;
            arg0 = spC;
        }
    }

} //namespace ml
