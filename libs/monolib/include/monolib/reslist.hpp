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
		capacity = 0;
		unk1C = 0;
		pStartNode = &startNode;
		pStartNode->next = &startNode;
		pStartNode->prev = startNode.next;
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
		_reslist_node<T>* r5 = pStartNode->next;
		
		while (r5 != pStartNode) {
			_reslist_node<T>* r4 = r5;
			r5 = r5->next;
			func_8049CB6C(&r4->item);
			func_8049CB70(r4);
		}
	
		pStartNode->next = pStartNode;
		pStartNode->prev = pStartNode;
	}

	//0x0: vtable
	_reslist_node<T>* pStartNode; //0x4
	_reslist_node<T> startNode; //0x8
	_reslist_node<T>* mList; //0x14
	u32 capacity; //0x18
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
	void remove(const T&);
	void push_back(const T&);
	void begin();
	void end();

	inline void initList(int capacity, int heapIndex) {
		mList = (_reslist_node<T>*)mtl::heap_malloc_1(sizeof(_reslist_node<T>) * capacity, heapIndex);

		for(int i = 0; i < capacity; i++){
			mList[i].next = nullptr;
		}

		this->capacity = capacity;
	}

};
