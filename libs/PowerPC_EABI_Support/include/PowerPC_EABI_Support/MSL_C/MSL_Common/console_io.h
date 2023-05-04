#ifndef _MSL_CONSOLE_IO_H
#define _MSL_CONSOLE_IO_H

#include <stdio.h>

int __read_console(__file_handle handle, char* buf, size_t* count, __ref_con ref_con);
int __write_console(__file_handle handle, char* buf, size_t* count, __ref_con ref_con);
int __close_console(__file_handle handle);

#endif
