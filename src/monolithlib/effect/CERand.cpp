#include "monolithlib/effect/CERand.hpp"

CERandomizer CERand::sRandomizer;
CERandomizerSimple CERand::sRandomizerSimple;

CERandomizerSimple::CERandomizerSimple() {
    create(CERand::sDefaultSeed);
}

void CERandomizerSimple::create(int seed) {
    // Invalid seed = take from the global randomizer
    if (seed < 0) {
        seedA = CERand::sRandomizerSimple.seedA;
    }
    else {
        seedA = seed;
    }

    seedB = seedA;
    age = 0.0f;
}

void CERandomizerSimple::execute(float pass) {
    const float oldAge = age;

    // Some unit of time to determine the age of the randomizer (usually 1.0)
    age += pass;
    
    // Check if the randomizer age is not a new whole number
    if (static_cast<int>(oldAge) == static_cast<int>(age)) {
        // Copy seed B to seed A
        seedA = seedB;
    } else {
        // Copy seed A to seed B at every new whole number of age
        seedB = seedA;

        // Generate new seed A every 32 units of age
        if ((static_cast<int>(age) & 31) == 0) {
            (void)rand();
        }
    }
}

u32 CERandomizerSimple::rand() {
    const u32 temp = seedA * 673 + 945;
    seedA = (temp / 10) % 100003;
    return temp % 10007;
}

void CERand::init() {
    sRandomizerSimple.create(CERand::sDefaultSeed);
}

void CERand::execute(float pass) {
    sRandomizerSimple.execute(pass);
}

void CERand::randVec(Vec3* v) {
    v->x = sRandomizer.randFHalf();
    v->y = sRandomizer.randFHalf();
    v->z = sRandomizer.randFHalf();
}

void CERand::randSignVec(Vec3* v) {
    v->x *= sRandomizer.randSign();
    v->y *= sRandomizer.randSign();
    v->z *= sRandomizer.randSign();
}