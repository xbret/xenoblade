#include "monolib/CDoubleListNode.hpp"

CDoubleListNode::CDoubleListNode() {
    CDoubleListNode::Reset();
}

void CDoubleListNode::Reset() {
    next = NULL;
    prev = NULL;
    unk8 = 0;
    unkC = -1;
}

CDoubleListNode* CDoubleListHeader::InsertTop(CDoubleListNode* node) {
    CDoubleListNode* oldHead;
    CDoubleListNode* headPrev;

    if (node != NULL) {
        oldHead = Head();
        
        //No list, create a new one
        if (oldHead == NULL) {
            head = node;
            node->SetNext(node);
            node->SetPrev(node);
        }
        //Insert node at top of existing list
        else {
            //Needed because list is circular
            headPrev = head->GetPrev();
            //Fix link
            node->SetPrev(headPrev);
            node->SetNext(oldHead);
            headPrev->SetNext(node);
            head->SetPrev(node);
        }
    }

    return node;
}

CDoubleListNode* CDoubleListHeader::InsertEnd(CDoubleListNode* node) {
    if (node != NULL) {
        //List is circular
        InsertTop(node);
        head = node;   
    }

    return node;
}

CDoubleListNode* CDoubleListHeader::Remove(CDoubleListNode* child) {
    CDoubleListNode* myHead;

    //Nothing to remove
    if (child == NULL) {
        return NULL;
    }

    myHead = Head();

    //List is not empty
    if (myHead != NULL) {
        //Only one element
        if (myHead == myHead->GetPrev()) {
            //Child is not that one element
            if (myHead != child) {
                //Therefore it is not in this list
                return NULL;
            }

            //The child was the only element
            head = NULL;
        }
        //More than one element
        else {
            //Remove link from prev child
            if (child->GetNext() != NULL) {
                child->GetNext()->SetPrev(child->GetPrev());
            }
            //Remove link from next child
            if (child->GetPrev() != NULL) {
                child->GetPrev()->SetNext(child->GetNext());
            }

            //Fix head if child was the head
            if (child == head) {
                head = child->GetNext();
            }
        }
    
        //Isolate child
        child->SetNext(NULL);
        child->SetPrev(NULL);
    }

    return child;
}
