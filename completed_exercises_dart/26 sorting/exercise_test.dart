import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  List<int> createArray(int size) {
    var generated = Iterable<int>.generate(size).toList();
    generated.shuffle();
    return generated;
  }

  List<int> sortArray(List<int> array) {
    var sorted = [...array];
    sorted.sort();
    return sorted;
  }

  int size = 100;
  List<int> randomArray = createArray(size);
  List<int> sortedArray = sortArray(randomArray);

  List<int> randomArrayDoubleSize = createArray(size * 10);
  List<int> sortedArrayDoubleSize = sortArray(randomArrayDoubleSize);

  group('Bubble sort', () {
    test('sorts an array', () {
      var clonedArray = [...randomArray];
      Stopwatch s = new Stopwatch();
      s.start();
      expect(bubbleSort(clonedArray), sortedArray);
      print(
          "bubbleSort size ${clonedArray.length} duration in microseconds ${s.elapsedMicroseconds}"); // 0
    });

    test('sorts an array bigger size', () {
      var clonedArray = [...randomArrayDoubleSize];
      Stopwatch s = new Stopwatch();
      s.start();
      expect(bubbleSort(clonedArray), sortedArrayDoubleSize);
      print(
          "bubbleSort size ${clonedArray.length} duration in microseconds ${s.elapsedMicroseconds}"); // 0
    });
  });

  group('Selection sort', () {
    test('sorts an array', () {
      var clonedArray = [...randomArray];
      Stopwatch s = new Stopwatch();
      s.start();
      expect(selectionSort(clonedArray), sortedArray);
      print(
          "selectionSort size ${clonedArray.length} duration in microseconds ${s.elapsedMicroseconds}"); // 0
    });

    test('sorts an array bigger size', () {
      var clonedArray = [...randomArrayDoubleSize];
      Stopwatch s = new Stopwatch();
      s.start();
      expect(selectionSort(clonedArray), sortedArrayDoubleSize);
      print(
          "selectionSort size ${clonedArray.length} duration in microseconds ${s.elapsedMicroseconds}"); // 0
    });
  });

  group('Merge sort', () {
    test('merge function can join together two sorted arrays', () {
      var left = [1, 10];
      var right = [2, 8, 12, 15];
      expect(merge(left, right), [1, 2, 8, 10, 12, 15]);
    });

    test('sorts an array', () {
      var clonedArray = [...randomArray];
      Stopwatch s = new Stopwatch();
      s.start();
      expect(mergeSort(clonedArray), sortedArray);
      print(
          "mergeSort size ${clonedArray.length} duration in microseconds ${s.elapsedMicroseconds}"); // 0
    });

    test('sorts an array bigger size', () {
      var clonedArray = [...randomArrayDoubleSize];
      Stopwatch s = new Stopwatch();
      s.start();
      expect(mergeSort(clonedArray), sortedArrayDoubleSize);
      print(
          "mergeSort size ${clonedArray.length}  duration in microseconds ${s.elapsedMicroseconds}"); // 0
    });
  });
}
