#include "PowerPC_EABI_Support/MetroTRK/msg.h"

TRKPacketSeq gPacketSeq;

DSError TRK_MessageSend(MessageBuffer* msg)
{
    ui32 write_val;
    ui16 val = gPacketSeq.unk0;
    if(val == 0) val = 1;
    *(ui16*)(msg->fData + 6) = val;
    gPacketSeq.unk0 = (val & 0xFFFF) + 1;

	write_val = TRK_WriteUARTN(&msg->fData, msg->fLength);
	if(write_val != 0) OSReport("MetroTRK - TRK_WriteUARTN returned %ld\n", write_val);
	return kNoError;
}
