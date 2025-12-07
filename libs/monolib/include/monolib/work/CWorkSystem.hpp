#pragma once

#include "monolib/work/CWorkThread.hpp"

class CWorkSystem : public CWorkThread{
public:
    static CWorkSystem* getInstance();
};

void func_80444874(void(*func)());
