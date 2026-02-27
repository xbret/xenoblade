#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"

//Unofficial name
class ICulling {
public:
    virtual ~ICulling(){}
    virtual bool ICulling_UnkVirtualFunc1(ml::CFrustum* r4);
    virtual bool ICulling_UnkVirtualFunc2(const ml::CVec3& r4, float r5);
    virtual bool ICulling_UnkVirtualFunc3(const ml::CVec3& r4, const ml::CVec3& r5, int r6);
};
