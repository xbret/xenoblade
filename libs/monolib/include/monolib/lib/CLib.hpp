#pragma once

#include <types.h>

class CLib {
public:
    static CLib* getInstance();

    static bool isInitialized();
};
