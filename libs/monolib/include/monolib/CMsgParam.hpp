#pragma once

#include "types.h"

//size: 0x24
struct CMsgParamEntry{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
};

template <int N>
class CMsgParam{
public:
    CMsgParam(u32 r4){
        mSize = N;
        mArrayPtr = mEntries;
        field4 = 0;
        mCount = 0;
        field6 = 0;
        field7 = r4;
    }
    virtual ~CMsgParam(){
    }

    inline int someInline() const {
        for(int i = 0; i < field4; i++){
            if(mArrayPtr[(mCount + i) % mSize].unk0 == 2){
                return i;
            }
        }

        return -1;
    }

    //0x0: vtable
    CMsgParamEntry mEntries[N]; //0x4
    CMsgParamEntry* mArrayPtr;
    u32 mCount;
    u32 field4;
    u32 mSize;
    u32 field6;
    u32 field7;
};
