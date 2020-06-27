import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('matrix produces a 2x2 array', () {
    List<List<int>> m = matrix(2);
    expect(m.length, 2);
    expect(m[0], [1, 2]);
    expect(m[1], [4, 3]);
  });

  test('matrix produces a 3x3 array', () {
    List<List<int>> m = matrix(3);
    expect(m.length, 3);
    expect(m[0], [1, 2, 3]);
    expect(m[1], [8, 9, 4]);
    expect(m[2], [7, 6, 5]);
  });

  test('matrix produces a 4x4 array', () {
    List<List<int>> m = matrix(4);
    expect(m.length, 4);
    expect(m[0], [1, 2, 3, 4]);
    expect(m[1], [12, 13, 14, 5]);
    expect(m[2], [11, 16, 15, 6]);
    expect(m[3], [10, 9, 8, 7]);
  });

  test('matrix produces a 5x5 array', () {
    List<List<int>> m = matrix(5);
    expect(m.length, 5);
    expect(m[0], [1, 2, 3, 4, 5]);
    expect(m[1], [16, 17, 18, 19, 6]);
    expect(m[2], [15, 24, 25, 20, 7]);
    expect(m[3], [14, 23, 22, 21, 8]);
    expect(m[4], [13, 12, 11, 10, 9]);
  });

  test('matrix produces a 10x10 array', () {
    List<List<int>> m = matrix(10);
    expect(m.length, 10);
    expect(m[0], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    expect(m[1], [36, 37, 38, 39, 40, 41, 42, 43, 44, 11]);
    expect(m[2], [35, 64, 65, 66, 67, 68, 69, 70, 45, 12]);
    expect(m[3], [34, 63, 84, 85, 86, 87, 88, 71, 46, 13]);
    expect(m[4], [33, 62, 83, 96, 97, 98, 89, 72, 47, 14]);
    expect(m[5], [32, 61, 82, 95, 100, 99, 90, 73, 48, 15]);
    expect(m[6], [31, 60, 81, 94, 93, 92, 91, 74, 49, 16]);
    expect(m[7], [30, 59, 80, 79, 78, 77, 76, 75, 50, 17]);
    expect(m[8], [29, 58, 57, 56, 55, 54, 53, 52, 51, 18]);
    expect(m[9], [28, 27, 26, 25, 24, 23, 22, 21, 20, 19]);
  });
}
