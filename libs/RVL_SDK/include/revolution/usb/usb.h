#ifndef RVL_SDK_USB_H
#define RVL_SDK_USB_H
#include <revolution/IPC.h>
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef void (*USBCallback)(IPCResult result, void* arg);
typedef void (*USBISOCallback)(IPCResult result, void* arg1, void* arg2);


IPCResult IUSB_OpenLib(void);
IPCResult IUSB_CloseLib(void);
IPCResult IUSB_OpenDeviceIds(const char* interface, u16 vid, u16 pid,
                             IPCResult* resultOut);
IPCResult IUSB_CloseDeviceAsync(s32 fd, USBCallback callback,
                                void* callbackArg);
IPCResult IUSB_ReadIntrMsgAsync(s32 fd, u32 endpoint, u32 length, void* buffer,
                                USBCallback callback, void* callbackArg);
IPCResult IUSB_ReadBlkMsgAsync(s32 fd, u32 endpoint, u32 length, void* buffer,
                               USBCallback callback, void* callbackArg);
IPCResult IUSB_WriteBlkMsgAsync(s32 fd, u32 endpoint, u32 length,
                                const void* buffer, USBCallback callback,
                                void* callbackArg);
IPCResult IUSB_WriteCtrlMsgAsync(s32 fd, u8 requestType, u8 request, u16 value,
                                 u16 index, u16 length, void* buffer,
                                 USBCallback callback, void* callbackArg);

#ifdef __cplusplus
}
#endif
#endif
