#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/reslist.hpp"
#include "monolib/CMsgParam.hpp"

using namespace ml;

//size: 0x1C4
class CWorkThread : public IWorkEvent {
public:
	CWorkThread(const char* name, CWorkThread* workThread, int r6);
	virtual ~CWorkThread();
	virtual void wkUpdate();
	virtual void WorkThreadEvent2(){}
	virtual void WorkThreadEvent3(){}
	virtual bool wkStartup();
	virtual bool wkShutdown();
	virtual bool WorkThreadEvent6(){ return true; }

	void func_80437EF0(u32);
	void func_80438BD8(CWorkThread* r4, u32 r5);
	u32 func_80457CA4(UNKTYPE* r4, u32 r5);

    inline bool CWorkThread_inline1() const {
        bool r0_1 = (unk7C & 0x10) ? true : (unk80.someInline() >= 0);
	    return (!r0_1 && (unk48 == 2 || unk48 == 3));
    }

	//0x0: vtable
	FixStr<64> name; //0x4
	int unk48;
	u32 unk4C;
	u32 unk50;
	u32 unk54;
	u32 unk58;
	reslist<CWorkThread*> workThreadList; //0x5C
	u32 unk7C;
	CMsgParam<8> unk80;
	u32 unk1BC;
	u32 unk1C0;
};

u32 func_804385A8(u32 r3);
