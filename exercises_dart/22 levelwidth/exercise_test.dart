import 'package:test/test.dart';
import 'exercise.dart';
import 'node.dart';

void main() {
  test('levelWidth returns number of nodes at widest point', () {
    var root = new Node(0);
    root.add(1);
    root.add(2);
    root.add(3);
    root.children[0].add(4);
    root.children[2].add(5);

    expect(levelWidth(root), [1, 3, 2]);
  });

  test('levelWidth returns number of nodes at widest point', () {
    var root = new Node(0);
    root.add(1);
    root.children[0].add(2);
    root.children[0].add(3);
    root.children[0].children[0].add(4);

    expect(levelWidth(root), [1, 1, 2, 1]);
  });
}
