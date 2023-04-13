#ifndef _PRINTF_H
#define _PRINTF_H

#include "stdarg.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/file_struc.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.h"

int vprintf(const char*, va_list);
int sprintf(char*, const char*, ...);
int snprintf(char*, size_t, const char*, ...);
int vsprintf(char*, const char*, va_list);
int vsnprintf(char*, size_t, const char*, va_list);
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
