#ifndef _MSL_COMMON_FILE_STRUC_H
#define _MSL_COMMON_FILE_STRUC_H
#include "types.h"

typedef unsigned long __file_handle;
typedef unsigned long fpos_t;
typedef struct _FILE _FILE, *P_FILE;

#define __ungetc_buffer_size 2

enum __file_kinds {
	__closed_file,
	__disk_file,
	__console_file,
	__unavailable_file
};

enum __open_modes {
	__must_exist,
	__create_if_necessary,
	__create_or_truncate
};

enum __file_orientation {
	__unoriented,
	__char_oriented,
	__wide_oriented
};

enum __io_modes {
	__read = 1,
	__write = 2,
	__read_write = 3,
	__append = 4
};

typedef struct __file_modes {
	u32 open_mode : 2;
	u32 io_mode : 3;
	u32 buffer_mode : 2;
	u32 file_kind : 3;

#ifdef _MSL_WIDE_CHAR
	u32 file_orientation : 2;
#endif /* _MSL_WIDE_CHAR */

	u32 binary_io : 1;
} __file_modes;

enum __io_states {
	__neutral,
	__writing,
	__reading,
	__rereading
};

typedef struct __file_state {
	u32 io_state : 3;
	u32 free_buffer : 1;
	u8 eof;
	u8 error;
} __file_state;

typedef void* __ref_con;
typedef void (*__idle_proc)(void);
typedef int (*__pos_proc)(__file_handle file, fpos_t* position, int mode, __ref_con ref_con);
typedef int (*__io_proc)(__file_handle file, u8* buff, size_t* count, __ref_con ref_con);
typedef int (*__close_proc)(__file_handle file);

struct _FILE {
	__file_handle handle;                           // _00
	__file_modes mode;                              // _04
	__file_state state;                              // _08
	u8 is_dynamically_allowed;                      // _0C
	u8 char_buffer;                                 // _0D
	u8 char_buffer_overflow;                        // _0E
	u8 ungetc_buffer[__ungetc_buffer_size];         // _0F
	wchar_t ungetwc_buffer[__ungetc_buffer_size];   // _12
	u32 position;                                   // _18
	u8* buffer;                                   // _1C
	u32 buffer_size;                                // _20
	u8* buffer_ptr;                               // _24
	u32 buffer_len;                                 // _28
	u32 buffer_alignment;                           // _2C
	u32 saved_buffer_len;                           // _30
	u32 buffer_pos;                                 // _34
	__pos_proc position_proc;                       // _38
	__io_proc read_proc;                            // _3C
	__io_proc write_proc;                           // _40
	__close_proc close_proc;                        // _44
	__ref_con ref_con;                              // _48
	_FILE* next_file_struct;                        // _4C
};

typedef struct _FILE FILE;


#define _IONBF 0
#define _IOLBF 1
#define _IOFBF 2

// define standard C file pointer location names
#define SEEK_SET (0)
#define SEEK_CUR (1)
#define SEEK_END (2)

#define stdin &(__files[0])
#define stdout &(__files[1])
#define stderr &(__files[2])

#define _STATIC_FILES 4

extern FILE __files[];

#endif
