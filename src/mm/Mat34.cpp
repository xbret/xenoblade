#include "mm/Matrix.hpp"

namespace mm{
    //TODO: see if it's possible to have these use arrays instead
	Mat34 Mat34::zero = Mat34(
	0,0,0,0,
	0,0,0,0,
	0,0,0,0
	);

	Mat34 Mat34::identity = Mat34(
	1,0,0,0,
	0,1,0,0,
	0,0,1,0
	);
}