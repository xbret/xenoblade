#pragma once

#include "types.h"

struct WorkThreadSystem {
	static int getHeapIndex();
};

class CEventFile {
public:
	int unk0;
	u32 unk4;
};

//Interface for work events, which most classes that do any types of tasks seem to inherit.
class IWorkEvent {
public:
    virtual ~IWorkEvent(){}
    virtual bool WorkEvent1(){ return false; }
    virtual bool OnFileEvent(CEventFile* eventFile){ return false; }
    virtual bool WorkEvent3(){ return false; }
    virtual bool WorkEvent4(){ return false; }
    virtual void WorkEvent5(UNKTYPE* r4){}
    virtual bool WorkEvent6(){ return false; }
    virtual bool WorkEvent7(){ return false; }
    virtual bool WorkEvent8(){ return false; }
    virtual bool WorkEvent9(){ return false; }
    virtual bool WorkEvent10(){ return false; }
    virtual bool WorkEvent11(){ return false; }
    virtual bool WorkEvent12(){ return false; }
    virtual bool WorkEvent13(){ return false; }
    virtual bool WorkEvent14(){ return false; }
    virtual bool WorkEvent15(){ return false; }
    virtual bool WorkEvent16(){ return false; }
    virtual bool WorkEvent17(){ return false; }
    virtual bool WorkEvent18(){ return false; }
    virtual bool WorkEvent19(){ return false; }
    virtual bool WorkEvent20(){ return false; }
    virtual bool WorkEvent21(){ return false; }
    virtual bool WorkEvent22(){ return false; }
    virtual bool WorkEvent23(){ return false; }
    virtual bool WorkEvent24(){ return false; }
    virtual bool WorkEvent25(){ return false; }
    virtual bool WorkEvent26(){ return false; }
    virtual bool WorkEvent27(){ return false; }
    virtual bool WorkEvent28(){ return false; }
    virtual bool WorkEvent29(){ return false; }
    virtual bool WorkEvent30(){ return false; }
    virtual void WorkEvent31(){}
};
