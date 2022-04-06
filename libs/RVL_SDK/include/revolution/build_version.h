#ifndef _REVOSDK_BUILDVERSION_
#define _REVOSDK_BUILDVERSION_

#define __STR(n) #n
#define STR(n) __STR(n)
#define CW_VER STR(__CWCC__) "_" STR(__CWBUILD__)

#ifdef DEBUG
#define BUILD_TYPE "debug"
#else
#define BUILD_TYPE "release"
#endif

#define SDK_LIB_VERSION(lib,date,time) "<< RVL_SDK - " #lib " \t" BUILD_TYPE " build: " date " " time " (" CW_VER ") >>"

#endif
