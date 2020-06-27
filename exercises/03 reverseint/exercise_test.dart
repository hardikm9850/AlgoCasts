import 'package:test/test.dart';
import 'exercise.dart';

void main() {
test('ReverseInt handles 0 as an input', () {
  expect(reverseInt(0), 0);
});

test('ReverseInt flips a positive number', () {
  expect(reverseInt(5), 5);
  expect(reverseInt(15), 51);
  expect(reverseInt(90), 9);
  expect(reverseInt(2359), 9532);
});

test('ReverseInt flips a negative number', () {
  expect(reverseInt(-5), -5);
  expect(reverseInt(-15), -51);
  expect(reverseInt(-90), -9);
  expect(reverseInt(-2359), -9532);
});
}
