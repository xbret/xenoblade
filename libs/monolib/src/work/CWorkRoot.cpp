#include "monolib/work.hpp"
#include "monolib/math.hpp"
#include "monolib/util.hpp"
#include "monolib/device.hpp"
#include "monolib/lib.hpp"
#include <revolution/OS.h>
#include <revolution/VI.h>

extern void SetOSErrorHandlers1();
extern void SetOSErrorHandlers2();
//Possibly member of CWorkThread?
extern bool func_80439AD4(CWorkThread* pThread);

namespace {
    class CWorkRootThread : public CWorkThread {
    public:
        friend class CWorkRoot;

        CWorkRootThread(const char* pName, CWorkThread* pThread) : CWorkThread(pName, pThread, 32) {
            mThreadList1.reserve(mAllocHandle, 16);
            mThreadList2.reserve(mAllocHandle, 16);
        }

        static void create(const char* pName, CWorkThread* pThread){
            CWorkRootThread* thread = new (CWorkThreadSystem::getWorkMem()) CWorkRootThread(pName, pThread);
            CWorkUtil::entryWork(thread, nullptr, 0);
            spInstance = thread;
        }

        static CWorkRootThread* getInstance(){
            return spInstance;
        }

        virtual bool wkStandbyLogout(){
            if(func_80439AD4(this)) return false;
            return CWorkThread::wkStandbyLogout(); //Call base
        }

        //0x0: vtable
        //0x0-1C4: CWorkThread
        reslist<CWorkThread*> mThreadList1; //0x1C4
        reslist<CWorkThread*> mThreadList2; //0x1E4
        u32 unk204;

    private:
        static CWorkRootThread* spInstance;
    };

    CWorkRootThread* CWorkRootThread::spInstance;
}

//Exit mode value that determines what to do when exit is called.
CWorkRoot::ExitMode CWorkRoot::sExitMode;
static u8 lbl_8065A0E8[0x10];
static u8 lbl_8065A0F8[0x300];

void CWorkRoot::initialize(){
    sExitMode = EXIT_PROG_END;
    //Initialize GQR registers
    ml::initFastCast();
    //Initialize VI
    VIInit();
    //Create root thread
    CWorkRootThread::create("CWorkRoot", nullptr);
}

void CWorkRoot::destroy(){
    VISetPreRetraceCallback(nullptr);
    if(CWorkRootThread::spInstance != nullptr){
        delete CWorkRootThread::spInstance;
        CWorkRootThread::spInstance = nullptr;
    }
}

/* Adds a thread as a child to another thread. If the parent thread is null, it is instead added
as a child to the root thread as long as it isn't null. */
void CWorkRoot::entryWork(CWorkThread* pChild, CWorkThread* pParent, bool dontNotify){
    if(pParent != nullptr){
        pParent->wkEntryChild(pChild, dontNotify);
    }else if(CWorkRootThread::spInstance != nullptr){
        CWorkRootThread::spInstance->wkEntryChild(pChild, dontNotify);
    }
}

bool CWorkRoot::isThreadRunning(CWorkThread* pThread){
    return pThread->isRunning();
}

void CWorkRoot::standbyWork(CWorkThread* pThread, bool arg1){

}

bool CWorkRoot::update(){
    if(CDeviceClock::getInstance() != nullptr){
        CDeviceClock::func_8044DF8C();
    }

    if(CDeviceVI::getInstance() != nullptr){
        CDeviceVI::func_80448878();
    }

    CWorkRoot::func_8044406C();
    //Update all threads, starting from the root thread
    updateWork(CWorkRootThread::spInstance, false);

    if(CDeviceVI::getInstance() != nullptr){
        CDeviceVI::func_80448A84();
    }

    return func_80439AD4(CWorkRootThread::spInstance) ? false : true;
}

void CWorkRoot::exit(){
    //Check the current exit mode to determine how to handle the program stopping.
    if(sExitMode == EXIT_WII_MENU){
        //Exit to Wii menu
        OSReport("exit wii menu\n");
        OSReturnToMenu();
    }else if(sExitMode == EXIT_RESTART){
        //Restart the game
        OSReport("exit wii reset\n");
        OSRestart(0);
    }else if(sExitMode == EXIT_SHUTDOWN){
        //Shutdown the console
        OSReport("exit wii power off\n");
        OSShutdownSystem();
    }else{
        /* If still set to the default mode, just exit without doing anything.
        This probably was what was used during debugging. */
        OSReport("exit prog end\n");
    }
}

//Main function
void CWorkRoot::run(){
    //Initialize components
    mtl::MemManager::initialize();
    SetOSErrorHandlers1();
    CDevice::createRegions();
    CWorkThreadSystem::initialize();
    CWorkRoot::initialize();
    CWorkControl::create(CWorkRootThread::spInstance);
    CDevice::create();
    CLib::create();
    CWorkSystem::create();
    
    //Wait for all devices to be initialized?
    do {
        CWorkRoot::func_8044406C();
    } while(CDevice::getInstance() == nullptr || CDevice::func_8044D248());

    //Set pre retrace callback
    VISetPreRetraceCallback(preRetraceCallback);

    //Run the main update function
    while(CWorkRoot::update() != false){
    }

    //Cleanup components
    CWorkRoot::destroy();
    CWorkThreadSystem::destroy();
    CDevice::deleteRegions();
    SetOSErrorHandlers2();
    mtl::MemManager::finalize();

    //Stop the program
    exit();
}

void CWorkRoot::preRetraceCallback(u32 retraceCount){
    //This function does nothing. Might've been stubbed?
    CDeviceVI::func_80448D10();
}
