//----------------------------------------------------------------------
// msgxtrct.h
//
// DESCRIPTION
//    This file is to be used on the host side to extract needed data
//    from the debug server's reply buffer. Pass in the starting
//    address of buffer (the data only, no framing byte) as an unsigned char *
//
// INCLUDES
//    dstypes.h for the debug server types
//    EndianUtils.h for little endian hosts only
//
//----------------------------------------------------------------------

#ifndef __MSGXTRCT_H__
#define __MSGXTRCT_H__


#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/msgcmd.h"


#ifndef SNOFFSET
    #ifdef TRK_USES_SN
        #define SNOFFSET 1
    #else
        #define SNOFFSET 0
    #endif
#endif

#define MW_HOST_ENDIAN MW_BIG_ENDIAN

#if MW_HOST_ENDIAN==MW_LITTLE_ENDIAN
//----------------------------------------------------------------------
// All little endian accessors here
//----------------------------------------------------------------------
    #define DSGetReplyDataLength(_buf_addr_)             Swap2(*((u16 *)&_buf_addr_[2 + SNOFFSET]))
    #define DSGetReplyPC(_buf_addr_)                     Swap4(*((u32 *)&_buf_addr_[1 + SNOFFSET]))
    #define DSGetReplyInstAtPC(_buf_addr_)               Swap4(*((u32 *)&_buf_addr_[5 + SNOFFSET]))

    #define DSGetReply16BitNotifyPC(_buf_addr_)          Swap2(*((u16 *)&_buf_addr_[1 + SNOFFSET]))
    #define DSGetReply16BitInstAtPC(_buf_addr_)          Swap2(*((u16 *)&_buf_addr_[3 + SNOFFSET]))
    #define DSGetReply16BitPreviousIP(_buf_addr_)        Swap2(*((u32 *)&_buf_addr_[5 + SNOFFSET]))
    #define DSGetReply16BitProcessID(_buf_addr_)         Swap2(*((u32 *)&_buf_addr_[7 + SNOFFSET]))
    #define DSGetReply16BitThreadID(_buf_addr_)          Swap4(*((u32 *)&_buf_addr_[9 + SNOFFSET]))

    #define DSGetReply64BitNotifyPC(_buf_addr_)          Swap8(*((u64 *)&_buf_addr_[1 + SNOFFSET]))
    #define DSGetReply32BitInstAfter64BitPC(_buf_addr_)  Swap4(*((u32 *)&_buf_addr_[9 + SNOFFSET]))

    #define DSGetReplyVersion(_buf_addr_)                Swap4(*((u32 *)&_buf_addr_[2 + SNOFFSET]))
    #define DSGetReplyNofityPC(_buf_addr_)               Swap4(*((u32 *)&_buf_addr_[1 + SNOFFSET]))
    #define DSGetReplyInstruction(_buf_addr_)            Swap4(*((u32 *)&_buf_addr_[5 + SNOFFSET]))
    #define DSGetReplyInstruction16(_buf_addr_)          Swap2(*((u16 *)&_buf_addr_[5 + SNOFFSET]))
    #define DSGetReply2ndInstruction16(_buf_addr_)       Swap2(*((u16 *)&_buf_addr_[7 + SNOFFSET]))
    #define DSGetReply3rdInstruction16(_buf_addr_)       Swap2(*((u16 *)&_buf_addr_[9 + SNOFFSET]))
    #define DSGetReplyExceptionType16(_buf_addr_)        Swap2(*((u16 *)&_buf_addr_[9 + SNOFFSET]))
    #define DSGetReplyDSPExceptionType16(_buf_addr_)     Swap2(*((u16 *)&_buf_addr_[11 + SNOFFSET]))
    #define DSGetReplySHExceptionType32(_buf_addr_)      Swap4(*((u32 *)&_buf_addr_[7 + SNOFFSET]))
    #define DSGetReplyExceptionType32(_buf_addr_)        Swap4(*((u32 *)&_buf_addr_[9 + SNOFFSET]))
    #define DSGetReplyExceptionPSWType32(_buf_addr_)     Swap4(*((u32 *)&_buf_addr_[13 + SNOFFSET]))

    #define DSGetReplyBreakPointID(_buf_addr_)           Swap4(*((u32 *)&_buf_addr_[2 + SNOFFSET]))

    #define DSGetReplyReadInfoReturnCount(_buf_addr_)    Swap4(*((u32 *)&_buf_addr_[2 + SNOFFSET]))
    #define DSGetReplyReadInfoTotalCount(_buf_addr_)     Swap4(*((u32 *)&_buf_addr_[6 + SNOFFSET]))

    #define DSGetReplyRWFileIOHandle(_buf_addr_)         Swap4(*((u32 *)&_buf_addr_[1 + SNOFFSET]))
    #define DSGetReplyRWFileDataLength(_buf_addr_)       Swap2(*((u16 *)&_buf_addr_[5 + SNOFFSET]))
    #define DSGetReplyRWFileProcessID(_buf_addr_)        Swap4(*((u32 *)&_buf_addr_[7 + SNOFFSET]))
    #define DSGetReplyRWFileThreadID(_buf_addr_)         Swap4(*((u32 *)&_buf_addr_[11 + SNOFFSET]))

    #define DSGetReply32BitInstAtPC(_buf_addr_)          Swap4(*((u32 *)&_buf_addr_[9 + SNOFFSET]))
    #define DSGetReply32ExceptionType(_buf_addr_)        Swap4(*((u32 *)&_buf_addr_[17 + SNOFFSET]))

    #define DSGetReplyFileHandle(_buf_addr_)             Swap4(*((u32 *)&_buf_addr_[3 + SNOFFSET]))
    #define DSGetReplyTimeStamp(_buf_addr_)              Swap4(*((u32 *)&_buf_addr_[7 + SNOFFSET]))
    #define DSGetReplyFileRWLength(_buf_addr_)           Swap2(*((u16 *)&_buf_addr_[3 + SNOFFSET]))

