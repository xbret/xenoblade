#include "revolution/OS.h"

//unused
void OSNotifyLink(){
}

//unused
void OSNotifyUnlink(){
}

//unused
void OSNotifyPreLink(){
}

//unused
void OSNotifyPostLink(){
}

//unused
void OSSetStringTable(){
}

//unused
void Relocate(){
}

//unused
void Link(){
}

//unused
void OSLink(){
}

//unused
void OSLinkFixed(){
}

//unused
void Undo(){
}

//unused
void OSUnlink(){
}

void __OSModuleInit(void) {
    OS_FIRST_REL = OS_LAST_REL = NULL;
    OS_REL_NAME_TABLE = NULL;
}

//unused
void OSSearchModule(){
}
