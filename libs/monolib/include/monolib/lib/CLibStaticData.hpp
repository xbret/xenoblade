#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/util.hpp"

typedef void (*StaticDataCallback)(void* pData, u32 length);

enum MemHandleType {
    HANDLE_MEM1,
    HANDLE_MEM2,
    HANDLE_STATIC
};

struct StaticDataHandle {
    void* data; //0x0
    u32 unk4;
};

struct StaticArcFileData {
    const char* mName; //0x0
    const char* mPath; //0x4
    MemHandleType mHandleType; //0x8
    StaticDataCallback mFileLoadedCallback; //0xC
    StaticDataCallback mFileUnloadedCallback; //0x10
};

class CLibStaticData : public CWorkThread {
public:
    class CItem : public IWorkEvent {
    public:
        CItem(StaticArcFileData* arcFileData); //Calls the static data callbacks
        virtual ~CItem();
        virtual bool OnFileEvent(CEventFile* pEventFile);

            inline mtl::ALLOC_HANDLE getMemHandle(){
        mtl::ALLOC_HANDLE handle = mtl::MemManager::getHandleMEM2();
        MemHandleType type = mFileData->mHandleType;
        if(type == HANDLE_MEM1){
            handle = mtl::MemManager::getHandleMEM1();
        }else if(type == HANDLE_STATIC){
            handle = mtl::MemManager::getHandleStatic();
        }
        return handle;
        }

        //0x0: vtable
        StaticArcFileData* mFileData; //0x4
        CFileHandle* mFileHandle; //0x8
        void* mData; //0xC
        u32 mLength; //0x10
        bool unk14;
    };

    CLibStaticData(const char* pName, CWorkThread* pParent);
    virtual ~CLibStaticData();

    static CLibStaticData* getInstance();
    static bool func_8045FB08();
    static void saveStaticFileArray(StaticArcFileData*);
    static bool getStaticFileData(const char* pName, StaticDataHandle* pHandle, u32* r5);

    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

    //0x0: vtable
    //0x0-1C4: CWorkThread
    u32 unk1C4;
    resvector<CItem*> mItems; //0x1C8

private:
    static CLibStaticData* spInstance;
    static StaticArcFileData* sStaticArcFileListPtr;
};
