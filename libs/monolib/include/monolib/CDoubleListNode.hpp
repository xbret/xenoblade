#pragma once

#include "types.h"

/*
Doubly-linked list node
*/
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

    //Node links
    CDoubleListNode* GetPrev() const { return mPrev; }
    CDoubleListNode* GetNext() const { return mNext; }
    void SetPrev(CDoubleListNode* prev) { mPrev = prev; }
    void SetNext(CDoubleListNode* next) { mNext = next; }
};

/*
Doubly-linked, circular list
*/
class CDoubleListHeader {
private:
    /* Circular list which begins *AFTER* mEnd:
    mEnd ("End") -> X ("Top") -> Y -> Z -> mEnd */
    CDoubleListNode* mEnd; //0x0

public:
    CDoubleListHeader() { Reset(); }
    
    void Reset() { mEnd = nullptr; }

    //List iterators
    CDoubleListNode* Begin() const {
        return mEnd != nullptr ? mEnd->GetNext() : nullptr;
    }
    CDoubleListNode* End() const { return mEnd; }

    //Add/remove nodes
    CDoubleListNode* InsertTop(CDoubleListNode* node);
    CDoubleListNode* InsertEnd(CDoubleListNode* node);
    CDoubleListNode* Remove(CDoubleListNode* node);
};
