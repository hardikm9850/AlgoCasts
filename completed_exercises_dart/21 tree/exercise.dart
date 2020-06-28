// --- Directions
// 1) Create a node class.  The constructor
// should accept an argument that gets assigned
// to the data property and initialize an
// empty array for storing children. The node
// class should have methods 'add' and 'remove'.
// 2) Create a tree class. The tree constructor
// should initialize a 'root' property to null.
// 3) Implement 'traverseBF' and 'traverseDF'
// on the tree class.  Each method should accept a
// function that gets called with each element in the tree

class Node {
  String data;
  List<Node> children;

  Node(this.data) : children = [];

  add(String data) {
    children.add(Node(data));
  }

  remove(String data) {
    children.removeWhere((node) => node.data == data);
  }
}

class Tree {
  Node root;

  _traverseBF(Node baseNode, Function(Node) fn) {
    for (Node node in baseNode.children) {
      fn(node);
    }
    for (Node node in baseNode.children) {
      _traverseBF(node, fn);
    }
  }

  _traverseDF(Node baseNode, Function(Node) fn) {
    fn(baseNode);
    for (Node node in baseNode.children) {
      _traverseDF(node, fn);
    }
  }

  traverseBreadthFirst(Function(Node) fn) {
    fn(root);
    _traverseBF(root, fn);
  }

  traverseDepthFirst(Function(Node) fn) {
    _traverseDF(root, fn);
  }
}
