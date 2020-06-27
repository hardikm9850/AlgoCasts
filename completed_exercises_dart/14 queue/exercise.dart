// --- Description
// Create a queue data structure.  The queue
// should be a class with methods 'add' and 'remove'.
// Adding to the queue should store an element until
// it is removed
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.remove(); // returns 1;

class Queue {
  List<int> _q = [];

  void add(int element) {
    _q.add(element);
  }

  int remove() {
    if (_q.length > 0) {
      return _q.removeAt(0);
    } else {
      return null;
    }
  }
}
