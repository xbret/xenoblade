#pragma once

#include "types.h"

//size: 0x24
struct CMsgParamEntry{
	u32 unk0;
	u8 unk4[0x20];
};

template <int N>
class CMsgParam{
public:
	CMsgParam(u32 r4){
		mSize = N;
		mArrayPtr = mEntries;
		field4 = 0;
		field3 = 0;
		field6 = 0;
		field7 = r4;
	}
	virtual ~CMsgParam(){
	}

	inline int someInline() const {
		for(int i = 0; i < field4; i++){
			if(mArrayPtr[(field3 + i) % mSize].unk0 == 2){
				return i;
			}
		}

		return -1;
	}

	//0x0: vtable
	CMsgParamEntry mEntries[N]; //0x4
	CMsgParamEntry* mArrayPtr;
	u32 field3;
	u32 field4;
	u32 mSize;
	u32 field6;
	u32 field7;
};