#else

//----------------------------------------------------------------------
// All big endian accessors here
//----------------------------------------------------------------------

// is what's defined actually any faster than the following? it's certainly harder to read
#if 1   // FOR THE WII / NDEV, ENABLE THESE AND AT THE SAME TIME ADD
        // SUPPORT FOR READING UNSIGNED CHARS AS WELL AS SIGNED VARS
    #define DSFetch_s8(_p_)     (*((s8 *)_p_))
    #define DSFetch_s16(_p_)    (*((s16 *)_p_))
    #define DSFetch_s32(_p_)    (*((s32 *)_p_))
    #define DSFetch_s64(_p_)    (*((s64 *)_p_))

    #define DSFetch_u8(_p_)     (*((u8 *)_p_))
    #define DSFetch_u16(_p_)    (*((u16 *)_p_))
    #define DSFetch_u32(_p_)    (*((u32 *)_p_))
    #define DSFetch_u64(_p_)    (*((u64 *)_p_))

#else

    #define DSFetch_u16(_p_)    ((u16)(((_p_)[0] << 8) | (_p_)[1]))

    #define DSFetch_u32(_p_)    ((u32)(((_p_)[0] << 24) | \
                                        ((_p_)[1] << 16) | \
                                        ((_p_)[2] << 8) | (_p_)[3]))
#endif

    #define DSGetReplyDataLength(_buf_addr_)             DSFetch_u16(&_buf_addr_[2 + SNOFFSET])
    #define DSGetReplyPC(_buf_addr_)                     DSFetch_u32(&_buf_addr_[1 + SNOFFSET])
    #define DSGetReplyInstAtPC(_buf_addr_)               DSFetch_u32(&_buf_addr_[5 + SNOFFSET])

    #define DSGetReply16BitNotifyPC(_buf_addr_)          DSFetch_u16(&_buf_addr_[1 + SNOFFSET])
    #define DSGetReply16BitInstAtPC(_buf_addr_)          DSFetch_u16(&_buf_addr_[3 + SNOFFSET])
    #define DSGetReply16BitPreviousIP(_buf_addr_)        DSFetch_u32(&_buf_addr_[5 + SNOFFSET])
    #define DSGetReply16BitProcessID(_buf_addr_)         DSFetch_u32(&_buf_addr_[7 + SNOFFSET])
    #define DSGetReply16BitThreadID(_buf_addr_)          DSFetch_u32(&_buf_addr_[9 + SNOFFSET])

