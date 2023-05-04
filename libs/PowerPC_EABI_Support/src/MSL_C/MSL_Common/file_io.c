#include "PowerPC_EABI_Support/MSL_C/MSL_Common/buffer_io.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.h"
#include <stdlib.h>
#include <stdio.h>

//unused
void remove(){
}

//unused
void rename(){
}

//unused
void tmpnam(){
}

//unused
void tmpnam_s(){
}

//unused
void tmpfile(){
}

//unused
void tmpfile_s(){
}

int fclose(FILE* file)
{
	int flush_result, close_result;

	if (file == nullptr)
		return (-1);
	if (file->mode.file_kind == __closed_file)
		return (0);

	flush_result = fflush(file);

	close_result = (*file->close_proc)(file->handle);

	file->mode.file_kind = __closed_file;
	file->handle = 0;

	if (file->state.free_buffer)
		free(file->buffer);
	return ((flush_result || close_result) ? -1 : 0);
}

int fflush(FILE* file)
{
	int pos;

	if (file == nullptr) {
		return __flush_all();
	}

	if (file->state.error != 0 || file->mode.file_kind == __closed_file) {
		return -1;
	}

	if (file->mode.io_mode == 1) {
		return 0;
	}

	if (file->state.io_state >= 3) {
		file->state.io_state = 2;
	}

	if (file->state.io_state == 2) {
		file->buffer_len = 0;
	}

	if (file->state.io_state != 1) {
		file->state.io_state = 0;
		return 0;
	}

	if (file->mode.file_kind != __disk_file) {
		pos = 0;
	} else {
		pos = ftell(file);
	}

	if (__flush_buffer(file, 0) != 0) {
		file->state.error = 1;
		file->buffer_len = 0;
		return -1;
	}

	file->state.io_state = 0;
	file->position = pos;
	file->buffer_len = 0;
	return 0;
}

//unused
void fopen(){
}

//unused
void fopen_s(){
}

//unused
void freopen(){
}

//unused
void freopen_s(){
}

//unused
void __reopen(){
}

//unused
void __handle_open(){
}

//unused
void __handle_reopen(){
}

//unused
void __get_file_modes(){
}

//unused
void __set_ref_con(){
}

//unused
void __set_idle_proc(){
}

//unused
void __msl_strnicmp(){
}

//unused
void __msl_strrev(){
}

//unused
void __msl_itoa(){
}

//unused
void __msl_strdup(){
}
