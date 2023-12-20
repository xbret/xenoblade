#include "revolution/NWC24.h"
#include "revolution/OS.h"
#include "revolution/IPC.h"
#include "revolution/SC.h"


static OSShutdownFunctionInfo ShutdownFuncInfo;

static u32 nwc24TimeCommonResult[8] ALIGN(32);
static u32 nwc24TimeCommonBuffer[8] ALIGN(32);

static s32 nwc24ShtRetryRest;
static s32 nwc24ShtFd = -1;
static BOOL NWC24iIsRequestPending;

void REXInit();

void __OSInitNet(void) {
	s32 error;
	OSIOSRev rev;

	//REXInit();
	__OSGetIOSRev(&rev);

	if (rev.idLo <= 4 || rev.idLo == 9) {
		return;
	}

	error = NWC24iPrepareShutdown();
	if (error != 0) {
		if (error < 0) {
			OSReport("Failed to register network shutdown function. %d\n", error);
		}

		error = NWC24SuspendScheduler();
		if (error < 0) {
			OSReport("Failed to suspend the WiiConnect24 scheduler. %d\n", error);
		}
	}

	if(!__OSInIPL){
		error = NWC24iSynchronizeRtcCounter(FALSE);
		if (error != 0) {
			OSReport(
				"Failed to synchronize time with network resource managers. %d\n",
				error);
		}
	}
}

//unused
void __OSSyncTimeWithNetRM(){
	NWC24iSynchronizeRtcCounter(FALSE);
}

void REXInit(){
}

static BOOL NWC24Shutdown_(u32 pass, u32 event);
static s32 NWC24iOpenResourceManager_(const char* funcName, const char* path, s32* resultPtr, IPCOpenMode mode);
static s32 NWC24iIoctlResourceManager_(const char* funcName, s32 fd, s32 type, void* in, s32 inSize, void* out, s32 outSize);
static s32 NWC24iIoctlResourceManagerAsync_(const char* funcName, s32 fd, s32 type, void* in, s32 inSize, void* out, s32 outSize, void* callbackArg);
static s32 NWC24iCloseResourceManager_(const char* funcName, s32 fd);
static s32 NWC24iCloseResourceManagerAsync_(const char* funcName, s32 fd, void* callbackArg);
static s32 CheckCallingStatus(const char* funcName);

DECL_WEAK s32 NWC24iPrepareShutdown(){
	s32 result;
	
	result = 0;
	ShutdownFuncInfo.func = NWC24Shutdown_;
	ShutdownFuncInfo.prio = 0x6e;
	OSRegisterShutdownFunction(&ShutdownFuncInfo);

	if (nwc24ShtFd < 0) {
		result = NWC24iOpenResourceManager_(__FUNCTION__,"/dev/net/kd/request",&nwc24ShtFd,1);
	}
	nwc24ShtRetryRest = 5;

	if (result == 0) {
		result = 1;
	}
	return result;
}

static s32 GetRTC(s32* destPtr);
static s32 NWC24iSetRtcCounter_(u32 rtc, u32 param_2);

DECL_WEAK s32 NWC24iSynchronizeRtcCounter(BOOL val){
	s32 result;
	s32 rtc;
	
	result = GetRTC(&rtc);
    
	if (result != 0) {
        return result;
    }else{
		return NWC24iSetRtcCounter_(rtc, val != FALSE);
	}
}

DECL_WEAK s32 NWC24SuspendScheduler(){
	int iVar1;
	int iVar2;
	s32 local_18;
	static s32 susResult[8] ALIGN(32);
	
	iVar1 = CheckCallingStatus(__FUNCTION__);
	if (-1 < iVar1){
		iVar1 = NWC24iOpenResourceManager_(__FUNCTION__,"/dev/net/kd/request", &local_18,0);
	 if(-1 < iVar1) {
		iVar1 = NWC24iIoctlResourceManager_(__FUNCTION__, local_18, 1, 0, 0, susResult, sizeof(susResult));
		if (-1 < iVar1) {
			iVar1 = susResult[0];
		}
		iVar2 = NWC24iCloseResourceManager_(__FUNCTION__,local_18);
		if (iVar2 < 0) {
			iVar1 = iVar2;
		}
	 }
	}
	return iVar1;
}

//unused
DECL_WEAK s32 NWC24ResumeScheduler(){
	int iVar1;
	int iVar2;
	s32 local_18;
	static s32 susResult[8] ALIGN(32);
	
	iVar1 = CheckCallingStatus(__FUNCTION__);
	if ((-1 < iVar1)){
		iVar1 = NWC24iOpenResourceManager_(__FUNCTION__,"/dev/net/kd/request", &local_18,0);
		if(-1 < iVar1) {
		iVar1 = NWC24iIoctlResourceManager_(__FUNCTION__,local_18, 3, 0, 0, susResult, sizeof(susResult));
		if (-1 < iVar1) {
			iVar1 = susResult[0];
		}
		iVar2 = NWC24iCloseResourceManager_(__FUNCTION__,local_18);
		if (iVar2 < 0) {
			iVar1 = iVar2;
		}
		}
	}
	return iVar1;
}

