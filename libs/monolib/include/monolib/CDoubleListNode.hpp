#pragma once

#include "types.h"

class CDoubleListNode {
public:
    CDoubleListNode* mPrev; //0x4
    CDoubleListNode* mNext; //0x0
    u8 unk8;
    int unkC;

public:
    CDoubleListNode();
    virtual ~CDoubleListNode() {}
    virtual void Reset();

    CDoubleListNode* GetPrev() const { return mPrev; }
    CDoubleListNode* GetNext() const { return mNext; }
    void SetPrev(CDoubleListNode* newPrev) { mPrev = newPrev; }
    void SetNext(CDoubleListNode* newNext) { mNext = newNext; }
};

class CDoubleListHeader {
public:
    CDoubleListNode* mEnd; //0x0

public:
    void Reset() { mEnd = NULL; }

    //List nodes
    CDoubleListNode* Begin() const { return mEnd != NULL ? mEnd->GetNext() : NULL; }
    CDoubleListNode* End() const { return mEnd; }

    CDoubleListNode* InsertTop(CDoubleListNode* node);
    CDoubleListNode* InsertEnd(CDoubleListNode* node);
    CDoubleListNode* Remove(CDoubleListNode* node);
};
