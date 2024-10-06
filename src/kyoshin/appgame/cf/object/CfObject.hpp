#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/CObjectParam.hpp"

namespace cf {
    //min size: 0x70
    class CfObject : public CObjectParam {
    public:
        //vtable 1 (CfObject)
        virtual ~CfObject();                      //0x54
        virtual void CfObject_vtableFunc2() = 0;  //0x58
        virtual void CfObject_vtableFunc3();      //0x5C
        virtual void CfObject_vtableFunc4() = 0;  //0x60
        virtual void CfObject_vtableFunc5();      //0x64
        virtual void CfObject_vtableFunc6();      //0x68
        virtual void CfObject_vtableFunc7() = 0;  //0x6C
        virtual void CfObject_vtableFunc8() = 0;  //0x70
        virtual void CfObject_vtableFunc9();      //0x74
        virtual void CfObject_vtableFunc10();     //0x78
        virtual void CfObject_vtableFunc11();     //0x7C
        virtual void CfObject_vtableFunc12();     //0x80
        virtual void CfObject_vtableFunc13();     //0x84
        virtual void CfObject_vtableFunc14();     //0x88
        virtual void CfObject_vtableFunc15();     //0x8C
        virtual void CfObject_vtableFunc16();     //0x90
        virtual void CfObject_vtableFunc17();     //0x94
        virtual void CfObject_vtableFunc18();     //0x98
        virtual void CfObject_vtableFunc19();     //0x9C
        virtual void CfObject_vtableFunc20();     //0xA0
        virtual void CfObject_vtableFunc21();     //0xA4
        virtual void CfObject_vtableFunc22();     //0xA8
        virtual void CfObject_vtableFunc23();     //0xAC
        virtual void CfObject_vtableFunc24();     //0xB0
        virtual void CfObject_vtableFunc25();     //0xB4
        virtual void CfObject_vtableFunc26();     //0xB8
        virtual void CfObject_vtableFunc27();     //0xBC
        virtual void CfObject_vtableFunc28();     //0xC0
        virtual void CfObject_vtableFunc29();     //0xC4
        virtual void CfObject_vtableFunc30();     //0xC8
        virtual void CfObject_vtableFunc31();     //0xCC
        virtual void CfObject_vtableFunc32();     //0xD0
        virtual void CfObject_vtableFunc33();     //0xD4
        virtual void CfObject_vtableFunc34();     //0xD8
        virtual void CfObject_vtableFunc35();     //0xDC
        virtual void CfObject_vtableFunc36();     //0xE0
        virtual void CfObject_vtableFunc37();     //0xE4
        virtual void CfObject_vtableFunc38();     //0xE8
        virtual void CfObject_vtableFunc39();     //0xEC
        virtual void CfObject_vtableFunc40();     //0xF0
        virtual void CfObject_vtableFunc41();     //0xF4
        virtual void CfObject_vtableFunc42();     //0xF8
        virtual void CfObject_vtableFunc43();     //0xFC
        virtual void CfObject_vtableFunc44();     //0x100
        virtual void CfObject_vtableFunc45();     //0x104
        virtual void CfObject_vtableFunc46();     //0x108
        virtual void CfObject_vtableFunc47();     //0x10C
        virtual void CfObject_vtableFunc48();     //0x110
        virtual void CfObject_vtableFunc49();     //0x114
        virtual void CfObject_vtableFunc50();     //0x118
        virtual void CfObject_vtableFunc51();     //0x11C
        virtual void CfObject_vtableFunc52();     //0x120
        virtual void CfObject_vtableFunc53();     //0x124
        virtual void CfObject_vtableFunc54();     //0x128
        virtual void CfObject_vtableFunc55();     //0x12C
        virtual void CfObject_vtableFunc56();     //0x130
        virtual void CfObject_vtableFunc57();     //0x134
        virtual void CfObject_vtableFunc58();     //0x138
        virtual void CfObject_vtableFunc59();     //0x13C
        virtual void CfObject_vtableFunc60();     //0x140
        virtual void CfObject_vtableFunc61();     //0x144
        virtual void CfObject_vtableFunc62();     //0x148
        virtual void CfObject_vtableFunc63();     //0x14C
        virtual void CfObject_vtableFunc64();     //0x150
        virtual void CfObject_vtableFunc65();     //0x154
        virtual void CfObject_vtableFunc66() = 0; //0x158
        virtual void CfObject_vtableFunc67();     //0x15C
        virtual void CfObject_vtableFunc68() = 0; //0x160
        virtual void CfObject_vtableFunc69();     //0x164
        virtual void CfObject_vtableFunc70();     //0x168
        virtual void CfObject_vtableFunc71();     //0x16C
        virtual void CfObject_vtableFunc72();     //0x170
        virtual void CfObject_vtableFunc73();     //0x174

        //not sure if belongs here? (can be in any class from CObjectState to CfObjectMove)
        void func_800BE898(int, u32, float, float);


        //0x0: vtable
        //0x0-38: CObjectParam
        u8 unk38_3[0x64 - 0x38];
        u32 unk64;
        u8 unk68[0x70 - 0x68];
    };
}
