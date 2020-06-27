// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

String capitalize(String input) {
  var wordList = input.split(' ');
  var outPut = wordList.map((word) {
    var charsList = word.split('');
    charsList[0] = charsList[0].toUpperCase();
    return charsList.join();
  }).join(' ');
  return outPut;
}
