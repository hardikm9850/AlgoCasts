import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('A Node has properties "data" and "next"', () {
    var nextNode = Node(2);
    var node = Node(1, nextNode);
    expect(node.data, 1);
    expect(node.next, nextNode);
  });

  test('Insert First appends a node to the start of the list', () {
    var l = new LinkedList();
    l.insertFirst(1);
    expect(l.head.data, 1);
    l.insertFirst(2);
    expect(l.head.data, 2);
  });

  test('Size returns the number of items in the linked list', () {
    var l = new LinkedList();
    expect(l.size(), 0);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    expect(l.size(), 4);
  });

  test('GetFirst returns the first element', () {
    var l = new LinkedList();
    l.insertFirst(1);
    expect(l.getFirst().data, 1);
    l.insertFirst(2);
    expect(l.getFirst().data, 2);
  });

  test('GetLast returns the last element', () {
    var l = new LinkedList();
    l.insertFirst(2);
    expect(l.getLast().data, 2);
    l.insertFirst(1);
    expect(l.getLast().data, 2);
  });

  test('Clear empties out the list', () {
    var l = new LinkedList();
    expect(l.size(), 0);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    expect(l.size(), 4);
    l.clear();
    expect(l.size(), 0);
  });

  test('RemoveFirst removes the first node when the list has a size of one',
      () {
    var l = new LinkedList();
    l.insertFirst(1);
    l.removeFirst();
    expect(l.size(), 0);
    expect(l.getFirst(), null);
  });

  test('RemoveFirst removes the first node when the list has a size of three',
      () {
    var l = new LinkedList();
    l.insertFirst(3);
    l.insertFirst(2);
    l.insertFirst(1);
    l.removeFirst();
    expect(l.size(), 2);
    expect(l.getFirst().data, 2);
    l.removeFirst();
    expect(l.size(), 1);
    expect(l.getFirst().data, 3);
  });

  test('RemoveLast removes the last node when list is empty', () {
    var l = new LinkedList();
    expect(() => l.removeLast(), returnsNormally);
  });

  test('RemoveLast removes the last node when list is length 1', () {
    var l = new LinkedList();
    l.insertFirst(1);
    l.removeLast();
    expect(l.head, null);
  });

  test('RemoveLast removes the last node when list is length 2', () {
    var l = new LinkedList();
    l.insertFirst(22);
    l.insertFirst(11);

    l.removeLast();

    expect(l.size(), 1);
    expect(l.head.data, 11);
  });

  test('RemoveLast removes the last node when list is length 3', () {
    var l = new LinkedList();
    l.insertFirst(33);
    l.insertFirst(22);
    l.insertFirst(11);
    l.removeLast();

    expect(l.size(), 2);
    expect(l.getLast().data, 22);
  });

  test('InsertLast on empty list adds head', () {
    var l = new LinkedList();
    l.insertLast(11);

    expect(l.size(), 1);
    expect(l.getLast().data, 11);
  });

  test('InsertLast adds to the end of the list', () {
    var l = new LinkedList();
    l.insertFirst(11);

    l.insertLast(22);

    expect(l.size(), 2);
    expect(l.getLast().data, 22);
  });

  test('GetAt returns the node at given index', () {
    var l = new LinkedList();
    expect(l.getAt(10), null);

    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);

    expect(l.getAt(0).data, 1);
    expect(l.getAt(1).data, 2);
    expect(l.getAt(2).data, 3);
    expect(l.getAt(3).data, 4);
  });

  test('RemoveAt removeAt doesnt crash on an empty list', () {
    var l = new LinkedList();
    expect(() {
      l.removeAt(0);
      l.removeAt(1);
      l.removeAt(2);
    }, returnsNormally);
  });

  test('removeAt doesnt crash on an index out of bounds', () {
    var l = new LinkedList();
    expect(() {
      var l = new LinkedList();
      l.insertFirst(11);
      l.removeAt(1);
    }, returnsNormally);
  });

  test('removeAt deletes the first node', () {
    var l = new LinkedList();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);
    expect(l.getAt(0).data, 1);
    l.removeAt(0);
    expect(l.getAt(0).data, 2);
  });

  test('removeAt deletes the node at the given index', () {
    var l = new LinkedList();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);
    expect(l.getAt(1).data, 2);
    l.removeAt(1);
    expect(l.getAt(1).data, 3);
  });

  test('removeAt works on the last node', () {
    var l = new LinkedList();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);
    expect(l.getAt(3).data, 4);
    l.removeAt(3);
    expect(l.getAt(3), null);
  });

  test(
      'InsertAt inserts a new node with data at the 0 index when the list is empty',
      () {
    var l = new LinkedList();
    l.insertAt(9, 0);
    expect(l.size(), 1);
    expect(l.getFirst().data, 9);
  });

  test('inserts a new node with data at the 0 index when the list has elements',
      () {
    var l = new LinkedList();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertAt(9, 0);
    expect(l.getAt(0).data, 9);
    expect(l.getAt(1).data, 1);
    expect(l.getAt(2).data, 2);
    expect(l.getAt(3).data, 3);
  });

  test('inserts a new node with data at a middle index', () {
    var l = new LinkedList();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);
    l.insertAt(99, 2);
    expect(l.getAt(0).data, 1);
    expect(l.getAt(1).data, 2);
    expect(l.getAt(2).data, 99);
    expect(l.getAt(3).data, 3);
    expect(l.getAt(4).data, 4);
  });

  test('inserts a new node with data at a last index', () {
    var l = new LinkedList();
    l.insertLast(1);
    l.insertLast(2);
    l.insertAt(99, 2);
    expect(l.getAt(0).data, 1);
    expect(l.getAt(1).data, 2);
    expect(l.getAt(2).data, 99);
  });

  test('insert a new node when index is out of bounds', () {
    var l = new LinkedList();
    l.insertLast(1);
    l.insertLast(2);
    l.insertAt(99, 30);

    expect(l.getAt(0).data, 1);
    expect(l.getAt(1).data, 2);
    expect(l.getAt(2).data, 99);
  });

  test('ForEach applies a transform to each node', () {
    var l = new LinkedList();

    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);

    l.forEach((node) {
      node.data += 10;
    });

    expect(l.getAt(0).data, 11);
    expect(l.getAt(1).data, 12);
    expect(l.getAt(2).data, 13);
    expect(l.getAt(3).data, 14);
  });

  group('for...in loops', () {
    test('works with the linked list', () {
      var l = new LinkedList();

      l.insertLast(1);
      l.insertLast(2);
      l.insertLast(3);
      l.insertLast(4);

      for (Node node in l) {
        print("hash: ${node.hashCode} data: ${node.data}");
        node.data += 10;
        print("hash: ${node.hashCode} data: ${node.data}");
      }

      expect(l.getAt(0).data, 11);
      expect(l.getAt(1).data, 12);
      expect(l.getAt(2).data, 13);
      expect(l.getAt(3).data, 14);
    });

    test('for...of works on an empty list', () {
      var l = new LinkedList();
      expect(() => {for (var node in l) {}}, returnsNormally);
    });
  });
}
