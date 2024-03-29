#include "nw4r/ut/ut_LockedCache.h"

namespace nw4r
{
	namespace ut
	{
		namespace
		{
			using namespace LC;
			//sizeof(LCImpl) = 0x1C
			struct LCImpl
			{
				struct Lock_
				{
					OSMutex & rMutex;
					
					inline Lock_(LCImpl & lc) : rMutex(lc.mLock)
					{
						OSLockMutex(&rMutex);
					}
					
					inline ~Lock_()
					{
						OSUnlockMutex(&rMutex);
					}
				};
				
				bool mEnabledFlag;
				OSMutex mLock;
				
				inline LCImpl() : mEnabledFlag(false)
				{
					OSInitMutex(&mLock);
				}
				
				inline void Enable()
				{
					Lock_ lock(*this);
					
					if (!this->mEnabledFlag)
					{
						LCEnable();
						this->mEnabledFlag = true;
					}
				}
				
				inline void Disable()
				{
					Lock_ lock(*this);
					
					if (mEnabledFlag)
					{
						QueueWaitEx(0);
						LCDisable();
						mEnabledFlag = false;
					}
				}
				
				inline bool Lock()
				{
					OSLockMutex(&mLock);
					
					if (mEnabledFlag)
					{
						QueueWaitEx(0);
						return true;
					}
					
					OSUnlockMutex(&mLock);
					return false;
				}
				
				inline void Unlock()
				{
					QueueWaitEx(0);
					OSUnlockMutex(&mLock);
				}
			};
			
			static LCImpl sLCImpl;
		}
		
		namespace LC
		{
			void Enable()
			{
				sLCImpl.Enable();
			}
			
			void Disable()
			{
				sLCImpl.Disable();
			}
			
			bool Lock()
			{
				return sLCImpl.Lock();
			}
			
			void Unlock()
			{
				sLCImpl.Unlock();
			}
			
			void LoadBlocks(void * r3, void * r4, u32 r5)
			{
				LCLoadBlocks(r3, r4, r5);
			}
			
			void StoreBlocks(void * r3, void * r4, u32 r5)
			{
				LCStoreBlocks(r3, r4, r5);
			}
			
			void StoreData(void * r3, void * r4, u32 r5)
			{
				LCStoreData(r3, r4, r5);
			}
		}
	}
}
