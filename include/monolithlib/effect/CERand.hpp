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
    virtual u32 rand();
    virtual float randF();
    virtual float randFHalf();
    virtual float randSign();
};

class CERandomizerSimple : IRandomizer {
public:
    virtual u32 rand();
    virtual float randF();
    virtual float randFHalf();
    virtual float randSign();
    
    u16 seed; //0x4
    u16 unk6; //0x6
    float unk8; //0x8

    CERandomizerSimple();

    void create(s32);
    void execute(float);
};

//These functions are inside CERand. Might just be the file name or a namespace
//but could be class name
void init();
void execute(float);
void randVec(Vec3*);
void randSignVec(Vec3*);

static CERandomizerSimple ceRandomizerSimple;
static CERandomizer ceRandomizer;

#endif