import 'dart:math';

import 'package:compass_icon/compass_direction.dart';
import 'package:flutter/cupertino.dart';

/// Rotates the [icon] giving a [compassDirection] and an [initialDirection].
class CompassIcon extends StatelessWidget {
  final Icon icon;
  final CompassDirection compassDirection;
  final CompassDirection initialDirection;

  const CompassIcon({
    Key? key,
    required this.icon,
    required this.compassDirection,
    required this.initialDirection,
  }) : super(key: key);

  /// Convert a [CompassDirection] into a direction in radians.
  double _compassDirectionAngle(CompassDirection compassDirection) {
    switch (compassDirection) {
      case CompassDirection.north:
        return pi/2;
      case CompassDirection.northEast:
        return pi/4;
      case CompassDirection.east:
        return 0;
      case CompassDirection.southEast:
        return -pi/4;
      case CompassDirection.south:
        return -pi/2;
      case CompassDirection.southWest:
        return -3*pi/4;
      case CompassDirection.west:
        return pi;
      case CompassDirection.northWest:
        return 3*pi/4;
    }
  }

  @override
  Widget build(BuildContext context) {
    final initialRadians = _compassDirectionAngle(initialDirection);
    final transformRadians = -_compassDirectionAngle(compassDirection);
    final finalRadians = initialRadians + transformRadians;

    return Transform.rotate(
      angle: finalRadians,
      child: icon,
    );
  }
}