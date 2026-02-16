#include "monolib/math.hpp"

namespace ml{

//unused
CRect16 CRect16::zero(0, 0, 0, 0);

//Checks whether a point is within the given rect
bool CRect16::isInside(const CPnt16& point) const {
    if(point.x < mPos.x) return false;
    s16 maxX = mPos.x + mSize.x;
    if(point.x >= maxX) return false;
    if(point.y < mPos.y) return false;
    s16 maxY = mPos.y + mSize.y;
    if(point.y >= maxY) return false;

    return true;
}

} //namespace ml
