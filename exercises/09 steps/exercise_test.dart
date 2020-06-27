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

  test('steps called with n = 1', () {
    steps(1, printForUnitTest: printForUnitTest);
    expect(printLog.length, 1);
    expect(printLog[0], '#');
  });

  test('steps called with n = 2', () {
    steps(2, printForUnitTest: printForUnitTest);
    expect(printLog.length, 2);
    expect(printLog[0], '# ');
    expect(printLog[1], '##');
  });

  test('steps called with n = 3', () {
    steps(3, printForUnitTest: printForUnitTest);
    expect(printLog.length, 3);
    expect(printLog[0], '#  ');
    expect(printLog[1], '## ');
    expect(printLog[2], '###');
  });
}
