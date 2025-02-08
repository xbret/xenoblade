#pragma once

#include "types.h"
#include "monolib/CDoubleListNode.hpp"

class CChildListNode;

template <typename T>
class TChildListHeader {
private:
    CDoubleListHeader mImpl; //0x00
    char unk8[0x10 - 0x8];

public:
    TChildListHeader() { Reset(); }
    virtual ~TChildListHeader() {}
    
    void Reset() { mImpl.Reset(); }

    //List nodes
    CChildListNode* Head() const {
        return static_cast<CChildListNode*>(mImpl.mHead);
    }
    CChildListNode* Tail() const {
        return static_cast<CChildListNode*>(mImpl.mTail);
    }

    //List elements
    T* Front() const {
        return static_cast<T*>(mImpl.mHead);
    }
    T* Back() const {
        return mImpl.mHead != NULL ? static_cast<T*>(mImpl.mHead->GetPrev()) : NULL;
    }

    //Add/remove nodes
    CChildListNode* InsertTop(CChildListNode* node) {
        return static_cast<CChildListNode*>(mImpl.InsertTop(node));
    }
    CChildListNode* InsertEnd(CChildListNode* node) {
        return static_cast<CChildListNode*>(mImpl.InsertEnd(node));
    }
    CChildListNode* Remove(CChildListNode* node) {
        return static_cast<CChildListNode*>(mImpl.Remove(node));
    }

    //Advance iterators
    template <typename TIter>
    TIter* IterNext(const TIter* iter) const {
        if (iter != NULL) {
            return iter != Back()
                ? static_cast<TIter*>(iter->GetNext()) : NULL;
        }

        return NULL;
    }
    template <typename TIter>
    TIter* IterPrev(const TIter* iter) const {
        if (iter != NULL) {
            return iter != Front()
                ? static_cast<TIter*>(iter->GetPrev()) : NULL;
        }

        return NULL;
    }
};

class CChildListNode : public CDoubleListNode {
public:
    CChildListNode();
    virtual ~CChildListNode() {}
    virtual void Reset();

    CChildListNode* GetParent() const { return mParent; }
    void SetParent(CChildListNode* newParent) { mParent = newParent; }

    TChildListHeader<CChildListNode>& GetChildren() { return mChildren; }
    const TChildListHeader<CChildListNode>& GetChildren() const { return mChildren; }

protected:
    CChildListNode* mParent; //0x14
    char unk18[0x24 - 0x18];
    TChildListHeader<CChildListNode> mChildren; //0x24
};
