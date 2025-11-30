#ifndef RVL_SDK_VI_TYPES
#define RVL_SDK_VI_TYPES

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif


typedef u8 VIBool;
#define VI_FALSE ((VIBool)0)
#define VI_TRUE ((VIBool)1)
#define VI_DISABLE ((VIBool)0)
#define VI_ENABLE ((VIBool)1)

// Merge format/scanmode to one value for TV mode (see GXRenderModeObj)
#define VI_TVMODE(format, scanMode) (((format) << 2) + (scanMode))

// Get TV format from TV mode
#define VI_TVMODE_FORMAT(mode) ((mode) >> 2)
// Get TV scan mode from TV mode
#define VI_TVMODE_SCANMODE(mode) ((mode) & 0b00000011)

typedef enum {
    VI_TVFORMAT_NTSC,
    VI_TVFORMAT_PAL,
    VI_TVFORMAT_MPAL,
    VI_TVFORMAT_DEBUG,
    VI_TVFORMAT_DEBUG_PAL,
    VI_TVFORMAT_EURGB60
} VITVFormat;

typedef enum VIScanMode {
    VI_SCANMODE_INT,
    VI_SCANMODE_DS,
    VI_SCANMODE_PROG
} VIScanMode;

typedef enum VIXFBMode {
    VI_XFBMODE_SF,
    VI_XFBMODE_DF,
} VIXFBMode;


typedef enum VITVMode {
    VI_TVMODE_NTSC_INT = VI_TVMODE(VI_TVFORMAT_NTSC, VI_SCANMODE_INT),
    VI_TVMODE_NTSC_DS = VI_TVMODE(VI_TVFORMAT_NTSC, VI_SCANMODE_DS),
    VI_TVMODE_NTSC_PROG = VI_TVMODE(VI_TVFORMAT_NTSC, VI_SCANMODE_PROG),

    VI_TVMODE_PAL_INT = VI_TVMODE(VI_TVFORMAT_PAL, VI_SCANMODE_INT),
    VI_TVMODE_PAL_DS = VI_TVMODE(VI_TVFORMAT_PAL, VI_SCANMODE_DS),

    VI_TVMODE_EURGB60_INT = VI_TVMODE(VI_TVFORMAT_EURGB60, VI_SCANMODE_INT),
    VI_TVMODE_EURGB60_DS = VI_TVMODE(VI_TVFORMAT_EURGB60, VI_SCANMODE_DS),
    VI_TVMODE_EURGB60_PROG = VI_TVMODE(VI_TVFORMAT_EURGB60, VI_SCANMODE_PROG),

    VI_TVMODE_MPAL_INT = VI_TVMODE(VI_TVFORMAT_MPAL, VI_SCANMODE_INT),
    VI_TVMODE_MPAL_DS = VI_TVMODE(VI_TVFORMAT_MPAL, VI_SCANMODE_DS),
    VI_TVMODE_MPAL_PROG = VI_TVMODE(VI_TVFORMAT_MPAL, VI_SCANMODE_PROG),

    VI_TVMODE_DEBUG_INT = VI_TVMODE(VI_TVFORMAT_DEBUG, VI_SCANMODE_INT),

    VI_TVMODE_DEBUG_PAL_INT = VI_TVMODE(VI_TVFORMAT_DEBUG_PAL, VI_SCANMODE_INT),
    VI_TVMODE_DEBUG_PAL_DS = VI_TVMODE(VI_TVFORMAT_DEBUG_PAL, VI_SCANMODE_DS),
} VITVMode;

typedef enum _VITiming {
    VI_TMG_GAME = 0,
    VI_TMG_DVD  = 1
} VITiming;

typedef enum _VIVideo {
    VI_VMODE_NTSC = 0,
    VI_VMODE_MPAL = 1,
    VI_VMODE_PAL = 2,
    VI_VMODE_RGB = 3
} VIVideo;


typedef struct VIGammaObj {
    u16 a[6];
    u8 yin[7];
    u16 yout[7];
} VIGammaObj;

typedef enum _VITimeToDIM {
    VI_DM_DEFAULT = 0,
    VI_DM_10M,
    VI_DM_15M
} VITimeToDIM;

typedef enum _VIACPType {
    VI_ACP_OFF = 1,
    VI_ACP_TYPE1 = 2,
    VI_ACP_TYPE2 = 3,
    VI_ACP_TYPE3 = 4
} VIACPType;

typedef enum _VIGamma {
    VI_GM_0_1 = 1,
    VI_GM_0_2,
    VI_GM_0_3,
    VI_GM_0_4,
    VI_GM_0_5,
    VI_GM_0_6,
    VI_GM_0_7,
    VI_GM_0_8,
    VI_GM_0_9,
    VI_GM_1_0,
    VI_GM_1_1,
    VI_GM_1_2,
    VI_GM_1_3,
    VI_GM_1_4,
    VI_GM_1_5,
    VI_GM_1_6,
    VI_GM_1_7,
    VI_GM_1_8,
    VI_GM_1_9,
    VI_GM_2_0,
    VI_GM_2_1,
    VI_GM_2_2,
    VI_GM_2_3,
    VI_GM_2_4,
    VI_GM_2_5,
    VI_GM_2_6,
    VI_GM_2_7,
    VI_GM_2_8,
    VI_GM_2_9,
    VI_GM_3_0
} VIGamma;

typedef enum _VIOverDrive {
    VI_ODV_L1 = 0,
    VI_ODV_L2 = 1,
    VI_ODV_L3 = 2,
    VI_ODV_L4 = 3,
    VI_ODV_L5 = 4,
    VI_ODV_L6 = 5
} VIOverDrive;

#ifdef __cplusplus
}
#endif
#endif
