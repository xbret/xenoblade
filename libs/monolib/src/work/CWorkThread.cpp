#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/wroot.hpp"
#include "monolib/device/CDeviceClock.hpp"
#include <cstring>

using namespace wroot;

CWorkThread::CWorkThread(const char* name, CWorkThread* parent, int capacity) :
    unk48(0),
    mWorkID(INVALID_WORK_ID),
    unk50(0),
    mParent(parent),
    mFlags(0),
    mMsgParam(0),
    unk1BC(0),
    unk1C0(0xFFFFFFFF)
{
    mAllocHandle = sAllocHandle;
    mName = name;
    mWorkID = CWorkThreadSystem::allocWID(this);

    //TODO(kiwi) CMsgParam inline here...

    if (capacity > 0) {
        mChildren.initList(capacity, mAllocHandle);
    }

    if (parent != nullptr && (parent->mFlags & 0x40)) {
        mFlags |= 0x40;
    }

    if (parent != nullptr && (parent->mFlags & 0x80)) {
        mFlags |= 0x80;
    }

    if (parent != nullptr && (parent->mFlags & 0x200)) {
        mFlags |= 0x200;
    }

    if (parent != nullptr && (parent->mFlags & 0x100)) {
        mFlags |= 0x100;
    }

    if (parent != nullptr && (parent->mFlags & 0x400)) {
        mFlags |= 0x400;
    }

    if (parent != nullptr && (parent->mFlags & 0x1)) {
        mFlags |= 0x1;
    }
}

CWorkThread::~CWorkThread() {
    if (!mChildren.empty()) {
        for(reslist<CWorkThread*>::iterator it = mChildren.begin(); it != mChildren.end(); it++) {
            //Do nothing???
            ;
        }
    }


    CWorkThreadSystem::freeWID(mWorkID);
}

void CWorkThread::wkReplaceHasChild(int capacity) {
    if (capacity > 0) {
        mChildren.destroyList();
        mChildren.initList(capacity, mAllocHandle);
    }
}

void CWorkThread::wkEntryChild(CWorkThread* parent, bool imTheParent) {
    if (imTheParent) {
        mChildren.push_back(parent);
    } else {
        mChildren.push_back(parent);
        mParent = parent;
    }
}

bool CWorkThread::wkIsCurrent() const {
    if (mParent != nullptr) {
        return this == mParent->wkGetChild();
    }

    return true;
}

void CWorkThread::wkRemoveChild(CWorkThread* child) {
    mChildren.remove(child);
}

void CWorkThread::wkSetEvent(EVT evt) {

}

CWorkThread* CWorkThread::getWorkThread(WORK_ID wid) {
    if (wid == INVALID_WORK_ID) {
        return nullptr;
    }

    return sWorkThreads[wid];
}

void CWorkThread::func_804385CC(u32) {}

void CWorkThread::wkStandby() {
    
}

bool CWorkThread::wkStartup() {
    unk48 = 2;
    (void)CDeviceClock::getInstance();
    return true;
}

bool CWorkThread::wkShutdown() {
    unk48 = 4;
    (void)CDeviceClock::getInstance();
    return true;
}

void CWorkThread::wkUpdate() {}

CWorkThread* CWorkThread::findThreadByName(const char* name) {
    // TODO(kiwi) Limit inline depth
    (void)0;
    (void)0;
    (void)0;

    if (name == nullptr) {
        return nullptr;
    }

    if (mName == name) {
        return this;
    }

    for(reslist<CWorkThread*>::iterator it = mChildren.begin(); it != mChildren.end(); it++) {
        CWorkThread* result = (*it)->findThreadByName(name);

        if (result != nullptr && result->unk48 != 5) {
            return result;
        }
    }

    return nullptr;
}

const char* CWorkThread::getName() const {
    return mName.c_str();
}
