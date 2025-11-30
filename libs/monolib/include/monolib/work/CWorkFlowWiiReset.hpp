#pragma once

#include "types.h"

#include <monolib/work/CWorkThread.hpp>

class CWorkFlowWiiReset : public CWorkThread{
public:
    static CWorkFlowWiiReset* getInstance();

private:
    static CWorkFlowWiiReset* spInstance;
};
