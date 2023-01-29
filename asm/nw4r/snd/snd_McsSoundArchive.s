.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4r::ut::IOStream::GetBufferAlign() const
.fn GetBufferAlign__Q34nw4r2ut8IOStreamCFv, global
/* 80417150 003E0710  38 60 00 01 */	li r3, 0x1
/* 80417154 003E0714  4E 80 00 20 */	blr
.endfn GetBufferAlign__Q34nw4r2ut8IOStreamCFv

# nw4r::ut::IOStream::GetSizeAlign() const
.fn GetSizeAlign__Q34nw4r2ut8IOStreamCFv, global
/* 80417158 003E0718  38 60 00 01 */	li r3, 0x1
/* 8041715C 003E071C  4E 80 00 20 */	blr
.endfn GetSizeAlign__Q34nw4r2ut8IOStreamCFv

# nw4r::ut::IOStream::GetOffsetAlign() const
.fn GetOffsetAlign__Q34nw4r2ut8IOStreamCFv, global
/* 80417160 003E0720  38 60 00 01 */	li r3, 0x1
/* 80417164 003E0724  4E 80 00 20 */	blr
.endfn GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
