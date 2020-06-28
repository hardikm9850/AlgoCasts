import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  List<int> getArray() {
    return [100, -40, 500, -124, 0, 21, 7];
  }

  List<int> getSortedArray() {
    return [-124, -40, 0, 7, 21, 100, 500];
  }

  group('Bubble sort', () {
    test('sorts an array', () {
      expect(bubbleSort(getArray()), getSortedArray());
    });
  });

  group('Selection sort', () {
    test('sorts an array', () {
      expect(selectionSort(getArray()), getSortedArray());
    });
  });

  group('Merge sort', () {
    test('merge function can join together two sorted arrays', () {
      var left = [1, 10];
      var right = [2, 8, 12];

      expect(merge(left, right), [1, 2, 8, 10, 12]);
    });

    test('sorts an array', () {
      expect(mergeSort(getArray()), getSortedArray());
    });
  });
}
