#ifndef _MSL_WIDE_CHAR
#define _MSL_WIDE_CHAR
#endif

#include "PowerPC_EABI_Support/MSL_C/MSL_Common/wchar_io.h"

//unused
void putwc(){
}

//unused
void putwchar(){
}

//unused
void fputwc(){
}

//unused
void getwc(){
}

//unused
void __getwc(){
}

//unused
void __getwchar(){
}

//unused
void fgetwc(){
}

//unused
void __fgetwc(){
}

//unused
void ungetwc(){
}

//unused
void __ungetwc(){
}

//unused
void fputws(){
}

//unused
void fgetws(){
}

//unused
void __fwide(){
}

int fwide(FILE* stream, int mode)
{
	int orientation;
    int result;

	if (stream == nullptr || stream->mode.file_kind == __closed_file)
		return 0;

	orientation = stream->mode.file_orientation;
	switch (orientation) {
	case __unoriented:
		if (mode > 0)
			stream->mode.file_orientation = __wide_oriented;
		else if (mode < 0)
			stream->mode.file_orientation = __char_oriented;

		result = mode;
        break;

	case __wide_oriented:
		result = 1;
        break;

	case __char_oriented:
		result = -1;
        break;
	}

    return result;
}
