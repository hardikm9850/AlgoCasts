// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

List<List<int>> chunk(List<int> array, size) {
  List<List<int>> listOfLists = [];
  List<int> subList = [];
  int ix;
  for(ix = 0; ix < array.length; ix++) {
    if(ix > 0 && (ix % size == 0)) {
      listOfLists.add(subList);
      subList = [];
    }
    subList.add(array[ix]);
  }
  if(subList.length > 0) {
    listOfLists.add(subList);
  }
  return listOfLists;
}