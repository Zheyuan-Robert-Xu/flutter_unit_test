import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/main.dart';

void main() {
  group('Test Counter Widget', () {
    testWidgets('Testing increment Counter Widget',
        (WidgetTester tester) async {
      // setup
      await tester.pumpWidget(const MyApp());
      // do
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump(); // reflesh screen and work like setState
      // test
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('Testing decrement Counter Widget',
        (WidgetTester tester) async {
      // setup
      await tester.pumpWidget(const MyApp());
      // do
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump(); // reflesh screen and work like setState
      // test
      expect(find.text('0'), findsNothing);
      expect(find.text('-1'), findsOneWidget);
    });
  });
}
