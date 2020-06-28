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

    test('Can traverse bf', () {
      List<String> letters = [];
      var t = new Tree();
      t.root = new Node('a');
      t.root.add('b');
      t.root.add('c');
      t.root.children[0].add('d');

      t.traverseBreadthFirst((node) {
        letters.add(node.data);
      });

      expect(letters, ['a', 'b', 'c', 'd']);
    });

    test('Can traverse DF', () {
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
  });
}
