#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/core/CProc.hpp"
#include "monolib/core/CProcRoot.hpp"
#include "monolib/core/CView.hpp"
#include "monolib/math.hpp"

//Forward declarations
namespace {
    class CDesktopBackGround;
    class CDesktopException;
};

class CDesktop : public CProc {
public:
    // Struct for a "desktop icon", which defines a function to be run through CDesktop.
    struct DESKTOP_ICON_DEF {
        const char* mName;
        void (*startFunc)();
        u32 unk8;
        u32 unkC;
    };

    CDesktop(const char* pName, CWorkThread* pWorkThread);
    virtual ~CDesktop();
    virtual void wkUpdate();
    virtual void wkRender();
    virtual void wkRenderAfter();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    virtual bool OnFileEvent(CEventFile* pFile);
    virtual bool WorkEvent3(void* pThing);

    DECL_WORKTHREAD_CREATE(CDesktop);

    static CDesktop* getInstance();
    static CView* getView();
    static CDesktopException* getException();
    static void entryTable(DESKTOP_ICON_DEF* pIcon, bool state);
    static void setAppException(int r3);

    //0x0-1EC: CProc
    //0x0: vtable
    ml::CCol4 unk1EC;
    CView* mView; //0x1FC

private:
    static CDesktop* spInstance;
    static DESKTOP_ICON_DEF* spIcon;
    static bool sIconInitialized;
};

typedef CDesktop::DESKTOP_ICON_DEF DesktopIcon;

namespace {
    class CDesktopBackGround : public CProc {
    public:
        friend class CDesktop;

        CDesktopBackGround(const char* pName, CWorkThread* pParent) : CProc(pName, pParent, 8) {
            spInstance = this;
        }
        virtual ~CDesktopBackGround();

        DECL_WORKTHREAD_CREATE(CDesktopBackGround);

        virtual bool wkStandbyLogout(){
            return hasChild(this) ? false : CProc::wkStandbyLogout();
        }

    private:
        u32 unk1EC;

        static CDesktopBackGround* spInstance;
    };

    class CDesktopException : public CProc {
    public:
        friend class CDesktop;

        CDesktopException(const char* pName, CWorkThread* pParent) : CProc(pName, pParent, 64) {
            spInstance = this;
        }
        virtual ~CDesktopException();

        DECL_WORKTHREAD_CREATE(CDesktopException);

        virtual bool wkStandbyLogout(){
            return hasChild(this) ? false : CProc::wkStandbyLogout();
        }

    private:
        u32 unk1EC;

        static CDesktopException* spInstance;
    };
}; //namespace
