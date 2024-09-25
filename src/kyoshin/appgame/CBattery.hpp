#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/CFileHandle.hpp"
#include "monolib/lib/CLibLayout.hpp"
#include "monolib/UnkClass_8045F564.hpp"
#include <nw4r/lyt/lyt_arcResourceAccessor.h>
#include <nw4r/lyt/lyt_layout.h>
#include <nw4r/lyt/lyt_pane.h>

class CBattery : public IWorkEvent {
public:
    CBattery(u8 batteryLevel);
    virtual ~CBattery();
	void func_802B92A4();
	void func_802B92FC();
	void func_802B9334(void*);
	void func_802B9364();
	void setBatteryLevel(u8 level);
	void updateBatteryImage();
	void func_802B94B0();
    virtual bool OnFileEvent(CEventFile* eventFile);
    
    UnkClass_8045F564 unk4;
    CFileHandle* mFileHandle;
    nw4r::lyt::ArcResourceAccessor* mAccessor; //0x18
    nw4r::lyt::Layout* mLayout; //0x1C
    bool unk20;
    s8 unk21;
    bool unk22;
    char pad23[1];
    u8 mBatteryLevel; //0x24
};
