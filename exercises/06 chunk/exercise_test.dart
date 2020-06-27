import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('chunk divides an array of 10 elements with chunk size 2', () {
    const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    var chunked = chunk(arr, 2);

    expect(chunked, [
      [1, 2],
      [3, 4],
      [5, 6],
      [7, 8],
      [9, 10]
    ]);
  });

  test('chunk divides an array of 3 elements with chunk size 1', () {
    const arr = [1, 2, 3];
    var chunked = chunk(arr, 1);

    expect(chunked, [
      [1],
      [2],
      [3]
    ]);
  });

  test('chunk divides an array of 5 elements with chunk size 3', () {
    const arr = [1, 2, 3, 4, 5];
    var chunked = chunk(arr, 3);

    expect(chunked, [
      [1, 2, 3],
      [4, 5]
    ]);
  });

  test('chunk divides an array of 13 elements with chunk size 5', () {
    const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    var chunked = chunk(arr, 5);

    expect(chunked, [
      [1, 2, 3, 4, 5],
      [6, 7, 8, 9, 10],
      [11, 12, 13]
    ]);
  });
}
