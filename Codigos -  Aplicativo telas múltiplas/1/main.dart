import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases do Dia',
      home: FrasesScreen(),
    );
  }
}

class FrasesScreen extends StatefulWidget {
  @override
  _FrasesScreenState createState() => _FrasesScreenState();
}

class _FrasesScreenState extends State<FrasesScreen> {
  final List<String> frases = [
    'Você é incrivel',
    'Você é divertido',
    'Você é legal',
    'Você é fofo',
    'Seja sempre você',
  ];

  int indice = 0;

  void proximaFrase() {
    setState(() {
      indice = Random().nextInt(frases.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              frases[indice],
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: proximaFrase,
              child: Text('Próxima Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
