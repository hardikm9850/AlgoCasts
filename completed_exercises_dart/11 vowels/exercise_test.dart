import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('returns the number of vowels used', () {
    expect(vowels('aeiou'), 5);
  });

  test('returns the number of vowels used when they are capitalized', () {
    expect(vowels('AEIOU'), 5);
  });

  test('returns the number of vowels used', () {
    expect(vowels('abcdefghijklmnopqrstuvwxyz'), 5);
  });

  test('returns the number of vowels used', () {
    expect(vowels('bcdfghjkl'), 0);
  });
}
