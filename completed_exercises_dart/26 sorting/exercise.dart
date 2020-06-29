// --- Directions
// Implement bubbleSort, selectionSort, and mergeSort

List<int> bubbleSort(List<int> arr) {
  List<int> sorted = [];
  for (int val in arr) {
    sorted.add(val);
  }
  for (int ix = 0; ix < arr.length; ix++) {
    for (int ix2 = ix + 1; ix2 < arr.length; ix2++) {
      if (sorted[ix2] < sorted[ix]) {
        int tmp = sorted[ix];
        sorted[ix] = sorted[ix2];
        sorted[ix2] = tmp;
      }
    }
  }
  return sorted;
}

List<int> selectionSort(List<int> arr) {
  int indexOfLowest;
  for (int outerIndex = 0; outerIndex < arr.length; outerIndex++) {
    indexOfLowest = outerIndex;
    for (int innerIndex = outerIndex + 1;
        innerIndex < arr.length;
        innerIndex++) {
      if (arr[innerIndex] < arr[indexOfLowest]) {
        indexOfLowest = innerIndex;
      }
    }
    if (indexOfLowest != outerIndex) {
      final lowerValue = arr[outerIndex];
      arr[outerIndex] = arr[indexOfLowest];
      arr[indexOfLowest] = lowerValue;
    }
  }
  return arr;
}

List<int> mergeSort(List<int> arr) {
  int halfSize = arr.length ~/ 2;
  List<int> firstHalf = arr.sublist(0, halfSize);
  List<int> secondHalf = arr.sublist(halfSize);
  if (halfSize > 512) {
    return merge(
        mergeSort(bubbleSort(firstHalf)), mergeSort(bubbleSort(secondHalf)));
  } else {
    return merge(bubbleSort(firstHalf), bubbleSort(secondHalf));
  }
}

List<int> merge(List<int> left, List<int> right) {
  List<int> mergedList = [];
  var leftIterator = left.iterator;
  var rightIterator = right.iterator;
  leftIterator.moveNext();
  rightIterator.moveNext();
  while (leftIterator.current != null && rightIterator.current != null) {
    if (leftIterator.current < rightIterator.current) {
      mergedList.add(leftIterator.current);
      leftIterator.moveNext();
    } else {
      mergedList.add(rightIterator.current);
      rightIterator.moveNext();
    }
  }
  while (leftIterator.current != null) {
    mergedList.add(leftIterator.current);
    leftIterator.moveNext();
  }
  while (rightIterator.current != null) {
    mergedList.add(rightIterator.current);
    rightIterator.moveNext();
  }
  return mergedList;
}
