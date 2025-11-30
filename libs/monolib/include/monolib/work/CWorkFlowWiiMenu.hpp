#pragma once

#include "types.h"

#include <monolib/work/CWorkThread.hpp>

class CWorkFlowWiiMenu : public CWorkThread{
public:
    static CWorkFlowWiiMenu* getInstance();

private:
    static CWorkFlowWiiMenu* spInstance;
};
