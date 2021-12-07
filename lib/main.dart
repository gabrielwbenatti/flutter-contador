import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterContadorApp());
}

class FlutterContadorApp extends StatelessWidget {
  const FlutterContadorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Contador',
      home: FCHomePage(),
    );
  }
}

class FCHomePage extends StatefulWidget {
  const FCHomePage({Key? key}) : super(key: key);

  @override
  _FCHomePageState createState() => _FCHomePageState();
}

class _FCHomePageState extends State<FCHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(),
    );
  }
}
