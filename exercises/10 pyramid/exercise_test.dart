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

  test('prints a pryamid for n = 2', () {
    pyramid(2, printForUnitTest: printForUnitTest);
    expect(printLog.length, 2);
    expect(printLog[0], ' # ');
    expect(printLog[1], '###');
  });

  test('prints a pryamid for n = 3', () {
    pyramid(3, printForUnitTest: printForUnitTest);
    expect(printLog.length, 3);
    expect(printLog[0], '  #  ');
    expect(printLog[1], ' ### ');
    expect(printLog[2], '#####');
  });

  test('prints a pryamid for n = 4', () {
    pyramid(4, printForUnitTest: printForUnitTest);
    expect(printLog.length, 4);
    expect(printLog[0], '   #   ');
    expect(printLog[1], '  ###  ');
    expect(printLog[2], ' ##### ');
    expect(printLog[3], '#######');
  });
}
