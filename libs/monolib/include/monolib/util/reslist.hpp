#pragma once

#include <types.h>
#include "monolib/util/MemManager.hpp"

/* TODO: This breaks ctors/dtors, but it looks alot nicer than the method below. Maybe there's a way to get
this to work */
template <typename T>
struct _reslist_node_item {
    _reslist_node_item(){}
    _reslist_node_item(const T& value) try :
    item(value) {} catch(...){}
    T item;
};

template <typename T>
struct _reslist_node{
    void setItem(const T& value){
        //This doesn't work
        //new (&mItem) _reslist_node_item<T>(value);
        //Possibly fake?
        T* ptr = &mItem;
        if(ptr != nullptr) {
            try{
                *ptr = value;
            }catch(...){
                throw;
            }
        }
    }

    _reslist_node<T>* mNext; //0x0
    _reslist_node<T>* mPrev; //0x4
    T mItem; //0x8

};

template <typename T>
class _reslist_base{
public:
    _reslist_base(){
        mList = nullptr;
        mCapacity = 0;
        unk1C = 0;
        mStartNodePtr = &mStartNode;
        mStartNodePtr->mNext = &mStartNode;
        mStartNodePtr->mPrev = mStartNode.mNext;
    }

    virtual ~_reslist_base(){
        clear();
        if (unk1C == 0 && mList != nullptr) {
            delete[](this->mList);
            mList = nullptr;
        }
    }

    void func_8049CB6C(T* item){

    }

    void func_8049CB70(_reslist_node<T>* r4){
        r4->mNext = nullptr;
    }

    int findFirstEmptySlotIndex(){
        int i = 0;
        
        //Go through the list until we find an empty slot
        while(i < mCapacity){
            if(mList[i].mNext == nullptr) break;

            //BUG: There's no handling for if no empty slot is found. As is,
            //the last element index will get returned if that happens.
            //if(i == mCapacity - 1) return -1;

            i++;
        }

        return i;
    }

    //func_8049CAF4
    void clear(){
        _reslist_node<T>* r5 = mStartNodePtr->mNext;
        _reslist_node<T>* r4;
        
        while (r5 != mStartNodePtr) {
            r4 = r5;
            r5 = r5->mNext;
            func_8049CB6C(&r4->mItem);
            func_8049CB70(r4);
        }
    
        mStartNodePtr->mNext = mStartNodePtr;
        mStartNodePtr->mPrev = mStartNodePtr;
    }

    //0x0: vtable
    _reslist_node<T>* mStartNodePtr; //0x4
    _reslist_node<T> mStartNode; //0x8
    _reslist_node<T>* mList; //0x14
    int mCapacity; //0x18
    u8 unk1C; //0x1C
    u8 unk1D[3];
};

//Unofficial name
template <typename T, typename Ref, typename Ptr>
class _reslist_iterator {
public:
    _reslist_iterator() : mNode(NULL){}
    explicit _reslist_iterator(_reslist_node<T>* node) : mNode(node){}

    _reslist_iterator& operator++(){
        mNode = mNode->mNext;
        return *this;
    }

    _reslist_iterator operator++(int){

        _reslist_iterator temp = *this;
        mNode = mNode->mNext;
        return temp;
    }

    _reslist_iterator& operator--(){
        mNode = mNode->mPrev;
        return *this;
    }

    _reslist_iterator operator--(int){

        _reslist_iterator temp = *this;
        mNode = mNode->mPrev;
        return temp;
    }

    Ref operator*() const {
        return mNode->mItem;
    }

    Ptr operator->() const {
        return &operator*();
    }

    bool operator==(_reslist_iterator const& rhs) const {
        return mNode == rhs.mNode;
    }

    bool operator!=(_reslist_iterator const& rhs) const {
        return mNode != rhs.mNode;
    }

private:
    _reslist_node<T>* mNode; //0x0
};

//size: 0x20
template <typename T>
class reslist : public _reslist_base<T> {
public:
    typedef _reslist_iterator<T, T&, T*> iterator;

    reslist() : _reslist_base<T>() {
    }
    virtual ~reslist(){
    }

    iterator begin() const {
        return iterator(mStartNodePtr->mNext);
    }
    iterator end() const {
        return iterator(mStartNodePtr);
    }

    T& front() {
        return *begin();
    }
    T& back() {
        return *begin();
    }

    const T& front() const {
        return *begin();
    }
    const T& back() const {
        return *begin();
    }

    u32 size() const {
        u32 length = 0;
        
        for(iterator it = begin(); it != end(); it++){
            length++;
        }
        return length;
    }

    bool empty() const {
        return mStartNodePtr->mNext == mStartNodePtr;
    }

    inline void reserve(mtl::ALLOC_HANDLE handle, int capacity) {
        mList = new (handle) _reslist_node<T>[capacity];

        for(int i = 0; i < capacity; i++){
            mList[i].mNext = nullptr;
        }

        mCapacity = capacity;
    }

     void push_front(const T& item){
        _reslist_node<T>* startNode = mStartNodePtr->mNext;
        int i = findFirstEmptySlotIndex();

        _reslist_node<T>* temp = &mList[i];
        temp->setItem(item);
        temp->mNext = startNode;
        temp->mPrev = startNode->mPrev;
        startNode->mPrev->mNext = temp;
        startNode->mPrev = temp;
    }

    void push_back(const T& item){
        _reslist_node<T>* startNode = mStartNodePtr;
        int i = findFirstEmptySlotIndex();

        _reslist_node<T>* temp = &mList[i];

        temp->setItem(item);
        temp->mNext = startNode;
        temp->mPrev = startNode->mPrev;
        startNode->mPrev->mNext = temp;
        startNode->mPrev = temp;
    }

    void remove(const T& item){
        _reslist_node<T>* curr;
        _reslist_node<T>* next;
        _reslist_node<T>* head;

        head = mStartNodePtr;
        curr = head->mNext;
        
        //Walk through the list
        while(curr != head){
            //Save next node in case we invalidate the curr iterator
            next = curr->mNext;

            //If we find an entry containing the item, remove the entry
            if(curr->mItem == item){
                _reslist_node<T>* prev = curr->mPrev;
                prev->mNext = next;
                next->mPrev = prev;
                curr->mNext = nullptr;
            }

            curr = next;
        }
    }

    void pop_front(){
        _reslist_node<T>* frontNode = mStartNodePtr->mNext;
        _reslist_node<T>* nextNode = frontNode->mNext;
        _reslist_node<T>* prevNode = frontNode->mPrev;
        prevNode->mNext = nextNode;
        nextNode->mPrev = prevNode;
        frontNode->mNext = nullptr;
    }

    void destroyList(){
        clear();
        if (unk1C == 0 && mList != nullptr) {
            delete[](this->mList);
            mList = nullptr;
        }
        mCapacity = 0;
    }
};
