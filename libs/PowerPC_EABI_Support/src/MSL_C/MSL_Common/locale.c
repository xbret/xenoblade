#include <locale.h>
#include <ctype.h>
#include <wctype.h>

#pragma options align=native
#pragma warn_padding off
struct lconv __lconv = {
	".",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	"",
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F
};
#pragma warn_padding reset
#pragma options align=reset

struct _loc_ctype_cmpt _loc_ctyp_C = {
	"C",
	&__ctype_mapC[0],
	&__upper_mapC[0],
	&__lower_mapC[0],
	&__wctype_mapC[0],
	&__wupper_mapC[0],
	&__wlower_mapC[0],
	__mbtowc_noconv,
	__wctomb_noconv 
};

unsigned short char_coll_tableC[] = {
	0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F,0x10,
	0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2A,0x11,0x12,0x13,0x14,0x15,0x16,
	0x17,0x2B,0x2D,0x2F,0x31,0x33,0x35,0x37,0x39,0x3B,0x3D,0x3F,0x41,0x43,0x45,0x47,
	0x49,0x4B,0x4D,0x4F,0x51,0x53,0x55,0x57,0x59,0x5B,0x5D,0x18,0x19,0x1A,0x1B,0x1C,
	0x00,0x2C,0x2E,0x30,0x32,0x34,0x36,0x38,0x3A,0x3C,0x3E,0x40,0x42,0x44,0x46,0x48,
	0x4A,0x4C,0x4E,0x50,0x52,0x54,0x56,0x58,0x5A,0x5C,0x5E,0x1D,0x1E,0x1F,0x20,0x00
};

struct _loc_coll_cmpt _loc_coll_C = {
	"C",
	0x20,
	0x6E,
	0,
	char_coll_tableC,
	NULL
};

struct _loc_mon_cmpt _loc_mon_C = {
	"C",
	"",
	"",
	"",
	"",
	"",
	"",
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	"",
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F,
	0x7F
};


struct _loc_num_cmpt _loc_num_C = {
	"C",
	".",
	"",
	"",
};

struct _loc_time_cmpt _loc_tim_C = {
	"C",
	"AM|PM",
	"%a %b %e %T %Y",
	"%I:%M:%S %p",
	"%m/%d/%y",
	"%T",
	"Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday",
	"Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December",
	""
};


struct __locale _current_locale = {
    NULL,
    "C",
    &_loc_coll_C,
    &_loc_ctyp_C,
    &_loc_mon_C,
    &_loc_num_C,
    &_loc_tim_C
};