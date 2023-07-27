#ifndef _TRK_MSLSUPP_H
#define _TRK_MSLSUPP_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include <stdio.h>

#ifdef __cplusplus
extern "C"{
#endif

DSIOResult __read_console(__file_handle, ui8*, size_t*, __ref_con);
DSIOResult __read_file(__file_handle, ui8*, size_t*, __ref_con);
DSIOResult __write_file(__file_handle, ui8*, size_t*, __ref_con);
DSIOResult __access_file(__file_handle, ui8*, size_t*, __ref_con, MessageCommandID);

#ifdef __cplusplus
}
#endif
#endif
