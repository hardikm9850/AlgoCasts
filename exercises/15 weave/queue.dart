// --- Directions
// Implement a 'peek' method in this Queue class.
// Peek should return the last element (the next
// one to be returned) from the queue *without*
// removing it.

class Queue {
  var _q = [];

  void add(element) {
    _q.add(element);
  }

  remove() {
    if (_q.length > 0) {
      return _q.removeAt(0);
    } else {
      return null;
    }
  }

  peek() {
    if (_q.length > 0) {
      return _q.first;
    } else {
      return null;
    }
  }
}
