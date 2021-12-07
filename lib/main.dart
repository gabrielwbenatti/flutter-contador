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
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_contador',
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
