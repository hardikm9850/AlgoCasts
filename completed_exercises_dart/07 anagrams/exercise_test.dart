import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('"hello" is an anagram of "llohe"', () {
    expect(anagrams('hello', 'llohe'), true);
  });

  test('"hello" is an anagram of "Hello"', () {
    expect(anagrams('hello', 'Hello'), true);
  });

  test('"Whoa! Hi!" is an anagram of "Hi! Whoa!"', () {
    expect(anagrams('Whoa! Hi!', 'Hi! Whoa!'), true);
  });

  test('"One One" is not an anagram of "Two two two"', () {
    expect(anagrams('One One', 'Two two two'), false);
  });

  test('"One one" is not an anagram of "One one c"', () {
    expect(anagrams('One one', 'One one c'), false);
  });

  test(
      '"A tree, a life, a bench" is not an anagram of "A tree, a fence, a yard"',
      () {
    expect(
        anagrams('A tree, a life, a bench', 'A tree, a fence, a yard'), false);
  });

  test('"Riverpod" is an anagram of "Provider"', () {
    expect(anagrams('Riverpod', 'Provider'), true);
  });
}
