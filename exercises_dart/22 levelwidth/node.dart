class Node {
  int data;
  List<Node> children;

  Node(this.data) : children = [];

  add(int data) {
    children.add(Node(data));
  }
}
