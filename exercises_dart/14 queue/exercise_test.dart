import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('can add elements to a queue', () {
    Queue q = Queue();
    expect(() => q.add(1), returnsNormally);
  });

  test('can remove elements from a queue', () {
    Queue q = Queue();
    expect(() {
      q.add(1);
      q.remove();
    }, returnsNormally);
  });

  test('Order of elements is maintained', () {
    Queue q = Queue();
    q.add(1);
    q.add(2);
    q.add(3);
    expect(q.remove(), 1);
    expect(q.remove(), 2);
    expect(q.remove(), 3);
    expect(q.remove(), null);
  });
}
