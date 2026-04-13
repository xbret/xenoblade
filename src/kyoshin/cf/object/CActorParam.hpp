#pragma once

#include <types.h>
#include "kyoshin/cf/object/CDebugState.hpp"
#include "kyoshin/cf/object/CBattleState.hpp"
#include "kyoshin/cf/object/CActorState.hpp"
#include "kyoshin/cf/CArtsSet.hpp"
#include <cstring>

namespace cf {

    //size: 0x7C
    struct CActorParam_UnkStruct2 {
        u8 unk0[0x40];
        u16 unk40;
        u8 unk42[0x78 - 0x42];
        u32 unk78;
    };

    //might be fake?
    struct CActorParam_UnkStruct6 {
        CActorParam_UnkStruct6(){
            unk0 = 0;
        }
    
        u8 unk0;
    };

    struct CActorParam_Bitflags {
        CActorParam_Bitflags(){
            flags = 0;
        }

        u32 flags;
    };

    //size: 0xBC
    struct CActorParam_UnkStruct1 {
        CActorParam_UnkStruct1() {
            init();
        }

        void init(){
            unk0 = 0;
            unk4 = 0;
            unk48 = 0;
            unk4C = -1;
            unk50 = 0;
            unk54 = 0;
            unk58 = 0;
            unk5C = 0;
            unk60 = 0;
            unk64 = 0;
            unk7C = 0;
            unk80 = 0;
            unkB8 = 0;
            unk68 = 0;
            unk6C = 0;
            unk70 = 0;
            unk72 = 0;
            std::memset(unk8, 0, sizeof(unk8));
            std::memset(unk84, 0, sizeof(unk84));
            mFlagsArray[0].flags = 0;
            mFlagsArray[1].flags = 0;
        }

        u32 unk0;
        u32 unk4;
        u8 unk8[0x40];
        u32 unk48;
        int unk4C;
        CActorParam_UnkStruct2* unk50;
        float unk54;
        float unk58;
        float unk5C;
        float unk60;
        float unk64;
        float unk68;
        float unk6C;
        u16 unk70;
        u16 unk72;
        CActorParam_Bitflags mFlagsArray[2]; //0x74
        u32 unk7C;
        u16 unk80;
        u8 unk82[2];
        u8 unk84[0x34];
        u32 unkB8;

        enum Flags_74 {
            FLAG_BIT_0 = (1 << 0),
            FLAG_BIT_1 = (1 << 1),
            FLAG_BIT_2 = (1 << 2),
            FLAG_BIT_3 = (1 << 3),
            FLAG_BIT_4 = (1 << 4),
            FLAG_BIT_5 = (1 << 5),
            FLAG_BIT_6 = (1 << 6),
            FLAG_BIT_7 = (1 << 7),
            FLAG_BIT_8 = (1 << 8),
            FLAG_BIT_9 = (1 << 9),
            FLAG_BIT_10 = (1 << 10),
            FLAG_BIT_11 = (1 << 11),
            FLAG_BIT_12 = (1 << 12),
            FLAG_BIT_13 = (1 << 13),
            FLAG_BIT_14 = (1 << 14),
            FLAG_BIT_15 = (1 << 15),
            FLAG_BIT_16 = (1 << 16),
            FLAG_BIT_17 = (1 << 17),
            FLAG_BIT_18 = (1 << 18),
            FLAG_BIT_19 = (1 << 19),
            FLAG_BIT_20 = (1 << 20),
            FLAG_BIT_21 = (1 << 21),
            FLAG_BIT_22 = (1 << 22),
            FLAG_BIT_23 = (1 << 23),
            FLAG_BIT_24 = (1 << 24),
            FLAG_BIT_25 = (1 << 25),
            FLAG_BIT_26 = (1 << 26),
            FLAG_BIT_27 = (1 << 27),
            FLAG_BIT_28 = (1 << 28),
            FLAG_BIT_29 = (1 << 29),
            FLAG_BIT_30 = (1 << 30),
            FLAG_BIT_31 = (1 << 31),
        };
    };

    //size: 0x52
    struct CActorParam_UnkStruct4 {
        CActorParam_UnkStruct4() {
            std::memset(this, 0, sizeof(*this)); //wtf??
        }

        u8 unk0[0x4E];
        CActorParam_UnkStruct6 unk4E[4];
    };

