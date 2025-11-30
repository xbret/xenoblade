#pragma once

#include <monolib/work.hpp>

class CLibVM : public CWorkThread {
public:
    static void setCallbacks(void (*callback1)(), void (*callback2)());
};
