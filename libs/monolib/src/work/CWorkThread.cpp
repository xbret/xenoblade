#include "monolib/work/CWorkThread.hpp"

#include "monolib/device/CDeviceClock.hpp"
#include "monolib/work/CWorkControl.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkThreadUtil.hpp"

#include <cstring>

CWorkThread::CWorkThread(const char* name, CWorkThread* parent, int capacity)
    : mState(THREAD_STATE_NONE),
      mWorkID(INVALID_WORK_ID),
      unk50(0),
      mParent(parent),
      mFlags(0),
      mMsgQueue(0),
      unk1BC(0),
      mExceptionWorkID(INVALID_WORK_ID) {

    mAllocHandle = CWorkThreadSystem::sAllocHandle;
    mName = name;
    mWorkID = CWorkThreadSystem::allocWID(this);

    if (capacity > 0) {
        mChildren.initList(capacity, mAllocHandle);
    }

    if (parent != nullptr && parent->CWorkThread_inline2()) {
        mFlags |= THREAD_FLAG_5;
    }

    if (parent != nullptr && (parent->mFlags & THREAD_FLAG_6)) {
        mFlags |= THREAD_FLAG_6;
    }

    if (parent != nullptr && (parent->mFlags & THREAD_FLAG_7)) {
        mFlags |= THREAD_FLAG_7;
    }

    if (parent != nullptr && (parent->mFlags & THREAD_FLAG_9)) {
        mFlags |= THREAD_FLAG_9;
    }

    if (parent != nullptr && (parent->mFlags & THREAD_FLAG_8)) {
        mFlags |= THREAD_FLAG_8;
    }

    if (parent != nullptr && (parent->mFlags & THREAD_FLAG_10)) {
        mFlags |= THREAD_FLAG_10;
    }

    if (parent != nullptr && (parent->mFlags & THREAD_FLAG_0)) {
        mFlags |= THREAD_FLAG_0;
    }
}

