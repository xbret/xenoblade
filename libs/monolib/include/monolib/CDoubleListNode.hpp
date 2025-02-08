#pragma once

#include "types.h"

class CDoubleListNode {
public:
    CDoubleListNode* mNext; //0x0
    CDoubleListNode* mPrev; //0x4
    u8 unk8;
    int unkC;

public:
    CDoubleListNode();
    virtual ~CDoubleListNode() {}
    virtual void Reset();

    CDoubleListNode* GetNext() const { return mNext; }
    CDoubleListNode* GetPrev() const { return mPrev; }
    void SetNext(CDoubleListNode* newNext) { mNext = newNext; }
    void SetPrev(CDoubleListNode* newPrev) { mPrev = newPrev; }
};

class CDoubleListHeader {
public:
    CDoubleListNode* mHead; //0x0
    CDoubleListNode* mTail; //0x4

public:
    void Reset() { mHead = NULL; }

    CDoubleListNode* Head() const { return mHead; }
    CDoubleListNode* Tail() const { return mTail; }

    CDoubleListNode* InsertTop(CDoubleListNode* node);
    CDoubleListNode* InsertEnd(CDoubleListNode* node);
    CDoubleListNode* Remove(CDoubleListNode* node);
};
