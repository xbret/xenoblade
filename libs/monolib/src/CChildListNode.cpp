#include "monolib/CChildListNode.hpp"

CChildListNode::CChildListNode()
    : parent(NULL) {}

void CChildListNode::Reset() {
    CDoubleListNode::Reset();
    parent = NULL;
    children.Reset();
}
