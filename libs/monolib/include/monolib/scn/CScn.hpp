#pragma once

#include "monolib/work.hpp"

class CScn : public CTTask<CScn>, public IWorkEvent{
public:
    void addRenderCB(IScnRender* r4, u32 r5, u32 r6);
    void removeRenderCB(IScnRender* r4);

    //0x000: vtable 1 (CTTask)
    //0x000-054: CTTask
    //0x054: vtable 2 (IWorkEvent)
    u8 unk58[0x0B4 - 0x058]; //0x058
    ICulling* unkB4; //0x0B4
    char unk0B8[0x3E4 - 0x0B8]; //0x0B8
    u8 unk_3E4; //0x3E4
    char unk3E5[0x3EC - 0x3E5]; //0x3E5
}; // size = 0x3EC
