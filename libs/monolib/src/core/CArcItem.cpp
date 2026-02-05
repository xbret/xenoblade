#include "monolib/core.hpp"
#include "monolib/device.hpp"
#include "monolib/util.hpp"
#include <revolution/ARC.h>
#include <cstring>

CArcItem::CArcItem(const char* pFilename) :
unk4(),
unk28(nullptr),
unk2C(0),
unk30(0),
unk34(pFilename),
unk38(nullptr){
    unk28 = CDeviceFile::readFile(mtl::MemManager::getHandleMEM2(), pFilename, this, 0, 0);
    ml::FixStr<64> string = ml::FixStr<64>(false);
    ml::CPathUtil::getNoPathExtName(string, pFilename);
    //This line gets included in the DESTROYBASE extab PC action range
    unk4 = string.c_str();
}

CArcItem::~CArcItem(){
    if(unk28 != nullptr){
        CDeviceFile::cancel(unk28);
    }

    DELETE_OBJ(unk38);
}

void CArcItem::func_804DEC30(){
    if(unk2C == 0){
        //Won't match with ||. Why do it like this?
        if(unk30 != 0) unk2C = 2;
        else if(unk38 != nullptr) unk2C = 2;
    }
}

bool CArcItem::func_804DEC6C(const char* pPath, void** pOutStartAddr, u32* pOutLength){
    if(unk38 == 0 || unk30 != 0) return false;
    s32 entryNum = ARCConvertPathToEntrynum(&mArcHandle, pPath);
    //Return if the entry number is invalid
    if(entryNum < 0) return false;

    ARCFileInfo fileInfo;
    if(ARCFastOpen(&mArcHandle, entryNum, &fileInfo) != false){
        *pOutStartAddr = ARCGetStartAddrInMem(&fileInfo);
        *pOutLength = ARCGetLength(&fileInfo);
        ARCClose(&fileInfo);
        return true;
    }
    
    return false;
}

bool CArcItem::OnFileEvent(CEventFile* pEventFile){
    if(pEventFile->mFileHandle == unk28){
        if(pEventFile->unk0 == true){
            unk38 = unk28->getData();
            if(!ARCInitHandle(unk38, &mArcHandle)){
                unk30 = 1;
            }
        }else{
            unk30 = 1;
        }

        unk28 = 0;
        return true;
    }

    return false;
}
