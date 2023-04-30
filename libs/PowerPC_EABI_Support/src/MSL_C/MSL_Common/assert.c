#include <assert.h>
#include <stdio.h>

extern void abort();

//Hooray to unused parameters mattering :3
void __msl_assertion_failed(const char* condition, const char* filename, const char* function, int line) {
    fprintf(stderr,"Assertion (%s) failed in \"%s\", line %d\n", condition, filename, line);
    abort();
}
