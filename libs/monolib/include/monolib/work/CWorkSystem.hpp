#pragma once

#include "monolib/work/CWorkThread.hpp"

class CWorkSystem : public CWorkThread{
public:
    static CWorkSystem* getInstance();
    static CWorkSystem* create();
    static bool func_804444DC();
};

void func_80444874(void(*func)());
