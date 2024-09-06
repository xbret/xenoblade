#pragma once

#include <stdarg.h>
#include "nw4hbm/ut/ut_TagProcessorBase.h"
#include "nw4hbm/ut/ut_CharWriter.h"
#include "nw4hbm/ut/ut_Rect.h"

namespace nw4hbm
{
	namespace ut
	{
		template<typename T>
		struct TextWriterBase : CharWriter
		{
			static TagProcessorBase<T> mDefaultTagProcessor;
			static T * mFormatBuffer;
			static u32 mFormatBufferSize;
			f32 FLOAT_0x4C;
			f32 FLOAT_0x50;
			f32 FLOAT_0x54;
			u32 mTabWidth; // at 0x58
			u32 WORD_0x5C;
			TagProcessorBase<T> * mTagProcessor; // at 0x60
			
			TextWriterBase();
			~TextWriterBase();
			
			inline u32 GetTabWidth() const
			{
				return mTabWidth;
			}
			
			f32 GetLineHeight() const;
			int VSNPrintf(T *, u32, const T *, va_list);
			
			f32 AdjustCursor(f32 *, f32 *, const T *, int);
			f32 PrintImpl(const T *, int);
			bool CalcStringRectImpl(Rect *, const T *, int) __attribute__((never_inline));
			bool CalcLineRectImpl(Rect *, const T **, int);
			f32 Print(const T *, int);
			f32 VPrintf(const T *, va_list);
			
			void CalcStringRect(Rect *, const T *, int) const;
			f32 CalcStringWidth(const T *, int) const;
			f32 CalcLineWidth(const T *, int);
			
			inline bool IsDrawFlagSet(u32 mask, u32 flags) const
			{
				return (WORD_0x5C & mask) == flags;
			}
		};
	}
}
