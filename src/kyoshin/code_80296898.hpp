#pragma once

#include <types.h>

class Class_80296898{
public:
    u8 unk00[0x0F - 0x00];
    u8 unk_0F;
    u8 unk10[0x40 - 0x10];

    Class_80296898(){
        init();
    }

    void init();
    static Class_80296898* getInstance();
};

Class_80296898* func_80296A04(Class_80296898* obj);
void func_80296AE8(u8* src);
