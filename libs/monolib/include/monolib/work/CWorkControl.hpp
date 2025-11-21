#pragma once

#include "types.h"
#include "monolib/work/CWorkThread.hpp"

class CWorkControl : public CWorkThread {
public:
    static CWorkControl* getInstance();
};
