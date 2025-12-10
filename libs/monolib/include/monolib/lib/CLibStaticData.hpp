#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"

typedef void (*StaticDataCallback)(void* pData, u32 length);

struct StaticDataHandle {
    void* data; //0x0
    u32 unk4;
};

struct StaticArcFileData {
    const char* mName; //0x0
    const char* mPath; //0x4
    u32 unk8;
    StaticDataCallback mFileLoadedCallback; //0xC
    StaticDataCallback mFileUnloadedCallback; //0x10
};

class CLibStaticData : public CWorkThread {
public:
    class CItem : public CWorkThread {
    public:
        CItem(StaticArcFileData* arcFileData); //Calls the static data callbacks
    };

    static bool func_8045FB08();
    static bool getStaticFileData(const char* name, StaticDataHandle* r4, bool r5);
    static void saveStaticFileArray(StaticArcFileData*);
};
