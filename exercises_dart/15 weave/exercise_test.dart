import 'package:test/test.dart';
import 'exercise.dart';
import 'queue.dart';

void main() {
  test('peek returns, but does not remove, the first value', () {
    var q = new Queue();
    q.add(1);
    q.add(2);
    expect(q.peek(), 1);
    expect(q.peek(), 1);
    expect(q.remove(), 1);
    expect(q.remove(), 2);
  });

  test('weave can combine two queues', () {
    var one = new Queue();
    one.add(1);
    one.add(2);
    one.add(3);
    one.add(4);
    var two = new Queue();
    two.add('one');
    two.add('two');
    two.add('three');
    two.add('four');

    var result = weave(one, two);
    expect(result.remove(), 1);
    expect(result.remove(), 'one');
    expect(result.remove(), 2);
    expect(result.remove(), 'two');
    expect(result.remove(), 3);
    expect(result.remove(), 'three');
    expect(result.remove(), 4);
    expect(result.remove(), 'four');
    expect(result.remove(), null);
  });

  test('weave can combine two queues with dirrent length', () {
    var one = new Queue();
    one.add(1);
    var two = new Queue();
    two.add('one');
    two.add('two');

    var result = weave(one, two);
    expect(result.remove(), 1);
    expect(result.remove(), 'one');
    expect(result.remove(), null);
    expect(result.remove(), 'two');
    expect(result.remove(), null);
    expect(result.remove(), null);
  });
}
