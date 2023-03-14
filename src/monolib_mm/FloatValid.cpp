#include "monolib_mm/FloatValid.hpp"

namespace mm{

bool func_80435FA4(float f) {
	bool result = false;
	u32 val = FLOAT_TO_HEX(f);
	
	if (fpclassify(f) == 1 || fpclassify(f) == 2 || val == FLOAT_MAX_HEX_NEG ||
	val == FLOAT_MAX_HEX || val == FLOAT_NAN || f > huge || f < hugeminus) {
		result = true;
	}
	
	return result;
}

}