#ifndef RVL_SDK_GX_HARDWARE_H
#define RVL_SDK_GX_HARDWARE_H
#include "revolution/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

/**
 * Documentation from:
 * https://www.gc-forever.com/yagcd/chap8.html#sec8
 * https://www.gc-forever.com/yagcd/chap5.html#sec5
 * https://github.com/dolphin-emu/dolphin/blob/master/Source/Core/VideoCommon/BPMemory.h
 * https://github.com/dolphin-emu/dolphin/blob/master/Source/Core/VideoCommon/XFMemory.h
 * https://github.com/dolphin-emu/dolphin/blob/master/Source/Core/VideoCommon/OpcodeDecoding.h
 */

/**
 * GX FIFO
 */
extern volatile union {
    // 1-byte
    char c;
    unsigned char uc;
    // 2-byte
    short s;
    unsigned short us;
    // 4-byte
    int i;
    unsigned int ui;
    void* p;
    float f;
} WGPIPE : 0xcc008000;

/**
 * GX FIFO commands
 */
typedef enum {
    GX_FIFO_NO_OP = 0x00,

    GX_FIFO_LOAD_BP_REG = 0x61,
    GX_FIFO_LOAD_CP_REG = 0x08,
    GX_FIFO_LOAD_XF_REG = 0x10,

    GX_FIFO_LOAD_INDX_A = 0x20,
    GX_FIFO_LOAD_INDX_B = 0x28,
    GX_FIFO_LOAD_INDX_C = 0x30,
    GX_FIFO_LOAD_INDX_D = 0x38,

    GX_FIFO_CALL_DL = 0x40,
    GX_FIFO_INVAL_VTX = 0x48
} GXFifoCmd;

/**
 * Load immediate value into BP register
 */
#define GX_LOAD_BP_REG(data)                                                   \
    WGPIPE.c = GX_FIFO_LOAD_BP_REG;                                            \
    WGPIPE.i = (data);

/**
 * Set BP command opcode (first 8 bits)
 */
#define GX_BP_CMD_SET_OPCODE(cmd, opcode) (cmd) = GX_BITSET(cmd, 0, 8, (opcode))

/**
 * Load immediate value into CP register
 */
#define GX_LOAD_CP_REG(addr, data)                                             \
    WGPIPE.c = GX_FIFO_LOAD_CP_REG;                                            \
    WGPIPE.c = (addr);                                                         \
    WGPIPE.i = (data);

/**
 * Header for an XF register load
 */
#define GX_LOAD_XF_HDR(addr)                                                   \
    WGPIPE.c = GX_FIFO_LOAD_XF_REG;                                            \
    WGPIPE.i = (addr);

/**
 * Load immediate value into XF register
 */
#define GX_LOAD_XF_REG(addr, data)                                             \
    GX_LOAD_XF_HDR(addr);                                                      \
    WGPIPE.i = (data);

/**
 * Load immediate (indexed) value into XF register
 */
#define GX_LOAD_XF_REG_NSIZE(size, addr)                                       \
    {                                                                          \
        u32 cmd = 0;                                                           \
        cmd |= (addr);                                                         \
        cmd |= (size) << 16;                                                   \
        GX_LOAD_XF_HDR(cmd);                                                   \
    }

/**
 * GX FIFO BP registers
 */
