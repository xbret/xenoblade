#include "monolib/Math.hpp"

namespace ml{
    //TODO: see if it's possible to have these use arrays instead
	CMat34 CMat34::zero = CMat34(
	0,0,0,0,
	0,0,0,0,
	0,0,0,0
	);

	CMat34 CMat34::identity = CMat34(
	1,0,0,0,
	0,1,0,0,
	0,0,1,0
	);
}
