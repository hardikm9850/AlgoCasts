import 'package:test/test.dart';
import 'exercise.dart';
import 'linked_list.dart';

void main() {
  group('Midpoint returns the middle node of an odd numbered list', () {
  test('when the list has 3 elements', () {
    var l = new LinkedList();
    l.insertLast(11);
    l.insertLast(22);
    l.insertLast(33);
    expect(midpoint(l).data, 22);
  });

  test('when the list has 5 elements', () {
    var l = new LinkedList();
    l.insertLast(11);
    l.insertLast(22);
    l.insertLast(33);
    l.insertLast(44);
    l.insertLast(55);
    expect(midpoint(l).data, 33);
  });
});

group('Midpoint returns the middle node of an even numbered list', () {
  test('when the list has 2 elements', () {
    var l = new LinkedList();
    l.insertLast(11);
    l.insertLast(22);
    expect(midpoint(l).data, 11);
  });

  test('when the list has 4 elements', () {
    var l = new LinkedList();
    l.insertLast(11);
    l.insertLast(22);
    l.insertLast(33);
    l.insertLast(44);
    expect(midpoint(l).data, 22);
  });
});
}
