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
  final int _limite = 20;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                botao('-', () {
                  if (_contador > 0) {
                    setState(() {
                      _contador--;
                    });
                  }
                }),
                botao('+', () {
                  if (_contador < _limite) {
                    setState(() {
                      _contador++;
                    });
                  }
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget botao(String label, VoidCallback func) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: func,
      child: SizedBox(
        child: Text(label),
        height: 50,
        width: 50,
      ),
    ),
  );
}
