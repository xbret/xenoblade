#ifndef STL_LOCALE_H
#define STL_LOCALE_H

#include "types.h"
#include "stl/mbstring.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct lconv {
	char* decimal_point;
	char* thousands_sep;
	char* grouping;
	char* mon_decimal_point;
	char* mon_thousands_sep;
	char* mon_grouping;
	char* positive_sign;
	char* negative_sign;
	char* currency_symbol;
	char frac_digits;
	char p_cs_precedes;
	char n_cs_precedes;
	char p_sep_by_space;
	char n_sep_by_space;
	char p_sign_posn;
	char n_sign_posn;
	char* int_curr_symbol;
	char int_frac_digits;
	char int_p_cs_precedes; 
	char int_n_cs_precedes; 
	char int_p_sep_by_space; 
	char int_n_sep_by_space; 
	char int_p_sign_posn; 
	char int_n_sign_posn;
} lconv;

typedef struct _loc_mon_cmpt {
	char CmptName[8];
	char* mon_decimal_point;
	char* mon_thousands_sep;
	char* mon_grouping;
	char* positive_sign;
	char* negative_sign;
	char* currency_symbol;
	char frac_digits;
	char p_cs_precedes;
	char n_cs_precedes;
	char p_sep_by_space;
	char n_sep_by_space;
	char p_sign_posn;
	char n_sign_posn;
	char* int_curr_symbol;
	char int_frac_digits;
	char int_p_cs_precedes; 
	char int_n_cs_precedes; 
	char int_p_sep_by_space; 
	char int_n_sep_by_space; 
	char int_p_sign_posn; 
	char int_n_sign_posn; 
} _loc_mon_cmpt;

typedef struct _loc_coll_cmpt {
	char CmptName[8];
	int char_start_value;
	int char_coll_tab_size;
	short char_spec_accents;
	unsigned short* char_coll_table_ptr;
	unsigned short* wchar_coll_seq_ptr;
} _loc_coll_cmpt;

typedef int (*__decode_mbyte)(wchar_t*, const char*, size_t);
typedef int (*__encode_mbyte)(char*, wchar_t);

typedef struct _loc_ctype_cmpt{
	char CmptName[8];
	const unsigned short* ctype_map_ptr;
	const unsigned char* upper_map_ptr;
	const unsigned char* lower_map_ptr;
	const unsigned short* wctype_map_ptr;
	const wchar_t* wupper_map_ptr;
	const wchar_t* wlower_map_ptr;
	__decode_mbyte decode_mb;
	__encode_mbyte encode_wc;		
} _loc_ctype_cmpt;

typedef struct _loc_num_cmpt{
	char CmptName[8];
	char* decimal_point;
	char* thousands_sep;
	char* grouping;
} _loc_num_cmpt;

typedef struct _loc_time_cmpt {
	char CmptName[8];
	char* am_pm;
	char* DateTime_Format;
	char* Twelve_hr_format;
	char* Date_Format;
	char* Time_Format;
	char* Day_Names;
	char* MonthNames;
	char* TimeZone;
} _loc_time_cmpt;

typedef struct __locale __locale;

struct __locale {
	__locale* next_locale;
	char locale_name[48];
	_loc_coll_cmpt* coll_cmpt_ptr;
	_loc_ctype_cmpt* ctype_cmpt_ptr;
	_loc_mon_cmpt* mon_cmpt_ptr;
	_loc_num_cmpt* num_cmpt_ptr;
	_loc_time_cmpt* time_cmpt_ptr;
};

extern __locale _current_locale;

#ifdef __cplusplus
}
#endif
#endif
