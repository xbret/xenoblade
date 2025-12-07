#pragma once

#include "monolib/work/CWorkThread.hpp"

struct UnkStruct_8044F65C {
    ~UnkStruct_8044F65C(){}
    virtual void UnkStruct_8044F65C_UnkVirtualFunc1() = 0;
    virtual void UnkStruct_8044F65C_UnkVirtualFunc2() = 0;
    virtual void UnkStruct_8044F65C_UnkVirtualFunc3() = 0;
};

class CDeviceFileCri : public CWorkThread, public UnkStruct_8044F65C {

};
