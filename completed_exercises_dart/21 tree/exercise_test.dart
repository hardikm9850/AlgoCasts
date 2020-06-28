import 'package:test/test.dart';
import 'exercise.dart';

void main() {
  group('Node', () {
    test('Node has a data and children properties', () {
      var n = new Node('a');
      expect(n.data, 'a');
      expect(n.children.length, 0);
    });

    test('Node can add children', () {
      var n = new Node('a');
      n.add('b');
      expect(n.children.length, 1);
      expect(n.children[0].children, []);
    });

    test('Node can remove children', () {
      var n = new Node('a');
      n.add('b');
      expect(n.children.length, 1);
      n.remove('b');
      expect(n.children.length, 0);
    });
  });

  group('Tree', () {
    test('starts empty', () {
      var t = new Tree();
      expect(t.root, null);
    });

//    a
//  b   c
//  d
//
    test('Can traverse BreadthFirst', () {
      List<String> letters = [];
      var t = Tree();
      t.root = Node('a');
      t.root.add('b');
      t.root.add('c');
      t.root.children[0].add('d');

      t.traverseBreadthFirst((node) {
        letters.add(node.data);
      });

      expect(letters, ['a', 'b', 'c', 'd']);
    });

//    a
//  b   d
//  c
//
    test('Can traverse DepthFirst', () {
      List<String> letters = [];
      var t = new Tree();
      t.root = new Node('a');
      t.root.add('b');
      t.root.add('d');
      t.root.children[0].add('c');

      t.traverseDepthFirst((node) {
        letters.add(node.data);
      });

      expect(letters, ['a', 'b', 'c', 'd']);
    });

//    a
//  b  f
//  c
// d e
    test('Can traverse deeper DepthFirst', () {
      List<String> letters = [];
      var t = new Tree();
      t.root = new Node('a');
      t.root.add('b');
      t.root.add('f');
      t.root.children[0].add('c');
      t.root.children[0].children[0].add('d');
      t.root.children[0].children[0].add('e');

      t.traverseDepthFirst((node) {
        letters.add(node.data);
      });

      expect(letters, ['a', 'b', 'c', 'd', 'e', 'f']);
    });
  });
}
