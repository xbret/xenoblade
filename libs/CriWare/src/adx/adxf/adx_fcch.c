#include "adx/adxf/adx_fcch.h"
#include "revolution/OS.h"

void ADXF_Ocbi(const void* buf, u32 len){
    DCInvalidateRange(buf, len);
}
