#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/reslist.hpp"

using namespace ml;

//size: 0x1C4
class CWorkThread : public IWorkEvent {
public:
	CWorkThread(const char* name, CWorkThread* workThread, int r6);
	virtual ~CWorkThread();
	virtual void wkUpdate();
	virtual void WorkThreadEvent2(){}
	virtual void WorkThreadEvent3(){}
	virtual bool WorkThreadEvent4();
	virtual bool WorkThreadEvent5();
	virtual bool WorkThreadEvent6(){ return true; }

	void func_80437EF0(u32);
	void func_80438BD8(CWorkThread* r4, u32 r5);
	u32 func_80457CA4(UNKTYPE* r4, u32 r5);

	inline int CWorkThread_inline1() const {

		for(int i = 0; i < unk1AC; i++){
			if(unk1A4[((unk1A8 + i) % unk1B0) * 9] == 2){
				return i;
            }
		}

		return -1;
	}
    inline bool CWorkThread_inline2() const {
        bool r0_1 = (unk7C & 0x10) ? true : (CWorkThread_inline1() >= 0);
	    return (!r0_1 && (unk48 == 2 || unk48 == 3));
    }

	//0x0: vtable
	FixStr<64> name; //0x4
	int unk48;
	u32 unk4C;
	u32 unk50;
	u32 unk54;
	u32 unk58;
	reslist<CWorkThread*> unk5C;
	u32 unk7C;
	u32 unk80;
	u8 unk84[0xA0 - 0x84];
	u8 unkA0[0x1A4 - 0xA0];
	u32* unk1A4;
	u32 unk1A8;
	u32 unk1AC;
	u32 unk1B0;
	u32 unk1B4;
	u32 unk1B8;
	u32 unk1BC;
	u32 unk1C0;
};

u32 func_804385A8(u32 r3);
