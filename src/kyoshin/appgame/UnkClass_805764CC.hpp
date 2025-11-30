#pragma once

#include "types.h"
#include <monolib/util.hpp>
#include "kyoshin/appgame/cf/object/CfObject.hpp"
#include "kyoshin/appgame/cf/object/TBoxInfo.hpp"
#include "kyoshin/appgame/cf/IFactoryEvent.hpp"

class UnkClass_800B0AD8{
public:
    u8 unk0[0xAF8];
    UnkClass_800B0AD8* unkAF8;
    u32 unkAFC;
    u32 unkB00;
    u32 unkB04;

    UnkClass_800B0AD8(){
        unkB04 = 0x2BE;
        unkAF8 = this;
        unkB00 = 0;
        unkAFC = 0;
    }
};

class UnkClass_805764CC{
public:
    static UnkClass_805764CC* func_800B07E8();
    void func_800B8804(cf::IFactoryEvent*);
    void func_800B88E0(cf::IFactoryEvent*);

    reslist<cf::CfObject*> mObjList1; //0x00
    UnkClass_800B0AD8 unk20; //0x20
    //might be an array?
    reslist<cf::CfObject*> mObjList2; //0xB28
    reslist<cf::CfObject*> mObjList3; //0xB48
    reslist<cf::CfObject*> mObjList4; //0xB68
    reslist<cf::CfObject*> mObjList5; //0xB88
    reslist<cf::CfObject*> mObjList6; //0xBA8
    reslist<cf::CfObject*> mObjList7; //0xBC8
    reslist<cf::CfObject*> mObjList8; //0xBE8
    reslist<cf::CfObject*> mObjList9; //0xC08
    reslist<cf::CfObject*> mObjList10; //0xC28
    reslist<cf::TBoxInfo*> mTboxInfoList; //0xC48
    u8 unkC68[0x18];
    reslist<cf::IFactoryEvent*> mFactoryEventList; //0xC80
    u32 unkCA0;
    u32 unkCA4;
    u32 unkCA8;
    u32 unkCAC;
    ml::FixStr<64> unkCB0;
    u8 unkCF4[8];
    u32 unkCFC;
    u32 unkD00;
    u32 unkD04;
    u8 unkD08[6];
    u16 unkD0E;
    u16 unkD10;
};
