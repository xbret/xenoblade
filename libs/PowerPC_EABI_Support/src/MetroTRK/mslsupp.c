#include "PowerPC_EABI_Support/MetroTRK/target_options.h"
#include "PowerPC_EABI_Support/MetroTRK/targsupp.h"
#include "PowerPC_EABI_Support/MetroTRK/mslsupp.h"



DSIOResult __read_console(__file_handle handle, ui8* buffer, size_t* count, __ref_con ref_con){
    if(GetUseSerialIO() == 0) return kDSIOError;
    return __read_file(0, buffer, count, ref_con);
}

DSIOResult __TRK_write_console(__file_handle handle, ui8* buffer, size_t* count, __ref_con ref_con){
    if(GetUseSerialIO() == 0) return kDSIOError;
    return __write_file(1, buffer, count, ref_con);
}

DSIOResult __read_file(__file_handle handle, ui8* buffer, size_t* count, __ref_con ref_con){
    return __access_file(handle, buffer, count, ref_con, kDSReadFile);
}

DSIOResult __write_file(__file_handle handle, ui8* buffer, size_t* count, __ref_con ref_con){
    return __access_file(handle, buffer, count, ref_con, kDSWriteFile);
}

//unused
DSIOResult __open_file(){
}

//unused
DSIOResult __close_file(){
}

//unused
int __position_file(){
}

//unused
int convertFileMode(){
}

DSIOResult __access_file(__file_handle handle, ui8* buffer, size_t* count, __ref_con ref_con, MessageCommandID id){
    size_t countTemp;
    ui32 r0;

    if(!GetTRKConnected()) return kDSIOError;

    countTemp = *count;
    r0 = TRKAccessFile(id, handle, &countTemp, buffer);
    *count = countTemp;

    switch((ui8)r0){
        case kDSIONoError:
            return kDSIONoError;
        case kDSIOEOF:
            return kDSIOEOF;
        default:
            return kDSIOError;
    }
}

//unused
int __open_temp_file(){
}
