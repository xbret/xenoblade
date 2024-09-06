#ifndef NW4R_G3D_RESANM_H
#define NW4R_G3D_RESANM_H
#include "types_nw4r.h"

namespace nw4r
{
	namespace g3d
	{
		struct ResKeyFrameAnmFramesData
		{
			f32 mTime; // at 0x0
			f32 mValue; // at 0x4
			f32 mDerivative; // at 0x8
		};
		
		struct ResKeyFrameAnmData
		{
			u16 mCount; // at 0x0
			f32 FLOAT_0x4;
			ResKeyFrameAnmFramesData mFrames[]; // at 0x8
		};
		
		struct ResColorAnmFramesData
		{
			u32 mColor; // at 0x0
		};
		
		union ResColorAnmData
		{
			u32 mColor;
			s32 mOffset;
		};
		
		struct ResBoolAnmFramesData
		{
			u32 mFlags; // at 0x0
		};
		
		union ResAnmData
		{
			f32 mValue;
			s32 mOffset;
		};
		
		namespace detail
		{
			f32 GetResKeyFrameAnmResult(const ResKeyFrameAnmData *, f32);
			
			u32 GetResColorAnmResult(const ResColorAnmFramesData *, f32);
			
			inline u32 GetResColorAnmResult(const ResColorAnmData * pData, f32 time, bool b)
			{
				if (b) return pData->mColor;
				
				return GetResColorAnmResult((const ResColorAnmFramesData *)((u8 *)pData + pData->mOffset), time);
			}
			
			inline bool GetResBoolAnmFramesResult(const ResBoolAnmFramesData * pData, int i)
			{
				u32 index = i;
				
				u32 mask = 0x80000000 >> (index % 32);
				u32 flags = pData[index / 32].mFlags;
				
				return flags & mask;
			}
			
			template <typename T>
			inline f32 ClipFrame(T & info, f32 time)
			{
				if (time <= 0.0f) return 0.0f;
				
				if (info.mNumFrames <= time) return info.mNumFrames;
				
				return time;
			}
			
			inline f32 GetResAnmResult(const ResAnmData * pData, f32 time, bool b)
			{
				if (b) return pData->mValue;
				
				return GetResKeyFrameAnmResult((const ResKeyFrameAnmData *)((u8 *)pData + pData->mOffset), time);
			}
		}
	}
}

#endif
