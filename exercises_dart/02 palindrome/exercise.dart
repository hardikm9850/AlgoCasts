// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

bool palindrome(String input) {
  int halfLength = input.length ~/ 2;
  for (int nn = 0; nn < halfLength; nn++) {
    if (input[nn] != input[input.length - 1 - nn]) {
      return false;
    }
  }
  return true;
}

bool palindrome2(String input) {
  return input == reverse(input);
}

String reverse(String input) {
  return input.split('').reduce((reversed, ch) => ch + reversed);
}
