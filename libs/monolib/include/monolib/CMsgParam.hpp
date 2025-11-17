#pragma once

#include "types.h"

template <int N>
class CMsgParam{
public:
    struct REQCOM{
        u32 unk0;
        u8 unk4[0x20];
    };

public:
    CMsgParam(u32 r4) {
        mSize = N;
        mArrayPtr = mEntries;
        field4 = 0;
        mCount = 0;
        field6 = 0;
        field7 = r4;
    }

    virtual ~CMsgParam() {
        clear();
    }

    int someInline() const {
        for(int i = 0; i < field4; i++){
            if(mArrayPtr[(mCount + i) % mSize].unk0 == 2){
                return i;
            }
        }

        return -1;
    }

    void clear() {
        field4 = 0;
        field3 = 0;
    }

    //0x0: vtable
    REQCOM mEntries[N]; //0x4
    REQCOM* mArrayPtr;
    u32 mCount;
    u32 field4;
    u32 mSize;
    u32 field6;
    u32 field7;
};
