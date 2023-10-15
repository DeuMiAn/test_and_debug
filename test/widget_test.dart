import 'package:flutter_test/flutter_test.dart';
import 'package:test_and_debug/title_message.dart';

void main() {
  //위젯을 테스트하기 위해서 testWidgets을 사용함
  testWidgets('MyWidget has a title and message', (tester) async {
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

    // MyWidget에서 text 'T'와 'M'을 찾아서 변수에 저장
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    // 해당 위젯이 존재하면 테스트 통과
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
