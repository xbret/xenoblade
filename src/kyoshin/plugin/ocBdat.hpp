#pragma once

#include <types.h>

//Utility class for handling bdat files.
class CBdat {
public:
    static void func_8003AA34();
    static void func_8003AA50();
    static void func_8003AA78(u32, void*);
    static void func_8003AA8C(u32 val);
    static void* getFP(const char* pName);
    static const char* getBdatStringColumnValue(void* pData, const char* pColumnName, int index);
    static u16 func_8003B1EC(void* pData);
    static u16 func_8003B41C(void* pData);
};
