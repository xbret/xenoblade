#include "PowerPC_EABI_Support/MSL_C/MSL_Common/misc_io.h"

extern void __close_all(void);

//unused
void clearerr(){
}

//unused
void feof(){
}

//unused
void ferror(){
}

//unused
void perror(){
}

void __stdio_atexit(void) { __stdio_exit = __close_all; }
