
// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

String maxChar(String input) {
  Map<String, int> histogram = {};
  List<String> characterArray = input.split('');
  for(String ch in characterArray) {
    if(histogram[ch] == null) {
      histogram[ch] = 1;
    } else {
      histogram[ch] += 1;
    }
  }
  print(histogram);
  MapEntry<String, int> currentMaxEntry = MapEntry("", 0);
  for(var mapEntry in histogram.entries) {
    if(mapEntry.value > currentMaxEntry.value){
      currentMaxEntry = mapEntry;
    }
  }
  return currentMaxEntry.key;
}