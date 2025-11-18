#pragma once

#include "types.h"
#include "monolib/CDoubleListNode.hpp"

//Forward declaration
class CChildListNode;

/*
List containing nodes designated as children
*/
template <typename T>
class TChildListHeader : private CDoubleListHeader {
private:
    //Many methods delegate to the implementation
    typedef CDoubleListHeader Base;

private:
    //0x0-4: CDoubleListHeader
    char unk4[0x10 - 0x4];

public:
    TChildListHeader() { Reset(); }
    virtual ~TChildListHeader() {}
    
    void Reset() { Base::Reset(); }

    //List iterators/elements
    T* Begin() const {
        return static_cast<T*>(Base::Begin());
    }
    T* End() const {
        return static_cast<T*>(Base::End());
    }

    //Add/remove nodes
    CChildListNode* InsertTop(CChildListNode* node) {
        return static_cast<CChildListNode*>(Base::InsertTop(node));
    }
    CChildListNode* InsertEnd(CChildListNode* node) {
        return static_cast<CChildListNode*>(Base::InsertEnd(node));
    }
    CChildListNode* Remove(CChildListNode* node) {
        return static_cast<CChildListNode*>(Base::Remove(node));
    }

    //Advance iterators
    T* IterNext(const T* iter) const {
        //Need specific inline depth
        (void)0;
        
        if (iter != nullptr) {
            return iter != static_cast<T*>(End())
                ? static_cast<T*>(iter->GetNext()) : nullptr;
        }

        return nullptr;
    }
    T* IterPrev(const T* iter) const {
        //Need specific inline depth
        (void)0;
        
        if (iter != nullptr) {
            return iter != static_cast<T*>(Begin())
                ? static_cast<T*>(iter->GetPrev()) : nullptr;
        }

        return nullptr;
    }
};

/*
Children-list node
*/
class CChildListNode : public CDoubleListNode {
private:
    typedef TChildListHeader<CChildListNode> ChildrenType;

public:
    CChildListNode();
    virtual ~CChildListNode() {}
    virtual void Reset();

    //Parent node
    CChildListNode* GetParent() const { return mParent; }
    void SetParent(CChildListNode* parent) { mParent = parent; }

    //Children of this child
    ChildrenType& GetChildren() { return mChildren; }
    const ChildrenType& GetChildren() const { return mChildren; }

protected:
    //0x0-10: CDoubleListNode
    //0x10: vtable
    CChildListNode* mParent; //0x14
    char unk18[0x24 - 0x18];
    ChildrenType mChildren; //0x24
};
