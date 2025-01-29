import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:voiser_case/features/home/widgets/empty_state_widget.dart';

void main() {
  group('EmptyStateWidget Tests', () {
    testWidgets('should display correct text messages',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Scaffold(
            body: Stack(
              children: [
                EmptyStateWidget(
                  onAddPressed: () {},
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.text('Nothing here yet.'), findsOneWidget);
      expect(find.text('Generate your first video.'), findsOneWidget);
    });

    testWidgets('should call onAddPressed when button is tapped',
        (WidgetTester tester) async {
      bool wasPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Scaffold(
            body: Stack(
              children: [
                EmptyStateWidget(
                  onAddPressed: () {
                    wasPressed = true;
                  },
                ),
              ],
            ),
          ),
        ),
      );

      await tester.tap(find.byType(IconButton));
      await tester.pump();

      expect(wasPressed, true);
    });
  });
}