typedef enum {
    GX_BP_REG_GENMODE = 0x00,
    GX_BP_REG_DISPLAYCOPYFILTER = 0x01, // 0x01 + 4
    GX_BP_REG_IND_MTXA = 0x06,          // 0x06 + (3 * 3)
    GX_BP_REG_IND_MTXB = 0x07,          // 0x07 + (3 * 3)
    GX_BP_REG_IND_MTXC = 0x08,          // 0x08 + (3 * 3)
    GX_BP_REG_IND_IMASK = 0x0F,
    GX_BP_REG_IND_CMD = 0x10, // 0x10 + 16
    GX_BP_REG_SCISSORTL = 0x20,
    GX_BP_REG_SCISSORBR = 0x21,
    GX_BP_REG_LINEPTWIDTH = 0x22,
    GX_BP_REG_PERF0_TRI = 0x23,
    GX_BP_REG_PERF0_QUAD = 0x24,
    GX_BP_REG_RAS1_SS0 = 0x25,
    GX_BP_REG_RAS1_SS1 = 0x26,
    GX_BP_REG_IREF = 0x27,
    GX_BP_REG_TREF = 0x28,     // 0x28 + 8
    GX_BP_REG_SU_SSIZE = 0x30, // 0x30 + (2 * 8)
    GX_BP_REG_SU_TSIZE = 0x31, // 0x31 + (2 * 8)
    GX_BP_REG_ZMODE = 0x40,
    GX_BP_REG_BLENDMODE = 0x41,
    GX_BP_REG_CONSTANTALPHA = 0x42,
    GX_BP_REG_ZCOMPARE = 0x43,
    GX_BP_REG_FIELDMASK = 0x44,
    GX_BP_REG_SETDRAWDONE = 0x45,
    GX_BP_REG_BUSCLOCK0 = 0x46,
    GX_BP_REG_PE_TOKEN_ID = 0x47,
    GX_BP_REG_PE_TOKEN_INT_ID = 0x48,
    GX_BP_REG_EFB_TL = 0x49,
    GX_BP_REG_EFB_WH = 0x4A,
    GX_BP_REG_EFB_ADDR = 0x4B,
    GX_BP_REG_MIPMAP_STRIDE = 0x4D,
    GX_BP_REG_COPYYSCALE = 0x4E,
    GX_BP_REG_CLEAR_AR = 0x4F,
    GX_BP_REG_CLEAR_GB = 0x50,
    GX_BP_REG_CLEAR_Z = 0x51,
    GX_BP_REG_TRIGGER_EFB_COPY = 0x52,
    GX_BP_REG_COPYFILTER0 = 0x53,
    GX_BP_REG_COPYFILTER1 = 0x54,
    GX_BP_REG_CLEARBBOX1 = 0x55,
    GX_BP_REG_CLEARBBOX2 = 0x56,
    GX_BP_REG_CLEAR_PIXEL_PERF = 0x57,
    GX_BP_REG_REVBITS = 0x58,
    GX_BP_REG_SCISSOROFFSET = 0x59,
    GX_BP_REG_PRELOAD_ADDR = 0x60,
    GX_BP_REG_PRELOAD_TMEMEVEN = 0x61,
    GX_BP_REG_PRELOAD_TMEMODD = 0x62,
    GX_BP_REG_PRELOAD_MODE = 0x63,
    GX_BP_REG_LOADTLUT0 = 0x64,
    GX_BP_REG_LOADTLUT1 = 0x65,
    GX_BP_REG_TEXINVALIDATE = 0x66,
    GX_BP_REG_PERF1 = 0x67,
    GX_BP_REG_FIELDMODE = 0x68,
    GX_BP_REG_BUSCLOCK1 = 0x69,
    GX_BP_REG_TX_SETMODE0 = 0x80,    // 0x80 + 4
    GX_BP_REG_TX_SETMODE1 = 0x84,    // 0x84 + 4
    GX_BP_REG_TX_SETIMAGE0 = 0x88,   // 0x88 + 4
    GX_BP_REG_TX_SETIMAGE1 = 0x8C,   // 0x8C + 4
    GX_BP_REG_TX_SETIMAGE2 = 0x90,   // 0x90 + 4
    GX_BP_REG_TX_SETIMAGE3 = 0x94,   // 0x94 + 4
    GX_BP_REG_TX_SETTLUT = 0x98,     // 0x98 + 4
    GX_BP_REG_TX_SETMODE0_4 = 0xA0,  // 0xA0 + 4
    GX_BP_REG_TX_SETMODE1_4 = 0xA4,  // 0xA4 + 4
    GX_BP_REG_TX_SETIMAGE0_4 = 0xA8, // 0xA8 + 4
    GX_BP_REG_TX_SETIMAGE1_4 = 0xAC, // 0xA4 + 4
    GX_BP_REG_TX_SETIMAGE2_4 = 0xB0, // 0xB0 + 4
    GX_BP_REG_TX_SETIMAGE3_4 = 0xB4, // 0xB4 + 4
    GX_BP_REG_TX_SETTLUT_4 = 0xB8,   // 0xB8 + 4
    GX_BP_REG_TEV_COLOR_ENV = 0xC0,  // 0xC0 + (2 * 16)
    GX_BP_REG_TEV_ALPHA_ENV = 0xC1,  // 0xC1 + (2 * 16)
    GX_BP_REG_TEV_REGL_0 = 0xE0,
    GX_BP_REG_TEV_REGH_0 = 0xE1,
    GX_BP_REG_TEV_REGL_1 = 0xE2,
    GX_BP_REG_TEV_REGH_1 = 0xE3,
    GX_BP_REG_TEV_REGL_2 = 0xE4,
    GX_BP_REG_TEV_REGH_2 = 0xE5,
    GX_BP_REG_TEV_REGL_3 = 0xE6,
    GX_BP_REG_TEV_REGH_3 = 0xE7,
    GX_BP_REG_TEV_FOG_RANGE = 0xE8, // 0xE8 + 6
    GX_BP_REG_TEV_FOG_PARAM0 = 0xEE,
    GX_BP_REG_TEV_FOG_PARAM1 = 0xEF,
    GX_BP_REG_TEV_FOG_PARAM2 = 0xF0,
    GX_BP_REG_TEV_FOG_PARAM3 = 0xF1,
    GX_BP_REG_TEV_FOG_COLOR = 0xF2,
    GX_BP_REG_TEV_ALPHA_FUNC = 0xF3,
    GX_BP_REG_Z_ENV_0 = 0xF4,
    GX_BP_REG_Z_ENV_1 = 0xF5,
    GX_BP_REG_TEV_KSEL_0 = 0xF6,
    GX_BP_REG_TEV_KSEL_1 = 0xF7,
    GX_BP_REG_TEV_KSEL_2 = 0xF8,
    GX_BP_REG_TEV_KSEL_3 = 0xF9,
    GX_BP_REG_TEV_KSEL_4 = 0xFA,
    GX_BP_REG_TEV_KSEL_5 = 0xFB,
    GX_BP_REG_TEV_KSEL_6 = 0xFC,
    GX_BP_REG_TEV_KSEL_7 = 0xFD,
    GX_BP_REG_SS_MASK = 0xFE
} GXBpReg;

