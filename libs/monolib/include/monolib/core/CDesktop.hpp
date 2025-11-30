#pragma once

#include <types.h>
#include <monolib/monolib_types.hpp>
#include <monolib/work.hpp>

class CDesktop : public CProc {
public:
    // Struct for a "desktop icon", which defines a function to be run through CDesktop.
    struct DESKTOP_ICON_DEF {
        const char* mName;
        void (*function)();
        u32 unk8;
        u32 unkC;
    };

    CDesktop(const char* pName, CWorkThread* pWorkThread);

    static CDesktop* getInstance();
    static void entryTable(DESKTOP_ICON_DEF*, u32);
};

typedef CDesktop::DESKTOP_ICON_DEF DesktopIcon;

//Not sure if this is CView. It at least inherits from CWorkThread
extern CWorkThread* func_80455AA0();
