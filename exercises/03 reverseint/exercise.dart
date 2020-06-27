// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

int reverseInt(int n) {
  bool isNegative = (n < 0);
  String intAsDigits = n.toString();
  String digitsWithoutSign = isNegative ? intAsDigits.substring(1) : intAsDigits;
  String reversedDigits = reverse(digitsWithoutSign);
  int reversedInt = int.parse(reversedDigits);
  return isNegative ? -1*reversedInt : reversedInt;
}

String reverse(String input) {
  return input.split('').reduce((reversed, ch) => ch+reversed);
}