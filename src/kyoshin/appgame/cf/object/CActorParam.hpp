#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/CDebugState.hpp"
#include "kyoshin/appgame/cf/object/CBattleState.hpp"
#include "kyoshin/appgame/cf/object/CActorState.hpp"

namespace cf{
    struct CActorParam_UnkStruct2 {
        u8 unk0[0x40];
        u16 unk40;
        u8 unk42[0x78 - 0x42];
        u32 unk78;
    };

    struct CActorParam_UnkStruct1 {
        u8 unk0[0x50];
        CActorParam_UnkStruct2* unk50;
        u8 unk54[0x74 - 0x54];
        u32 unk74;
    };

    class CActorParam : public CActorState, public CBattleState, public CDebugState{
    public:
        virtual void CActorParam_vtableFunc1();   //0x98
        virtual void CActorParam_vtableFunc2();   //0x9C
        virtual void CActorParam_vtableFunc3();   //0xA0
        virtual void CActorParam_vtableFunc4();   //0xA4
        virtual void CActorParam_vtableFunc5();   //0xA8
        virtual void CActorParam_vtableFunc6();   //0xAC
        virtual void CActorParam_vtableFunc7();   //0xB0
        virtual void CActorParam_vtableFunc8();   //0xB4
        virtual void CActorParam_vtableFunc9();   //0xB8
        virtual void CActorParam_vtableFunc10();  //0xBC
        virtual void CActorParam_vtableFunc11();  //0xC0
        virtual void CActorParam_vtableFunc12();  //0xC4
        virtual void CActorParam_vtableFunc13();  //0xC8
        virtual void CActorParam_vtableFunc14();  //0xCC
        virtual void CActorParam_vtableFunc15();  //0xD0
        virtual void CActorParam_vtableFunc16();  //0xD4
        virtual void CActorParam_vtableFunc17();  //0xD8
        virtual void CActorParam_vtableFunc18();  //0xDC
        virtual int CActorParam_vtableFunc19();  //0xE0
        virtual void CActorParam_vtableFunc20();  //0xE4
        virtual void CActorParam_vtableFunc21();  //0xE8
        virtual void CActorParam_vtableFunc22();  //0xEC
        virtual void CActorParam_vtableFunc23();  //0xF0
        virtual void CActorParam_vtableFunc24();  //0xF4
        virtual void CActorParam_vtableFunc25();  //0xF8
        virtual void CActorParam_vtableFunc26();  //0xFC
        virtual void CActorParam_vtableFunc27();  //0x100
        virtual void CActorParam_vtableFunc28();  //0x104
        virtual void CActorParam_vtableFunc29();  //0x108
        virtual void CActorParam_vtableFunc30();  //0x10C
        virtual void CActorParam_vtableFunc31();  //0x110
        virtual void CActorParam_vtableFunc32();  //0x114
        virtual void CActorParam_vtableFunc33();  //0x118
        virtual void CActorParam_vtableFunc34();  //0x11C
        virtual void CActorParam_vtableFunc35();  //0x120
        virtual void CActorParam_vtableFunc36();  //0x124
        virtual void CActorParam_vtableFunc37();  //0x128
        virtual void CActorParam_vtableFunc38();  //0x12C
        virtual void CActorParam_vtableFunc39();  //0x130
        virtual void CActorParam_vtableFunc40();  //0x134
        virtual void CActorParam_vtableFunc41();  //0x138
        virtual void CActorParam_vtableFunc42();  //0x13C
        virtual void CActorParam_vtableFunc43();  //0x140
        virtual void CActorParam_vtableFunc44();  //0x144
        virtual void CActorParam_vtableFunc45();  //0x148
        virtual void CActorParam_vtableFunc46();  //0x14C
        virtual void CActorParam_vtableFunc47();  //0x150
        virtual void CActorParam_vtableFunc48();  //0x154
        virtual void CActorParam_vtableFunc49();  //0x158
        virtual void CActorParam_vtableFunc50();  //0x15C
        virtual void CActorParam_vtableFunc51();  //0x160
        virtual void CActorParam_vtableFunc52();  //0x164
        virtual void CActorParam_vtableFunc53();  //0x168
        virtual void CActorParam_vtableFunc54();  //0x16C
        virtual void CActorParam_vtableFunc55();  //0x170
        virtual void CActorParam_vtableFunc56();  //0x174
        virtual void CActorParam_vtableFunc57();  //0x178
        virtual void CActorParam_vtableFunc58();  //0x17C
        virtual void CActorParam_vtableFunc59();  //0x180
        virtual void CActorParam_vtableFunc60();  //0x184
        virtual void CActorParam_vtableFunc61();  //0x188
        virtual void CActorParam_vtableFunc62();  //0x18C
        virtual void CActorParam_vtableFunc63();  //0x190
        virtual void CActorParam_vtableFunc64();  //0x194
        virtual void CActorParam_vtableFunc65();  //0x198
        virtual void CActorParam_vtableFunc66();  //0x19C
        virtual void CActorParam_vtableFunc67();  //0x1A0
        virtual void CActorParam_vtableFunc68();  //0x1A4
        virtual void CActorParam_vtableFunc69();  //0x1A8
        virtual void CActorParam_vtableFunc70();  //0x1AC
        virtual void CActorParam_vtableFunc71();  //0x1B0
        virtual void CActorParam_vtableFunc72();  //0x1B4
        virtual void CActorParam_vtableFunc73();  //0x1B8
        virtual void CActorParam_vtableFunc74();  //0x1BC
        virtual void CActorParam_vtableFunc75();  //0x1C0
        virtual void CActorParam_vtableFunc76();  //0x1C4
        virtual void CActorParam_vtableFunc77();  //0x1C8
        virtual void CActorParam_vtableFunc78();  //0x1CC
        virtual void CActorParam_vtableFunc79();  //0x1D0
        virtual void CActorParam_vtableFunc80();  //0x1D4
        virtual void CActorParam_vtableFunc81();  //0x1D8
        virtual void CActorParam_vtableFunc82();  //0x1DC
        virtual void CActorParam_vtableFunc83();  //0x1E0
        virtual void CActorParam_vtableFunc84();  //0x1E4
        virtual void CActorParam_vtableFunc85();  //0x1E8
        virtual void CActorParam_vtableFunc86();  //0x1EC
        virtual void CActorParam_vtableFunc87();  //0x1F0
        virtual void CActorParam_vtableFunc88();  //0x1F4
        virtual void CActorParam_vtableFunc89();  //0x1F8
        virtual void CActorParam_vtableFunc90();  //0x1FC
        virtual void CActorParam_vtableFunc91();  //0x200
        virtual void CActorParam_vtableFunc92();  //0x204
        virtual void CActorParam_vtableFunc93();  //0x208
        virtual void CActorParam_vtableFunc94();  //0x20C
        virtual void CActorParam_vtableFunc95();  //0x210
        virtual void CActorParam_vtableFunc96();  //0x214
        virtual void CActorParam_vtableFunc97();  //0x218
        virtual void CActorParam_vtableFunc98();  //0x21C
        virtual void CActorParam_vtableFunc99();  //0x220
        virtual void CActorParam_vtableFunc100(); //0x224
        virtual void CActorParam_vtableFunc101(); //0x228
        virtual void CActorParam_vtableFunc102(); //0x22C
        virtual void CActorParam_vtableFunc103(); //0x230
        virtual void CActorParam_vtableFunc104(); //0x234
        virtual void CActorParam_vtableFunc105(); //0x238
        virtual void CActorParam_vtableFunc106(); //0x23C
        virtual void CActorParam_vtableFunc107(); //0x240
        virtual void CActorParam_vtableFunc108(); //0x244
        virtual void CActorParam_vtableFunc109(); //0x248
        virtual void CActorParam_vtableFunc110(); //0x24C
        virtual void CActorParam_vtableFunc111(); //0x250
        virtual void CActorParam_vtableFunc112(); //0x254
        virtual void CActorParam_vtableFunc113(); //0x258
        virtual void CActorParam_vtableFunc114(); //0x25C
        virtual void CActorParam_vtableFunc115(); //0x260
        virtual void CActorParam_vtableFunc116(); //0x264
        virtual void CActorParam_vtableFunc117(); //0x268
        virtual void CActorParam_vtableFunc118(); //0x26C
        virtual void CActorParam_vtableFunc119(); //0x270
        virtual void CActorParam_vtableFunc120(); //0x274
        virtual void CActorParam_vtableFunc121(); //0x278
        virtual void CActorParam_vtableFunc122(); //0x27C
        virtual void CActorParam_vtableFunc123(); //0x280
        virtual void CActorParam_vtableFunc124(); //0x284
        virtual void CActorParam_vtableFunc125(); //0x288
        virtual void CActorParam_vtableFunc126(); //0x28C
        virtual void CActorParam_vtableFunc127(); //0x290
        virtual void CActorParam_vtableFunc128(); //0x294
        virtual CActorParam_UnkStruct1* CActorParam_vtableFunc129(); //0x298
        virtual void CActorParam_vtableFunc130(); //0x29C
        virtual void CActorParam_vtableFunc131(); //0x2A0
        virtual void CActorParam_vtableFunc132(); //0x2A4
        virtual void CActorParam_vtableFunc133(); //0x2A8
        virtual void CActorParam_vtableFunc134(); //0x2AC
        virtual void CActorParam_vtableFunc135(); //0x2B0
        virtual void CActorParam_vtableFunc136(); //0x2B4
        virtual void CActorParam_vtableFunc137(); //0x2B8
        virtual bool CActorParam_vtableFunc138(); //0x2BC
        virtual void CActorParam_vtableFunc139(); //0x2C0
        virtual void CActorParam_vtableFunc140(); //0x2C4
        virtual void CActorParam_vtableFunc141(); //0x2C8
        virtual void CActorParam_vtableFunc142(); //0x2CC
        virtual void CActorParam_vtableFunc143(); //0x2D0
        virtual void CActorParam_vtableFunc144(); //0x2D4
        virtual void CActorParam_vtableFunc145(); //0x2D8
        virtual void CActorParam_vtableFunc146(); //0x2DC
        virtual void CActorParam_vtableFunc147(); //0x2E0
        virtual void CActorParam_vtableFunc148(); //0x2E4
        virtual void CActorParam_vtableFunc149(); //0x2E8
        virtual void CActorParam_vtableFunc150(); //0x2EC
        virtual void CActorParam_vtableFunc151(); //0x2F0
        virtual void CActorParam_vtableFunc152(); //0x2F4
        virtual void CActorParam_vtableFunc153(); //0x2F8
        virtual void CActorParam_vtableFunc154(); //0x2FC
        virtual void CActorParam_vtableFunc155(); //0x300
        virtual void CActorParam_vtableFunc156(); //0x304
        virtual void CActorParam_vtableFunc157(); //0x308
        virtual void CActorParam_vtableFunc158(); //0x30C
        virtual void CActorParam_vtableFunc159(); //0x310
        virtual void CActorParam_vtableFunc160(); //0x314
        virtual void CActorParam_vtableFunc161(); //0x318
        virtual void CActorParam_vtableFunc162(); //0x31C
        virtual void CActorParam_vtableFunc163(); //0x320
        virtual void CActorParam_vtableFunc164(); //0x324
        virtual void CActorParam_vtableFunc165(); //0x328
        virtual void CActorParam_vtableFunc166(); //0x32C
        virtual void CActorParam_vtableFunc167(); //0x330
        virtual void CActorParam_vtableFunc168(); //0x334
        virtual void CActorParam_vtableFunc169(); //0x338
        virtual void CActorParam_vtableFunc170(); //0x33C
        virtual void CActorParam_vtableFunc171(); //0x340
        virtual void CActorParam_vtableFunc172(); //0x344
        virtual void CActorParam_vtableFunc173(); //0x348
        virtual void CActorParam_vtableFunc174(); //0x34C
        virtual void CActorParam_vtableFunc175(); //0x350
        virtual void CActorParam_vtableFunc176(); //0x354
        virtual void CActorParam_vtableFunc177(); //0x358
        virtual void CActorParam_vtableFunc178(); //0x35C
        virtual void CActorParam_vtableFunc179(); //0x360
        virtual void CActorParam_vtableFunc180(); //0x364
        virtual void CActorParam_vtableFunc181(); //0x368

        u8 unk15E0[0x3384 - 0x15E0]; //temporary
    };
}
