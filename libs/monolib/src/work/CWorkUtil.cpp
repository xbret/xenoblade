#include "monolib/work.hpp"
#include "monolib/util.hpp"

UnkStruct_80438AF0_3* CWorkUtil::func_80438AF0(UnkStruct_80438AF0* arg0){
    return arg0->unk4->unk0;
}

CWorkThread* CWorkUtil::getWorkThread(WORK_ID wid){
    return CWorkThread::getWorkThread(wid);
}

void CWorkUtil::dispTree(const CWorkThread* pThread, int indent){
    if(pThread == nullptr){
        return;
    }

    ml::FixStr<64> text;

    for(int i = 0; i < indent; i++){
        text += " ";
    }

    text += pThread->mName.c_str();

    for(reslist<CWorkThread*>::iterator it = pThread->mChildren.begin(); it != pThread->mChildren.end(); it++){
        dispTree(*it, indent + 1);
    }
}

void CWorkUtil::entryWork(CWorkThread* pChild, CWorkThread* pParent, bool dontNotify){
    if(pChild != nullptr){
        CWorkRoot::entryWork(pChild, pParent, dontNotify);

        if(pParent != nullptr && pParent->isThreadFlag0()){
            pChild->wkSetEvent(CWorkThread::EVT_NONE);
        }
    }
}
