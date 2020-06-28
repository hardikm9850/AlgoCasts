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

  void insert(int data) {
    _addLeaf(this, data);
  }
}
