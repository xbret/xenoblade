#pragma once

#include "types.h"
#include "monolithlib/IWorkEvent.hpp"

class Class_8045F564{
public:
	int unk0;
	u32 unk4;
	u32 unk8;
	u32 unkC;

	Class_8045F564(){
		unk0 = -1;
		unk4 = 0;
		unk8 = 0;
		unkC = 0;
	}

	~Class_8045F564(){
		
	}
};

class Class_8045F858{
public:
	void* unk0;
	u32 unk4;

	Class_8045F858(Class_8045F564* unkClass){

	}
};

class CBattery : public IWorkEvent {
public:
    CBattery();

    //vtable
    virtual ~CBattery(); //0x8
    virtual bool OnFileEvent();

    //Variables
    u8 unk4[0x10];
    int unk14;
    int unk18;
    int unk1C;
    u8 unk20;
    u8 unk21;
    u8 unk22;
    u8 unk23;
    u8 unk24;
};
