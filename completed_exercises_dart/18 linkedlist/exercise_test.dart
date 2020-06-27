import 'package:test/test.dart';
import 'exercise.dart';

void main() {

  test('A Node has properties "data" and "next"', () {
    var node = new Node('a', 'b');
    expect(node.data, 'a');
    expect(node.next, 'b');
  });

  test('Insert First appends a node to the start of the list', () {
    var l = new List();
    l.insertFirst(1);
    expect(l.head.data, 1);
    l.insertFirst(2);
    expect(l.head.data, 2);
  });

  test('Size returns the number of items in the linked list', () {
    var l = new List();
    expect(l.size(), 0);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    expect(l.size(), 4);
  });

  test('GetFirst returns the first element', () {
    var l = new List();
    l.insertFirst(1);
    expect(l.getFirst().data, 1);
    l.insertFirst(2);
    expect(l.getFirst().data, 2);
  });

  test('GetLast returns the last element', () {
    var l = new List();
    l.insertFirst(2);
    expect(l.getLast(), { data: 2, next: null });
    l.insertFirst(1);
    expect(l.getLast(), { data: 2, next: null });
  });

  test('Clear empties out the list', () {
    var l = new List();
    expect(l.size(), 0);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    l.insertFirst(1);
    expect(l.size(), 4);
    l.clear();
    expect(l.size(), 0);
  });

  test('RemoveFirst removes the first node when the list has a size of one', () {
    var l = new List();
    l.insertFirst('a');
    l.removeFirst();
    expect(l.size(), 0);
    expect(l.getFirst(), null);
  });

  test('RemoveFirst removes the first node when the list has a size of three', () {
    var l = new List();
    l.insertFirst('c');
    l.insertFirst('b');
    l.insertFirst('a');
    l.removeFirst();
    expect(l.size(), 2);
    expect(l.getFirst().data, 'b');
    l.removeFirst();
    expect(l.size(), 1);
    expect(l.getFirst().data, 'c');
  });

  test('RemoveLast removes the last node when list is empty', () {
    var l = new List();
    expect(() {
      l.removeLast();
    }).not.toThrow();
  });

  test('RemoveLast removes the last node when list is length 1', () {
    var l = new List();
    l.insertFirst('a');
    l.removeLast();
    expect(l.head, null);
  });

  test('RemoveLast removes the last node when list is length 2', () {
    var l = new List();
    l.insertFirst('b');
    l.insertFirst('a');

    l.removeLast();

    expect(l.size(), 1);
    expect(l.head.data, 'a');
  });

  test('RemoveLast removes the last node when list is length 3', () {
    var l = new List();
    l.insertFirst('c');
    l.insertFirst('b');
    l.insertFirst('a');
    l.removeLast();

    expect(l.size(), 2);
    expect(l.getLast().data, 'b');
  });

  test('InsertLast adds to the end of the list', () {
    var l = new List();
    l.insertFirst('a');

    l.insertLast('b');

    expect(l.size(), 2);
    expect(l.getLast().data, 'b');
  });

  test('GetAt returns the node at given index', () {
    var l = new List();
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
    var l = new List();
    expect(() {
      l.removeAt(0);
      l.removeAt(1);
      l.removeAt(2);
    }).not.toThrow();
  });

  test('removeAt doesnt crash on an index out of bounds', () {
    var l = new List();
    expect(() {
      var l = new List();
      l.insertFirst('a');
      l.removeAt(1);
    }).not.toThrow();
  });

  test('removeAt deletes the first node', () {
    var l = new List();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);
    expect(l.getAt(0).data, 1);
    l.removeAt(0);
    expect(l.getAt(0).data, 2);
  });

  test('removeAt deletes the node at the given index', () {
    var l = new List();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);
    expect(l.getAt(1).data, 2);
    l.removeAt(1);
    expect(l.getAt(1).data, 3);
  });

  test('removeAt works on the last node', () {
    var l = new List();
    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);
    expect(l.getAt(3).data, 4);
    l.removeAt(3);
    expect(l.getAt(3), null);
  });

  test('InsertAt inserts a new node with data at the 0 index when the list is empty', () {
    var l = new List();
    l.insertAt('hi', 0);
    expect(l.getFirst().data, 'hi');
  });

  test('inserts a new node with data at the 0 index when the list has elements', () {
    var l = new List();
    l.insertLast('a');
    l.insertLast('b');
    l.insertLast('c');
    l.insertAt('hi', 0);
    expect(l.getAt(0).data, 'hi');
    expect(l.getAt(1).data, 'a');
    expect(l.getAt(2).data, 'b');
    expect(l.getAt(3).data, 'c');
  });

  test('inserts a new node with data at a middle index', () {
    var l = new List();
    l.insertLast('a');
    l.insertLast('b');
    l.insertLast('c');
    l.insertLast('d');
    l.insertAt('hi', 2);
    expect(l.getAt(0).data, 'a');
    expect(l.getAt(1).data, 'b');
    expect(l.getAt(2).data, 'hi');
    expect(l.getAt(3).data, 'c');
    expect(l.getAt(4).data, 'd');
  });

  test('inserts a new node with data at a last index', () {
    var l = new List();
    l.insertLast('a');
    l.insertLast('b');
    l.insertAt('hi', 2);
    expect(l.getAt(0).data, 'a');
    expect(l.getAt(1).data, 'b');
    expect(l.getAt(2).data, 'hi');
  });

  test('insert a new node when index is out of bounds', () {
    var l = new List();
    l.insertLast('a');
    l.insertLast('b');
    l.insertAt('hi', 30);

    expect(l.getAt(0).data, 'a');
    expect(l.getAt(1).data, 'b');
    expect(l.getAt(2).data, 'hi');
  });

  test('ForEach applies a transform to each node', () {
    var l = new List();

    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);

    l.forEach(node {
      node.data += 10;
    });

    expect(l.getAt(0).data, 11);
    expect(l.getAt(1).data, 12);
    expect(l.getAt(2).data, 13);
    expect(l.getAt(3).data, 14);
  });

group('for...of loops', () {
  test('works with the linked list', () {
    var l = new List();

    l.insertLast(1);
    l.insertLast(2);
    l.insertLast(3);
    l.insertLast(4);

    for (let node of l) {
      node.data += 10;
    }

    expect(l.getAt(0).data, 11);
    expect(l.getAt(1).data, 12);
    expect(l.getAt(2).data, 13);
    expect(l.getAt(3).data, 14);
  });

  test('for...of works on an empty list', () {
    var l = new List();
    expect(() => {
      for (let node of l) {
      }
    }).not.toThrow();
  });
}
