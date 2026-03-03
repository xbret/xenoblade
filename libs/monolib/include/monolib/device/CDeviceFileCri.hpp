#pragma once

#include "monolib/work/CWorkThread.hpp"

struct UnkStruct_8044F65C {
    ~UnkStruct_8044F65C(){}
    virtual void UnkStruct_8044F65C_UnkVirtualFunc1() = 0;
    virtual void UnkStruct_8044F65C_UnkVirtualFunc2() = 0;
    virtual void UnkStruct_8044F65C_UnkVirtualFunc3() = 0;
};

class CDeviceFileCri : public CWorkThread, public UnkStruct_8044F65C {
public:
    static void func_8044F964();
    static void func_8044FC38();

    static void func_80450B14(const wchar_t*);
    static void func_80450B1C(const wchar_t*);
    static void func_80450B24(const wchar_t*);
};
