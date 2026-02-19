#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/core/CProc.hpp"

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
    virtual ~CDesktop();

    DECL_WORKTHREAD_CREATE(CDesktop);

    static CDesktop* getInstance();
    static void entryTable(DESKTOP_ICON_DEF*, u32);
    static CView* getView();

    //0x0-1EC: CProc
    //0x0: vtable
    u8 unk1EC[0x200 - 0x1EC];

private:
    static CDesktop* spInstance;
};

typedef CDesktop::DESKTOP_ICON_DEF DesktopIcon;
