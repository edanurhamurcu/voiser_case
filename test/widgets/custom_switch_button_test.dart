import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:voiser_case/core/widgets/custom_switch_button.dart';

void main() {
  group('CustomSwitchButton Tests', () {
    testWidgets('should toggle when tapped', (WidgetTester tester) async {
      bool value = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomSwitchButton(
              value: value,
              onChanged: (newValue) {
                value = newValue;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byType(GestureDetector));
      await tester.pump();

      expect(value, true);
    });

    testWidgets('should display correct colors based on state',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomSwitchButton(
              value: true,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              onChanged: (_) {},
            ),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container).first);
      final decoration = container.decoration as BoxDecoration;
      expect(decoration.color, Colors.blue);
    });
  });
}
