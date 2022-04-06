#include "monolib/CAttrTransform.hpp"
#include "revolution/MTX.h"

namespace ml{
	void CAttrTransform::clear() {
    	vec1 = CVec3::zero;
    	rotation = CVec3::zero;
    	PSMTXIdentity(mtx1.m);
    	unkB8 = CVec3::zero;
    	unkC4 = CVec3::zero;
    	PSMTXIdentity(mtx2.m); 
    	PSMTXIdentity(mtx3.m);
    	unkD0.x = 0;
    	unkD0.y = 0;
    	unkD0.z = 0;
    	unkD0.w = 1;
    	flags = 0;
	}
}
