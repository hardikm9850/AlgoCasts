import 'package:test/test.dart';
import 'exercise.dart';
import 'node.dart';

void main() {
//     0
//   / |  \
// 1   2   3
// |       |
// 4       5
  test('levelWidth returns number of nodes at widest point', () {
    var root = new Node(0);
    root.add(1);
    root.add(2);
    root.add(3);
    root.children[0].add(4);
    root.children[2].add(5);

    expect(levelWidth(root), [1, 3, 2]);
  });

//     0
//     1
//   2   3
//   4
  test('levelWidth returns number of nodes at widest point', () {
    var root = new Node(0);
    root.add(1);
    root.children[0].add(2);
    root.children[0].add(3);
    root.children[0].children[0].add(4);

    expect(levelWidth(root), [1, 1, 2, 1]);
  });

//     0
//     1
//   2   3
//   4
  test('levelWidth returns number of nodes at widest point', () {
    var root = new Node(0);
    root.add(1);
    root.children[0].add(2);
    root.children[0].add(3);
    root.children[0].children[0].add(4);

    expect(levelWidth(root), [1, 1, 2, 1]);
  });

//     0
  test('levelWidth returns one entry for root without children', () {
    var root = new Node(0);

    expect(levelWidth(root), [1]);
  });

//     0
//     1
  test('levelWidth returns two entries for root with ohne child', () {
    var root = new Node(0);
    root.add(1);

    expect(levelWidth(root), [1, 1]);
  });
}
