// --- Directions
// Implement a Queue datastructure using two stacks.
// *Do not* create an array inside of the 'Queue' class.
// Queue should implement the methods 'add', 'remove', and 'peek'.
// For a reminder on what each method does, look back
// at the Queue exercise.
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.add(2);
//     q.peek();  // returns 1
//     q.remove(); // returns 1
//     q.remove(); // returns 2

import 'stack.dart';

class Queue {
  Stack stack1 = Stack();
  Stack stack2 = Stack();

  add(int element) {
    if (stack1.peek() == null) {
      while (stack2.peek() != null) {
        stack1.push(stack2.pop());
      }
    }
    stack1.push(element);
  }

  int remove() {
    while (stack1.peek() != null) {
      stack2.push(stack1.pop());
    }
    return stack2.pop();
  }

  int peek() {
    while (stack1.peek() != null) {
      stack2.push(stack1.pop());
    }
    return stack2.peek();
  }
}
