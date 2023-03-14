#include "monolib_mm/Matrix.hpp"

namespace mm{
	//TODO: see if it's possible to have these use arrays instead
	Mat44 Mat44::zero = Mat44(
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0
	);

	Mat44 Mat44::identity = Mat44(
	1,0,0,0,
	0,1,0,0,
	0,0,1,0,
	0,0,0,1
	);
}