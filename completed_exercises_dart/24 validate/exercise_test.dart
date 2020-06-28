import 'package:test/test.dart';
import 'exercise.dart';
import 'node.dart';

void main() {
  test('Validate recognizes a valid BST', () {
    var n = Node(10);
    n.insert(5);
    n.insert(15);
    n.insert(0);
    n.insert(20);

    expect(validate(n), true);
  });

//     10
//    5  15
//   0     20
// 99
  test('Validate recognizes an invalid BST', () {
    var n = Node(10);
    n.insert(5);
    n.insert(15);
    n.insert(0);
    n.insert(20);
    n.left.left.left = Node(99);

    expect(validate(n), false);
  });

//     10
//    5  15
//   0     20
//    99
  test('Validate recognizes an invalid BST', () {
    var n = new Node(10);
    n.insert(5);
    n.insert(15);
    n.insert(0);
    n.insert(20);
    n.left.left.right = Node(99);

    expect(validate(n), false);
  });

//     10
//    5  15
//   0     20
//       12
  test('Validate recognizes an invalid BST', () {
    var n = new Node(10);
    n.insert(5);
    n.insert(15);
    n.insert(0);
    n.insert(20);
    n.right.right.left = Node(12);

    expect(validate(n), false);
  });
}