CWorkThread::~CWorkThread() {
    if (!mChildren.empty()) {
        for (reslist<CWorkThread*>::iterator it = mChildren.begin();
             it != mChildren.end(); it++) {
            // Do nothing???
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

void CWorkThread::wkEntryChild(CWorkThread* parent, bool dontNotify) {
    if (dontNotify) {
        mChildren.push_back(parent);
    } else {
        mChildren.push_back(parent);
        parent->mParent = this;
    }
}

void CWorkThread::wkRemoveChild(CWorkThread* child) {
    mChildren.remove(child);
}

void CWorkThread::wkSetEvent(EVT evt) {
    if (evt == EVT_NONE) {
        mFlags |= THREAD_FLAG_0;
    } else {
        mMsgQueue.enqueue(evt);
    }

    wkSetEventChild(evt);
}

void CWorkThread::wkSetEventChild(EVT evt) {
    for (reslist<CWorkThread*>::iterator it = mChildren.begin();
         it != mChildren.end(); it++) {
        (*it)->wkSetEvent(evt);
    }
}

bool CWorkThread::wkCheckTimeout(u32 timeOut, bool arg1, const char* pName) {
    CDeviceClock* pDevClock = CDeviceClock::getInstance();
    if (pDevClock == nullptr || (!pDevClock->func_8044DEE0() && !arg1)) {
        return false;
    }

    if (mFlags & THREAD_FLAG_1) {
        return true;
    }

    if (mState != THREAD_STATE_INIT && mState != THREAD_STATE_LOGIN &&
        mState != THREAD_STATE_RUN) {
        return true;
    }

    if (timeOut == 0) {
        wkSetEvent(EVT_1);
        CWorkThreadUtil::func_80438B00(CWorkControl::getInstance());
        return true;
    }

    return arg1;
}

bool CWorkThread::wkIsCurrent() const {
    if (mParent != nullptr) {
        return this == mParent->wkGetChild();
    }

    return true;
}

CWorkThread* CWorkThread::getWorkThread(WORK_ID wid) {
    if (wid == INVALID_WORK_ID) {
        return nullptr;
    }

    return CWorkThreadSystem::sWorkThreads[wid];
}

void CWorkThread::func_804385CC(u32) {}

void CWorkThread::wkTimeoutInit() {
    (void)CDeviceClock::getInstance();
}

bool CWorkThread::wkStandbyInit() {
    mState = THREAD_STATE_INIT;
    wkTimeoutInit();
    return true;
}

bool CWorkThread::wkStandbyRun() {
    if (mFlags & THREAD_FLAG_0) {
        mState = THREAD_STATE_RUN;
        wkTimeoutInit();
    }

    return mState == THREAD_STATE_RUN;
}

bool CWorkThread::wkStandbyShutdown() {
    mState = THREAD_STATE_SHUTDOWN;
    wkTimeoutInit();
    return true;
}

void CWorkThread::wkStandby() {
    mFlags &= 0xFFFF;

    while (!mMsgQueue.empty()) {
        switch (mMsgQueue.front().command) {
        case EVT_1: {
            mFlags |= THREAD_FLAG_1;
            break;
        }

        case EVT_EXCEPTION: {
            mFlags |= THREAD_FLAG_EXCEPTION;
            mExceptionWorkID = mMsgQueue.front().wid;
            break;
        }

        case EVT_3: {
            mFlags |= THREAD_FLAG_5;
            break;
        }

        case EVT_4: {
            mFlags |= THREAD_FLAG_6;
            break;
        }

        case EVT_5: {
            mFlags |= THREAD_FLAG_7;
            OnPauseTrigger(true);
            break;
        }

        case EVT_6: {
            mFlags &= ~THREAD_FLAG_7;
            OnPauseTrigger(false);
            break;
        }

        case EVT_7: {
            if (!(mFlags & THREAD_FLAG_8)) {
                mFlags |= THREAD_FLAG_9;
            }
            break;
        }

        case EVT_8: {
            if (!(mFlags & THREAD_FLAG_8)) {
                mFlags &= ~THREAD_FLAG_9;
            }
            break;
        }

        case EVT_10: {
            mFlags |= THREAD_FLAG_10;
            OnPauseTrigger(true);
            break;
        }

        case EVT_11: {
            mFlags &= ~THREAD_FLAG_10;
            OnPauseTrigger(false);
            break;
        }

        case EVT_9: {
            mFlags |= THREAD_FLAG_8;
            break;
        }
        }

        mMsgQueue.pop();
    }

    if (!(mFlags & THREAD_FLAG_EXCEPTION)) {
        switch (mState) {
        case THREAD_STATE_NONE: {
            if (!wkStandbyInit()) {
                break;
            }

            // FALLTHROUGH
        }

        case THREAD_STATE_INIT: {
            if (mFlags & THREAD_FLAG_0) {
                mState = THREAD_STATE_LOGIN;
                wkTimeoutInit();
            } else if (!wkStartup()) {
                break;
            }

            // FALLTHROUGH
        }

        case THREAD_STATE_LOGIN: {
            if (!wkStandbyRun()) {
                break;
            }

            // FALLTHROUGH
        }

        case THREAD_STATE_RUN: {
            if (!wkShutdown()) {
                break;
            }

            // FALLTHROUGH
        }

        case THREAD_STATE_LOGOUT: {
            wkStandbyShutdown();

            // FALLTHROUGH
        }

        case THREAD_STATE_SHUTDOWN:
        default: {
            break;
        }
        }
    } else {
        if (wkException(mExceptionWorkID)) {
            CWorkThread* pExceptionThread = getWorkThread(mExceptionWorkID);

            if (pExceptionThread != nullptr) {
                pExceptionThread->wkSetEvent(EVT_NONE);
            }

            mExceptionWorkID = INVALID_WORK_ID;
            mFlags &= ~THREAD_FLAG_EXCEPTION;
        }
    }
}

bool CWorkThread::wkStartup() {
    mState = THREAD_STATE_LOGIN;
    wkTimeoutInit();
    return true;
}

bool CWorkThread::wkShutdown() {
    mState = THREAD_STATE_LOGOUT;
    wkTimeoutInit();
    return true;
}

void CWorkThread::wkUpdate() {}

CWorkThread* CWorkThread::getWorkThread(const char* name) {
    if (name == nullptr) {
        return nullptr;
    }

    if (mName == name) {
        return this;
    }

    for (reslist<CWorkThread*>::iterator it = mChildren.begin();
         it != mChildren.end(); it++) {

        CWorkThread* result = (*it)->getWorkThread(name);

        if (result != nullptr && result->mState != THREAD_STATE_SHUTDOWN) {
            return result;
        }
    }

    return nullptr;
}
