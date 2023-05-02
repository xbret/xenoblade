#ifndef RVL_SDK_SC_SCAPI_PRDINFO_H
#define RVL_SDK_SC_SCAPI_PRDINFO_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

#define SC_PRDINFO_SIZE 0x100

typedef enum {
    SC_AREA_JPN,
    SC_AREA_USA,
    SC_AREA_EUR,
    SC_AREA_AUS,
    SC_AREA_BRA,
    SC_AREA_TWN,
    SC_AREA_KOR,
    SC_AREA_HKG,
    SC_AREA_ASI,
    SC_AREA_LTN,
    SC_AREA_SAF,
    SC_AREA_CHN
} SCProductArea;

typedef enum {
    SC_REGION_JP,
    SC_REGION_US,
    SC_REGION_EU,
    SC_REGION_3, //what could this have been?
    SC_REGION_KR,
    SC_REGION_CN,
} SCProductRegion;


typedef struct SCArea {
    s8 area;      // at 0x0
    char name[4]; // at 0x1
} SCArea;

typedef struct SCRegion {
    s8 region;      // at 0x0
    char name[3]; // at 0x1
} SCRegion;

BOOL __SCF1(const char* type, char* buf, u32 sz);
BOOL SCGetProductAreaString(char* buf, u32 sz);
BOOL SCGetProductGameRegionString(char* buf, u32 sz);
s8 SCGetProductGameRegion(void);
s8 SCGetProductArea(void);

#ifdef __cplusplus
}
#endif
#endif
