#pragma once

#include "types.h"
#include <cstring>
#include "monolib/FixStr.hpp"

namespace ml{

	class CPathUtil {
	public:
		static const char* getFilenameFromPath(const char* str);
		static const char* getFileExtensionFromPath(const char* str);
		static void func_80435078(FixStr<64>* param_1, const char* param_2);
		static void func_80435220(FixStr<16>* param_1, int param_2, int param_3);

		static int getFilenameLengthWithoutExtension(const char* path, int length){
			if (length == 0) {
				//Return -1 if the string is empty
				return -1;
			}else {
				int dotLength = std::strlen(".");

				for (char* stringPtr = (char*)path + length; stringPtr != path; stringPtr--) {
					if (!std::strncmp(stringPtr, ".", dotLength)) {
						return (int)(stringPtr - (path + 1));
					}
				}

				//Reached start of string without finding an extension, return -1
				return -1;
			}
		}
	};

}
