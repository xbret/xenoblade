#include "monolib/Math.hpp"

namespace ml{
	//TODO: see if it's possible to have these use arrays instead
	CMat44 CMat44::zero = CMat44(
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0
	);

	CMat44 CMat44::identity = CMat44(
	1,0,0,0,
	0,1,0,0,
	0,0,1,0,
	0,0,0,1
	);
}
