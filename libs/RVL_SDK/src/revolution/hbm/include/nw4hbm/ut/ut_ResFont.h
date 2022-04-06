#pragma once

#include "nw4hbm/ut/ut_ResFontBase.h"
#include "nw4hbm/ut/ut_binaryFileFormat.h"

namespace nw4hbm
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
