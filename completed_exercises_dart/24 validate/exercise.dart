// --- Directions
// --- Directions
// Given a node, validate the binary search tree,
// ensuring that every node's left hand child is
// less than the parent node's value, and that
// every node's right hand child is greater than
// the parent

import 'node.dart';

_traverseBottomUp(Node node, Function(Node) fn) {
  if (node.left != null) {
    _traverseBottomUp(node.left, fn);
  }
  fn(node);
  if (node.right != null) {
    _traverseBottomUp(node.right, fn);
  }
}

bool validate(Node node) {
  List<int> sequence = [];
  _traverseBottomUp(node.left, (node) {
    sequence.add(node.data);
  });
  sequence.add(node.data);
  _traverseBottomUp(node.right, (node) {
    sequence.add(node.data);
  });
  print(sequence);
  return isSorted(sequence);
}

bool isSorted(List<int> sequence) {
  int previousValue = sequence.first;
  for (int value in sequence) {
    if (value < previousValue) {
      return false;
    }
    previousValue = value;
  }
  return true;
}
