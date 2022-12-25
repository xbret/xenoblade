#ifndef _MLIB_CERANDOMIZERSIMPLE_HPP
#define _MLIB_CERANDOMIZERSIMPLE_HPP

#include "types.h"
#include "monolithlib/IRandomizer.hpp"

class CERandomizerSimple : IRandomizer {
public:
    virtual u32 func_804DB50C(); //0x8
    virtual float func_804DB8B4(); //0xC
    virtual float func_804DB860(); //0x10
    virtual float func_804DB820(); //0x14

    u16 seed; //0x4
    u16 unk6; //0x6
    float unk8; //0x8

    CERandomizerSimple();
};

#endif