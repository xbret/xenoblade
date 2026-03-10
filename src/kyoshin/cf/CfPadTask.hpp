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
        int checkForControllerError(bool r4);

        void copyInputFlag(CPad* pPad, u32 r5, u32 r6);
        static void func_801C1B94(float f1);
        static bool func_801C1BC0();
        static void func_801C1BD8(float f1);
        void updateCfPadData(CfPadData* r4, const CPad* r5);
        static u32 getWiimoteBattery();
        static void wpadGetInfoCallback(s32 chan, s32 result);

        bool isWpadChannel(u32 channel) const {
            return channel <= WPAD_MAX_CONTROLLERS - 1;
        }

        //0x0: vtable 1 (CTTask)
        //0x0-54: CTTask
        //0x54: vtable 2 (IGameException)
        //0x58: vtable 3 (IHBMCallback)
        int mErrorFrameCount; //0x5C
        int mNoErrorFrameCount; //0x60
        int mFrameCounter; //0x64

    private:
        enum ControllerError{
            ERROR_NONE,
            ERROR_WIIMOTE_DISCONNECTED,
            ERROR_NUNCHUCK_DISCONNECTED,
            ERROR_CLASSIC_CONTROLLER_DISCONNECTED,
            ERROR_NO_EXTENSION
        };

        enum PadExtension{
            PAD_EXT_INVALID,
            PAD_EXT_NUNCHUCK,
            PAD_EXT_CLASSIC_CONTROLLER,
            PAD_EXT_NONE
        };

        static const int MAX_ERROR_FRAMES = 9;

        static u8 sMainPadExtension;
        static u8 lbl_80666D31;
        static bool sMainPadIsGCController;
        static u8 lbl_80666D33;

        static u32 sWiimoteBattery;
        static u32 lbl_80666D3C;
        static u32 sMainPadType;
        static float float_80666D44;
        static float float_80666D48;

        static u32 sMainPadChannel;

        static WPADInfo sWpadInfo;

        static CfPadTask* spInstance;
    };
}
