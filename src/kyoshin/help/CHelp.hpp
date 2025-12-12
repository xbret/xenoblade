#pragma once

#include <types.h>

namespace cf{
    //min size: 0xC
    class CHelp {
    public:
        virtual void CHelp_UnkVirtualFunc1();
        virtual void CHelp_UnkVirtualFunc2();
        virtual bool CHelp_UnkVirtualFunc3();
        virtual void CHelp_UnkVirtualFunc4();
        virtual void CHelp_UnkVirtualFunc5();
    
        //0x0: vtable
        u8 unk4[0x8];
        int unkC;
    };
}
