ENTRY(__start)
_SDA_BASE_ = 0x8066C180;
_SDA2_BASE_ = 0x80670380;
PHDRS
{
    init PT_LOAD;
    text PT_LOAD;
    extab_ PT_LOAD;
    extabindex_ PT_LOAD;
    ctors PT_LOAD;
    dtors PT_LOAD;
    rodata PT_LOAD;
    data PT_LOAD;
    sdata PT_LOAD;
    sbss PT_LOAD;
    sdata2 PT_LOAD;
    sbss2 PT_LOAD;
    bss PT_LOAD;
}
SECTIONS
{
    .init 0x80004000 : { *(.init) } : init
    .text 0x80039220 : { *(.text) } : text
    extab_ 0x800066E0 : { *(extab_) } : extab_
    extabindex_ 0x80021020 : { *(extabindex_) } : extabindex_
    .ctors 0x804F5900 : { *(.ctors) } : ctors
    .dtors 0x804F5B00 : { *(.dtors) } : dtors
    .rodata 0x804F5B20 : { *(.rodata) } : rodata
    .data 0x805281E0 : { *(.data) } : data
    .sdata 0x80664180 : { *(.sdata) } : sdata
    .sbss 0x80666600 (NOLOAD) : { *(.sbss) } : sbss
    .sdata2 0x80668380 : { *(.sdata2) } : sdata2
    .sbss2 0x8066DCE0 (NOLOAD) : { *(.sbss2) } : sbss2
    .bss 0x80573C80 (NOLOAD) : { *(.bss) } : bss
}
