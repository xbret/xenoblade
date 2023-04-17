#pragma once

#include "nw4r/types_nw4r.h"
#include "revolution/OS.h"

namespace nw4r
{
	namespace ut
	{
		namespace LC
		{
			void Enable();
			void Disable();
			bool Lock();
			void Unlock();
			void LoadBlocks(void *, void *, u32);
			void StoreBlocks(void *, void *, u32);
			void StoreData(void *, void *, u32);
			
			inline void QueueWaitEx(u32 num)
			{
				while (LCQueueLength() != num) OSYieldThread();
			}
		}
	}
}
