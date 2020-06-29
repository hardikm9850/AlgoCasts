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
  return arr;
}

List<int> mergeSort(List<int> arr) {
  return arr;
}

List<int> merge(List<int> left, List<int> right) {
  return left;
}
