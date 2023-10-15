import 'package:test/test.dart';
import 'package:test_and_debug/counter.dart';

//유닛테스트
void main() {
  //서로 관련된 여러 테스트가 있는 경우 그룹으로 만들수 있음
  group('Counter', () {
    //숫자를 증가시키는 테스트
    test('value should start at 0', () {
      //테스트후 결과와 기대값 비교해서 맞으면 통과됨
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
