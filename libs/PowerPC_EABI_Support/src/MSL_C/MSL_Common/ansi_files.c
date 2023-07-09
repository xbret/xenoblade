#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/console_io.h"
#include <stdlib.h>
#include <stdio.h>

FILE __files[_STATIC_FILES] = { 
	{
		0,                   // _00
		{
		__must_exist,        // _04, open_mode
		__read,              // _04, io_mode
		console_buff_mode,   // _04, buffer_mode
		__console_file,      // _04, file_kind
		0                    // _04, binary_io
		},
		{
		__neutral,           // _08, io_state
		0,                   // _08, free_buffer
		0,                   // _08, eof
		0                    // _08, error
		},
		0,                   // _0C
		0,                   // _0D
		0,                   // _0E
		{0, 0},              // _0F
		{0, 0},              // _12
		0,					 // _18
		stdin_buff,          // _1C
		console_buff_size,   // _20
		stdin_buff,          // _24
		0,                   // _28
		0,                   // _2C
		0,                   // _30
		0,                   // _34
		0,                   // _38
		__read_console,      // _3C
		__write_console,     // _40
		__close_console,     // _44
		0,                   // _48
		&__files[1]          // _4C
	},
	{
		1,                   // _00
		{
		__must_exist,        // _04, open_mode
		__write,             // _04, io_mode
		console_buff_mode,   // _04, buffer_mode
		__console_file,      // _04, file_kind
		0                    // _04, binary_io
		},
		{
		__neutral,           // _08, io_state
		0,                   // _08, free_buffer
		0,                   // _08, eof
		0                    // _08, error
		},
		0,                   // _0C
		0,                   // _0D
		0,                   // _0E
		{0, 0},              // _0F
		{0, 0},              // _12
		0,					 // _18
		stdout_buff,         // _1C
		console_buff_size,   // _20
		stdout_buff,         // _24
		0,                   // _28
		0,                   // _2C
		0,                   // _30
		0,                   // _34
		0,                   // _38
		__read_console,      // _3C
		__write_console,     // _40
		__close_console,     // _44
		0,                   // _48
		&__files[2]          // _4C
	},
	{
		2,                   // _00
		{
		__must_exist,        // _04, open_mode
		__write,             // _04, io_mode
		_IONBF,              // _04, buffer_mode
		__console_file,      // _04, file_kind
		0,                   // _04, binary_io
		},
		{
		__neutral,           // _08, io_state
		0,                   // _08, free_buffer
		0,                   // _08, eof
		0,                   // _08, error
		},
		0,                   // _0C
		0,                   // _0D
		0,                   // _0E
		{0, 0},              // _0F
		{0, 0},              // _12
		0,					 // _18
		stderr_buff,         // _1C
		console_buff_size,   // _20
		stderr_buff,         // _24
		0,                   // _28
		0,                   // _2C
		0,                   // _30
		0,                   // _34
		0,                   // _38
		__read_console,      // _3C
		__write_console,     // _40
		__close_console,     // _44
		0,                   // _48
		&__files[3]          // _4C
	},
};

//unused
void __find_unopened_file(){
}

//unused
void __init_file(){
}

void __close_all(){
	FILE* p = &__files[0];
	FILE* plast;

	while (p) {
		if (p->mode.file_kind != __closed_file) {
			fclose(p);
		}

		plast = p;
		p = p->next_file_struct;
		if (plast->is_dynamically_allowed)
			free(plast);
		else {
			plast->mode.file_kind = __unavailable_file;
			if ((p != NULL) && p->is_dynamically_allowed)
				plast->next_file_struct = nullptr;
		}
	}
}

//unused
void __flush_line_buffered_output_files(){
}

u32 __flush_all()
{
	u32 retval = 0;
	FILE* __stream;
	__stream = &__files[0];
	while (__stream) {
		if ((__stream->mode.file_kind) && (fflush(__stream))) {
			retval = -1;
		}
		__stream = __stream->next_file_struct;
	};
	return retval;
}
