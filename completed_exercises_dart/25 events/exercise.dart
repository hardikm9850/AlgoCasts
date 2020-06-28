// --- Directions
// Create an 'eventing' library out of the
// Events class.  The Events class should
// have methods 'on', 'trigger', and 'off'.

class Events {
  Map<String, List<Function>> handlers = {};

  // Register an event handler
  void on(String eventName, Function callback) {
    if (handlers.containsKey(eventName)) {
      handlers[eventName].add(callback);
    } else {
      handlers[eventName] = [callback];
    }
  }

  // Trigger all callbacks associated
  // with a given eventName
  void trigger(String eventName) {
    if (handlers.containsKey(eventName)) {
      for (Function fn in handlers[eventName]) {
        fn();
      }
    }
  }

  // Remove all event handlers associated
  // with the given eventName
  void off(String eventName) {
    if (handlers.containsKey(eventName)) {
      handlers.remove(eventName);
    }
  }
}
