#pragma once

namespace nw4hbm
{
	namespace ut
	{
		// TODO: Implement the object properly
		struct Rect
		{
			f32 FLOAT_0x0;
			f32 FLOAT_0x4;
			f32 FLOAT_0x8;
			f32 FLOAT_0xC;
			
			inline Rect(f32 F_0x0, f32 F_0x4, f32 F_0x8, f32 F_0xC)
				: FLOAT_0x0(F_0x0), FLOAT_0x4(F_0x4),
				FLOAT_0x8(F_0x8), FLOAT_0xC(F_0xC)
			{}
			
			inline Rect() : FLOAT_0x0(), FLOAT_0x4(), FLOAT_0x8(), FLOAT_0xC() {}
			
			inline Rect & operator=(const Rect & other)
			{
				FLOAT_0x0 = other.FLOAT_0x0;
				FLOAT_0x4 = other.FLOAT_0x4;
				FLOAT_0x8 = other.FLOAT_0x8;
				FLOAT_0xC = other.FLOAT_0xC;
				
				return *this;
			}
			
			inline f32 GetWidth() const
			{
				return FLOAT_0x8 - FLOAT_0x0;
			}
		};
	}
}
