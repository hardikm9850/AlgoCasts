import 'package:test/test.dart';
import 'exercise.dart';

class CallCounter {
  int count = 0;

  void call() {
    count++;
  }
}

void main() {
  test('Events can be registered then triggered', () {
    var events = new Events();

    var cb1 = CallCounter();

    events.on('click', cb1.call);
    events.trigger('click');

    expect(cb1.count, 1);
  });

  test('Multiple events can be registered then triggered', () {
    var events = new Events();

    var cb1 = CallCounter();
    var cb2 = CallCounter();

    events.on('click', cb1.call);
    events.on('click', cb2.call);
    events.trigger('click');

    expect(cb1.count, 1);
    expect(cb2.count, 1);
  });

  test('Events can be triggered multiple times', () {
    var events = new Events();

    var cb1 = CallCounter();
    var cb2 = CallCounter();

    events.on('click', cb1.call);
    events.trigger('click');
    events.on('click', cb2.call);
    events.trigger('click');
    events.trigger('click');

    expect(cb1.count, 3);
    expect(cb2.count, 2);
  });

  test('Events can have different names', () {
    var events = new Events();

    var cb1 = CallCounter();
    var cb2 = CallCounter();

    events.on('click', cb1.call);
    events.trigger('click');
    events.on('hover', cb2.call);
    events.trigger('click');
    events.trigger('hover');

    expect(cb1.count, 2);
    expect(cb2.count, 1);
  });

  test('Events can be toggled off', () {
    var events = new Events();

    var cb1 = CallCounter();
    var cb2 = CallCounter();

    events.on('hover', cb2.call);

    events.on('click', cb1.call);
    events.trigger('click');
    events.off('click');
    events.trigger('click');

    events.trigger('hover');

    expect(cb1.count, 1);
    expect(cb2.count, 1);
  });
}
