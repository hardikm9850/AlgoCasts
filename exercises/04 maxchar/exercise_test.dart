import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('Finds the most frequently used char', () {
    expect(maxChar('a'), 'a');
    expect(maxChar('abcdefghijklmnaaaaa'), 'a');
  });

  test('Works with numbers in the string', () {
    expect(maxChar('ab1c1d1e1f1g1'), '1');
  });
}
