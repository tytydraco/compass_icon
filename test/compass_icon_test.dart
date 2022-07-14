import 'package:compass_icon/compass_direction.dart';
import 'package:compass_icon/compass_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Compass icon', (widgetTester) async {
    widgetTester.pumpWidget(const Directionality(
      textDirection: TextDirection.ltr,
      child: CompassIcon(
        icon: Icon(Icons.arrow_circle_up),
        compassDirection: CompassDirection.southWest,
        initialDirection: CompassDirection.north,
      ),
    ));
  });
}
