#ifndef _STDARG_H_
#define _STDARG_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef enum _va_arg_type {
    arg_ARGPOINTER,
    arg_WORD,
    arg_DOUBLEWORD,
    arg_ARGREAL
} _va_arg_type;

typedef struct {
    char gpr;
    char fpr;
	char reserved[2];
    char* input_arg_area;
    char* reg_save_area;
} __va_list[1];
typedef __va_list va_list;

void* __va_arg(va_list v_list, int type);

#define va_start(ap, fmt) ((void)fmt, __builtin_va_info(&ap))
#define va_arg(ap, t)     (*((t*)__va_arg(ap, _var_arg_typeof(t))))
#define va_end(ap)        (void)0


#ifdef __cplusplus
}
#endif
#endif
