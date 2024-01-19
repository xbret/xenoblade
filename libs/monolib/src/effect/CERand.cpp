#include "monolib/effect/CERand.hpp"

CERandomizer ceRandomizer;
CERandomizerSimple ceRandomizerSimple;

CERandomizerSimple::CERandomizerSimple() {
    create(CERand::defaultSeed);
}

void CERandomizerSimple::create(int seed) {
    // Invalid seed = take from the global randomizer
    if (seed < 0) {
        seed1 = ceRandomizerSimple.seed1;
    }
    else {
        seed1 = seed;
    }

    seed2 = seed1;
    age = 0.0f;
}

void CERandomizerSimple::execute(float time) {
    float prevAge = age;
    age += time;
    
    //Check if the randomizer age is not a new whole number
    if ((int)prevAge == (int)age) {
        seed1 = seed2;
    } else {
        seed2 = seed1;

        if (((int)age & 31) == 0) {
            rand();
        }
    }
}

void CERand::init() {
    ceRandomizerSimple.create(CERand::defaultSeed);
}

void CERand::execute(float time) {
    ceRandomizerSimple.execute(time);
}

void CERand::randVec(CVec3* v) {
    v->x = ceRandomizer.randFHalf();
    v->y = ceRandomizer.randFHalf();
    v->z = ceRandomizer.randFHalf();
}

void CERand::randSignVec(CVec3* v) {
    v->x *= ceRandomizer.randSign();
    v->y *= ceRandomizer.randSign();
    v->z *= ceRandomizer.randSign();
}
