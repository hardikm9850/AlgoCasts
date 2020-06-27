/// --- Directions
// Write a function that accepts an integer N
// and returns a NxN spiral matrix.
// --- Examples
//   matrix(2)
//     [[1, 2],     22    passes 1 + 1
//     [4, 3]]      11
//   matrix(3)
//     [[1, 2, 3],  333   passes 1 + 2 * 2
//     [8, 9, 4],   112
//     [7, 6, 5]]   222
//  matrix(4)
//     [[1,   2,  3, 4],  4444  passes 1 + 3 * 2
//     [12, 13, 14, 5],   2223
//     [11, 16, 15, 6],   2113
//     [10,  9,  8, 7]]   3333

enum Direction {
  right,
  down,
  left,
  up,
}

class Matrix2d {
  List<List<int>> _m2d = List<List<int>>();
  int _size;

  Matrix2d(int size) {
    _size = size;
    for (int col = 0; col < size; col++) {
      var newRow = List<int>();
      _m2d.add(newRow);
      for (int row = 0; row < size; row++) {
        newRow.add(0);
      }
    }
  }

  List<List<int>> get m => _m2d;

  int fillSequential(
      int value, int startRow, int startCol, int count, Direction direction) {
    int nextValue = value;
    if (direction == Direction.right) {
      print("\nright $count from $startRow/$startCol");
      for (int offset = 0; offset < count; offset++) {
        _m2d[startRow][startCol + offset] = nextValue;
        nextValue++;
      }
    }
    if (direction == Direction.left) {
      print("\nleft $count from $startRow/$startCol");
      for (int offset = 0; offset < count; offset++) {
        _m2d[startRow][startCol - offset] = nextValue;
        nextValue++;
      }
    }
    if (direction == Direction.down) {
      print("\ndown $count from $startRow/$startCol");
      for (int offset = 0; offset < count; offset++) {
        _m2d[startRow + offset][startCol] = nextValue;
        nextValue++;
      }
    }
    if (direction == Direction.up) {
      print("\nup $count from $startRow/$startCol");
      for (int offset = 0; offset < count; offset++) {
        _m2d[startRow - offset][startCol] = nextValue;
        nextValue++;
      }
    }
    return nextValue;
  }

  void dump() {
    for (int row = 0; row < _size; row++) {
      print(_m2d[row]);
    }
  }
}

List<List<int>> matrix(int size) {
  var m2d = Matrix2d(size);
  int restRows = size;
  int restCols = size;
  int startRow = 0;
  int startCol = 0;
  int nextValue = 1;
  int filledRightColumns = 0; // with each up
  do {
    nextValue = m2d.fillSequential(
        nextValue, startRow, startCol, restCols, Direction.right);
    restRows--;
    startRow++;
    startCol = startCol + restCols - 1;
    m2d.dump();
    print("restRows: $restRows, restCols: $restCols");
    if (restRows == 0) {
      break;
    }

    if (restRows > 1) {
      nextValue = m2d.fillSequential(
          nextValue, startRow, startCol, restRows, Direction.down);
      restCols--;
      startRow = startRow + restRows - 1;
      startCol--;
      m2d.dump();
      print("restRows: $restRows, restCols: $restCols");
    }
    nextValue = m2d.fillSequential(
        nextValue, startRow, startCol, restCols, Direction.left);
    restRows--;
    startRow--;
    startCol = filledRightColumns;
    m2d.dump();
    print("restRows: $restRows, restCols: $restCols");
    if (restRows == 0) {
      break;
    }
    if (restRows > 1) {
      nextValue = m2d.fillSequential(
          nextValue, startRow, startCol, restRows, Direction.up);
      m2d.dump();
      restCols--;
      startRow = startRow - restRows + 1;
      filledRightColumns++;
      startCol = filledRightColumns;
      print(
          "restRows: $restRows, restCols: $restCols, filledRightColumns: $filledRightColumns ");
    }
  } while (restCols > 0 && restRows > 0);

  return m2d.m;
}
