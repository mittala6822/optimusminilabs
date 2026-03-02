import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/main.dart';

void main() {
  testWidgets('Hello World app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const HelloWorldApp());

    expect(find.text('Hello, World!'), findsOneWidget);
    expect(find.text('Welcome to Flutter'), findsOneWidget);
    expect(find.text('Button tapped 0 times'), findsOneWidget);
  });

  testWidgets('Tap counter increments', (WidgetTester tester) async {
    await tester.pumpWidget(const HelloWorldApp());

    expect(find.text('Button tapped 0 times'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('Button tapped 1 time'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('Button tapped 2 times'), findsOneWidget);
  });
}
