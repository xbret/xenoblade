#pragma once

#include <types.h>
#include "monolib/math.hpp"
#include "revolution/GX.h"

//Unofficial name
class CDrawGX {
public:
    CDrawGX();
    ~CDrawGX();

    void func_80456204();
    void setMatrix(const ml::CMat34& mat);
    void func_804562E0(const ml::CMat34& mat, float f1, float f2, float f3);
    void setCol(const ml::CCol3& col);
    void setCol(const ml::CCol4& col);
    void func_80456570(int r4);
    void func_8045657C(int r4);
    void setTex(GXTexObj* pTexObj, u16 r5, u16 r6);
    void begin(int r4, int r5);
    void renderRect(const ml::CRect16& r4, const ml::CRect16& r5);
    void func_80456B0C(const ml::CRect16& r4);
    void addPoint(s16 x, s16 y, s16 r6, s16 r7);
    void func_80456C6C(const ml::CVec3& vec);
    void func_80456CF0(u16 r4, u16 r5, const float* r6);
    void end();
    void func_80456DAC(const ml::CRect16& r4);
    void func_80456E90(const ml::CVec3& r4, const ml::CVec3& r5);
    void func_804577B4(const ml::CVec3& r4, u16 r5, float f1);

    u32 unk0;
    ml::CCol4 unk4;
    float unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    float unk24;
    float unk28;
    float unk2C;
    ml::CMat34 unk30;
    ml::CMat34 unk60;
    ml::CMat34 unk90;
    u32 unkC0;
    u32 unkC4;
    u32 unkC8;
    bool unkCC;
};
