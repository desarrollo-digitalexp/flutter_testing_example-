import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Increment widget 3 times tap', (WidgetTester tester) async {
    // Setup:
    app.main();
    await tester.pumpAndSettle();
    final Finder incrementBtn = find.byIcon(Icons.add);
    final Finder decrementBtn = find.byIcon(Icons.remove);
    // Do:
    for (var i = 0; i < 3; i++) {
      await tester.tap(incrementBtn);
      await Future.delayed(Duration(seconds: 1));
    }
    for (var i = 0; i < 3; i++) {
      await tester.tap(decrementBtn);
      await Future.delayed(Duration(seconds: 1));
    }
    await tester.pumpAndSettle();
    // Test:
    // expect(find.text('0'), findsNothing);
    expect(find.text('0'), findsOneWidget);
  });
}
