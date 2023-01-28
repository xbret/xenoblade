.include "macros.inc"
.file "mm/MathConstants.o"

# 0x8066C9F8 - 0x8066CA14
.section .sdata2, "a"
.balign 8

# mm::pi
.obj pi__2mm, global
	.4byte 0x40490FDB
.endobj pi__2mm

# mm::tau
.obj tau__2mm, global
	.4byte 0x40C90FDB
.endobj tau__2mm

# mm::halfpi
.obj halfpi__2mm, global
	.4byte 0x3FC90FDB
.endobj halfpi__2mm

# mm::quarterpi
.obj quarterpi__2mm, global
	.4byte 0x3F490FDB
.endobj quarterpi__2mm

# mm::epsilon
.obj epsilon__2mm, global
	.4byte 0x358637BD
.endobj epsilon__2mm

# mm::rad2deg
.obj rad2deg__2mm, global
	.4byte 0x42652EE0
.endobj rad2deg__2mm

# mm::deg2rad
.obj deg2rad__2mm, global
	.4byte 0x3C8EFA35
.endobj deg2rad__2mm
