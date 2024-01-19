#include "monolib/Math.hpp"

namespace ml{

//unused variable
static CRect16 lbl_80667E68;

//Checks whether a point is within the given rect
bool CRect16::isInside(const CPnt16& point) const {
	if(point.x < x) return false;
	s16 maxX = x + width;
	if(point.x >= maxX) return false;
	if(point.y < y) return false;
	s16 maxY = y + height;
	if(point.y >= maxY) return false;

	return true;
}

}
