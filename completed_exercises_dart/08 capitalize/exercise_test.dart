import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('capitalizes the first letter of every word in a sentence', () {
    expect(
        capitalize('hi there, how is it going?'), 'Hi There, How Is It Going?');
  });

  test('capitalizes the first letter', () {
    expect(capitalize('i love breakfast at bill miller bbq'),
        'I Love Breakfast At Bill Miller Bbq');
  });
}
