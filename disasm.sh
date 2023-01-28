#!/bin/sh -e
tools/dtk dol disasm orig/baserom.dol -s config/symbols.txt -p config/splits.txt -o .
