#ifndef _MLIB_CERANDOM_HPP
#define _MLIB_CERANDOM_HPP

#include "types.h"
#include "Vector3.h"
#include "monolithlib/effect/IRandomizer.hpp"


class CERandomizer : IRandomizer {
public:
    virtual s32 func_804DB97C(); //0x8
    virtual float func_804DB938(); //0xC
    virtual float func_804DB6DC(); //0x10
    virtual float func_804DB7E0(); //0x14
};

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
    void func_804DB45C(s32);
    void func_804DB490(float);
};

extern "C"{
//Generates a random positive 32 bit signed number?
extern s32 func_80435ED8();
}

void func_804DB574();
void func_804DB594(float);
void func_804DB618(Vector3f*);
void func_804DB728(Vector3f*);

#endif