import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_prelimexam_calong/main.dart';

void main() {
  testWidgets('shows the shopping home page and toggles theme', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Shopping'), findsOneWidget);
    expect(find.text('Aurora Headphones'), findsOneWidget);
    expect(find.byTooltip('Open cart'), findsOneWidget);
    expect(find.byTooltip('Switch to dark mode'), findsOneWidget);

    await tester.tap(find.byTooltip('Switch to dark mode'));
    await tester.pumpAndSettle();

    expect(find.byTooltip('Switch to light mode'), findsOneWidget);
  });

  testWidgets('opens the correct product detail page', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Aurora Headphones'));
    await tester.pumpAndSettle();

    expect(
      find.textContaining('Immersive over-ear headphones'),
      findsOneWidget,
    );
    expect(find.text('\$129'), findsOneWidget);
    expect(find.text('4.8 rating'), findsOneWidget);
  });
}
