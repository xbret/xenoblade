#ifndef _PRINTF_H
#define _PRINTF_H

#include "stl/stdarg.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/file_struc.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.h"

void sprintf(void);
void snprintf(void);
void vsnprintf(void);
void vprintf(const char* format, va_list arg);
void fprintf(FILE*, const char* format, ...);
void __StringWrite(void);
void __FileWrite(int, long, int);
void __pformatter(void);
void float2str(void);
void round_decimal(void);
void double2hex(void);
void longlong2str(void);
void long2str(void);
void parse_format(void);

#endif