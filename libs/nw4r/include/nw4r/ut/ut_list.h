#ifndef NW4R_UT_LIST_H
#define NW4R_UT_LIST_H
#include <nw4r/types_nw4r.h>

namespace nw4r {
namespace ut {

struct List {
    void* headObject; // at 0x0
    void* tailObject; // at 0x4
    u16 numObjects;   // at 0x8
    u16 offset;       // at 0xA
};

struct Link {
    void* prevObject; // at 0x0
    void* nextObject; // at 0x4
};

void List_Init(List* list, u16 offset);

void List_Append(List* list, void* object);
void List_Prepend(List* list, void* object);

void List_Insert(List* list, void* next, void* object);
void List_Remove(List* list, void* object);

void* List_GetNext(const List* list, const void* object);
inline const void* List_GetNextConst(const List* list, const void* object) {
    return List_GetNext(list, object);
}

void* List_GetPrev(const List* list, const void* object);
inline const void* List_GetPrevConst(const List* list, const void* object) {
    return List_GetPrev(list, object);
}

void* List_GetNth(const List* list, u16 index);
inline const void* List_GetNthConst(const List* list, u16 index) {
    return List_GetNth(list, index);
}

inline void* List_GetFirst(const List* list) {
    return List_GetNext(list, NULL);
}
inline const void* List_GetFirstConst(const List* list) {
    return List_GetFirst(list);
}

inline void* List_GetLast(const List* list) {
    return List_GetPrev(list, NULL);
}
inline const void* List_GetLastConst(const List* list) {
    return List_GetLast(list);
}

inline u16 List_GetSize(const List* list) {
    return list->numObjects;
}

} // namespace ut
} // namespace nw4r

#endif
