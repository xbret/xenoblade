#pragma once

#include "types.h"

#include <monolib/work/CWorkThread.hpp>

class CWorkFlowWiiPowerOff : public CWorkThread{
public:
    static CWorkFlowWiiPowerOff* getInstance();

private:
    static CWorkFlowWiiPowerOff* spInstance;
};