    //TODO: related to above struct?
    //size: 0x78
    struct CActorParam_UnkStruct3 {
        CActorParam_UnkStruct3() {
            unk74 = 0;

            std::memset(this, 0, sizeof(*this)); //wtf??

            unk5C = 1.0f;
            unk38 = 5;
            unk3A = 5;
        }

        u8 unk0[0x38];
        u16 unk38;
        u16 unk3A;
        u8 unk3C[0x44 - 0x3C];
        float unk44;
        u8 unk48[4];
        float unk4C;
        u8 unk50[0x5C - 0x50];
        float unk5C;
        u8 unk60[0x70 - 0x60];
        CActorParam_UnkStruct6 unk70[4];
        u32 unk74;
    };

    //size: 0x18
    struct CActorParam_UnkStruct5 {
        CActorParam_UnkStruct5(){
            std::memset(this, 0, sizeof(*this)); //wtf??
        }

        void init(){
            unk14 = 0;
            unk4 = 0;
            unk0 = 0;
            unkC = 0;
            unk8 = 0;
            unk10 = 0;
        }

        float unk0;
        float unk4;
        float unk8;
        float unkC;
        float unk10;
        u32 unk14;
    };

    //size: 0x3384
    class CActorParam : public CActorState, public CBattleState, public CDebugState {
    public:
        CActorParam(UNKTYPE* r4, UNKTYPE* r5);
    #pragma region vtable
        virtual void CActorParam_UnkVirtualFunc1();   //0x98
        virtual void CActorParam_UnkVirtualFunc2();   //0x9C
        virtual void CActorParam_UnkVirtualFunc3();   //0xA0
        virtual void CActorParam_UnkVirtualFunc4();   //0xA4
        virtual void CActorParam_UnkVirtualFunc5();   //0xA8
        virtual void CActorParam_UnkVirtualFunc6();   //0xAC
        virtual void CActorParam_UnkVirtualFunc7();   //0xB0
        virtual void CActorParam_UnkVirtualFunc8();   //0xB4
        virtual void CActorParam_UnkVirtualFunc9();   //0xB8
        virtual void CActorParam_UnkVirtualFunc10();  //0xBC
        virtual void CActorParam_UnkVirtualFunc11();  //0xC0
        virtual void CActorParam_UnkVirtualFunc12();  //0xC4
        virtual void CActorParam_UnkVirtualFunc13();  //0xC8
        virtual void CActorParam_UnkVirtualFunc14();  //0xCC
        virtual void CActorParam_UnkVirtualFunc15();  //0xD0
        virtual void CActorParam_UnkVirtualFunc16();  //0xD4
        virtual void CActorParam_UnkVirtualFunc17();  //0xD8
        virtual void CActorParam_UnkVirtualFunc18();  //0xDC
        virtual int CActorParam_UnkVirtualFunc19();  //0xE0
        virtual void CActorParam_UnkVirtualFunc20();  //0xE4
        virtual void CActorParam_UnkVirtualFunc21();  //0xE8
        virtual void CActorParam_UnkVirtualFunc22();  //0xEC
        virtual void CActorParam_UnkVirtualFunc23();  //0xF0
        virtual void CActorParam_UnkVirtualFunc24();  //0xF4
        virtual void CActorParam_UnkVirtualFunc25();  //0xF8
        virtual void CActorParam_UnkVirtualFunc26();  //0xFC
        virtual void CActorParam_UnkVirtualFunc27();  //0x100
        virtual void CActorParam_UnkVirtualFunc28();  //0x104
        virtual void CActorParam_UnkVirtualFunc29();  //0x108
        virtual void CActorParam_UnkVirtualFunc30();  //0x10C
        virtual void CActorParam_UnkVirtualFunc31();  //0x110
        virtual void CActorParam_UnkVirtualFunc32();  //0x114
        virtual void CActorParam_UnkVirtualFunc33();  //0x118
        virtual void CActorParam_UnkVirtualFunc34();  //0x11C
        virtual void CActorParam_UnkVirtualFunc35();  //0x120
        virtual void CActorParam_UnkVirtualFunc36();  //0x124
        virtual void CActorParam_UnkVirtualFunc37();  //0x128
        virtual void CActorParam_UnkVirtualFunc38();  //0x12C
        virtual void CActorParam_UnkVirtualFunc39();  //0x130
        virtual void CActorParam_UnkVirtualFunc40();  //0x134
        virtual void CActorParam_UnkVirtualFunc41();  //0x138
        virtual void CActorParam_UnkVirtualFunc42();  //0x13C
        virtual void CActorParam_UnkVirtualFunc43();  //0x140
        virtual void CActorParam_UnkVirtualFunc44();  //0x144
        virtual void CActorParam_UnkVirtualFunc45();  //0x148
        virtual void CActorParam_UnkVirtualFunc46();  //0x14C
        virtual void CActorParam_UnkVirtualFunc47();  //0x150
        virtual void CActorParam_UnkVirtualFunc48();  //0x154
        virtual void CActorParam_UnkVirtualFunc49();  //0x158
        virtual void CActorParam_UnkVirtualFunc50();  //0x15C
        virtual void CActorParam_UnkVirtualFunc51();  //0x160
        virtual void CActorParam_UnkVirtualFunc52();  //0x164
        virtual void CActorParam_UnkVirtualFunc53();  //0x168
        virtual void CActorParam_UnkVirtualFunc54();  //0x16C
        virtual void CActorParam_UnkVirtualFunc55();  //0x170
        virtual void CActorParam_UnkVirtualFunc56();  //0x174
        virtual void CActorParam_UnkVirtualFunc57();  //0x178
        virtual void CActorParam_UnkVirtualFunc58();  //0x17C
        virtual void CActorParam_UnkVirtualFunc59();  //0x180
        virtual void CActorParam_UnkVirtualFunc60();  //0x184
        virtual void CActorParam_UnkVirtualFunc61();  //0x188
        virtual void CActorParam_UnkVirtualFunc62();  //0x18C
        virtual void CActorParam_UnkVirtualFunc63();  //0x190
        virtual void CActorParam_UnkVirtualFunc64();  //0x194
        virtual void CActorParam_UnkVirtualFunc65();  //0x198
        virtual void CActorParam_UnkVirtualFunc66();  //0x19C
        virtual void CActorParam_UnkVirtualFunc67();  //0x1A0
        virtual void CActorParam_UnkVirtualFunc68();  //0x1A4
        virtual void CActorParam_UnkVirtualFunc69();  //0x1A8
        virtual void CActorParam_UnkVirtualFunc70();  //0x1AC
        virtual void CActorParam_UnkVirtualFunc71();  //0x1B0
        virtual void CActorParam_UnkVirtualFunc72();  //0x1B4
        virtual void CActorParam_UnkVirtualFunc73();  //0x1B8
        virtual void CActorParam_UnkVirtualFunc74();  //0x1BC
        virtual void CActorParam_UnkVirtualFunc75();  //0x1C0
        virtual void CActorParam_UnkVirtualFunc76();  //0x1C4
        virtual void CActorParam_UnkVirtualFunc77();  //0x1C8
        virtual void CActorParam_UnkVirtualFunc78();  //0x1CC
        virtual void CActorParam_UnkVirtualFunc79();  //0x1D0
        virtual void CActorParam_UnkVirtualFunc80();  //0x1D4
        virtual void CActorParam_UnkVirtualFunc81();  //0x1D8
        virtual void CActorParam_UnkVirtualFunc82();  //0x1DC
        virtual void CActorParam_UnkVirtualFunc83();  //0x1E0
        virtual void CActorParam_UnkVirtualFunc84();  //0x1E4
        virtual void CActorParam_UnkVirtualFunc85();  //0x1E8
        virtual void CActorParam_UnkVirtualFunc86();  //0x1EC
        virtual void CActorParam_UnkVirtualFunc87();  //0x1F0
        virtual void CActorParam_UnkVirtualFunc88();  //0x1F4
        virtual void CActorParam_UnkVirtualFunc89();  //0x1F8
        virtual void CActorParam_UnkVirtualFunc90();  //0x1FC
        virtual void CActorParam_UnkVirtualFunc91();  //0x200
        virtual void CActorParam_UnkVirtualFunc92();  //0x204
        virtual void CActorParam_UnkVirtualFunc93();  //0x208
        virtual void CActorParam_UnkVirtualFunc94();  //0x20C
        virtual void CActorParam_UnkVirtualFunc95();  //0x210
        virtual void CActorParam_UnkVirtualFunc96();  //0x214
        virtual void CActorParam_UnkVirtualFunc97();  //0x218
        virtual void CActorParam_UnkVirtualFunc98();  //0x21C
        virtual void CActorParam_UnkVirtualFunc99();  //0x220
        virtual void CActorParam_UnkVirtualFunc100(); //0x224
        virtual void CActorParam_UnkVirtualFunc101(); //0x228
        virtual void CActorParam_UnkVirtualFunc102(); //0x22C
        virtual void CActorParam_UnkVirtualFunc103(); //0x230
        virtual void CActorParam_UnkVirtualFunc104(); //0x234
        virtual void CActorParam_UnkVirtualFunc105(); //0x238
        virtual void CActorParam_UnkVirtualFunc106(); //0x23C
        virtual void CActorParam_UnkVirtualFunc107(); //0x240
        virtual void CActorParam_UnkVirtualFunc108(); //0x244
        virtual void CActorParam_UnkVirtualFunc109(); //0x248
        virtual void CActorParam_UnkVirtualFunc110(); //0x24C
        virtual void CActorParam_UnkVirtualFunc111(); //0x250
        virtual void CActorParam_UnkVirtualFunc112(); //0x254
        virtual void CActorParam_UnkVirtualFunc113(); //0x258
        virtual void CActorParam_UnkVirtualFunc114(); //0x25C
        virtual void CActorParam_UnkVirtualFunc115(); //0x260
        virtual void CActorParam_UnkVirtualFunc116(); //0x264
        virtual void CActorParam_UnkVirtualFunc117(); //0x268
        virtual void CActorParam_UnkVirtualFunc118(); //0x26C
        virtual void CActorParam_UnkVirtualFunc119(); //0x270
        virtual void CActorParam_UnkVirtualFunc120(); //0x274
        virtual void CActorParam_UnkVirtualFunc121(); //0x278
        virtual void CActorParam_UnkVirtualFunc122(); //0x27C
        virtual void CActorParam_UnkVirtualFunc123(); //0x280
        virtual void CActorParam_UnkVirtualFunc124(); //0x284
        virtual void CActorParam_UnkVirtualFunc125(); //0x288
        virtual void CActorParam_UnkVirtualFunc126(); //0x28C
        virtual void CActorParam_UnkVirtualFunc127(); //0x290
        virtual void CActorParam_UnkVirtualFunc128(); //0x294
        virtual CActorParam_UnkStruct1* CActorParam_UnkVirtualFunc129(); //0x298
        virtual void CActorParam_UnkVirtualFunc130(); //0x29C
        virtual void CActorParam_UnkVirtualFunc131(); //0x2A0
        virtual void CActorParam_UnkVirtualFunc132(); //0x2A4
        virtual void CActorParam_UnkVirtualFunc133(); //0x2A8
        virtual void CActorParam_UnkVirtualFunc134(); //0x2AC
        virtual void CActorParam_UnkVirtualFunc135(); //0x2B0
        virtual void CActorParam_UnkVirtualFunc136(); //0x2B4
        virtual void CActorParam_UnkVirtualFunc137(); //0x2B8
        virtual bool CActorParam_UnkVirtualFunc138(); //0x2BC
        virtual void CActorParam_UnkVirtualFunc139(); //0x2C0
        virtual void CActorParam_UnkVirtualFunc140(); //0x2C4
        virtual void CActorParam_UnkVirtualFunc141(); //0x2C8
        virtual void CActorParam_UnkVirtualFunc142(); //0x2CC
        virtual void CActorParam_UnkVirtualFunc143(); //0x2D0
        virtual void CActorParam_UnkVirtualFunc144(); //0x2D4
        virtual void CActorParam_UnkVirtualFunc145(); //0x2D8
        virtual void CActorParam_UnkVirtualFunc146(); //0x2DC
        virtual void CActorParam_UnkVirtualFunc147(); //0x2E0
        virtual void CActorParam_UnkVirtualFunc148(); //0x2E4
        virtual void CActorParam_UnkVirtualFunc149(); //0x2E8
        virtual void CActorParam_UnkVirtualFunc150(); //0x2EC
        virtual void CActorParam_UnkVirtualFunc151(); //0x2F0
        virtual void CActorParam_UnkVirtualFunc152(); //0x2F4
        virtual void CActorParam_UnkVirtualFunc153(); //0x2F8
        virtual void CActorParam_UnkVirtualFunc154(); //0x2FC
        virtual void CActorParam_UnkVirtualFunc155(); //0x300
        virtual void CActorParam_UnkVirtualFunc156(); //0x304
        virtual void CActorParam_UnkVirtualFunc157(); //0x308
        virtual void CActorParam_UnkVirtualFunc158(); //0x30C
        virtual void CActorParam_UnkVirtualFunc159(); //0x310
        virtual void CActorParam_UnkVirtualFunc160(); //0x314
        virtual void CActorParam_UnkVirtualFunc161(); //0x318
        virtual void CActorParam_UnkVirtualFunc162(); //0x31C
        virtual void CActorParam_UnkVirtualFunc163(); //0x320
        virtual void CActorParam_UnkVirtualFunc164(); //0x324
        virtual void CActorParam_UnkVirtualFunc165(); //0x328
        virtual void CActorParam_UnkVirtualFunc166(); //0x32C
        virtual void CActorParam_UnkVirtualFunc167(); //0x330
        virtual void CActorParam_UnkVirtualFunc168(); //0x334
        virtual void CActorParam_UnkVirtualFunc169(); //0x338
        virtual void CActorParam_UnkVirtualFunc170(); //0x33C
        virtual void CActorParam_UnkVirtualFunc171(); //0x340
        virtual void CActorParam_UnkVirtualFunc172(); //0x344
        virtual void CActorParam_UnkVirtualFunc173(); //0x348
        virtual void CActorParam_UnkVirtualFunc174(); //0x34C
        virtual void CActorParam_UnkVirtualFunc175(); //0x350
        virtual void CActorParam_UnkVirtualFunc176(); //0x354
        virtual void CActorParam_UnkVirtualFunc177(); //0x358
        virtual void CActorParam_UnkVirtualFunc178(); //0x35C
        virtual void CActorParam_UnkVirtualFunc179(); //0x360
        virtual void CActorParam_UnkVirtualFunc180(); //0x364
        virtual void CActorParam_UnkVirtualFunc181(); //0x368
    #pragma endregion

