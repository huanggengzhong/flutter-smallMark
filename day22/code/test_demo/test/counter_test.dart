import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/unit/counter.dart';

void main() {
  group("Counter Class Test", () {
    Counter counter;
    
    // 所有测试test开始前会执行的代码
    setUpAll(() {
      counter = Counter();
    });

    test("counter default value", () {
      expect(counter.value, 0);
    });
    
    test("counter increment method", () {
      counter.increment();
      expect(counter.value, 1);
    });
    
    test("counter decrement method", () {
      counter.decrement();
      expect(counter.value, 0);
    });
  });
}