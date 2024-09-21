#ifndef NW4R_BUILD_VERSION_H
#define NW4R_BUILD_VERSION_H

#define __STR(n) #n
#define STR(n) __STR(n)
#define CW_VER STR(__CWCC__) "_" STR(__CWBUILD__)

#ifdef DEBUG
#define BUILD_TYPE "debug"
#elseif RELEASE
#define BUILD_TYPE "release"
#else
#define BUILD_TYPE "final"
#endif

#define NW4R_LIB_VERSION(NAME, ORIGINAL_DATE, ORIGINAL_TIME)                \
    const char* NW4R_##NAME##_Version_ =                                    \
        "<< NW4R    - " #NAME " \t" BUILD_TYPE "   build: " #ORIGINAL_DATE  \
        " " #ORIGINAL_TIME " (" CW_VER ") >>"

#endif
