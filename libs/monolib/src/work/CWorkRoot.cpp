#include "monolib/core.hpp"
#include "monolib/work.hpp"
#include "monolib/math.hpp"
#include "monolib/util.hpp"
#include "monolib/device.hpp"
#include "monolib/lib.hpp"
#include <revolution/OS.h>
#include <revolution/VI.h>

extern void func_80454E6C();

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
            CWorkUtil::entryWork(thread, nullptr, false);
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

//Exit mode value that determines what to do when exit is called
CWorkRoot::ExitMode CWorkRoot::sExitMode;
CException* CWorkRoot::sException;
//Unused in release
CErrorWii CWorkRoot::sErrorWii;

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
void CWorkRoot::entryWork(CWorkThread* pChild, CWorkThread* pParent, bool prepend){
    if(pParent != nullptr){
        pParent->wkEntryChild(pChild, prepend);
    }else if(CWorkRootThread::spInstance != nullptr){
        CWorkRootThread::spInstance->wkEntryChild(pChild, prepend);
    }
}

//Forces isRunning inline to emit here
bool CWorkRoot::dummy1(CWorkThread* pThread){
    return pThread->isRunning();
}

void CWorkRoot::standbyWork(CWorkThread* pThread, bool arg1){
    reslist<CWorkThread*>* children = &pThread->mChildren;
    
    //Something is sus here
    if(!(arg1 ^ pThread->CWorkThread_inline2())){
        pThread->wkStandby();

        //Recursively call standbyWork on this thread's children
        for(reslist<CWorkThread*>::iterator it = children->begin(); it != children->end(); it++){
            CWorkThread* childThread = *it;
            standbyWork(childThread, arg1);
        }
    }

    //Remove all child threads in the shutdown state
    do{
        bool foundShutdownThread = false;
        
        for(reslist<CWorkThread*>::iterator it = children->begin(); it != children->end(); it++){
            CWorkThread* childThread = *it;
            if(childThread->mState == CWorkThread::THREAD_STATE_SHUTDOWN){
                /* Instead of returning here and going through the list again, why not just keep the
                next entry in the list for after the current entry gets removed to continue from? */
                pThread->wkRemoveChild(childThread);
                if(childThread != nullptr){
                    delete childThread;
                    childThread = nullptr;
                }

                foundShutdownThread = true;
                break;
            }
        }

        //If a thread not in the shutdown state was found, return
        if(!foundShutdownThread) break;
    }while(true);
}

void CWorkRoot::updateWork(CWorkThread* pThread, bool arg1){
    if(!(arg1 ^ pThread->CWorkThread_inline2())){
        if(pThread->isRunning()){
            bool r4 = !(pThread->isThreadFlag7And6() || pThread->isThreadFlag9AndNot8() || pThread->isThreadFlag10());

            if(r4 || pThread->isThreadFlag0()){
                pThread->wkUpdate();
            }
        }

        reslist<CWorkThread*>* children = &pThread->mChildren;

        //Recursively call updateWork on this thread's children
        for(reslist<CWorkThread*>::iterator it = children->begin(); it != children->end(); it++){
            CWorkThread* childThread = *it;
            updateWork(childThread, arg1);
        }
    }
}

void CWorkRoot::func_8044406C(){
    CWorkRootThread* thread = CWorkRootThread::getInstance();
    //Clear both thread lists
    while(thread->mThreadList1.size() > 0){
        //TODO: can these be changed to use front?
        CWorkThread* list2Front;
        CWorkThread* list1Front = *thread->mThreadList1.begin();
        list2Front = *thread->mThreadList2.begin();

        thread->mThreadList1.pop_front();
        thread->mThreadList2.pop_front();

        if(list1Front->isRunning() && list2Front->isRunning()){
            list1Front->mParent->wkRemoveChild(list1Front);
            list2Front->mParent = list1Front;
        }
    }

    thread->mThreadList1.clear();
    thread->mThreadList2.clear();
    standbyWork(CWorkRootThread::getInstance(), false);
}

void CWorkRoot::func_80444154(){
    if(CDeviceGX::getInstance() != nullptr){
        CDeviceGX::func_8045579C();
    }

    if(!CWorkSystem::isOff()){
        if(CViewRoot::getInstance() != nullptr){
            CViewRoot::func_804430C4();
        }

        if(sException != nullptr){
            sException->wkRender();
        }
    }

    func_80454E6C();
}

bool CWorkRoot::unkInline1(){
    return func_80439AD4(CWorkRootThread::spInstance) ? false : true;
}

bool CWorkRoot::runSingle(){
    if(CDeviceClock::getInstance() != nullptr){
        CDeviceClock::func_8044DF8C();
    }

    if(CDeviceVI::getInstance() != nullptr){
        CDeviceVI::beginFrame();
    }

    CWorkRoot::func_8044406C();
    //Update all threads, starting from the root thread
    updateWork(CWorkRootThread::spInstance, false);
    func_80444154();

    if(CDeviceVI::getInstance() != nullptr){
        CDeviceVI::endFrame();
    }

    return unkInline1() ? false : true;
}

void CWorkRoot::exit(){
    //Check the current exit mode to determine how to handle the program stopping
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

inline void CWorkRoot::initializeComponents(){
    mtl::MemManager::initialize();
    CErrorWii::initialize();
    CDevice::createRegions();
    CWorkThreadSystem::initialize();
    CWorkRoot::initialize();
    CWorkControl::create(CWorkRootThread::spInstance);
    CDevice::create();
    CLib::create();
    CWorkSystem::create();
}

inline void CWorkRoot::destroyComponents(){
    CWorkRoot::destroy();
    CWorkThreadSystem::destroy();
    CDevice::deleteRegions();
    CErrorWii::destroy();
    mtl::MemManager::finalize();
}

//Main function
void CWorkRoot::run(){
    //Initialize components
    initializeComponents();
    
    //Wait for all devices to be initialized?
    do {
        func_8044406C();
    } while(CDevice::getInstance() == nullptr || CDevice::func_8044D248());

    //Set pre retrace callback
    VISetPreRetraceCallback(preRetraceCallback);

    //Run the main update function
    while(runSingle() != false){
    }

    //Cleanup components
    destroyComponents();

    //Stop the program
    exit();
}

void CWorkRoot::preRetraceCallback(u32 retraceCount){
    /* This function is stubbed, so there's no way of knowing if the parameter got passed in
    or not */
    CDeviceVI::onPreRetrace();
}

void CWorkRoot::func_8044436C(CException* pException){
    //Why not just = pException??
    sException = pException != nullptr ? pException : nullptr;
}

CException* CWorkRoot::func_80444384(){
    return sException;
}
