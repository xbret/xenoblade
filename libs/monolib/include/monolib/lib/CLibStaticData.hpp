#pragma once

#include <types.h>
#include <monolib/work.hpp>

struct StaticDataHandle {
    void* data; //0x0
    u32 unk4;
};

struct StaticArcFileData {
    const char* mName; //0x0
    const char* mPath; //0x4
    u32 unk8;
    void (*callback1)(int); //0xC
    void (*callback2)(); //0x10
};

class CLibStaticData : public CWorkThread {
public:
    class CItem : public CWorkThread {
    public:
        CItem(StaticArcFileData* arcFileData);
    };

    static bool func_8045FB08();
    static bool getStaticFileData(const char* name, StaticDataHandle* r4, bool r5);
    static void saveStaticFileArray(StaticArcFileData*);
};
