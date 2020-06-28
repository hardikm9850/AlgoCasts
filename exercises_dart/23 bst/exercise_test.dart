import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  test('Node can insert correctly', () {
    var node = new Node(10);
    node.insert(5);
    node.insert(15);
    node.insert(17);

    expect(node.left.data, 5);
    expect(node.right.data, 15);
    expect(node.right.right.data, 17);
  });

  test('Contains returns node with the same data', () {
    var node = new Node(10);
    node.insert(5);
    node.insert(15);
    node.insert(20);
    node.insert(0);
    node.insert(-5);
    node.insert(3);

    var three = node.left.left.right;
    expect(node.contains(3), three);
  });

  test('Contains returns null if value not found', () {
    var node = new Node(10);
    node.insert(5);
    node.insert(15);
    node.insert(20);
    node.insert(0);
    node.insert(-5);
    node.insert(3);

    expect(node.contains(9999), null);
  });
}
