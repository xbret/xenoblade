#pragma once

#include <types.h>
#include "monolib/work.hpp"
#include "monolib/core.hpp"
#include "monolib/lib.hpp"

namespace cf {
    /* Not sure, but it seems like this class inherits IGameException
    (it inherits some interface related to exception handling) */
    class CfPadTask : public CTTask<CfPadTask>, public IGameException, public IHBMCallback {
    public:
        CfPadTask();
        virtual ~CfPadTask();

        virtual void Init();
        virtual void Move();
        virtual void Term();
        
        virtual bool IGameException_UnkVirtualFunc1(u32 r4);
        virtual void IHBMCallback_UnkInline1();
        virtual void IHBMCallback_UnkInline2();

        static CfPadTask* create(CProcess* pParent);

        //0x0: vtable 1 (CTTask)
        //0x0-54: CTTask
        //0x54: vtable 2 (IGameException)
        //0x58: vtable 3 (IHBMCallback)
        u32 unk5C;
        u32 unk60;
        u32 unk64;

    private:
        static u32 lbl_80666D34;
        static float float_80666D44;
        static float float_80666D48;


        static CfPadTask* spInstance;
    };
}
