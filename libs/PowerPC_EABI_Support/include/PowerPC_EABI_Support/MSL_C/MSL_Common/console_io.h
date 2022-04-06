#ifndef _MSL_CONSOLE_IO_H
#define _MSL_CONSOLE_IO_H

#include <stdio.h>
#include "types.h"

int __read_console(__file_handle handle, u8* buffer, size_t* count, __ref_con ref_con);
int __write_console(__file_handle handle, u8* buffer, size_t* count, __ref_con ref_con);
int __close_console(__file_handle handle);

#endif
