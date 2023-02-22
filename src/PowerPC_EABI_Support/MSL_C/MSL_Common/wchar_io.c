#ifndef _MSL_WIDE_CHAR
#define _MSL_WIDE_CHAR
#endif

#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.h"


int fwide(FILE* stream, int mode)
{
	int orientation;
    int result;

	if (stream == nullptr || stream->mMode.file_kind == __closed_file)
		return 0;

	orientation = stream->mMode.file_orientation;
	switch (orientation) {
	case __unoriented:
		if (mode > 0)
			stream->mMode.file_orientation = __wide_oriented;
		else if (mode < 0)
			stream->mMode.file_orientation = __char_oriented;

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