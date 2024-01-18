import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:decalcomania_aet/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at the initial value.
    expect(find.text('InitialCounterValue'),
        findsOneWidget); // Replace 'InitialCounterValue' with the actual initial value.

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('InitialCounterValue'), findsNothing);
    expect(find.text('UpdatedCounterValue'),
        findsOneWidget); // Replace 'UpdatedCounterValue' with the expected incremented value.
  });
}
