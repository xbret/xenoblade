#pragma once

#include "nw4r/ut/ut_ResFontBase.h"
#include "nw4r/ut/ut_binaryFileFormat.h"

namespace nw4r
{
	namespace ut
	{
		struct ResFont : detail::ResFontBase
		{
			ResFont();
			~ResFont();
			
			bool SetResource(void *);
			static FontInformation * Rebuild(BinaryFileHeader *);
		};
	}
}
