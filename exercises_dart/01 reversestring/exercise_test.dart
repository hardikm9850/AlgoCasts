import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('Reverse reverses a string', () {
    expect(reverse('abcd'), equals('dcba'));
  });

  test('Reverse reverses a string', () {
    expect(reverse('  abcd'), equals('dcba  '));
  });

  test('Reverse reverses2 a string', () {
    expect(reverse2('abcd'), equals('dcba'));
  });

  test('Reverse reverses3 a string', () {
    expect(reverse2('  abcd'), equals('dcba  '));
  });

  test('Reverse reverses3 a string', () {
    expect(reverse3('abcd'), equals('dcba'));
  });

  test('Reverse reverses3 a string', () {
    expect(reverse3('  abcd'), equals('dcba  '));
  });

}
