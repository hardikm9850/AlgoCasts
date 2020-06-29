import 'package:test/test.dart';
import 'exercise.dart';

import 'linked_list.dart';

void main() {
  test('fromLast returns the node n elements from the end', () {
    var l = LinkedList();

    l.insertLast('a');
    l.insertLast('b');
    l.insertLast('c');
    l.insertLast('d');
    l.insertLast('e');

    expect(fromLast(l, 3).data, 'b');
  });
}
