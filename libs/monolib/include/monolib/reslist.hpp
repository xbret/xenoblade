#pragma once

#include "types.h"


extern void func_8049CAF4();
extern void func_8049CB6C(u32*);

template <typename T>
class _reslist_base{
public:
	_reslist_base(){
		mList = nullptr;
		unk18 = 0;
		unk1C = 0;
		unk4 = (u32*)&unk8;
		*unk8 = (u32)&unk8;
		unkC = (u32*)&unk8;
	}

	virtual ~_reslist_base(){
        func_8049CAF4();
        if (unk1C == 0 && mList != nullptr) {
            delete[](this->mList);
            mList = nullptr;
        }
	}

    void func_8049CAF4(){
        u32* ppuVar1;
        u32* ppuVar2;
    
        ppuVar2 = (u32*)*unk4;
        
        while (ppuVar1 = unk4, ppuVar2 != ppuVar1) {
            ppuVar1 = (u32*)*ppuVar2;
            func_8049CB6C(ppuVar2 + 2);
            func_8049CB70(ppuVar2);
            ppuVar2 = ppuVar1;
        }
    
        *ppuVar1 = (u32)ppuVar1;
        unk4[1] = (u32)unk4;
    }

    void func_8049CB70(u32* ptr){
        *ptr = 0;
    }

	u32* unk4;
	u32* unk8;
	u32* unkC;
	void* unk10;
	T* mList; //0x14
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
};
