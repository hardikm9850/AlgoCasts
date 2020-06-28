// --- Directions
// --- Directions
// Given a node, validate the binary search tree,
// ensuring that every node's left hand child is
// less than the parent node's value, and that
// every node's right hand child is greater than
// the parent

import 'node.dart';

bool _validate(Node node, Function(Node, bool) fn) {
//    print("_searchLeaf ${node.data}");
  bool leftIsOk;
  bool rightIsOk;

  if (node.left != null) {
    if (node.left.data < node.data) {
      leftIsOk = validate(node.left);
      fn(node, true);
    } else {
      leftIsOk = false;
    }
  } else {
    leftIsOk = true;
  }
  if (node.right != null) {
    if (node.right.data > node.data) {
      rightIsOk = validate(node.right);
      fn(node, false);
    } else {
      rightIsOk = false;
    }
  } else {
    rightIsOk = true;
  }
  return leftIsOk && rightIsOk;
}

bool validate(Node node) {
  bool simpleNodeChecksAreOk = _validate(node, (node, isLeft) {
    print("${node.data} ${node.left?.data} ${node.right?.data}  $isLeft");
  });
  return simpleNodeChecksAreOk;
}
