#pragma once

#include <types.h>
#include "monolib/work.hpp"
#include "monolib/math.hpp"
#include "monolib/scn.hpp"
#include "monolib/util.hpp"
#include "kyoshin/COccCulling.hpp"

namespace cf{

    //size: 0x124
    class CTaskCulling : public CTTask<CTaskCulling>, public IWorkEvent, public IScnRender, public ICulling {
    public:
        CTaskCulling(CScn* pScene);
        virtual ~CTaskCulling();

        static CTaskCulling* create(CProcess* pParent, CScn* pScene);
        static CTaskCulling* getInstance();

        virtual void Init();
        virtual void Term();
        virtual void Move();
        virtual void Draw();

        virtual bool ICulling_UnkVirtualFunc1(ml::CFrustum* r4);
        virtual bool ICulling_UnkVirtualFunc2(const ml::CVec3& r4, float r5);
        virtual bool ICulling_UnkVirtualFunc3(const ml::CVec3& r4, const ml::CVec3& r5, int r6);
        virtual void cbRenderBefore();

        static void func_801A2BD0(u32 r3);
        static UNKTYPE* func_801A2C04();
        static void func_801A2C94();
        static void func_801A2CAC();


        //0x0: vtable (CTTask)
        //0x4-3C: CProcess
        //0x3C-54: CTTask
        //0x54: vtable 2 (IWorkEvent)
        //0x58: vtable 3 (IScnRender)
        //0x5C: vtable 4 (ICulling)
        COccCulling mOccCulling; //0x60
        CScn* mpScene; //0x90
        UNKTYPE* unk94;
        ml::FixStr<64> unk98;
        ml::FixStr<64> unkDC;
        u32 unk120;

    private:
        static ml::CVec3 lbl_80579018_0;
        static ml::CVec3 lbl_80579018_C;
        static ml::CVec3 lbl_80579018_18;
        static ml::CVec4 lbl_80579018_28;

        static CTaskCulling* spInstance;
    };
} //namespace  cf
