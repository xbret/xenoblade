#include "PowerPC_EABI_Support/MetroTRK/trk.h"

TRKPacketSeq gPacketSeq;

TRKResult TRKMessageSend(TRK_Msg* msg)
{
    u16 val = gPacketSeq.unk0;
    if(val == 0) val = 1;
    msg->unk12 = val;
    gPacketSeq.unk0 = (val & 0xFFFF) + 1;

	u32 write_val = TRKWriteUARTN(&msg->mMsg, msg->mMsgLength);
	if(write_val != 0) OSReport("MetroTRK - TRK_WriteUARTN returned %ld\n", write_val);
	return EXIT_SUCCESS;
}
