import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('stack can add and remove items', () {
    var s = new Stack();
    s.push(1);
    expect(s.pop(), 1);
    s.push(2);
    expect(s.pop(), 2);
  });

  test('stack can follows first in, last out', () {
    var s = new Stack();
    s.push(1);
    s.push(2);
    s.push(3);
    expect(s.pop(), 3);
    expect(s.pop(), 2);
    expect(s.pop(), 1);
  });

  test('peek returns the first element but doesnt pop it', () {
    var s = new Stack();
    s.push(1);
    s.push(2);
    s.push(3);
    expect(s.peek(), 3);
    expect(s.pop(), 3);
    expect(s.peek(), 2);
    expect(s.pop(), 2);
    expect(s.peek(), 1);
    expect(s.pop(), 1);
  });
}
