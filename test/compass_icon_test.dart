import 'package:compass_icon/compass_direction.dart';
import 'package:compass_icon/compass_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Compass icon', () {
    testWidgets('Icon exists', (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: CompassIcon(
            Icon(Icons.arrow_circle_up),
            compassDirection: CompassDirection.north,
            initialDirection: CompassDirection.north,
          ),
        ),
      );

      expect(find.byIcon(Icons.arrow_circle_up), findsOneWidget);
    });

    testWidgets('Rotation accurate', (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: CompassIcon(
            Icon(Icons.arrow_circle_up),
            compassDirection: CompassDirection.southWest,
            initialDirection: CompassDirection.north,
          ),
        ),
      );

      final expectedTransform = Matrix4.fromList([
        -0.7071067811865477,
        -0.7071067811865475,
        0.0,
        0.0,
        0.7071067811865475,
        -0.7071067811865477,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0
      ]);

      expect(find.byIcon(Icons.arrow_circle_up), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Transform &&
              widget.child is Icon &&
              widget.transform == expectedTransform,
        ),
        findsOneWidget,
      );
    });
  });
}
