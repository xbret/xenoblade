#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/lib/CLibLayout.hpp"
#include "monolib/UnkClass_8045F564.hpp"
#include "nw4r/lyt/lyt_arcResourceAccessor.h"
#include "nw4r/lyt/lyt_layout.h"

class UnkClass_80451720 {
public:
	UnkClass_80451720(const char*, void*, int);

	u32 unk0;
	void* unk4;
};

class CBattery : public IWorkEvent {
public:
    CBattery(u8 r4);
    virtual ~CBattery();
	void func_802B92A4();
	void func_802B92FC();
	void func_802B9334(void*);
	void func_802B9364();
	void func_802B93E4(u8);
	void func_802B93EC();
	void func_802B94B0();
    virtual bool OnFileEvent(CEventFile* eventFile);
    
    UnkClass_8045F564 unk4;
    UnkClass_80451720* unk14;
    nw4r::lyt::ArcResourceAccessor* accessor; //0x18
    nw4r::lyt::Layout* layout; //0x1C
    bool unk20;
    s8 unk21;
    bool unk22;
    char pad23[1];
    u8 unk24;
};
