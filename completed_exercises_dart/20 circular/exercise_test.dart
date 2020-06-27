import 'package:test/test.dart';
import 'exercise.dart';
import 'linked_list.dart';

void main() {
  test('circular detects circular linked lists', () {
    var l = new LinkedList();
    var a = new Node(11);
    var b = new Node(22);
    var c = new Node(33);

    l.head = a;
    a.next = b;
    b.next = c;
    c.next = b;

    expect(circular(l), true);
  });

  test('circular detects circular linked lists linked at the head', () {
    var l = new LinkedList();
    var a = new Node(11);
    var b = new Node(22);
    var c = new Node(33);

    l.head = a;
    a.next = b;
    b.next = c;
    c.next = a;

    expect(circular(l), true);
  });

  test('circular detects non-circular linked lists', () {
    var l = new LinkedList();
    var a = new Node(11);
    var b = new Node(22);
    var c = new Node(33);

    l.head = a;
    a.next = b;
    b.next = c;
    c.next = null;

    expect(circular(l), false);
  });
}
