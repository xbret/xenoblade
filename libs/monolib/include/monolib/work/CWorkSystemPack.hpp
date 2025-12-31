#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"

class CWorkSystemPack : public CWorkThread {
public:
    CWorkSystemPack(const char* pName, CWorkThread* pParent);

    DECL_WORKTHREAD_CREATE(CWorkSystemPack);

    static bool func_804DDFBC(UNKWORD r3);
    static bool func_804DDDF4(const char* r3, void* r4, u32* r5);
    static bool func_804DE100();
    static void SavePkhFilenamesArrayPtr(const char* const[]);
    static void SaveStaticArcFilenameStringPtr(const char* const*);

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u8 unk1C4[0x208 - 0x1C4];
};
