#pragma once

#include "nw4r/ut/ut_IOStream.h"

namespace nw4r
{
	namespace ut
	{
		struct FileStream : IOStream
		{
			struct FilePosition
			{
				u32 mFileSize;
				u32 mFileOffset;
				
				u32 Skip(s32);
				u32 Append(s32);
				void Seek(s32, u32);
				
				inline FilePosition() : mFileSize(), mFileOffset() {}
				
				inline u32 Tell() const
				{
					return mFileOffset;
				}

				inline u32 GetFileSize() const
				{
					return mFileSize;
				}

				inline void SetFileSize(u32 fileSize)
				{
					mFileSize = fileSize;
				}
			};
			
			bool BOOL_0x4;
			u32 WORD_0x8;
			AsyncFunctor ASYNC_0xC;
			void * PTR_0x10;
			
			inline FileStream() : BOOL_0x4(false), ASYNC_0xC(NULL), PTR_0x10(NULL) {}
			
			const detail::RuntimeTypeInfo * GetRuntimeTypeInfo() const;
			
			bool Cancel();
			bool CancelAsync(AsyncFunctor, void *);
			
			inline virtual ~FileStream() {}
			
			static detail::RuntimeTypeInfo typeInfo;
		};
	}
}
