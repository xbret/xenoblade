#include "g3d_resanm.h"
#include "math_arithmetic.h"
#include "ut_Color.h"

namespace nw4r
{
    using namespace ut;
    using namespace math;
    
    namespace g3d
    {
        namespace detail
        {
            namespace
            {
                /*
                The Hermite interpolating polynomial f satisfies the following conditions:
                    f(0)	= y0
                    f(x1)	= y1
                    f'(0)	= d0
                    f'(x1)	= d1
                The value returned is f(x).
                */
                f32 HermiteInterpolation(f32 y0, f32 d0, f32 y1, f32 d1, f32 x, f32 x1)
                {
                    // Linear factors
                    f32 lf0 = x * FInv(x1); // x / x1
                    f32 lf1 = lf0 - 1.0f; // (x - x1) / x1
                    
                    return y0 + lf0 * (lf0 * ((2.0f * lf0 - 3.0f) * (y0 - y1))) + x * lf1 * (lf1 * d0 + lf0 * d1);
                }
                
                /*
                The linear interpolating function f satisfies the following conditions:
                    f(0)		= y0
                    f(0x8000)	= y1
                The value returned is f(x).
                */
                int LinearInterpColorElem(u8 y0, u8 y1, s16 x)
                {
                    return y0 + ((y1 - y0) * x >> 15);
                }
            }
            
            f32 GetResKeyFrameAnmResult(const ResKeyFrameAnmData * pData, f32 time)
            {
                const ResKeyFrameAnmFramesData * pLast = pData->mFrames + (pData->mCount - 1);
                
                if (time <= pData->mFrames[0].mTime) return pData->mFrames[0].mValue;
                
                if (pLast->mTime <= time) return pLast->mValue;
                
                f32 t = time - pData->mFrames[0].mTime;
                
                const ResKeyFrameAnmFramesData * pCur = pData->mFrames + F32ToU16(pData->FLOAT_0x4 * (t * U16ToF32(pData->mCount)));
                
                if (time < pCur->mTime)
                {
                    do
                    {
                        pCur--;
                    } while (time < pCur->mTime);
                }
                else
                {
                    do
                    {
                        pCur++;
                    } while (pCur->mTime <= time);
                    
                    pCur--;
                }
                
                if (pCur->mTime == time) return pCur->mValue;
                
                f32 x = time - pCur[0].mTime;
                f32 x1 = pCur[1].mTime - pCur[0].mTime;
                
                return HermiteInterpolation(pCur[0].mValue, pCur[0].mDerivative, pCur[1].mValue, pCur[1].mDerivative, x, x1);
            }
            
            u32 GetResColorAnmResult(const ResColorAnmFramesData * pData, f32 time)
            {
                f32 integralPart;
                int i;
                s16 t;
                f32 fractionalPart = FModf(time, &integralPart);
                
                i = integralPart;
                
                if (0.0f == fractionalPart) return pData[i].mColor;
                
                Color color0(pData[i].mColor); // at 0x14
                Color color1(pData[i + 1].mColor); // at 0x10
                
                t = F32ToS16(0x8000 * fractionalPart);
                
                int r = LinearInterpColorElem(color0.r, color1.r, t);
                int g = LinearInterpColorElem(color0.g, color1.g, t);
                int b = LinearInterpColorElem(color0.b, color1.b, t);
                int a = LinearInterpColorElem(color0.a, color1.a, t);
                
                return Color(r, g, b, a);
            }
        }
    }
}
