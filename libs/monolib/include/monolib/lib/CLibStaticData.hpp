#pragma once

#include "types.h"

struct StaticDataHandle {
    void* data;
    u32 unk4;
};

class CLibStaticData {
public:
    static bool func_8045FB08();
    static bool getStaticFileData(const char* name, StaticDataHandle* r4, bool r5);
};
