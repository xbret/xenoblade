
extern void (*__stdio_exit)(void);

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
