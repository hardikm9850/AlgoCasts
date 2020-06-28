// --- Directions
// Given the root node of a tree, return
// an array where each element is the width
// of the tree at each level.
// --- Example
// Given:
//     0
//   / |  \
// 1   2   3
// |       |
// 4       5
// Answer: [1, 3, 2]
import 'node.dart';

_traverseBF(int level, Node baseNode, Function(Node, int) fn) {
  for (Node node in baseNode.children) {
    fn(node, level);
  }
  for (Node node in baseNode.children) {
    _traverseBF(level + 1, node, fn);
  }
}

List<int> levelWidth(Node root) {
  List<int> widthList = [];
  if (root != null) {
    widthList.add(1);
  }
  _traverseBF(1, root, (node, level) {
//    print("_traverseBF fn ${node.data}, $level");
    // each level has at least one node with previous level
    // levels grow from 1 to max level
    if (widthList.length < level + 1) {
      widthList.add(0);
    }
    widthList[level]++;
  });
  return widthList;
}
