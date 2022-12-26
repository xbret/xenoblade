#include "monolithlib/effect/CERandom.hpp"

static CERandomizerSimple ceRandomizerSimple;
static CERandomizer ceRandomizer;

CERandomizerSimple::CERandomizerSimple(){
    /* This function gets inlined, and the if statement is optimized out b/c the value
    is known at compile time. */
    func_804DB45C(14992);
}

inline CERandomizerSimple* RandomizerSimple() {
    return &ceRandomizerSimple;
}

void CERandomizerSimple::func_804DB45C(s32 r4){
    if(r4 < 0) seed = ceRandomizerSimple.seed;
    else seed = r4;

    unk6 = seed;
    unk8 = 0;
}

void CERandomizerSimple::func_804DB490(float f1){
    float f2 = unk8;
    unk8 += f1;
    
    if((s32)f2 == (s32)unk8){
        seed = unk6;
    }else{
        unk6 = seed;
        if(((s32)unk8 & 0x1F) == 0){
            func_804DB50C();
        }
    }
}

//Generates a random 32 bit unsigned number.
u32 CERandomizerSimple::func_804DB50C(){
    u32 temp = seed*673 + 945;
    seed = (temp/10) % 100003;
    return temp % 10007;
}

void func_804DB574(){
    //inline
    ceRandomizerSimple.func_804DB45C(14992);
}

void func_804DB594(float f1) {
    //inline
    ceRandomizerSimple.func_804DB490(f1);
}

void CERandomizer::func_804DB618(Vector3f* r3){
    r3->x = Inline2();
    r3->y = Inline2();
    r3->z = Inline2();
}


float CERandomizer::func_804DB6DC(){
    return Inline2();
}

void CERandomizer::func_804DB728(Vector3f* r31){
    r31->x *= Inline1();
    r31->y *= Inline1();
    r31->z *= Inline1();
}

float CERandomizer::func_804DB7E0(){
    return Inline1();
}

float CERandomizerSimple::func_804DB820(){
    if(func_804DB50C() & 0x1)return 1.0f;
    else return -1.0f;
}

float CERandomizerSimple::func_804DB860() {
    return (float)func_804DB50C()/10006.0f - 0.5f;
}

float CERandomizerSimple::func_804DB8B4() {
    return (float)func_804DB50C()/10006.0f;
}

//These two functions appear after the sinit. Why?

float CERandomizer::func_804DB938() {
    return func_80435ED8()/2147483648.0f;
}

s32 CERandomizer::func_804DB97C() {
    return func_80435ED8();
}
