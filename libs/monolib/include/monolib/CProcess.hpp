#pragma once

#include "types.h"
#include "monolib/CChildListNode.hpp"

class CProcess : CChildListNode {
public:
    CProcess();
    virtual void vtableFunc1();
    virtual void vtableFunc2();
    virtual void vtableFunc3();
    virtual void vtableFunc4();
};
