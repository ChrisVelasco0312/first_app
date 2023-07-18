// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_app/main.dart';

void main() {
  testWidgets('Text is displayed correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GradientContainer(),
        ),
      ),
    );

    // Find the Text widget
    final textFinder = find.text('My new app inside 2');

    // Verify that the Text widget is present
    expect(textFinder, findsOneWidget);

    // Verify the text style
    final textWidget = tester.widget<Text>(textFinder);
    expect(textWidget.style?.color, Colors.white);
    expect(textWidget.style?.fontSize, 28);
  });
}
