#include "monolithlib/Transform.hpp"
#include "revolution/MTX.h"

namespace ml{
	void Transform::clear() {
    	vec1 = Vec3::zero;
    	rotation = Vec3::zero;
    	PSMTXIdentity(mtx1.m);
    	unkB8 = Vec3::zero;
    	unkC4 = Vec3::zero;
    	PSMTXIdentity(mtx2.m); 
    	PSMTXIdentity(mtx3.m);
    	unkD0.x = 0;
    	unkD0.y = 0;
    	unkD0.z = 0;
    	unkD0.w = 1;
    	flags = 0;
	}
}
