#pragma once

#include "types.h"

class CDoubleListNode {
public:
    CDoubleListNode* next; //0x0
    CDoubleListNode* prev; //0x4
    u8 unk8;
    int unkC;

public:
    CDoubleListNode();
    virtual ~CDoubleListNode() {}
    virtual void Reset();

    CDoubleListNode* GetNext() const { return next; }
    CDoubleListNode* GetPrev() const { return prev; }
    void SetNext(CDoubleListNode* newNext) { next = newNext; }
    void SetPrev(CDoubleListNode* newPrev) { prev = newPrev; }
};

class CDoubleListHeader {
protected:
    CDoubleListNode* head; //0x0
    CDoubleListNode* tail; //0x4

public:
    CDoubleListNode* Head() const { return head; }
    CDoubleListNode* Tail() const { return tail; }

    CDoubleListNode* InsertTop(CDoubleListNode* node);
    CDoubleListNode* InsertEnd(CDoubleListNode* node);
    CDoubleListNode* Remove(CDoubleListNode* node);
};
