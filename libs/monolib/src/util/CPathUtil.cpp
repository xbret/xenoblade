#include "monolib/util.hpp"

namespace ml{

    //Returns a pointer to the filename portion of the given path.
    const char* CPathUtil::getFilePtrFromPath(const char* pPath){
        int endIndex = std::strlen(pPath) - 1;

        for(int i = endIndex; i >= 0; i--) {
            char c = pPath[i];

            /* If the current character is a path separator character, return the rest
            of the string */
            if(c == '/' || c == '\\' || c == ':'){
                return pPath + (endIndex + 1);
            }

            endIndex--;
        }

        //If no path separator characters were found, just return the string
        return pPath;
    }

    //Returns a pointer to the file extension portion of the given filename.
    const char* CPathUtil::getFileExtPtr(const char* pFilename){
        int endIndex = std::strlen(pFilename) - 1;

        for(int i = endIndex; i >= 0; i--) {
            char c = pFilename[i];
            if(c == '.') return pFilename + (endIndex + 1);
            endIndex--;
        }

        //If no '.' was found, return null
        return nullptr;
    }

    //Copies the file name w/o the extension from the given path to the given fixed string.
    void CPathUtil::getNoPathExtName(FixStr<64>& outStr, const char* pPath){
        FixStr<64> temp;

        const char* pFilename = getFilePtrFromPath(pPath);

        if (pFilename == nullptr) {
            outStr = temp;
            return;
        }

        temp = pFilename;

        int length = temp.find(".", -1);

        if ((u32)length + 1 <= 1) {
            outStr = temp;
        } else {
            outStr.clear();
            temp.copy(outStr, length);
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
