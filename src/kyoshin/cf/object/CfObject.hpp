#pragma once

#include <types.h>
#include "kyoshin/cf/object/CObjectParam.hpp"

namespace cf {
    //min size: 0x70
    class CfObject : public CObjectParam {
    public:
        //vtable 1 (CfObject)
        virtual ~CfObject();                      //0x54
        virtual void CfObject_UnkVirtualFunc2() = 0;  //0x58
        virtual void CfObject_UnkVirtualFunc3();      //0x5C
        virtual void CfObject_UnkVirtualFunc4() = 0;  //0x60
        virtual void CfObject_UnkVirtualFunc5();      //0x64
        virtual void CfObject_UnkVirtualFunc6();      //0x68
        virtual void CfObject_UnkVirtualFunc7() = 0;  //0x6C
        virtual void CfObject_UnkVirtualFunc8() = 0;  //0x70
        virtual void CfObject_UnkVirtualFunc9();      //0x74
        virtual void CfObject_UnkVirtualFunc10();     //0x78
        virtual void CfObject_UnkVirtualFunc11();     //0x7C
        virtual void CfObject_UnkVirtualFunc12();     //0x80
        virtual void CfObject_UnkVirtualFunc13();     //0x84
        virtual void CfObject_UnkVirtualFunc14();     //0x88
        virtual void CfObject_UnkVirtualFunc15();     //0x8C
        virtual void CfObject_UnkVirtualFunc16();     //0x90
        virtual void CfObject_UnkVirtualFunc17();     //0x94
        virtual void CfObject_UnkVirtualFunc18();     //0x98
        virtual void CfObject_UnkVirtualFunc19();     //0x9C
        virtual void CfObject_UnkVirtualFunc20();     //0xA0
        virtual void CfObject_UnkVirtualFunc21();     //0xA4
        virtual void CfObject_UnkVirtualFunc22();     //0xA8
        virtual void CfObject_UnkVirtualFunc23();     //0xAC
        virtual void CfObject_UnkVirtualFunc24();     //0xB0
        virtual void CfObject_UnkVirtualFunc25();     //0xB4
        virtual void CfObject_UnkVirtualFunc26();     //0xB8
        virtual void CfObject_UnkVirtualFunc27();     //0xBC
        virtual void CfObject_UnkVirtualFunc28();     //0xC0
        virtual void CfObject_UnkVirtualFunc29();     //0xC4
        virtual void CfObject_UnkVirtualFunc30();     //0xC8
        virtual void CfObject_UnkVirtualFunc31();     //0xCC
        virtual void CfObject_UnkVirtualFunc32();     //0xD0
        virtual void CfObject_UnkVirtualFunc33();     //0xD4
        virtual void CfObject_UnkVirtualFunc34();     //0xD8
        virtual void CfObject_UnkVirtualFunc35();     //0xDC
        virtual void CfObject_UnkVirtualFunc36();     //0xE0
        virtual void CfObject_UnkVirtualFunc37();     //0xE4
        virtual void CfObject_UnkVirtualFunc38();     //0xE8
        virtual void CfObject_UnkVirtualFunc39();     //0xEC
        virtual void CfObject_UnkVirtualFunc40();     //0xF0
        virtual void CfObject_UnkVirtualFunc41();     //0xF4
        virtual void CfObject_UnkVirtualFunc42();     //0xF8
        virtual void CfObject_UnkVirtualFunc43();     //0xFC
        virtual void CfObject_UnkVirtualFunc44();     //0x100
        virtual void CfObject_UnkVirtualFunc45();     //0x104
        virtual void CfObject_UnkVirtualFunc46();     //0x108
        virtual void CfObject_UnkVirtualFunc47();     //0x10C
        virtual void CfObject_UnkVirtualFunc48();     //0x110
        virtual void CfObject_UnkVirtualFunc49();     //0x114
        virtual void CfObject_UnkVirtualFunc50();     //0x118
        virtual void CfObject_UnkVirtualFunc51();     //0x11C
        virtual void CfObject_UnkVirtualFunc52();     //0x120
        virtual void CfObject_UnkVirtualFunc53();     //0x124
        virtual void CfObject_UnkVirtualFunc54();     //0x128
        virtual void CfObject_UnkVirtualFunc55();     //0x12C
        virtual void CfObject_UnkVirtualFunc56();     //0x130
        virtual void CfObject_UnkVirtualFunc57();     //0x134
        virtual void CfObject_UnkVirtualFunc58();     //0x138
        virtual void CfObject_UnkVirtualFunc59();     //0x13C
        virtual void CfObject_UnkVirtualFunc60();     //0x140
        virtual void CfObject_UnkVirtualFunc61();     //0x144
        virtual void CfObject_UnkVirtualFunc62();     //0x148
        virtual void CfObject_UnkVirtualFunc63();     //0x14C
        virtual void CfObject_UnkVirtualFunc64();     //0x150
        virtual void CfObject_UnkVirtualFunc65();     //0x154
        virtual void CfObject_UnkVirtualFunc66() = 0; //0x158
        virtual void CfObject_UnkVirtualFunc67();     //0x15C
        virtual void CfObject_UnkVirtualFunc68() = 0; //0x160
        virtual void CfObject_UnkVirtualFunc69();     //0x164
        virtual void CfObject_UnkVirtualFunc70();     //0x168
        virtual void CfObject_UnkVirtualFunc71();     //0x16C
        virtual void CfObject_UnkVirtualFunc72();     //0x170
        virtual void CfObject_UnkVirtualFunc73();     //0x174

        //not sure if belongs here? (can be in any class from CObjectState to CfObjectMove)
        void func_800BE898(int, u32, float, float);


        //0x0: vtable
        //0x0-38: CObjectParam
        u8 unk38_3[0x64 - 0x38];
        u32 unk64;
        u8 unk68[0x70 - 0x68];
    };
}
