#include "adx/adxf/adx_fcch.h"
#include "RevoSDK/OS.h"

void ADXF_Ocbi(const void* buf, u32 len){
    DCInvalidateRange(buf, len);
}