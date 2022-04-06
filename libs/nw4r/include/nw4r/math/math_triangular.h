#ifndef _NW4R_MATH_TRIANGULAR_H
#define _NW4R_MATH_TRIANGULAR_H

#include "nw4r/types_nw4r.h"
#include "nw4r/math/math_types.h"

namespace nw4r {
	namespace math {
		namespace detail {

			struct SinCosSample {
			  float sin_val;
			  float cos_val;
			  float sin_delta;
			  float cos_delta;
			};

			extern const SinCosSample gSinCosTbl[256 + 1];
		}

		float SinFIdx(float fidx);
		float CosFIdx(float fidx);
		void SinCosFIdx(float*, float*, float);
		float AtanFIdx(float);
		float Atan2FIdx(float, float);

		inline void SinCosDeg(float* pf1, float* pf2, float f3)
        {
            SinCosFIdx(pf1, pf2, NW4R_DEG_TO_FIDX * f3);
        }

		inline void MTX34RotXYZDeg(MTX34 *pMtx, float x, float y, float z)
		{
			MTX34RotXYZFIdx(pMtx, NW4R_DEG_TO_FIDX * x, NW4R_DEG_TO_FIDX * y, NW4R_DEG_TO_FIDX * z);
		}
	}
}

#endif
