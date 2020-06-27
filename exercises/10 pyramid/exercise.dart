// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a pyramid shape
// with N levels using the # character.  Make sure the
// pyramid has spaces on both the left *and* right hand sides
// --- Examples
//   pyramid(1)
//       '#'
//   pyramid(2)
//       ' # '      < 2 | > 2
//       '###'      < 1 | > 3
//   pyramid(3)
//       '  #  '    < 3  | > 3
//       ' ### '    < 2  | > 4
//       '#####'    < 1  | > 5

import 'dart:math';

void pyramid(int lineCount, {Function(String) printForUnitTest}) {
  for (int lineNr = 0; lineNr < lineCount; lineNr++) {
    printForUnitTest(pyramidLine(lineNr, lineCount));
  }
}

String pyramidLine(int level, int height) {
  StringBuffer buffer = StringBuffer();
  int width = 1 + (height - 1) * 2;
  for (int hpos = 1; hpos <= width; hpos++) {
    if (hpos < (height - level) || hpos > (height + level)) {
      buffer.write(' ');
    } else {
      buffer.write('#');
    }
  }
  return buffer.toString();
}
