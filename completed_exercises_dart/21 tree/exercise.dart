// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

bool anagrams(String stringA, String stringB) {
  print("A: ${sortCharsInString(filter(stringA).toUpperCase())}");
  print("B: ${sortCharsInString(filter(stringB).toUpperCase())}");
  return sortCharsInString(filter(stringA).toUpperCase()) ==
      sortCharsInString(filter(stringB).toUpperCase());
}

RegExp regExp = new RegExp(r"\w");

String filter(String input) {
  return input.split('').where((char) => regExp.hasMatch(char)).join();
}

String sortCharsInString(String input) {
  var charsList = input.split('')..sort();
  return charsList.join();
}
