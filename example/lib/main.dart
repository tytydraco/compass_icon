import 'package:compass_icon/compass_icon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compass Icon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compass Icon'),
      ),
      body: const Center(
        child: CompassIcon(
          Icon(Icons.arrow_circle_up, size: 100),
          compassDirection: CompassDirection.southWest,
          initialDirection: CompassDirection.north,
        ),
      ),
    );
  }
}
