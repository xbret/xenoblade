#include "revolution/OS.h"
#include "revolution/NAND.h"

static s32 CheckSum(s32* array){
    s32* var_r8 = array + 1;
    s32 total = 0;
    
    for(s32 i = 0; i < 0x407; i++){
        total += *var_r8;
        var_r8++;
    };

    return total;
}

BOOL __OSCreateNandbootInfo(void) {
    NANDStatus status;
    NANDResult result = NANDPrivateGetStatus("/shared2/sys/NANDBOOTINFO", &status);
    
    if (result == NAND_RESULT_OK && status.perm == 0x3F) {
        return TRUE;
    }
    
    if(result == NAND_RESULT_OK && status.perm != 0x3F) {
        if (NANDPrivateDelete("/shared2/sys/NANDBOOTINFO")) {
            return FALSE;
        }
    }else if (result != NAND_RESULT_NOEXISTS) {
        return FALSE;
    }
        
    if (NANDPrivateCreate("/shared2/sys/NANDBOOTINFO", 0x3F, 0)) {
        return FALSE;
    }
    
    return TRUE;
}

BOOL __OSWriteNandbootInfo(s32* arg0) {
    NANDFileInfo fileInfo;
    
    s32 checksum = CheckSum(arg0);
    *arg0 = checksum;
    
    if (NANDPrivateOpen("/shared2/sys/NANDBOOTINFO", &fileInfo, 2U) == NAND_RESULT_OK) {
        if (NANDWrite(&fileInfo, arg0, 0x1020U) != 0x1020U) {
            NANDClose(&fileInfo);
            return FALSE;
        }
        return NANDClose(&fileInfo) == NAND_RESULT_OK;
    }
    return FALSE;
}
