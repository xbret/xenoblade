#pragma once

#include <types.h>
#include "monolib/math.hpp"

//size: 0x5C
class CViewFrame {
public:
    u8 unk0[0x54];
    s16 unk54;
    s16 unk56;
    u8 unk58[0x4];
};


extern void func_8043FC68(ml::CRect16& rect, CViewFrame* r4);
