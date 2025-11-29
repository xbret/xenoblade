#pragma once

#include "types.h"
#include <monolib/FixStr.hpp>

enum CBM {
    CBM_0,
    CBM_1,
    CBM_2,
    CBM_3,
    CBM_4,
    CBM_5
};

struct CFileHandle {
    int unk0;
    void* mData; //0x4
    u8 unk8[0x10 - 0x8];
    int unk10;
    u32 unk14;
    u8 unk18[0x3C - 0x18];
    u32 unk3C;
    u8 unk40[0x5C - 0x40];
    ml::FixStr<32> mName; //0x5C
    u8 unk80[0x160 - 0x80];
    u32 unk160;

    void call(CBM cbm);
    bool func_80451DA4(bool r4);
    UNKTYPE* func_80451E48();

    inline void* unkInline1(){
        void* r31 = mData;
        mData = nullptr;
        return r31;
    }

    inline bool unkInline2() const {
        return unk10 != 0 && unk10 == unk3C;
    }

    inline u32 getUnk3C() const {
        return unk3C;
    }

};