/**
 * GX FIFO CP registers
 */
typedef enum {
    GX_CP_REG_MATINDEX_A = 0x30,
    GX_CP_REG_MATINDEX_B = 0x40,
    GX_CP_REG_VCD_LO = 0x50,      // 0x50 - 0x57
    GX_CP_REG_VCD_HI = 0x60,      // 0x60 - 0x67
    GX_CP_REG_VAT_A = 0x70,       // 0x70 - 0x77
    GX_CP_REG_VAT_B = 0x80,       // 0x80 - 0x87
    GX_CP_REG_VAT_C = 0x90,       // 0x90 - 0x97
    GX_CP_REG_ARRAY_BASE = 0xA0,  // 0xA0 - 0xAF
    GX_CP_REG_ARRAY_STRIDE = 0xA0 // 0xB0 - 0xBF
} GXCpReg;

/**
 * GX FIFO XF memory
 */
typedef enum {
    GX_XF_MEM_POSMTX = 0x0000,
    GX_XF_MEM_NRMMTX = 0x0400,
    GX_XF_MEM_DUALTEXMTX = 0x0500,
    GX_XF_MEM_LIGHTOBJ = 0x0600
} GXXfMem;

/**
 * GX FIFO XF registers
 */
typedef enum {
    GX_XF_REG_ERROR = 0x1000,
    GX_XF_REG_DIAG = 0x1001,
    GX_XF_REG_STATE0 = 0x1002,
    GX_XF_REG_STATE1 = 0x1003,
    GX_XF_REG_CLOCK = 0x1004,
    GX_XF_REG_CLIPDISABLE = 0x1005,
    GX_XF_REG_PERF0 = 0x1006,
    GX_XF_REG_PERF1 = 0x1007,
    GX_XF_REG_INVTXSPEC = 0x1008,
    GX_XF_REG_NUMCOLORS = 0x1009,
    GX_XF_REG_AMBIENT0 = 0x100A,
    GX_XF_REG_AMBIENT1 = 0x100B,
    GX_XF_REG_MATERIAL0 = 0x100C,
    GX_XF_REG_MATERIAL1 = 0x100D,
    GX_XF_REG_COLOR0CNTRL = 0x100E,
    GX_XF_REG_COLOR1CNTRL = 0x100F,
    GX_XF_REG_ALPHA0CNTRL = 0x1010,
    GX_XF_REG_ALPHA1CNTRL = 0x1011,
    GX_XF_REG_DUALTEXTRANS = 0x1012,
    GX_XF_REG_MATINDEXA = 0x1018,
    GX_XF_REG_MATINDEXB = 0x1019,
    GX_XF_REG_VIEWPORTSX = 0x101A,
    GX_XF_REG_VIEWPORTSY = 0x101B,
    GX_XF_REG_VIEWPORTSZ = 0x101C,
    GX_XF_REG_VIEWPORTOX = 0x101D,
    GX_XF_REG_VIEWPORTOY = 0x101E,
    GX_XF_REG_VIEWPORTOZ = 0x101F,
    GX_XF_REG_VIEWPORT = GX_XF_REG_VIEWPORTSX,
    GX_XF_REG_PROJECTIONA = 0x1020,
    GX_XF_REG_PROJECTIONB = 0x1021,
    GX_XF_REG_PROJECTIONC = 0x1022,
    GX_XF_REG_PROJECTIOND = 0x1023,
    GX_XF_REG_PROJECTIONE = 0x1024,
    GX_XF_REG_PROJECTIONF = 0x1025,
    GX_XF_REG_NUMTEX = 0x103F,
    GX_XF_REG_TEX0 = 0x1040,
    GX_XF_REG_TEX1 = 0x1041,
    GX_XF_REG_TEX2 = 0x1042,
    GX_XF_REG_TEX3 = 0x1043,
    GX_XF_REG_TEX4 = 0x1044,
    GX_XF_REG_TEX5 = 0x1045,
    GX_XF_REG_TEX6 = 0x1046,
    GX_XF_REG_TEX7 = 0x1047,
    GX_XF_REG_DUALTEX0 = 0x1050,
    GX_XF_REG_DUALTEX1 = 0x1051,
    GX_XF_REG_DUALTEX2 = 0x1052,
    GX_XF_REG_DUALTEX3 = 0x1053,
    GX_XF_REG_DUALTEX4 = 0x1054,
    GX_XF_REG_DUALTEX5 = 0x1055,
    GX_XF_REG_DUALTEX6 = 0x1056,
    GX_XF_REG_DUALTEX7 = 0x1057
} GXXfReg;

#ifdef __cplusplus
}
#endif
#endif
