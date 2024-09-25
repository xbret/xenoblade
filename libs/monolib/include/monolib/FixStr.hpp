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

		void strncpy(const char* src, int length){
            std::strncpy(string, src, length);
            string[length] = 0;
            length = std::strlen(string);
		}

		void operator=(const char* str){
			length = std::strlen(str);
			std::strcpy(string, str);
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

	public:
		char string[N];
		int length;

	};

}
