import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('navigates Home -> About -> Contact', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Home
    expect(find.text('Home Page'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    await tester.tap(find.text('Go to About'));
    await tester.pumpAndSettle();

    // About
    expect(find.text('About Page'), findsOneWidget);

    await tester.tap(find.text('Go to Contact'));
    await tester.pumpAndSettle();

    // Contact
    expect(find.text('Contact Page'), findsOneWidget);

    // Back to About
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.text('About Page'), findsOneWidget);
  });
}
