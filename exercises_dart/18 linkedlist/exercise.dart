// --- Directions
// Implement classes Node and Linked Lists
// See 'directions' document

class Node {
  int data;
  Node next;

  Node(this.data, [this.next = null]);
}

class LinkedList extends Iterable {
  Node head;

  void insertFirst(int data) {}

  void insertLast(int data) {}

  int size() {
    return 0;
  }

  Node getFirst() {
    return null;
  }

  Node getAt(int index) {
    return null;
  }

  void removeFirst() {}

  Node getLast() {
    return null;
  }

  void removeAt(index) {}

  void insertAt(int data, int index) {}

  void removeLast() {}

  void clear() {}

  forEach(Function(Node node) fn) {}

  @override
  Iterator get iterator => null;
}
