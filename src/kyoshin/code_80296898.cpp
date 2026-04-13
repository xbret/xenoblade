#include "kyoshin/code_80296898.hpp"

#include <cstring>

static Class_80296898 lbl_8057A9C8;

Class_80296898* func_80296A04(Class_80296898* obj){
    obj->init();
    return obj;
}

void Class_80296898::init(){
    std::memset(unk00, 0, 64);

    int r4 = 0, r3 = 3, r7 = 1, r5 = 0xA, r6 = 2, r0 = 5;

    unk00[0x0] = r7;
    unk00[0x1] = r7;
    unk00[0x2] = r6;
    unk00[0x3] = r6;
    unk00[0x4] = r6;
    unk00[0x5] = r7;
    unk00[0x6] = r7;
    unk00[0x7] = r7;
    unk_0F = r5;
    unk10[0x00] = r7;
    unk10[0x01] = r4;
    unk10[0x10] = r7;
    unk10[0x11] = r7;
    unk10[0x12] = r4;
    unk10[0x13] = r4;
    unk10[0x14] = r7;
    unk10[0x15] = r7;
    unk10[0x20] = r7;
    unk10[0x22] = r7;
    unk10[0x21] = r4;
    unk10[0x28] = r3;
    unk10[0x29] = r3;
    unk10[0x2A] = r0;
}

Class_80296898* Class_80296898::getInstance(void){
    return &lbl_8057A9C8;
}

void func_80296AE8(u8* src){
    std::memcpy(lbl_8057A9C8.unk00, src, 0x40);

    if(lbl_8057A9C8.unk_0F == 0){
        lbl_8057A9C8.unk_0F = 0xA;
    }
}
