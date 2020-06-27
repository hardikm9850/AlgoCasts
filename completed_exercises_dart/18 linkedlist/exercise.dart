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

  void insertFirst(int data) {
    head = Node(data, head);
  }

  void insertLast(int data) {
    var node = getLast();
    if (node == null) {
      head = Node(data);
    } else {
      node.next = Node(data);
    }
  }

  int size() {
    Node nextNode = head;
    int size = 0;
    while (nextNode != null) {
      nextNode = nextNode.next;
      size++;
    }
    return size;
  }

  Node getFirst() {
    return head;
  }

  Node getAt(int index) {
    Node nextNode = head;
    int counter = 0;
    while (nextNode != null) {
      if (counter == index) {
        return nextNode;
      }
      nextNode = nextNode.next;
      counter++;
    }
    return null;
  }

  void removeFirst() {
    head = head.next;
  }

  Node getLast() {
    Node nextNode = head;
    if (head == null) {
      return null;
    }
    while (nextNode.next != null) {
      nextNode = nextNode.next;
    }
    return nextNode;
  }

  void removeAt(index) {
    Node nextNode = head;
    int counter = 0;
    if (head == null) {
      return;
    }
    if (head.next == null) {
      head = null;
    }
    if (index == 0) {
      head = getAt(1);
      return;
    }
    while (nextNode != null) {
      if (counter == index - 1) {
        nextNode.next = getAt(index + 1);
        return;
      }
      nextNode = nextNode.next;
      counter++;
    }
    return;
  }

  void insertAt(int data, int index) {
    Node nextNode = head;
    int counter = 0;
    if (index == 0) {
      insertFirst(data);
      return;
    }
    while (nextNode != null) {
      if (counter == index - 1) {
        nextNode.next = Node(data, getAt(index));
        return;
      }
      nextNode = nextNode.next;
      counter++;
    }
    insertLast(data);
  }

  void removeLast() {
    Node nextNode = head;
    if (head == null) {
      return;
    }
    if (head.next == null) {
      head = null;
      return;
    }
    Node prevNode = null;
    while (nextNode.next != null) {
      prevNode = nextNode;
      nextNode = nextNode.next;
    }
    prevNode?.next = null;
  }

  void clear() {
    head = null;
  }

  forEach(Function(Node node) fn) {
    Node nextNode = head;
    while (nextNode != null) {
      fn(nextNode);
      nextNode = nextNode.next;
    }
  }

  @override
  Iterator get iterator => LinkedListIterator(this);
}

class LinkedListIterator implements Iterator {
  LinkedList list;

  LinkedListIterator(this.list);

  int currentIndex = -1;

  @override
  Node get current {
    return list.getAt(currentIndex);
  }

  @override
  bool moveNext() {
    currentIndex++;
    return (list.getAt(currentIndex) != null);
  }
}
