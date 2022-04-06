#pragma once

#include "types.h"
#include "monolib/MemManager.hpp"

template <typename T>
struct _reslist_node{
	_reslist_node<T>* next; //0x00
	_reslist_node<T>* prev; //0x04
	T item; //0x8
};

template <typename T>
class _reslist_base{
public:
	_reslist_base(){
		mList = nullptr;
		mCapacity = 0;
		unk1C = 0;
		mStartNodePtr = &mStartNode;
		mStartNodePtr->next = &mStartNode;
		mStartNodePtr->prev = mStartNode.next;
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
		r4->next = nullptr;
	}

	//func_8049CAF4
	void clear(){
		_reslist_node<T>* r5 = mStartNodePtr->next;
		
		while (r5 != mStartNodePtr) {
			_reslist_node<T>* r4 = r5;
			r5 = r5->next;
			func_8049CB6C(&r4->item);
			func_8049CB70(r4);
		}
	
		mStartNodePtr->next = mStartNodePtr;
		mStartNodePtr->prev = mStartNodePtr;
	}

	//0x0: vtable
	_reslist_node<T>* mStartNodePtr; //0x4
	_reslist_node<T> mStartNode; //0x8
	_reslist_node<T>* mList; //0x14
	u32 mCapacity; //0x18
	u8 unk1C; //0x1C
	u8 unk1D[3];
};

//size: 0x20
template <typename T>
class reslist : public _reslist_base<T> {
public:
	reslist() : _reslist_base<T>() {
	}
	virtual ~reslist(){
	}

	void remove(const T& item) {
		_reslist_node<T>* startNode = mStartNodePtr;
		_reslist_node<T>* curNode = startNode->next;
		
		//Walk through the list
		while(curNode != startNode){
			_reslist_node<T>* next = curNode->next;
			//If we find an entry containing the item, remove the entry
			if(curNode->item == item){
				_reslist_node<T>* prev = curNode->prev;
				prev->next = next;
				next->prev = prev;
				curNode->next = nullptr;
			}
			curNode = next;
		}
	}

	void push_back(const T& item){
		_reslist_node<T>* r9 = mStartNodePtr;
		u32 r8 = mCapacity;
		int i = 0;

		//Go through the list until we find an empty slot
		while(i < mCapacity){
			if(mList[i].next == 0) break;
			i++;
		}


		if(&mList[i].item != nullptr){
			mList[i].item = item;
		}

		mList[i].next = r9;
		mList[i].prev = r9->prev;
		r9->prev->next = mList[i].next;
		r9->prev = mList[i].next;
	}


	void begin();
	void end();

	inline void initList(int capacity, int heapIndex) {
		mList = new (heapIndex) _reslist_node<T>[capacity];

		for(int i = 0; i < capacity; i++){
			mList[i].next = nullptr;
		}

		mCapacity = capacity;
	}

	inline bool empty(){
		return mStartNodePtr->next == mStartNodePtr;
	}

};
