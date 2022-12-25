#include "monolithlib/effect/CERandom.hpp"


static CERandomizer ceRandomizer;
static CERandomizerSimple ceRandomizerSimple;

//CERandomizerSimple functions

CERandomizerSimple::CERandomizerSimple(){
    seed = 14992;
    unk6 = 14992;
    unk8 = 0;
}

void CERandomizerSimple::func_804DB45C(s32 r4) {
    if(r4 < 0) seed = ceRandomizerSimple.seed;
    else seed = r4;

    unk6 = seed;
    unk8 = 0;
}

void CERandomizerSimple::func_804DB490(float f1) {
    float f2 = unk8;
    float f0 = f2 + f1;
    unk8 += f1;
    if((s32)f2 == (s32)f0){
        seed = unk6;
    }else{
        unk6 = seed;
        if(((s32)f0 & 0x1F) == 0){
            func_804DB50C();
        }
    }
    
}

//Generates a random 32 bit unsigned number.
u32 CERandomizerSimple::func_804DB50C() {
    u32 temp = seed*673 + 945;
    seed = (temp/10) % 100003;
    return temp % 10007;
}

float CERandomizerSimple::func_804DB8B4() {
    return (float)func_804DB50C()/10006.0f;
}

float CERandomizerSimple::func_804DB860() {
    return (float)func_804DB50C()/10006.0f - 0.5f;
}

float CERandomizerSimple::func_804DB820(){
    if(func_804DB50C() & 0x1)return 1.0f;
    else return -1.0f;
}

//CERandomizer functions

s32 CERandomizer::func_804DB97C() {
    return func_80435ED8();
}


float CERandomizer::func_804DB938() {
    return func_80435ED8()/2147483648.0f;
}


float CERandomizer::func_804DB6DC() {
    return func_80435ED8()/2147483648.0f - 0.5f;
}

float CERandomizer::func_804DB7E0() {
    u32 r3 = func_80435ED8();
    u32 r4 = (r3 >> 31);
    if(((r3 & 1) ^ r4) - r4 != 0) return 1.0f;
    else return -1.0f;
}

//General

CERandomizerSimple* RandomizerSimple() {
    return &ceRandomizerSimple;
}

void func_804DB574() {
    ceRandomizerSimple.seed = 0x3A90;
    ceRandomizerSimple.unk6 = 0x3A90;
    ceRandomizerSimple.unk8 = 0;
}

void func_804DB594(float f1) {
    float f2 = ceRandomizerSimple.unk8;
    float f0 = f2 + f1;
    ceRandomizerSimple.unk8 += f1;
    if((s32)f2 == (s32)f0){
        ceRandomizerSimple.seed = ceRandomizerSimple.unk6;
    }else{
        ceRandomizerSimple.unk6 = ceRandomizerSimple.seed;
        if(((s32)f0 & 0x1F) == 0){
            //Doesn't generate a virtual call
            RandomizerSimple()->func_804DB50C();
        }
    }
}

void func_804DB618(Vector3f* r3) {
    //func_804DB6DC inlines
    r3->x = ((float)func_80435ED8()/2147483648.0f) - 0.5f;
    r3->y = ((float)func_80435ED8()/2147483648.0f) - 0.5f;
    r3->z = ((float)func_80435ED8()/2147483648.0f) - 0.5f;
}

void func_804DB728(Vector3f* r31) {
    //TODO: Make this an inline
    u32 r3 = func_80435ED8();
    u32 r4 = r3 >> 31;
    float f1;
    
    if(((r3 & 1) ^ r4) - r4 != 0) f1 = 1.0f;
    else f1 = -1.0f;

    r31->x *= f1;

    r3 = func_80435ED8();
    r4 = r3 >> 31;
    
    if(((r3 & 1) ^ r4) - r4 != 0) f1 = 1.0f;
    else f1 = -1.0f;

    r31->y *= f1;

    r3 = func_80435ED8();
    r4 = r3 >> 31;
    
    if(((r3 & 1) ^ r4) - r4 != 0) f1 = 1.0f;
    else f1 = -1.0f;

    r31->z *= f1;
    
}