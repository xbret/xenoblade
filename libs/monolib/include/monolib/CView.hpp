#pragma once

#include "types.h"
#include "monolib/Math.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/work/CWorkThread.hpp"

class CView : public CWorkThread {
public:
    void func_8043CB7C(const ml::CRect16& rect16);

    //0x0: vtable 1
    //0x4-1C4: CWorkThread
    u8 unk1C4[0x440 - 0x1C4];
    ml::FixStr<64> unk440;
};
