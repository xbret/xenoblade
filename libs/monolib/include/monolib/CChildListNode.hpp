#pragma once

#include "types.h"
#include "monolib/CDoubleListNode.hpp"

class CChildListNode;

template <typename T>
class TChildListHeader {
private:
    CDoubleListHeader mImpl; //0x00
    char unk4[0x10 - 0x4];

public:
    TChildListHeader() { Reset(); }
    virtual ~TChildListHeader() {}
    
    void Reset() { mImpl.Reset(); }

    //List iterators/elements
    T* Begin() const {
        return static_cast<T*>(mImpl.Begin());
    }
    T* End() const {
        return static_cast<T*>(mImpl.End());
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
    T* IterNext(const T* iter) const {
        if (iter != NULL) {
            return iter != static_cast<T*>(End())
                ? static_cast<T*>(iter->GetNext()) : NULL;
        }

        return NULL;
    }
    T* IterPrev(const T* iter) const {
        if (iter != NULL) {
            return iter != static_cast<T*>(Begin())
                ? static_cast<T*>(iter->GetPrev()) : NULL;
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
