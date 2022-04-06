ENTRY(__start)
_SDA_BASE_ = 0x8066C180;
_SDA2_BASE_ = 0x80670380;
PHDRS
{
    text0 PT_LOAD;
    text1 PT_LOAD;
    data0 PT_LOAD;
    data1 PT_LOAD;
    data2 PT_LOAD;
    data3 PT_LOAD;
    data4 PT_LOAD;
    data5 PT_LOAD;
    data6 PT_LOAD;
    data7 PT_LOAD;
    bss PT_LOAD;
}
SECTIONS
{
    .text0 0x80004000 : { *(.text0) } : text0
    .text1 0x80039220 : { *(.text1) } : text1
    .data0 0x800066E0 : { *(.data0) } : data0
    .data1 0x80021020 : { *(.data1) } : data1
    .data2 0x804F5900 : { *(.data2) } : data2
    .data3 0x804F5B00 : { *(.data3) } : data3
    .data4 0x804F5B20 : { *(.data4) } : data4
    .data5 0x805281E0 : { *(.data5) } : data5
    .data6 0x80664180 : { *(.data6) } : data6
    .data7 0x80668380 : { *(.data7) } : data7
    .bss 0x80573C80 (NOLOAD) : { *(.bss) } : bss
}
