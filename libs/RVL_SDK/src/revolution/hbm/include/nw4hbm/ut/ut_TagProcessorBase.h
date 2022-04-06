#pragma once

#include "nw4hbm/types_nw4hbm.h"
#include "nw4hbm/ut/ut_Rect.h"

namespace nw4hbm
{
	namespace ut
	{		
		template<typename T>
		struct PrintContext
		{
			TextWriterBase<T> * mTextWriter;
			
			const T * PTR_0x4;
			
			float FLOAT_0x8;
			float FLOAT_0xC;
			int WORD_0x10;
		};
		
		template<typename T>
		struct TagProcessorBase
		{
			TagProcessorBase();
			virtual ~TagProcessorBase();
			
			virtual int Process(u16, PrintContext<T> *);
			virtual int CalcRect(register Rect *, u16, PrintContext<T> *);
			
			void ProcessTab(PrintContext<T> *); //inlined
			void ProcessLinefeed(PrintContext<T> *); //inlined
		};
	}
}
