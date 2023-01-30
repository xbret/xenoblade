.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#not sure if these belong in this file

.fn GetBufferAlign__Q34nw4r2ut8IOStreamCFv, global
/* 80417150 003E0710  38 60 00 01 */	li r3, 1
/* 80417154 003E0714  4E 80 00 20 */	blr 
.endfn GetBufferAlign__Q34nw4r2ut8IOStreamCFv

.fn GetSizeAlign__Q34nw4r2ut8IOStreamCFv, global
/* 80417158 003E0718  38 60 00 01 */	li r3, 1
/* 8041715C 003E071C  4E 80 00 20 */	blr 
.endfn GetSizeAlign__Q34nw4r2ut8IOStreamCFv

.global GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
GetOffsetAlign__Q34nw4r2ut8IOStreamCFv:
/* 80417160 003E0720  38 60 00 01 */	li r3, 1
/* 80417164 003E0724  4E 80 00 20 */	blr 