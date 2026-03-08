#pragma once

#include <types.h>
#include "kyoshin/cf/object/CfObjectMove.hpp"
#include "monolib/scn.hpp"

/* TODO: it's possible this file contains multiple separate classes, either just all being put in here,
or due to being in separate files, but compiled together in one file (unity compilation). For now,
to make things simpler, everything exists in a single class. */
namespace cf {

    //min size: 0xb8
    //unofficial name
    class CfGameManager{
    public:
        static CfGameManager* getInstance();

        static void enablePad(int, bool);
        static bool func_8007E1B4();
        static UNKWORD func_800829B8();
        static u32 func_80087208();
        static UNKTYPE* func_80083298();
        static cf::CfObjectMove* func_80082D54(int playerIndex);


        static bool checkUnkFlag(int bit){
            return sUnkFlags & (1 << bit);
        }

        static void setUnkFlag(int bit, bool state){
            if(state == true) sUnkFlags |= (1 << bit);
            else sUnkFlags &= ~(1 << bit);
        }

        u32 unk0;
        u32 unk4;
        u32 unk8;
        u8 unkC[0x28 - 0xC];
        u8 unk28;
        u8 unk29[0x68 - 0x29];
        u32 unk68;
        u8 unk6C;
        u8 unk6D[0x7C - 0x6D];
        u32 unk7C;
        u8 unk80[0x8C - 0x80];
        u32 unk8C;
        u32 unk90;
        //between CObjectParam - CfObjectMove
        //likely player character object array, seems to always store pointers
        //to CfObjectPc objects except pointing at the 4th vtable
        cf::CfObjectMove* unk94[3];
        u32 unkA0;
        u32 unkA4;
        u32 unkA8;
        u32 unkAC;
        u32 unkB0;
        u32 unkB4;

        static u32 sUnkFlags;
        static CScnNw4r* spScene;
    };

}
