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
    );
  }
}
