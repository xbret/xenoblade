#include "monolib/util.hpp"

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
            temp.copy(param_1, length);
        }
    }

    void CPathUtil::itoa(FixStr<16>& outStr, int num, int digits) {
        outStr = "";

        for(int i = 0; i < digits; i++) {
            char buffer[2] = {0,0};
            int factor = 1;

            //Calculate the current factor
            for(int j = 0; j < i; j++){
                factor *= 10;
            }

            //Extract the current digit, and convert it to a character
            int digit = (num % (factor * 10)) / factor;
            buffer[0] = (char)(digit + (int)'0');
            //Prepend the character to the output string
            FixStr<16> string1 = buffer;
            outStr = string1 + outStr;
        }
    }

} //namespace ml
