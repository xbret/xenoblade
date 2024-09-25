#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/device/CDeviceFile.hpp"

struct PackHeader {
        u32 unk0;
        u32 unk4;
        u32 mFileHashTableOffset; //0x8
        u32 mPkhFilesize; //0xC
        u32 mFiles; //0x10
        u8 unk14[0x20];
        u32 mHashValTableLength; //0x34
        u8 mHashValTable[0x40]; //0x38
        //might be a struct?
        u64 mFileHashTable[]; //0x78
};

//size: 0x88
class CPackItem : IWorkEvent {
public:
    CPackItem(const char* name, UNKWORD r5);
    virtual ~CPackItem();
    virtual bool OnFileEvent(CEventFile* eventFile);

    void update();
    bool func_804DE78C(const char* filename, char** r5, u32* r6, u32* r7, u32* r8);
    int findHashIndex(int startIndex, int endIndex);
    bool isNotLoaded();
    bool calculatePackFileHash(const char* filename);
    void func_804DE948();

    enum LoadState {
        LOAD_STATE_NOT_LOADED,
        LOAD_STATE_OPENED_PKH_FILE,
        LOAD_STATE_LOADING_AHX_ADX_FILE,
        LOAD_STATE_LOADED
    };

public:
    //0x0: vtable
    //0x0-4: IWorkEvent

    ml::FixStr<32> unk4;
    ml::FixStr<32> pkbFilename; //0x28
    CFileHandle* mFileHandle; //0x4C
    PackHeader* mPackHeader; //0x50
    const char* unk54;
    u64* mFileHashTable; //0x58
    u16* unk5C; //0x5C
    u32* unk60; //0x60
    u32 unk64;
    void* mAhxAdxDataPtr;
    u32 mHashLowerHalf; //0x6C
    u32 mHashUpperHalf; //0x70
    LoadState mLoadState; //0x74
    u8 unk78;
    u8 unk79;
    bool mIsAhxAdxFile; //0x7A
    u8 unk7B; //filler?
    u32 unk7C;
    u32 unk80;
    const char* unk84;
};
