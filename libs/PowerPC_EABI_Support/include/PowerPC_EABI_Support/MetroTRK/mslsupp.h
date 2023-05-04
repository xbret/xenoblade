#ifndef _TRK_MSLSUPP_H
#define _TRK_MSLSUPP_H

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include <stdio.h>

DSIOResult __read_console(__file_handle, char*, size_t*, __ref_con);
DSIOResult __read_file(__file_handle, char*, size_t*, __ref_con);
DSIOResult __write_file(__file_handle, char*, size_t*, __ref_con);
DSIOResult __access_file(__file_handle, char*, size_t*, __ref_con, MessageCommandID);

#endif
