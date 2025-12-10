#pragma once

#include <cstring>
#include <cstdio>

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

        FixStr(const FixStr<N>& str){
            *this = str;
        }

        FixStr(const char* str){
            *this = str;
        }

        void clear(){
            mString[0] = 0;
            mLength = 0;
        }

        void operator=(const FixStr<N>& str){
            mLength = std::strlen(str.mString);
            std::strcpy(mString, str.mString);
        }

        void operator=(const char* str){
            mLength = std::strlen(str);
            std::strcpy(mString, str);
        }

        void operator+=(const FixStr<N>& str){
            int strLength = std::strlen(str.mString);
            std::strcat(mString, str.mString);
            mLength += strLength;
        }

        void operator+=(const char* str){
            int strLength = std::strlen(str);
            std::strcat(mString, str);
            mLength += strLength;
        }

        bool operator==(const char* str) const {
            return std::strcmp(c_str(), str) == 0;
        }

        bool operator!=(const char* str) const {
            return std::strcmp(c_str(), str) != 0;
        }

        FixStr<N> operator+(const FixStr<N>& str) const {
            FixStr<N> result = *this;
            result += str;
            return result;
        }

        char operator[](int index) {
            return mString[index];
        }

        const char* c_str() const {
            return mString;
        }

        int size() const {
            return mLength;
        }
        
        void format(const char* format, ...){
            //Why hardcode the buffer size to 256??
            char buffer[256];
            va_list args;
            va_start(args, format);
            std::vsnprintf(buffer, sizeof(buffer), format, args);
            *this = buffer;
        }

        //Sets the given string to the first characters of this string, up to the specified length.
        //TODO: This might just be substr, but when the start index is 0?
        void copy(FixStr<N>& str, int length){
            if (mLength == 0) {
                //Copy entire string if length is -1
                if (length == -1) length = mLength;
                std::strncpy(str.mString, mString, length);
                //Stop the string after the copied characters, and recalculate the length
                str.mString[length] = 0;
                str.mLength = std::strlen(str.mString);
            }
        }

        //const char* substr(int start, int end){}
        //void erase(int, int){}
        //void erase(const char*){}
        //append_int(const int&){}
        //void insert(int r4, char const* str, int r6){}
        //slice(int){}

        //also has version with const char& and const FixStr<64>&
        int append_back(const char* str){

        }

        int append_front(const char* str){

        }

        int rfind(const char* str, int pos) const {

        }

        int find(const char* str, int pos) const {
            if (mLength == 0) {
                //Return -1 if the string is empty
                return -1;
            }
            
            int strLength = std::strlen(str);

            for (char* p = (char*)mString + pos + strLength; p != mString + pos; p--) {
                if (!std::strncmp(p, str, strLength)) {
                    return (int)(p - mString);
                }
            }

            //Reached start of string without finding the string, return -1
            return -1;
        }

        int find_last_of(char c, int pos) const {

        }

    private:
        char mString[N];
        int mLength;
    };

}