        UNKTYPE* unk15DC;
        UNKTYPE* unk15E0;
        u32 unk15E4;
        float unk15E8;
        u32 unk15EC;
        u32 unk15F0;
        u8 unk15F4[8];
        float unk15FC;
        u32 unk1600;
        u32 unk1604;
        u32 unk1608;
        u16 unk160C;
        u16 unk160E;
        float unk1610;
        u16 unk1614;
        u16 unk1616;
        float unk1618;
        u32 unk161C;
        float unk1620;
        float unk1624;
        u8 unk1628;
        u8 unk1629;
        u8 unk162A;
        u8 unk162B;
        u8 unk162C;
        float unk1630;
        u32 unk1634;
        u32 unk1638;
        u32 unk163C;
        u32 unk1640;
        u32 unk1644;
        u16 unk1648;
        u16 unk164A;
        u16 unk164C;
        u8 unk164E[2];
        CActorParam_UnkStruct3 unk1650;
        CActorParam_UnkStruct3 unk16C8;
        CActorParam_UnkStruct4 unk1740;
        CActorParam_UnkStruct4 unk1792;
        CActorParam_UnkStruct3 unk17E4;
        CActorParam_UnkStruct3 unk185C;
        CActorParam_UnkStruct4 unk18D4;
        u8 unk1926[2]; //filler?
        CActorParam_UnkStruct5 unk1928[8];
        CArtsSet mArtsSet; //0x19E8
        u8 unk2740[0xC];
        CAttackSet mAttackSet; //0x274C
        u32 unk2A80; //probably not here
        CActorParam_UnkStruct1 unk2A84[10];
        CActorParam_UnkStruct1 unk31DC;
        CActorParam_UnkStruct1 unk3298;
        u8 unk3354;
        u8 unk3355[3]; //padding?
        u16 unk3358;
        u16 unk335A;
        u8 unk335C[5];
        u8 unk3361[3]; //padding?
        float unk3364;
        float unk3368;
        u32 unk336C;
        u32 unk3370;
        u32 unk3374;
        u8 unk3378[4];
        float unk337C;
    };
}
