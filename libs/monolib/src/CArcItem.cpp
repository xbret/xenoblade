#include "monolib/CArcItem.hpp"

CArcItem::CArcItem(int param){
    unk4 = 0;
    unk24 = nullptr;
    unk28 = nullptr;
    unk2C = 0;
    unk30 = 0;
    unk34 = param;
    unk38 = 0;
    CDeviceFile_openFile1(Heap_getRegionIndex2(), param, this);
}
