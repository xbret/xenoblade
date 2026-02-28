#include "monolib/lib.hpp"
#include "monolib/work.hpp"

CLibHbm* CLibHbm::spInstance;

CLibHbm::CLibHbm(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD),
unk1C4(mtl::INVALID_HANDLE),
unk1C8(0),
unk1CC(0),
unk1D0(0),
unk1D4(0),
unk1D8(0),
unk1DC(0),
unk1E0(0),
unk1E4(0),
unk1E8(0),
unk22C(0),
unk230(0),
unk234(0),
unk258(0),
unk25C(0),
unk260(-1),
unk264(0),
unk265(0){
    spInstance = this;
    mType = THREAD_CLIBHBM;
}

CLibHbm::~CLibHbm(){
    spInstance = nullptr;
}

CLibHbm* CLibHbm::getInstance(){
    return spInstance;
}
