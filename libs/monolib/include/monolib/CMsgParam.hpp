#pragma once

#include "monolib/work/CWorkThreadSystem.hpp"
#include "types.h"

struct CMsgParamEntry {
    u32 command; // 0x0
    WORK_ID wid; // 0x4
    u8 unk8[0x24 - 0x8];
};

template <int N> class CMsgParam {
public:
    CMsgParam(u32 r4) {
        mCapacity = N;
        mArrayPtr = mEntries;
        mSize = 0;
        mFront = 0;
        field6 = 0;
        field7 = r4;
    }

    virtual ~CMsgParam() {
        clear();
    }

    void clear() {
        mSize = 0;
        mFront = 0;
    }

    bool empty() const {
        return mSize == 0;
    }

    u32 size() const {
        return mSize;
    }

    const CMsgParamEntry& front() const {
        return mArrayPtr[mFront % mCapacity];
    }

    void enqueue(u32 msg) {}

    void pop() {
        mSize--;
        mFront = (mFront + 1) % mCapacity;
    }

    int find(u32 msg) const {
        for (int i = 0; i < mSize; i++) {
            if (mArrayPtr[(mFront + i) % mCapacity].command == msg) {
                return i;
            }
        }

        return -1;
    }

private:
    // 0x0: vtable
    CMsgParamEntry mEntries[N]; // 0x4
    CMsgParamEntry* mArrayPtr;
    u32 mFront;
    u32 mSize;
    u32 mCapacity;
    u32 field6;
    u32 field7;
};
