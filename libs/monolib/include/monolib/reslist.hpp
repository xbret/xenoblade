#pragma once

#include "types.h"


extern void func_8049CAF4();
extern void func_8049CB6C(u32*);

template <typename T>
class _reslist_node{
public:
	_reslist_node* next; //0x00
	_reslist_node* prev; //0x04
	T* item;
};

template <typename T>
class _reslist_base{
public:
	_reslist_base(){
		mList = nullptr;
		unk18 = 0;
		unk1C = 0;
		unk4 = &unk8;
		unk8 = (_reslist_node<T>*)&unk8;
		unkC = (_reslist_node<T>*)&unk8;
	}

	virtual ~_reslist_base(){
        func_8049CAF4();
        if (unk1C == 0 && mList != nullptr) {
            delete[](this->mList);
            mList = nullptr;
        }
	}

    void func_8049CAF4(){
        _reslist_node<T>* ppuVar1;
        _reslist_node<T>* ppuVar2;
    
        ppuVar2 = *unk4;
        
        while (ppuVar1 = (_reslist_node<T>*)unk4, ppuVar2 != ppuVar1) {
            ppuVar1 = ppuVar2->next;
            func_8049CB6C((u32*)&ppuVar2->item);
            func_8049CB70((u32*)ppuVar2);
            ppuVar2 = ppuVar1;
        }
    
        ppuVar1->next = ppuVar1;
        *unk4 = (_reslist_node<T>*)unk4;
    }

    void func_8049CB70(u32* ptr){
        *ptr = 0;
    }

	_reslist_node<T>** unk4; //points to unk8
	_reslist_node<T>* unk8; //pointer to start node?
	_reslist_node<T>* unkC; //pointer to end node?
	void* unk10;
	_reslist_node<T>* mList; //0x14
	u32 unk18;
	u32 unk1C;
};

template <typename T>
class reslist : public _reslist_base<T> {
public:
	reslist(){
	}
	virtual ~reslist(){
	}
	void remove(const T&);
	void push_back(const T&);
	void begin();
	void end();

};
