#pragma once 

#include "types.h"
#include "monolib/UnkClass_8045F564.hpp"
#include "nw4r/lyt/lyt_arcResourceAccessor.h"

class CLibLayout{

};

void CLibLayout_addLayoutHeapEntry(UnkClass_8045F564*, int, int, const char*, int);
nw4r::lyt::ArcResourceAccessor* CLibLayout_getArcResourceAccessorInstance();
