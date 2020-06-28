// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a step shape
// with N levels using the # character.  Make sure the
// step has spaces on the right hand side!
// --- Examples
//   steps(2)
//       '# '
//       '##'
//   steps(3)
//       '#  '
//       '## '
//       '###'
//   steps(4)
//       '#   '
//       '##  '
//       '### '
//       '####'

void steps(int lineCount, {Function(String) printForUnitTest}) {
  for (int lineNr = 0; lineNr < lineCount; lineNr++) {
    printForUnitTest(hashLine(lineCount, lineNr));
  }
}

String hashLine(int lineCount, int lineNr) {
  StringBuffer buffer = StringBuffer();
  for (int pos = 0; pos < lineCount; pos++) {
    if (pos <= lineNr) {
      buffer.write('#');
    } else {
      buffer.write(' ');
    }
  }
  return buffer.toString();
}
