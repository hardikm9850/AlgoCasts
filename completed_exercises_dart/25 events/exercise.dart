// --- Directions
// Create an 'eventing' library out of the
// Events class.  The Events class should
// have methods 'on', 'trigger', and 'off'.

class Events {
  // Register an event handler
  void on(String eventName, Function callback) {}

  // Trigger all callbacks associated
  // with a given eventName
  void trigger(String eventName) {}

  // Remove all event handlers associated
  // with the given eventName
  void off(String eventName) {}
}
