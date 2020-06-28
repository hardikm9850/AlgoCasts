import 'package:test/test.dart';
import 'exercise.dart';

List<String> printLog;
void printForUnitTest(String s) {
  printLog.add(s);
  print(s);
}

void main() {
  setUp(() {
    printLog = [];
    print("setUp");
  });

  test('Calling fizzbuzz with `5` prints out 5 statements', () {
    fizzBuzz(5, printForUnitTest: printForUnitTest);

    expect(printLog.length, 5);
  });

  test('Calling fizzbuzz with 15 prints out the correct values', () {
    fizzBuzz(15, printForUnitTest: printForUnitTest);

    expect(printLog[0], '1');
    expect(printLog[1], '2');
    expect(printLog[2], 'fizz');
    expect(printLog[3], '4');
    expect(printLog[4], 'buzz');
    expect(printLog[5], 'fizz');
    expect(printLog[6], '7');
    expect(printLog[7], '8');
    expect(printLog[8], 'fizz');
    expect(printLog[9], 'buzz');
    expect(printLog[10], '11');
    expect(printLog[11], 'fizz');
    expect(printLog[12], '13');
    expect(printLog[13], '14');
    expect(printLog[14], 'fizzbuzz');
  });
}
