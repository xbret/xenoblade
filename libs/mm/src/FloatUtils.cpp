#include <cmath>
#include "mm/Math.hpp"
#include "mm/FloatUtils.hpp"

namespace mm{

	bool isInvalidFloat(float f) {
		bool result = false;
		u32 val = FLOAT_TO_HEX(f);
		
		if (fpclassify(f) == FP_NAN || fpclassify(f) == FP_INFINITE || val == FLOAT_MAX_HEX_NEG ||
		val == FLOAT_MAX_HEX || val == FLOAT_NAN || f > huge || f < hugeminus) {
			result = true;
		}
		
		return result;
	}

}
