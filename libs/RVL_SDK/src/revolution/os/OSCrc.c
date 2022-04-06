#include "revolution/OS.h"

/* CRC-16 parameters:
Polynomial: 0x8005, initial value = 0, xor out = 0, reflect in, reflect out */
u16 OSCalcCRC16(const u8* array, s32 length) {
    static const u16 crc16_table[] = {0x0000,0xCC01,0xD801,0x1400,0xF001,0x3C00,0x2800,0xE401,0xA001,0x6C00,0x7800,0xB401,0x5000,0x9C01,0x8801,0x4400};
    u32 crc = 0;

    for(s32 i = 0; i != length; i++){
        u32 val = *array;
        crc = (crc / 16) ^ crc16_table[(crc ^ val) & 0xF];
        crc = (crc / 16) ^ crc16_table[(crc ^ (val / 16)) & 0xF];
        array++;
    }

    return crc;
}

//unused
u32 OSCalcCRC32(){
}
