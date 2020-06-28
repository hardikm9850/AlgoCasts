import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('calculates correct fib value for 1', () {
    expect(fib(1), 1);
  });

  test('calculates correct fib value for 2', () {
    expect(fib(2), 1);
  });

  test('calculates correct fib value for 3', () {
    expect(fib(3), 2);
  });

  test('calculates correct fib value for 4', () {
    expect(fib(4), 3);
  });

  test('calculates correct fib value for 15', () {
    Stopwatch s = new Stopwatch();
    s.start();
    expect(fib(39), 63245986);
    print("duration in microseconds ${s.elapsedMicroseconds}"); // 0
  });

  test('calculates correct fib2 value for 1', () {
    expect(fib2(1), 1);
  });

  test('calculates correct fib2 value for 2', () {
    expect(fib2(2), 1);
  });

  test('calculates correct fib2 value for 3', () {
    expect(fib2(3), 2);
  });

  test('calculates correct fib2 value for 4', () {
    expect(fib2(4), 3);
  });

  test('calculates correct fib2 value for 15', () {
    Stopwatch s = new Stopwatch();
    s.start();
    expect(fib2(39), 63245986);
    print("duration in microseconds ${s.elapsedMicroseconds}"); // 0
  });
}
