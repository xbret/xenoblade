#pragma once

#include "types.h"
#include "monolib/CTTask.hpp"
#include "monolib/CException.hpp"

namespace cf {
    /* Not sure, but it seems like this class inherits IGameException
    (it inherits some interface related to exception handling) */
    class CfPadTask : public CTTask<CfPadTask>, public IGameException {

    };
}
