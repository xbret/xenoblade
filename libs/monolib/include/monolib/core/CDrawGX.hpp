#pragma once

#include <types.h>
#include "monolib/math.hpp"
#include "revolution/GX.h"

class CDrawGX {
public:
    CDrawGX(){
        func_80456134();
    }
    ~CDrawGX();
    CDrawGX* func_80456134();
    void func_80456204();
    void func_8045624C();
    void func_804562E0();
    void func_804563D8();

    void setColor(const ml::CCol4* r4);
    void func_80456570(int r4);
    void func_8045657C(int r4);
    void setTex(GXTexObj* pTexObj, u16 r5, u16 r6);
    void begin(int r4, int r5);
    void func_80456A54();
    void func_80456B0C();
    void setPoint(s16 r4, s16 r5, s16 r6, s16 r7);
    void func_80456C6C();
    void func_80456CF0();
    void end();
    void func_80456DAC(const ml::CRect16& r4);
    void func_80456E90();
    void func_804577B4();

    u32 unk0;
    u8 unk4[0xD0 - 0x4];
};
