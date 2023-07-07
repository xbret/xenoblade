#ifndef METROTRK_DSERROR
#define METROTRK_DSERROR

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

typedef enum {
	kNoError = 0,
	TRKError1 = 1,
	TRKError2 = 2,
	TRKError100 = 0x100,
	TRKError301 = 0x301,
	TRKError302 = 0x302,
	TRKError500 = 0x500,
	TRKError700 = 0x700,
	TRKError701 = 0x701,
	TRKError702 = 0x702,
	TRKError703 = 0x703,
	TRKError704 = 0x704,
	TRKError705 = 0x705,
	TRKError706 = 0x706
} DSError;

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
