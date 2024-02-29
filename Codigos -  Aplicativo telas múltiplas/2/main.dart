import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Compras',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TelaBoasVindas(),
        '/itens': (context) => TelaItens(),
      },
    );
  }
}

class TelaBoasVindas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boas Vindas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo!',
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/itens');
              },
              child: Text('Ver Itens'),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Itens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Itens a serem comprados:',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Text('Carro'),
            Text('Moto'),
            Text('Caminhão'),
            Text('Camionete'),
            Text('Navio'),
          ],
        ),
      ),
    );
  }
}
