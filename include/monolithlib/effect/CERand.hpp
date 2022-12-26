#ifndef _MLIB_CERAND_HPP
#define _MLIB_CERAND_HPP

#include "types.h"
#include "Vector3.h"
#include "monolithlib/mtRand.hpp"
#include "stl/limits.h"

class IRandomizer {
public:
    virtual u32 rand() = 0;        // 0x8
    virtual float randF() = 0;     // 0xC
    virtual float randFHalf() = 0; // 0x10
    virtual float randSign() = 0;  // 0x14
};

class CERandomizer : public IRandomizer {
public:
    CERandomizer() {}
    ~CERandomizer() {}

    virtual u32 rand() { return mtRand(); }
    virtual float randF() { return mtRand() / static_cast<float>(INT_MAX); }
    virtual float randFHalf() { return (mtRand() / static_cast<float>(INT_MAX)) - 0.5f; }
    virtual float randSign() { return (mtRand() % 2 != 0) ? 1.0f : -1.0f; }
};

class CERandomizerSimple : public IRandomizer {
public:
    CERandomizerSimple();
    ~CERandomizerSimple() {}

    virtual u32 rand();
    virtual float randF() { return rand() / 10006.0f; }
    virtual float randFHalf() { return (rand() / 10006.0f) - 0.5f; }
    virtual float randSign() { return (rand() % 2 != 0) ? 1.0f : -1.0f; }

    void create(int);
    void execute(float);

private:
    u16 mSeedA; // 0x4
    u16 mSeedB; // 0x6
    float mAge; // 0x8
};

class CERand {
public:
    static void init();
    static void execute(float);
    static void randVec(Vec3*);
    static void randSignVec(Vec3*);

private:
    static const int sDefaultSeed = 14992;
    static CERandomizer sRandomizer;
    static CERandomizerSimple sRandomizerSimple;

    friend class CERandomizer;
    friend class CERandomizerSimple;
};

#endif