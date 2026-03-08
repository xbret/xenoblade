#pragma once

#include <types.h>
#include "kyoshin/cf/CfPadData.hpp"
#include "monolib/work.hpp"
#include "monolib/core.hpp"
#include "monolib/lib.hpp"
#include <revolution/WPAD.h>

namespace cf {

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
        void func_801C1C04(CfPadData* r4, CfPadData* r5);
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
