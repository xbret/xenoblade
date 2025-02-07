#pragma once

#include "types.h"
#include "monolib/CDoubleListNode.hpp"

class CChildListNode;

template <typename T>
class TChildListHeader {
private:
    CChildListNode* mHead; //0x0
    CChildListNode* mTail; //0x4
    char unk8[0x10 - 0x8];

public:
    TChildListHeader() { Reset(); }
    virtual ~TChildListHeader() {}
    
    void Reset() { mHead = NULL; }

    CChildListNode* Head() const { return mHead; }
    CChildListNode* Tail() const { return mTail; }

    T* Front() const { return static_cast<T*>(Head()); }
    T* Back() const {
        return Head() != NULL ? static_cast<T*>(mHead->GetPrev()) : NULL;
    }
};

class CChildListNode : public CDoubleListNode {
public:
    CChildListNode();
    virtual ~CChildListNode() {}
    virtual void Reset();

    CChildListNode* GetParent() const { return parent; }
    void SetParent(CChildListNode* newParent) { parent = newParent; }

private:
    CChildListNode* parent; //0x14
    char unk18[0x24 - 0x18];
    TChildListHeader<CChildListNode> children; //0x24
};
