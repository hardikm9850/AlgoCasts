// --- Directions
// Given a linked list, return true if the list
// is circular, false if it is not.
// --- Examples
//   const l = new List();
//   const a = new Node('a');
//   const b = new Node('b');
//   const c = new Node('c');
//   l.head = a;
//   a.next = b;
//   b.next = c;
//   c.next = b;
//   circular(l) // true

import 'linked_list.dart';

bool circular(LinkedList list) {
  Map<Node, int> seenNodes = {};

  for (Node node in list) {
    print("node ${node.data}");
    if (seenNodes[node] != null) {
      return true;
    }
    seenNodes[node] = 1;
  }

  return false;
}
