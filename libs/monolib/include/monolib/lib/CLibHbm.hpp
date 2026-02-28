#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"

//size: 0x268
class CLibHbm : public CWorkThread {
public:
    CLibHbm(const char* pName, CWorkThread* pParent);
    ~CLibHbm();

    DECL_WORKTHREAD_CREATE(CLibHbm);

    static bool isInitialized();
    static CLibHbm* getInstance();

    static bool func_8045DDD4();
    static void func_8045E0CC();

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;
    u32 unk1C8;
    u32 unk1CC;
    u32 unk1D0;
    u32 unk1D4;
    u32 unk1D8;
    u32 unk1DC;
    u32 unk1E0;
    u32 unk1E4;
    u32 unk1E8;
    u8 unk1EC[0x22C - 0x1EC];
    u16 unk22C;
    u32 unk230;
    u32 unk234;
    u8 unk238[0x258 - 0x238];
    u32 unk258;
    float unk25C;
    u32 unk260;
    bool unk264;
    bool unk265;

private:
    static const int MAX_CHILD = 1;

    static CLibHbm* spInstance;
};

void CLibHbm_8045D5C8(u32);
extern void func_8045D480(void*);
extern void func_8045D4FC();
bool func_8045DE00();
