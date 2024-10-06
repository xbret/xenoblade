#pragma once

#include "types.h"
#include <limits.h>
#include "monolib/Random.hpp"
#include "monolib/Math.hpp"

using namespace ml;


class IRandomizer {
public:
    virtual u32 rand();        //0x8
    virtual float randF();     //0xC
    virtual float randFHalf(); //0x10
    virtual float randSign();  //0x14
};

//Consider maybe omitting the unused constructors/destructors?
class CERandomizer : public IRandomizer {
public:
    ~CERandomizer(){}

    virtual u32 rand(){
        return ml::mtRand();
    }

    virtual float randF(){
        return (float)ml::mtRand()/INT_MAX;
    }

    virtual float randFHalf(){
        return ((float)ml::mtRand()/INT_MAX) - 0.5f;
    }

    virtual float randSign(){
        return (ml::mtRand() % 2 != 0) ? 1.0f : -1.0f;
    }
};

class CERandomizerSimple : public IRandomizer {
public:
    CERandomizerSimple();
    ~CERandomizerSimple(){}

    virtual u32 rand(){
        u32 temp = seed1 * 673 + 945;
        seed1 = (temp / 10) % 100003;
        return temp % 10007;
    }

    virtual float randF(){
        return rand()/10006.0f;
    }

    virtual float randFHalf(){
        return (rand()/10006.0f) - 0.5f;
    }

    virtual float randSign(){
        return (rand() % 2 != 0) ? 1.0f : -1.0f;
    }

    void create(int);
    void execute(float);

private:
    u16 seed1; //0x4
    u16 seed2; //0x6
    float age; //0x8
};

class CERand {
public:
    static void init();
    static void execute(float);
    static void randVec(CVec3*);
    static void randSignVec(CVec3*);

    static const int defaultSeed = 14992;
};

extern CERandomizer ceRandomizer;
extern CERandomizerSimple ceRandomizerSimple;
