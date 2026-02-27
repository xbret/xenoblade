#pragma once

#include "monolib/work.hpp"
#include "monolib/monolib_types.hpp"

class CScn : public CTTask<CScn>, public IWorkEvent {
public:
    void addRenderCB(IScnRender* r4, u32 r5, u32 r6);
    void removeRenderCB(IScnRender* r4);

    //0x0: vtable 1 (CTTask)
    //0x0-54: CTTask
    //0x54: vtable 2 (IWorkEvent)
    u8 unk58[0xB4 - 0x58];
    ICulling* unkB4;
};
