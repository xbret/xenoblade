#ifndef _NW4R_BUILDVERSION_
#define _NW4R_BUILDVERSION_

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

#define NW4R_LIB_VERSION(lib,date,time) "<< NW4R    - " #lib " \t" BUILD_TYPE "   build: " #date " " #time " (" CW_VER ") >>"

#endif
