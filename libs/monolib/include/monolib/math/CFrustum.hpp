#pragma once

#include <types.h>
#include "monolib/math/CMat34.hpp"
#include "monolib/math/CVec3.hpp"
#include "monolib/math/CPlane.hpp"

//TODO: idk if this belongs here in monolib or in the scene code. There's no evidence of it in XCX
namespace ml{

    struct CFrustum{
        u8 unk0[0xCC];
        ml::CMat34 unkCC;
        u8 unkFC[0x10];
        ml::CVec3 unk10C;
        u8 unk118[0x258 - 0x118];
        ml::CPlane unk248[6];
    };

} //namespace ml
