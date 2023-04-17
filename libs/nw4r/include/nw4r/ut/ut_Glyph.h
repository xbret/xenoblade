#pragma once

#include "types.h"
#include "revolution/GX.h"

namespace nw4r
{
	namespace ut
	{
		struct Glyph
		{
			u8 * PTR_0x0;
			
			s8 BYTE_0x4;
			u8 cellWidth; // at 0x5
			s8 BYTE_0x6;
			u8 cellHeight; // at 0x7
			
			//char BYTES_0x4[4];
			
			GXTexFmt WORD_0x8;
			
			unsigned short SHORT_0xC;
			unsigned short SHORT_0xE;
			unsigned short SHORT_0x10;
			unsigned short SHORT_0x12;
		};
	}
}
