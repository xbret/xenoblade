#pragma once

#include <types.h>

#include <monolib/work/CWorkThread.hpp>

class CWorkFlowShutdownAll : public CWorkThread{
public:
    static CWorkFlowShutdownAll* getInstance();

private:
    static CWorkFlowShutdownAll* spInstance;
};
