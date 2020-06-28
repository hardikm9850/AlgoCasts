// --- Directions
// 1) Implement the Node class to create
// a binary search tree.  The constructor
// should initialize values 'data', 'left',
// and 'right'.
// 2) Implement the 'insert' method for the
// Node class.  Insert should accept an argument
// 'data', then create an insert a new node
// at the appropriate location in the tree.
// 3) Implement the 'contains' method for the Node
// class.  Contains should accept a 'data' argument
// and return the Node in the tree with the same value.

class Node {
  int data;
  Node left;
  Node right;
  Node(this.data);

  _addLeaf(Node node, int data) {
//    print("_addLeaf ${node.data} $data");
    if (data < node.data) {
      if (node.left != null) {
//        print("down Leaf left");
        _addLeaf(node.left, data);
      } else {
        node.left = Node(data);
//        print("new Leaf left\n");
        return;
      }
    } else {
      if (node.right != null) {
//        print("down Leaf right");
        _addLeaf(node.right, data);
      } else {
        node.right = Node(data);
//        print("new Leaf right\n");
        return;
      }
    }
    return;
  }

  Node _searchLeaf(Node node, int data) {
//    print("_searchLeaf ${node.data}");
    if (data == node.data) {
      return node;
    } else if (data < node.data) {
      if (node.left != null) {
        return _searchLeaf(node.left, data);
      } else {
        return null;
      }
    } else {
      if (node.right != null) {
        return _searchLeaf(node.right, data);
      } else {
        return null;
      }
    }
  }

  void insert(int data) {
    _addLeaf(this, data);
  }

  Node contains(int data) {
    return _searchLeaf(this, data);
  }
}
