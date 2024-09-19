#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4hbm/ut.h>

namespace nw4hbm {
namespace ut {

#define OBJ_TO_NODE(list, object)                                              \
    reinterpret_cast<Link*>((char*)object + list->offset)

void List_Init(List* list, u16 offset) {
    list->headObject = NULL;
    list->tailObject = NULL;
    list->numObjects = NULL;
    list->offset = offset;
}

static void SetFirstObject(List* list, void* object) {
    Link* link = OBJ_TO_NODE(list, object);
    link->nextObject = NULL;
    link->prevObject = NULL;

    list->headObject = object;
    list->tailObject = object;

    list->numObjects++;
}

void List_Append(List* list, void* object) {
    if (list->headObject == NULL) {
        SetFirstObject(list, object);
    } else {
        // Old tail <- New tail relationship
        Link* link = OBJ_TO_NODE(list, object);
        link->prevObject = list->tailObject;
        link->nextObject = NULL;

        // Old tail -> New tail relationship
        OBJ_TO_NODE(list, list->tailObject)->nextObject = object;
        list->tailObject = object;

        list->numObjects++;
    }
}

void List_Prepend(List* list, void* object) {
    if (list->headObject == NULL) {
        SetFirstObject(list, object);
    } else {
        // New head -> Old head relationship
        Link* link = OBJ_TO_NODE(list, object);
        link->prevObject = NULL;
        link->nextObject = list->headObject;

        // New head <- Old head relationship
        OBJ_TO_NODE(list, list->headObject)->prevObject = object;
        list->headObject = object;

        list->numObjects++;
    }
}

void List_Insert(List* list, void* target, void* object) {
    if (target == NULL) {
        List_Append(list, object);
    } else if (target == list->headObject) {
        List_Prepend(list, object);
    } else {
        Link* link = OBJ_TO_NODE(list, target);
        Link* prevObj = OBJ_TO_NODE(list, link->prevObject);
        Link* prevLnk = OBJ_TO_NODE(list, object);

        // prevNode <- newNode
        prevLnk->prevObject = link->prevObject;
        // prevNode <- newNode -> nextNode
        prevLnk->nextObject = target;
        // prevNode <-> newNode -> nextNode
        prevObj->nextObject = object;
        // prevNode <-> newNode <-> nextNode
        OBJ_TO_NODE(list, target)->prevObject = object;

        list->numObjects++;
    }
}

void List_Remove(List* list, void* object) {
    Link* link = OBJ_TO_NODE(list, object);

    // Fix previous node relationship
    if (link->prevObject == NULL) {
        list->headObject = link->nextObject;
    } else {
        OBJ_TO_NODE(list, link->prevObject)->nextObject = link->nextObject;
    }

    // Fix next node relationship
    if (link->nextObject == NULL) {
        list->tailObject = link->prevObject;
    } else {
        OBJ_TO_NODE(list, link->nextObject)->prevObject = link->prevObject;
    }

    link->prevObject = NULL;
    link->nextObject = NULL;

    list->numObjects--;
}

void* List_GetNext(const List* list, const void* object) {
    if (object == NULL) {
        return list->headObject;
    }

    return OBJ_TO_NODE(list, object)->nextObject;
}

void* List_GetPrev(const List* list, const void* object) {
    if (object == NULL) {
        return list->tailObject;
    }

    return OBJ_TO_NODE(list, object)->prevObject;
}

void* List_GetNth(const List* list, u16 index) {
    int count;
    Link* object;

    for (count = 0, object = NULL; object = reinterpret_cast<Link*>(List_GetNext(list, object)); count++) {
        if (index == count) {
            return reinterpret_cast<void*>(object);
        }
    }

    return NULL;
}

} // namespace ut
} // namespace nwhbm
