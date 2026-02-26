#pragma once

#include <types.h>
#include "monolib/work.hpp"
#include "monolib/math.hpp"
#include "monolib/scn.hpp"
#include "kyoshin/COccCulling.hpp"

namespace cf{

    class ICulling {
    public:
        virtual ~ICulling(){}
        virtual bool ICulling_UnkVirtualFunc1(COccCulling_UnkStruct2* r4);
        virtual bool ICulling_UnkVirtualFunc2(const ml::CVec3& r4, float r5);
        virtual bool ICulling_UnkVirtualFunc3(const ml::CVec3& r4, const ml::CVec3& r5, int r6);
    };

    //size: 0x124
    class CTaskCulling : public CTTask<CTaskCulling>, public IWorkEvent, public IScnRender, public ICulling {
    public:
        CTaskCulling(UNKTYPE* r4);
        virtual ~CTaskCulling();

        static CTaskCulling* create(CProcess* pParent, UNKTYPE* r4);
        static CTaskCulling* getInstance();

        virtual void Init();
        virtual void Term();
        virtual void Move();
        virtual void Draw();

        virtual void IScnRender_UnkVirtualFunc1();
        virtual bool ICulling_UnkVirtualFunc1(COccCulling_UnkStruct2* r4);
        virtual bool ICulling_UnkVirtualFunc2(const ml::CVec3& r4, float r5);
        virtual bool ICulling_UnkVirtualFunc3(const ml::CVec3& r4, const ml::CVec3& r5, int r6);

        static void func_801A2BD0();
        static void func_801A2C04();
        static void func_801A2C94();
        static void func_801A2CAC();


        //0x0: vtable 1 (CTTask)
        //0x0-54: CTTask
        //0x54: vtable 2 (IWorkEvent)
        //0x58: vtable 3 (IScnRender)
        //0x5C: vtable 4 (ICulling)
        COccCulling mOccCulling; //0x60
        UNKTYPE* unk90;
        UNKTYPE* unk94;
        u8 unk98;
        u8 unk9C[0xD8 - 0x9C];
        u32 unkD8;
        u8 unkDC;
        u8 unkE0[0x11C - 0xE0];
        u32 unk11C;
        u32 unk120;

    private:
        static ml::CVec3 lbl_80579018_0;
        static ml::CVec3 lbl_80579018_C;
        static ml::CVec3 lbl_80579018_18;
        static ml::CVec4 lbl_80579018_28;

        static CTaskCulling* spInstance;
    };
} //namespace  cf
