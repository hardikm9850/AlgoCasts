import 'package:test/test.dart';
import 'exercise.dart';
import 'node.dart';

void main() {
  test('Validate recognizes a valid BST', () {
    var n = new Node(10);
    n.insert(5);
    n.insert(15);
    n.insert(0);
    n.insert(20);

    expect(validate(n), true);
  });

  test('Validate recognizes an invalid BST', () {
    var n = new Node(10);
    n.insert(5);
    n.insert(15);
    n.insert(0);
    n.insert(20);
    n.left.left.right = new Node(999);

    expect(validate(n), false);
  });
}
