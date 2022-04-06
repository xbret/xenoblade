#include <signal.h>

void (*__stdio_exit)(void);
BOOL __aborting;

void abort(void) {
    raise(1);
    __aborting = TRUE;
    exit(1);
}

//unused
void atexit(){
}

//unused
void __atexit(){
}

//unused
void __exit(){
}
