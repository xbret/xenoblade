#include "monolithlib/effect/CERand.hpp"

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
    randomizerSimple.create(CERand::defaultSeed);
}

void CERand::execute(float time) {
    randomizerSimple.execute(time);
}

void CERand::randVec(Vec3* v) {
    v->x = randomizer.randFHalf();
    v->y = randomizer.randFHalf();
    v->z = randomizer.randFHalf();
}

void CERand::randSignVec(Vec3* v) {
    v->x *= randomizer.randSign();
    v->y *= randomizer.randSign();
    v->z *= randomizer.randSign();
}