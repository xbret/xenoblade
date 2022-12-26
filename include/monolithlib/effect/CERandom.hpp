#ifndef _MLIB_CERANDOM_HPP
#define _MLIB_CERANDOM_HPP

#include "types.h"
#include "Vector3.h"
#include "monolithlib/effect/IRandomizer.hpp"


extern "C"{
//Generates a random positive 32 bit signed number?
extern s32 func_80435ED8();
}

class CERandomizer : IRandomizer {
public:
    inline float Inline1(){
        u32 r3 = func_80435ED8();
        u32 r4 = (r3 >> 31);
        if(((r3 & 1) ^ r4) - r4 != 0) return 1.0f;
        else return -1.0f;
    }

    inline float Inline2(){
        return func_80435ED8()/2147483648.0f - 0.5f;
    }

    virtual s32 func_804DB97C();
    virtual float func_804DB938();
    virtual float func_804DB6DC();
    virtual float func_804DB7E0();

    void func_804DB618(Vector3f*);
    void func_804DB728(Vector3f*);
};

class CERandomizerSimple : IRandomizer {
public:
    virtual u32 func_804DB50C();
    virtual float func_804DB8B4();
    virtual float func_804DB860();
    virtual float func_804DB820();

    u16 seed; //0x4
    u16 unk6; //0x6
    float unk8; //0x8

    CERandomizerSimple();

    void func_804DB45C(s32);
    void func_804DB490(float);
};

void func_804DB574();
void func_804DB594(float);

#endif