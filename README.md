# compass_icon

A simple Flutter package to rotate an icon based on different compass directions.

## Features

* Can rotate in 45 degree increments
* Zero external dependencies

## Getting started

Add this package to your project: `flutter pub add compass_icon`

## Usage

```dart
import 'package:compass_icon/compass_direction.dart';
import 'package:compass_icon/compass_icon.dart';

CompassIcon(
    icon: Icon(Icons.arrow_circle_up),          // The icon to rotate
    compassDirection: CompassDirection.north,   // The desired rotation
    initialDirection: CompassDirection.north,   // The original rotation
);
```
