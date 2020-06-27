
String reverse(String input) {
  String reversed = '';
  for(var ix = 0; ix < input.length; ix++) {
    reversed = '${input[ix]}$reversed';
  }
  return reversed;
}

String reverse2(String input) {
  String reversed = '';
  for(var ch in input.split('')) {
    reversed = ch + reversed;
  }
  return reversed;
}

String reverse3(String input) {
  return input.split('').reduce((reversed, ch) => ch+reversed);
}
