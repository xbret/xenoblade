#pragma once

#include "types.h"
#include <cstring>

namespace ml{

    template <size_t N>
    struct FixStr{
        FixStr(){
            clear();
        }

        //probably fake
        FixStr(bool initialize){
            if(initialize){
                clear();
            }
        }

        void clear(){
            string[0] = 0;
            length = 0;
        }

        void operator=(const FixStr<N>& str){
            length = std::strlen(str.string);
            std::strcpy(string, str.string);
        }

        void operator=(const char* str){
            length = std::strlen(str);
            std::strcpy(string, str);
        }

        void operator+=(const FixStr<N>& str){
            int strLength = std::strlen(str.string);
            std::strcat(string, str.string);
            length += strLength;
        }

        void operator+=(const char* str){
            int strLength = std::strlen(str);
            std::strcat(string, str);
            length += strLength;
        }

        const char* c_str() const {
            return string;
        }

        int size() const {
            return length;
        }

        int find(const char* str, int pos) const {
            if (length == 0) {
                //Return -1 if the string is empty
                return -1;
            }
            
            int strLength = std::strlen(str);

            for (char* p = (char*)string + pos + strLength; p != string + pos; p--) {
                if (!std::strncmp(p, str, strLength)) {
                    return (int)(p - string);
                }
            }

            //Reached start of string without finding the string, return -1
            return -1;
        }

    public:
        char string[N];
        int length;

    };

}
