#pragma once

#include "types.h"
#include <string.h>

namespace ml{

	inline int getFilenameLengthWithoutExtension(char* path, int length){
		if (length == 0) {
			//Return -1 if the string is empty
			return -1;
		}else {
			int dotLength = strlen(".");

			for (char* stringPtr = path + length; stringPtr != path; stringPtr--) {
				if (!strncmp(stringPtr, ".", dotLength)) {
					return (int)(stringPtr - (path + 1));
				}
			}

			//Reached start of string without finding an extension, return -1
			return -1;
		}
	}

}
