#include "monolithlib/effect/CERand.hpp"

CERandomizer CERand::randomizer;
CERandomizerSimple CERand::randomizerSimple;

CERandomizerSimple::CERandomizerSimple() {
    create(CERand::defaultSeed);
}

void CERandomizerSimple::create(int seed) {
    // Invalid seed = take from the global randomizer
    if (seed < 0) {
        seedA = CERand::randomizerSimple.seedA;
    }
    else {
        seedA = seed;
    }

    seedB = seedA;
    age = 0.0f;
}

void CERandomizerSimple::execute(float pass) {
    const float oldAge = age;

    //Some unit of time to determine the age of the randomizer (usually 1.0)
    age += pass;
    
    //Check if the randomizer age is not a new whole number
    if ((int)oldAge == (int)age) {
        //Copy seed B to seed A
        seedA = seedB;
    } else {
        //Copy seed A to seed B at every new whole number of age
        seedB = seedA;

        //Generate new seed A every 32 units of age
        if (((int)age & 31) == 0) {
            rand();
        }
    }
}

void CERand::init() {
    randomizerSimple.create(CERand::defaultSeed);
}

void CERand::execute(float pass) {
    randomizerSimple.execute(pass);
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