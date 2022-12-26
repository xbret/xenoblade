#include "monolithlib/effect/CERand.hpp"


CERandomizerSimple::CERandomizerSimple(){
    /* This function gets inlined, and the if statement is optimized out b/c the value
    is known at compile time. */
    create(14992);
}

inline CERandomizerSimple* RandomizerSimple() {
    return &ceRandomizerSimple;
}

//func_804DB45C
void CERandomizerSimple::create(s32 r4){
    if(r4 < 0) seed = ceRandomizerSimple.seed;
    else seed = r4;

    unk6 = seed;
    unk8 = 0;
}

//func_804DB490
void CERandomizerSimple::execute(float f1){
    float f2 = unk8;
    unk8 += f1;
    
    if((s32)f2 == (s32)unk8){
        seed = unk6;
    }else{
        unk6 = seed;
        if(((s32)unk8 & 0x1F) == 0){
            rand();
        }
    }
}

//func_804DB50C
u32 CERandomizerSimple::rand(){
    u32 temp = seed*673 + 945;
    seed = (temp/10) % 100003;
    return temp % 10007;
}

//func_804DB574
void init(){
    //inline
    ceRandomizerSimple.create(14992);
}

//func_804DB594
void execute(float f1) {
    //inline
    ceRandomizerSimple.execute(f1);
}


inline float randSignInline(){
    u32 r3 = func_80435ED8();
    u32 r4 = (r3 >> 31);
    if(((r3 & 1) ^ r4) - r4 != 0) return 1.0f;
    else return -1.0f;
}

inline float randFHalfInline(){
    return func_80435ED8()/2147483648.0f - 0.5f;
}

//func_804DB618
void randVec(Vec3* r3){
    r3->x = randFHalfInline();
    r3->y = randFHalfInline();
    r3->z = randFHalfInline();
}


//func_804DB6DC
float CERandomizer::randFHalf(){
    return randFHalfInline();
}

//func_804DB728
void randSignVec(Vec3* r31){
    r31->x *= randSignInline();
    r31->y *= randSignInline();
    r31->z *= randSignInline();
}

//func_804DB7E0
float CERandomizer::randSign(){
    return randSignInline();
}

//func_804DB820
float CERandomizerSimple::randSign(){
    if(rand() & 0x1)return 1.0f;
    else return -1.0f;
}

//func_804DB860
float CERandomizerSimple::randFHalf() {
    return (float)rand()/10006.0f - 0.5f;
}

//func_804DB8B4
float CERandomizerSimple::randF() {
    return (float)rand()/10006.0f;
}

//These two functions appear after the sinit. Why?

//func_804DB938
float CERandomizer::randF() {
    return func_80435ED8()/2147483648.0f;
}

//func_804DB97C
u32 CERandomizer::rand() {
    return func_80435ED8();
}
