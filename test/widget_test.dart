import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_example/main.dart';

void main() {
  group('Widgets tests', () {
    testWidgets('Increment widget test', (WidgetTester tester) async {
      // Setup: Build the widget tree
      await tester.pumpWidget(MyApp());

      // Find the increment button
      final incrementButton = find.byIcon(Icons.add);

      // Do: Tap the increment button
      await tester.tap(incrementButton);
      await tester.pump(Duration(seconds: 1));

      // Test: Verify the counter value has incremented
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
    testWidgets('Decrement widget test', (WidgetTester tester) async {
      // Setup: Build the widget tree
      await tester.pumpWidget(MyApp());

      // Find the increment button
      final decrementButton = find.byIcon(Icons.remove);

      // Do: Tap the decrement button
      await tester.tap(decrementButton);
      await tester.pump(Duration(seconds: 1));

      // Test: Verify the counter value has incremented
      expect(find.text('0'), findsNothing);
      expect(find.text('-1'), findsOneWidget);
    });
  });
}