//    #define DSGetReply64BitNotifyPC(_buf_addr)         DSFetch_u64(&_buf_addr_[1 + SNOFFSET])
    #define DSGetReply32BitInstAfter64BitPC(_buf_addr_)  DSFetch_u32(&_buf_addr_[9 + SNOFFSET])

    #define DSGetReplyVersion(_buf_addr_)                DSFetch_u32(&_buf_addr_[2 + SNOFFSET])
    #define DSGetReplyNofityPC(_buf_addr_)               DSFetch_u32(&_buf_addr_[1 + SNOFFSET])
    #define DSGetReplyInstruction(_buf_addr_)            DSFetch_u32(&_buf_addr_[5 + SNOFFSET])
    #define DSGetReplyInstruction16(_buf_addr_)          DSFetch_u16(&_buf_addr_[5 + SNOFFSET])
    #define DSGetReplyExceptionType16(_buf_addr_)        DSFetch_u16(&_buf_addr_[9 + SNOFFSET])
    #define DSGetReplyExceptionType32(_buf_addr_)        DSFetch_u32(&_buf_addr_[9 + SNOFFSET])
    #define DSGetReplyExceptionPSWType32(_buf_addr_)     DSFetch_u32(&_buf_addr_[13 + SNOFFSET])

    #define DSGetReplyBreakPointID(_buf_addr_)           DSFetch_u32(&_buf_addr_[2 + SNOFFSET]))

    #define DSGetReplyReadInfoReturnCount(_buf_addr_)    DSFetch_u32(&_buf_addr_[2 + SNOFFSET]))
    #define DSGetReplyReadInfoTotalCount(_buf_addr_)     DSFetch_u32(&_buf_addr_[6 + SNOFFSET]))

    #define DSGetReplyRWFileIOHandle(_buf_addr_)         DSFetch_u32(&_buf_addr_[1 + SNOFFSET])
    #define DSGetReplyRWFileDataLength(_buf_addr_)       DSFetch_u16(&_buf_addr_[5 + SNOFFSET])
    #define DSGetReplyRWFileProcessID(_buf_addr_)        DSFetch_u32(&_buf_addr_[7 + SNOFFSET]))
    #define DSGetReplyRWFileThreadID(_buf_addr_)         DSFetch_u32(&_buf_addr_[11 + SNOFFSET]))

    #define DSGetReply32BitInstAtPC(_buf_addr_)          DSFetch_u32(&_buf_addr_[9 + SNOFFSET])
    #define DSGetReply32ExceptionType(_buf_addr_)        DSFetch_u32(&_buf_addr_[17 + SNOFFSET])

    #define DSGetReplyFileHandle(_buf_addr_)             DSFetch_u32(&_buf_addr_[3 + SNOFFSET])
    #define DSGetReplyTimeStamp(_buf_addr_)              DSFetch_u32(&_buf_addr_[7 + SNOFFSET])
#endif

// All non Endian specific calls go here
#define DSGetReplyCommand(_buf_addr_)                    (*(u8 *)&_buf_addr_[0])
#define DSGetReplyError(_buf_addr_)                      (*(u8 *)&_buf_addr_[1 + SNOFFSET])
#define DSGetReplyMemDataPtr(_buf_addr_)                 ((u8 *)&_buf_addr_[4 + SNOFFSET])
#define DSGetReplyRegDataPtr(_buf_addr_)                 ((u8 *)&_buf_addr_[2 + SNOFFSET])
#define DSGetReplySupportMask(_buf_addr_)                ((u8 *)&_buf_addr_[2 + SNOFFSET])
#define DSGetReplyNotifyCommand(_buf_addr_)              (*(u8 *)&_buf_addr_[0])
#define DSGetReplySequenceNumber(_buf_addr_)             (*(u8 *)&_buf_addr_[1])
#define DSGetReplyCPUMajor(_buf_addr_)                   (*(u8 *)&_buf_addr_[2 + SNOFFSET])
#define DSGetReplyCPUMinor(_buf_addr_)                   (*(u8 *)&_buf_addr_[3 + SNOFFSET])
#define DSGetReplyBigEndian(_buf_addr_)                  (*(u8 *)&_buf_addr_[4 + SNOFFSET])
#define DSGetReplyDefaultTypeSize(_buf_addr_)            (*(u8 *)&_buf_addr_[5 + SNOFFSET])
#define DSGetReplyFPTypeSize(_buf_addr_)                 (*(u8 *)&_buf_addr_[6 + SNOFFSET])
#define DSGetReplyExtended1TypeSize(_buf_addr_)          (*(u8 *)&_buf_addr_[7 + SNOFFSET])
#define DSGetReplyExtended2TypeSize(_buf_addr_)          (*(u8 *)&_buf_addr_[8 + SNOFFSET])
#define DSGetReplyMCOREExceptionType8(_buf_addr_)        (*((u8 *)&_buf_addr_[7 + SNOFFSET]))
#define DSGetReplyRWFileDataPtr(_buf_addr_)              ((u8 *)&_buf_addr_[9 + SNOFFSET])
#define DSGetReplyL3RWFileDataPtr(_buf_addr_)            ((u8 *)&_buf_addr_[15 + SNOFFSET])
#define DSGetReplyReadInfoData(_buf_addr_)               ((u8 *)&_buf_addr_[10 + SNOFFSET])
#define DSGetReplyFileOpenIOResult(_buf_addr_)           (*(u8 *)&_buf_addr_[2 + SNOFFSET])
#define DSGetReplyMajorVersion(_buf_addr_)               (*(u8 *)&_buf_addr_[2 + SNOFFSET])
#define DSGetReplyMinorVersion(_buf_addr_)               (*(u8 *)&_buf_addr_[3 + SNOFFSET])
#define DSGetReplyMajorApiVersion(_buf_addr_)            (*(u8 *)&_buf_addr_[4 + SNOFFSET])
#define DSGetReplyMinorApiVersion(_buf_addr_)            (*(u8 *)&_buf_addr_[5 + SNOFFSET])

#endif // __MSGXTRCT_H__
