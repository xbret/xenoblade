#pragma once

#include "monolib/work.hpp"
#include "monolib/monolib_types.hpp"

class CScn : public CTTask<CScn>, public IWorkEvent {
public:
    void addRenderCB(IScnRender* r4, u32 r5, u32 r6);
    void removeRenderCB(IScnRender* r4);
};
