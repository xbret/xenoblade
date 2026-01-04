#pragma once

//Types/defines for SB script files.

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

//Minimum supported SB version
#define SB_MIN_VERSION 2

enum SBFlags{
    SB_FLAG_LOADED    = 1 << 0, //Stored in the runtime flag byte (offset 0x7)
    SB_FLAG_ENCRYPTED = 1 << 1  //Stored in the normal flag byte (offset 0x6)
};

typedef struct SBSectionHeader{
    int offset;  //0x0
    int entries; //0x4
    int length;  //0x8
} SBSectionHeader;

typedef union SBSectionOffset{
    u32 offset;
    SBSectionHeader* sectionHeaderPtr;
} SBSectionOffset;

typedef struct SBHeader{
    char magic[4];                      //0x0
    u8 version;                         //0x4
    u8 unk5; //unused?
    u8 flags;                           //0x6
    /* Reserved by the VM as a place to store various flags during runtime. Only the first bit
    (for the loaded flag) gets used, however. */
    u8 vmFlags;                         //0x7
    SBSectionOffset codeOfs;            //0x8
    SBSectionOffset idPoolOfs;          //0xC
    SBSectionOffset intPoolOfs;         //0x10
    SBSectionOffset fixedPoolOfs;       //0x14
    SBSectionOffset stringPoolOfs;      //0x18
    SBSectionOffset functionPoolOfs;    //0x1C
    SBSectionOffset pluginImportsOfs;   //0x20
    SBSectionOffset ocImportsOfs;       //0x24
    SBSectionOffset functionImportsOfs; //0x28
    SBSectionOffset staticVarsOfs;      //0x2C
    SBSectionOffset localPoolOfs;       //0x30
    SBSectionOffset sysAttrPoolOfs;     //0x34
    SBSectionOffset userAttrPoolOfs;    //0x38
    SBSectionOffset debugSymbolsOfs;    //0x3C
} SBHeader;

//Section specific structs

//Plugin imports

typedef struct PluginImportEntry{
    u16 unk0;
    u16 unk2;
} PluginImportEntry;

//OC imports

typedef struct OCImportEntry{
    u16 unk0;
} OCImportEntry;

//Function imports

typedef struct FunctionImportEntry{
    u16 unk0;
    u16 unk2;
} FunctionImportEntry;

//Static vars

typedef struct StaticVarsEntry{
    u8 unk0[8];
} StaticVarsEntry;

//Local pool

typedef struct LocalPoolEntry{
    u8 unk0[8];
} LocalPoolEntry;

#ifdef __cplusplus
}
#endif
