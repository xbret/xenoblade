#ifndef _MSL_ANSI_FILES_H
#define _MSL_ANSI_FILES_H

#include "types.h"
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#define console_buff_mode _IOLBF
#define console_buff_size 256
	
typedef unsigned char console_buff[console_buff_size];
	
static console_buff	stdin_buff;
static console_buff	stdout_buff;
static console_buff	stderr_buff;

void __close_all();
u32 __flush_all();

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
