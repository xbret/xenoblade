#pragma once

#include <monolib/work/CWorkThread.hpp>

class CLibVM : public CWorkThread {
public:
    static void setCallbacks(void (*callback1)(), void (*callback2)());
};
