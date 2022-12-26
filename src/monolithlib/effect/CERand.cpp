#include "monolithlib/effect/CERand.hpp"

CERandomizer CERand::sRandomizer;
CERandomizerSimple CERand::sRandomizerSimple;

CERandomizerSimple::CERandomizerSimple() {
    create(CERand::sDefaultSeed);
}

void CERandomizerSimple::create(int seed) {
    // Invalid seed = take from the global randomizer
    if (seed < 0) {
        mSeedA = CERand::sRandomizerSimple.mSeedA;
    }
    else {
        mSeedA = seed;
    }

    mSeedB = mSeedA;
    mAge = 0.0f;
}

void CERandomizerSimple::execute(float pass) {
    const float oldAge = mAge;

    // Some unit of time to determine the age of the randomizer (usually 1.0)
    mAge += pass;
    
    // Check if the randomizer age is not a new whole number
    if (static_cast<int>(oldAge) == static_cast<int>(mAge)) {
        // Copy seed B to seed A
        mSeedA = mSeedB;
    } else {
        // Copy seed A to seed B at every new whole number of age
        mSeedB = mSeedA;

        // Generate new seed A every 32 units of age
        if ((static_cast<int>(mAge) & 31) == 0) {
            (void)rand();
        }
    }
}

u32 CERandomizerSimple::rand() {
    const u32 temp = mSeedA * 673 + 945;
    mSeedA = (temp / 10) % 100003;
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