static s32 NWC24iRequestShutdown(u32 param_1, s32* callbackArg){
	s32 uVar1;
	static s32 shtBuffer[8] ALIGN(32);
	static s32 shtResult[8] ALIGN(32);
	
	shtBuffer[0] = param_1;
	uVar1 = NWC24iIoctlResourceManagerAsync_(__FUNCTION__, nwc24ShtFd, 0x28, shtBuffer, 0x20, shtResult, 0x20, callbackArg);
	return uVar1;
}

static BOOL NWC24iIsAsyncRequestPending_();

static BOOL NWC24Shutdown_(u32 pass, u32 event){
	static BOOL shuttingdown = FALSE;
	static s32 result = 0;

	int iVar1;
	
	if (pass != 0) {
		return TRUE;
	}
	if (!shuttingdown) {
		iVar1 = NWC24iRequestShutdown(event, &result);
		if (-1 < iVar1) {
			shuttingdown = TRUE;
		}
	}
	else {
		iVar1 = NWC24iIsAsyncRequestPending_();

		if (iVar1 != 0) {
			return FALSE;
		}
		if (-1 < result) {
			return TRUE;
		}
		if (nwc24ShtRetryRest < 1) {
			OSReport("NWC24Shutdown_: Give up!\n");
			return TRUE;
		}

		shuttingdown = FALSE;
		nwc24ShtRetryRest--;
	}

	return FALSE;
}

static s32 NWC24iSetRtcCounter_(u32 rtc, u32 param_2) DONT_INLINE {
	s32 result;
	s32 iVar2;
	s32 ipcResult;

    result = CheckCallingStatus(__FUNCTION__);
	if (result < 0){
        return result;
    }
    
    result = NWC24iOpenResourceManager_(__FUNCTION__, "/dev/net/kd/time", &ipcResult, IPC_OPEN_NONE);
    if(result >= 0) {
	    nwc24TimeCommonBuffer[0] = rtc;
		nwc24TimeCommonBuffer[1] = param_2;
        
		result = NWC24iIoctlResourceManager_(__FUNCTION__, ipcResult, 0x17, nwc24TimeCommonBuffer, 0x20, nwc24TimeCommonResult, 0x20);
		if (result >= 0) {
			result = nwc24TimeCommonResult[0];
		}
        
		iVar2 = NWC24iCloseResourceManager_(__FUNCTION__, ipcResult);
		if (result >= 0) {
			result = iVar2;
		}
    }
    
    return result;
}

static s32 NWC24iOpenResourceManager_(const char* funcName, const char* path, s32* resultPtr, IPCOpenMode mode){
    if(resultPtr == NULL){
        return -3;
    }
    
	*resultPtr = IOS_Open(path, mode);
    
	if (*resultPtr < 0) {
		if (*resultPtr == -6) return -29;
		else return -42;
	}else {
		return 0;
	}
}

static s32 NWC24iCloseResourceManager_(const char* funcName, s32 fd){
	if (IOS_Close(fd) < 0) return -42;
	else return 0;
}

static s32 CallbackAsyncIpc(s32 result, void* arg);

//unused
static s32 NWC24iCloseResourceManagerAsync_(const char* funcName, s32 fd, void* callbackArg){
	if (IOS_CloseAsync(fd, CallbackAsyncIpc, callbackArg) < 0) return -42;
	else {
		NWC24iIsRequestPending = TRUE;
		return 0;
	}
}

static s32 NWC24iIoctlResourceManager_(const char* funcName, s32 fd, s32 type, void* in, s32 inSize, void* out, s32 outSize){
	if (IOS_Ioctl(fd, type, in, inSize, out, outSize) < 0) return -42;
	else return 0;
}

static s32 NWC24iIoctlResourceManagerAsync_(const char* funcName, s32 fd, s32 type, void* in, s32 inSize, void* out, s32 outSize, void* callbackArg){
	if (IOS_IoctlAsync(fd, type, in, inSize, out, outSize, CallbackAsyncIpc, callbackArg) < 0) return -42;
	else {
		NWC24iIsRequestPending = TRUE;
		return 0;
	}
}

static BOOL NWC24iIsAsyncRequestPending_(){
	return NWC24iIsRequestPending;
}

static s32 CallbackAsyncIpc(s32 result, void* arg){
	if (arg != NULL) {
		*(s32*)arg = result;
	}
	NWC24iIsRequestPending = FALSE;
	return 0;
}

static s32 CheckCallingStatus(const char* funcName){
	if (OSGetCurrentThread() == NULL) return -1;
	else return 0;
}

static s32 GetRTC(s32* destPtr) {
	s64 time;
	u32 bias;
	u32 status;

	while(TRUE){
		status = SCCheckStatus();
	
		if (status == 2) {
			return -1;
		}
		if (status == 0) {
			bias = SCGetCounterBias();
			time = OSGetTime();
			*destPtr = OSTicksToSeconds(time) - bias;
			return 0;
		}
	}
}
