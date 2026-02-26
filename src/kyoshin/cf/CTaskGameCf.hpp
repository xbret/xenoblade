#pragma once

#include <types.h>
#include "monolib/work.hpp"

//Forward declarations
class CTaskGame;

namespace cf{

    class CTaskGameCf : public CTTask<CTaskGameCf> {
    public:
        CTaskGameCf();
        virtual ~CTaskGameCf();

        //0x0-0x54: CTTask
        u32 unk54;
        CTaskGame* unk58;
    };

}
