#pragma once

#include <types.h>
#include "monolib/work.hpp"
#include "monolib/core.hpp"
#include "monolib/lib.hpp"
#include <revolution/WPAD.h>

namespace cf {
    struct CfPadTask_UnkStruct3 {
        u32 unk0;
        u32 unk4;
    };

    struct CfPadTask_UnkStruct2{
        u32 unk0;
        u32 unk4;
        u32 unk8;
        u32 unkC;
        u32 unk10;
        u32 unk14;
        u32 unk18;
        u32 unk1C;
        u32 unk20;
        u32 unk24;
        u32 unk28;
        u32 unk2C;
        u32 unk30;
        u32 unk34;
        u32 unk38;
        u32 unk3C;
        u32 unk40;
        u32 unk44;
        u32 unk48;
        u32 unk4C;
        u32 unk50;
        u32 unk54;
        u8 unk58;
        u8 unk59;
        u8 unk5A;
        u8 unk5B;
        u8 unk5C;
        u8 unk5D;
        float unk60;
        float unk64;
        float unk68;
        float unk6C;
        float unk70;
        float unk74;

        CfPadTask_UnkStruct3 unk78[9];

        u32 unkC0;
        u32 unkC4;
        u32 unkC8;
        u32 unkCC;
        u32 unkD0;
        u32 unkD4;
        u32 unkD8;
        u32 unkDC;
        u32 unkE0;
        u32 unkE4;
        u32 unkE8;
        u8 unkEC;
        u8 unkED;
        u32 unkF0;
        float unkF4;
    };

    struct CfPadTask_UnkStruct1 {
        CfPadTask_UnkStruct2 unk0;
        u32 unkF8;
        u32 unkFC;
    };

    /* Not sure, but it seems like this class inherits IGameException
    (it inherits some interface related to exception handling) */
    class CfPadTask : public CTTask<CfPadTask>, public IGameException, public IHBMCallback {
    public:
        CfPadTask();
        virtual ~CfPadTask();

        virtual void Init();
        virtual void Move();
        virtual void Term();
        
        virtual bool gameExceptionCB(u32 r4);
        virtual void onInitHbm();
        virtual void onDeleteHbm();

        static CfPadTask* create(CProcess* pParent);

        bool update();
        int func_801C2A18(bool r4);

        static void func_801C1AD0();
        static void func_801C1B94(float f1);
        static bool func_801C1BC0();
        static void func_801C1BD8(float f1);
        void func_801C1C04(CfPadTask_UnkStruct1* r4, CfPadTask_UnkStruct1* r5);
        static u32 getWiimoteBattery();
        static void wpadGetInfoCallback(int chan, int result);

        //0x0: vtable 1 (CTTask)
        //0x0-54: CTTask
        //0x54: vtable 2 (IGameException)
        //0x58: vtable 3 (IHBMCallback)
        u32 unk5C;
        u32 unk60;
        u32 unk64;

    private:
        static u8 lbl_80666D30;
        static u8 lbl_80666D31;
        static u8 lbl_80666D32;
        static u8 lbl_80666D33;

        static u32 sWiimoteBattery;
        static u32 lbl_80666D3C;
        static u32 lbl_80666D40;
        static float float_80666D44;
        static float float_80666D48;

        static WPADInfo sWpadInfo;

        static CfPadTask* spInstance;
    };
}
